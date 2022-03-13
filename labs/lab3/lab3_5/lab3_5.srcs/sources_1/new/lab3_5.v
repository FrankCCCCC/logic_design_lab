`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2022 01:43:53 PM
// Design Name: 
// Module Name: lab3_5
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

`define DIGIT_N 4
`define SEGMENT_N 8

`define H_BITS `SEGMENT_N'b1001000_1
`define N_BITS `SEGMENT_N'b1101010_1
`define T_BITS `SEGMENT_N'b1110000_1
`define U_BITS `SEGMENT_N'b1000001_1

module lab3_5(
    d_sel,
    d_out,
    clk,
    rst
    );
    
    output [`DIGIT_N-1:0]d_sel;
    output [`SEGMENT_N-1:0]d_out;
    input clk;
    input rst;
    
    wire [`SEGMENT_N-1:0]Q0;
    wire [`SEGMENT_N-1:0]Q1;
    wire [`SEGMENT_N-1:0]Q2;
    wire [`SEGMENT_N-1:0]Q3;
//    wire clk_out;
    
//    assign Q0 = `U_BITS;
//    assign Q1 = `H_BITS;
//    assign Q2 = `T_BITS;
//    assign Q3 = `N_BITS;
    
    shift_register U0(.clk(clk), .rst(rst), .q0(Q0), .q1(Q1), .q2(Q2), .q3(Q3));    
    display_7seg U1(.clk(clk), .rst(rst), .d0(Q0), .d1(Q1), .d2(Q2), .d3(Q3), .d_sel(d_sel), .d_out(d_out));
endmodule
