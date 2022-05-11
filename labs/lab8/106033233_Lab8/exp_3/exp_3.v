`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 23:55:24
// Design Name: 
// Module Name: lab903
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

module exp_3(
    input clk,
    input rst_n,
    inout PS2_DATA,
    inout PS2_CLK,
    output [`SEGMENT_7_DISPALY_DIGIT_N-1:0]d,
    output [`SEGMENT_7_SEGMENT_N-1:0]D_ssd
    );
    wire [`KB_ENCODE_OH_BITS_N-1:0]key_down;
    wire [`KB_ENCODE_BITS_N-1:0]last_change;
    wire key_valid;
    wire [`STATE_BITS_N-1:0]state;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]in0, in1, in2, in3;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]out0, out1, out2, out3;
    reg [`SEGMENT_7_INPUT_BITS_N-1:0]d0, d1, d2, d3;
    wire [`VALUE_BITS_N-1:0]value;
    
    
    KeyboardDecoder U0(
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(~rst_n),
        .clk(clk)
    );
        
    count U1(
        .clk(clk),
        .key_valid(key_valid),
        .key_down(key_down),
        .last_change(last_change),
        .rst_n(rst_n),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .value(value),
        .state(state)
    );
    
    value U2(
        .in(value),
        .out0(out0),
        .out1(out1),
        .out2(out2),
        .out3(out3)
    );
    
    always@(*) begin
        if(state == `STATE_BITS_N'd0) begin
            d0 <= out0;
            d1 <= out1;
            d2 <= out2;
            d3 <= out3;
        end else begin
            d0 <= in0;
            d1 <= in1;
            d2 <= in2;
            d3 <= in3;
        end
    end
    
    dec_disp U3(
        .d_sel(d),
        .d_out(D_ssd),
        .d0(d3),
        .d1(d2), 
        .d2(d1), 
        .d3(d0),
        .clk(clk),
        .rst(rst_n)
    );
endmodule
