`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2022 11:20:00 AM
// Design Name: 
// Module Name: shifter_test
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


`define SEGMENT_N 8

module shifter_test();

reg CLK;
reg RST;
wire [`SEGMENT_N-1:0]Q0;
wire [`SEGMENT_N-1:0]Q1;
wire [`SEGMENT_N-1:0]Q2;
wire [`SEGMENT_N-1:0]Q3;

shifter U0(.clk(CLK), .rst(RST), .q0(Q0), .q1(Q1), .q2(Q2), .q3(Q3));

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
