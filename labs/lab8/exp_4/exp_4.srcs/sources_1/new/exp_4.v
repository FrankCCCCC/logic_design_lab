`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 02:29:34
// Design Name: 
// Module Name: lab904
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`include "global.v"

module exp_4(
    input clk,
    input rst,
    inout PS2_DATA,
    inout PS2_CLK,
    output led_state,
    output reg [`ASCII_LED_N-1:0]led,
    output reg is_pressed
    );
    wire [`KB_ENCODE_OH_BITS_N-1:0]key_down;
    wire [`KB_ENCODE_BITS_N-1:0]last_change;
    wire shift_state;
    wire key_valid;
    wire [`CHAR_BITS_N-1:0]char;
    
//    wire onepulse;
//    wire [`KB_ENCODE_BITS_N-1:0] kb_in_debouce;
//    keyboard UKB(
//        .last_change(last_change),
//        .kb_in_debouce(kb_in_debouce),
//        .onepulse(onepulse),
//        .key_down(key_down),
//        .key_valid(key_valid),
//        .PS2_DATA(PS2_DATA),
//        .PS2_CLK(PS2_CLK),
//        .rst(rst),
//        .clk(clk)
//    );
    
    KeyboardDecoder U0(
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(rst),
        .clk(clk)
        );
    
    wire [`ASCII_LED_N-1:0] led_out;
    reg [`KB_ENCODE_BITS_N-1:0] debounce_last_change;
    always@(posedge clk) begin
        if(key_down > `KB_ENCODE_OH_BITS_N'd0 && last_change != `CODE_SHIFT_L && last_change != `CODE_CAP_L) begin
//        if(key_down > `KB_ENCODE_OH_BITS_N'd0) begin
//            is_pressed <= 1'b1;
//            debounce_last_change <= last_change;
            led <= led_out;
        end else begin
//            is_pressed <= 1'b0;
//            debounce_last_change <= `KB_ENCODE_BITS_N'd0;
            led <= `ASCII_LED_N'd0;
        end  
    end
    
    fsm U1(
        .clk(clk),
        .key_valid(key_valid),
        .last_change(last_change),
        .key_down(key_down),
        .led_state(led_state)
        );
                
    shift U2(
        .clk(clk),
        .key_valid(key_valid),
        .last_change(last_change),
        .shift_state(shift_state)
        );
        
    key U3(
        .clk(clk),
        .key_down(key_down),
        .key_valid(key_valid),
        .last_change(last_change),
        .char(char)
        );
        
    out U4(
        .char(char),
        .rst(rst),
        .state(led_state),
        .shift_state(shift_state),
//        .led(led),
        .led(led_out),
        .clk(clk)
        );
    
endmodule

