`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2022 11:30:54 AM
// Design Name: 
// Module Name: display_7seg_test
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
`define H_BITS_ `SEGMENT_N'b1001000_1
`define N_BITS_ `SEGMENT_N'b1101010_1
`define T_BITS_ `SEGMENT_N'b1110000_1
`define U_BITS_ `SEGMENT_N'b1000001_1

module display_7seg_test();

reg CLK;
reg RST;
wire [`DIGIT_N-1:0]D_SEL;
wire [`SEGMENT_N-1:0]D_OUT;
wire [`SEGMENT_N-1:0]Q0;
wire [`SEGMENT_N-1:0]Q1;
wire [`SEGMENT_N-1:0]Q2;
wire [`SEGMENT_N-1:0]Q3;

assign Q0 = `N_BITS_;
assign Q1 = `T_BITS_;
assign Q2 = `H_BITS_;
assign Q3 = `U_BITS_;

display_7seg U0(.clk(CLK), .rst(RST), .d0(Q0), .d1(Q1), .d2(Q2), .d3(Q3), .d_sel(D_SEL), .d_out(D_OUT));

initial
begin
    CLK = 0;
    RST = 0;
    #10 RST = 1;
    #10 RST = 0;
//    #10 RST = 0;
    #10 RST = 1;
end

always
begin
    #10; CLK = ~CLK;
end

endmodule
