`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 03:54:42 PM
// Design Name: 
// Module Name: exp_2
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
    output [`SEGMENT_7_DISPALY_DIGIT_N-1:0] d_sel,
    output [`SEGMENT_7_SEGMENT_N-1:0] d_out,
    output [`KB_ENCODE_BITS_N-1:0] last_change,
    output key_valid,
    inout PS2_DATA,
    inout PS2_CLK,
    input rst,
    input clk
    );
    
    wire [`KB_ENCODE_OH_BITS_N-1:0] key_down;
    wire [`KB_ENCODE_BITS_N-1:0] key_validated;
    wire [`FREQ_DIV_BIT-1:0] clk_out;
    
    frequency_divider UFD(
        .clk_out(clk_out),
        .clk(clk),
        .rst_n(rst)
    );
    
    KeyboardDecoder UKD(
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(~rst),
        .clk(clk)
    );
    
    wire onepulse;
    wire [`KB_ENCODE_BITS_N-1:0] kb_in_debouce;
    wire [`KB_ENCODE_OH_BITS_N-1:0] key_down_debouce;
    validator UVAL(
        .kb_in_debouce(kb_in_debouce),
        .key_down_debouce(key_down_debouce),
        .onepulse(onepulse),
        .kb_in(last_change),
        .key_down(key_down),
        .key_valid(key_valid),
        .clk(clk),
        .rst(rst)
    );
    
    wire [`SEGMENT_7_SEGMENT_N-1:0] seg7_d0, seg7_d1, seg7_d2, seg7_d3;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0] a, b, sum;
    
    controller UCONT(
        .a(a),
        .b(b),
        .sum(sum),
//        .kb_in(last_change),
//        .key_valid(key_valid),
        .kb_in(kb_in_debouce),
        .key_valid(onepulse),
        .clk(clk),
        .rst(rst)
    );
    
    segment7 USEG_A(
        .i(a),
        .D(seg7_d3)
    );
    
    segment7 USEG_B(
        .i(b),
        .D(seg7_d2)
    );
    
    segment7 USEG_SUM1(
        .i(sum / 10),
        .D(seg7_d1)
    );
    
    segment7 USEG_SUM0(
        .i(sum % 10),
        .D(seg7_d0)
    );
    
    // Show
    display_7seg UDisp(.clk(clk), .rst(rst), .d0(seg7_d0), .d1(seg7_d1), .d2(seg7_d2), .d3(seg7_d3), .d_sel(d_sel), .d_out(d_out));
endmodule
