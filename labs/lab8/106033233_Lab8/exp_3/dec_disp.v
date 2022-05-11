`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2022 07:29:05 PM
// Design Name: 
// Module Name: dec_display
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

module dec_disp(
    output [`SEGMENT_7_DISPALY_DIGIT_N-1:0] d_sel,
    output [`SEGMENT_7_SEGMENT_N-1:0] d_out,
    input [`SEGMENT_7_INPUT_BITS_N-1:0] d0, d1, d2, d3,
    input clk,
    input rst
    );
    
    wire [`SEGMENT_7_SEGMENT_N-1:0] seg7_d0, seg7_d1, seg7_d2, seg7_d3;
    //wire [`SEGMENT_7_INPUT_BITS_N-1:0] d0, d1, d2, d3;
    
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
