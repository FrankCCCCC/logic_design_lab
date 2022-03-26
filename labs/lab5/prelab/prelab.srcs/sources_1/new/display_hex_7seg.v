`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2022 05:25:18 PM
// Design Name: 
// Module Name: display_hex_7seg
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

module display_hex_7seg(
    clk,
    rst,
    d0_binary,
    d1_binary,
    d2_binary,
    d3_binary,
    d_sel,
    d_out
    );
    
    input clk;
    input rst;
    input [`SEGMENT_7_INPUT_BITS_N-1:0]d0_binary;
    input [`SEGMENT_7_INPUT_BITS_N-1:0]d1_binary;
    input [`SEGMENT_7_INPUT_BITS_N-1:0]d2_binary;
    input [`SEGMENT_7_INPUT_BITS_N-1:0]d3_binary;
    output [0:`SEGMENT_7_DISPALY_DIGIT_N-1]d_sel;
    output [`SEGMENT_7_SEGMENT_N-1:0]d_out;
    
    wire [`SEGMENT_7_SEGMENT_N-1:0]D0_SEGMENT7;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D1_SEGMENT7;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D2_SEGMENT7;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D3_SEGMENT7;
    
    // Convert binary to 7-segment
    segment7 D0_CONV(.i(d0_binary), .D(D0_SEGMENT7)); 
    segment7 D1_CONV(.i(d1_binary), .D(D1_SEGMENT7));
    segment7 D2_CONV(.i(d2_binary), .D(D2_SEGMENT7));
    segment7 D3_CONV(.i(d3_binary), .D(D3_SEGMENT7));
    
    // Show
    display_7seg(.clk(clk), .rst(rst), .d0(D0_SEGMENT7), .d1(D1_SEGMENT7), .d2(D2_SEGMENT7), .d3(D3_SEGMENT7), .d_sel(d_sel), .d_out(d_out));
endmodule
