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
    
    wire onepulse;
    wire [`KB_ENCODE_BITS_N-1:0] kb_in_debouce;
    keyboard UKB(
        .last_change(last_change),
        .kb_in_debouce(kb_in_debouce),
        .onepulse(onepulse),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(rst),
        .clk(clk)
    );
    
    wire [`SEGMENT_7_SEGMENT_N-1:0] seg7_d0, seg7_d1, seg7_d2, seg7_d3;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0] a, b, sum;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0] a0, a1, b0, b1, res0, res1, res2, res3, d0, d1, d2, d3;
    
// For testing    
//    controller_2 UCONT(
//        .a(a),
//        .b(b),
//        .sum(sum),
//        .kb_in(kb_in_debouce),
//        .key_valid(onepulse),
//        .clk(clk),
//        .rst(rst)
//    );
//    assign d3 = a;
//    assign d2 = b;
//    assign d1 = sum / 10;
//    assign d0 = sum % 10;

    controller UCONT(
        .a0(a0),
        .a1(a1),
        .b0(b0),
        .b1(b1),
        .res0(res0),
        .res1(res1),
        .res2(res2),
        .res3(res3),
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .kb_in(kb_in_debouce),
        .key_valid(onepulse),
        .clk(clk),
        .rst(rst)
    );
    
    segment7 USEG_A(
        .i(d3),
        .D(seg7_d3)
    );
    
    segment7 USEG_B(
        .i(d2),
        .D(seg7_d2)
    );
    
    segment7 USEG_SUM1(
        .i(d1),
        .D(seg7_d1)
    );
    
    segment7 USEG_SUM0(
        .i(d0),
        .D(seg7_d0)
    );
    
    // Show
    display_7seg UDisp(.clk(clk), .rst(rst), .d0(seg7_d0), .d1(seg7_d1), .d2(seg7_d2), .d3(seg7_d3), .d_sel(d_sel), .d_out(d_out));
endmodule
