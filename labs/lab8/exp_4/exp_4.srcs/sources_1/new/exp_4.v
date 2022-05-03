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
    output [`ASCII_LED_N-1:0]led
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
        .led(led),
        .clk(clk)
        );
    
endmodule

