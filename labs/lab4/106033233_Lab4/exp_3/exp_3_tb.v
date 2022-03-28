`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 03:27:21 PM
// Design Name: 
// Module Name: lab4_3_test
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

`define BCD_COUNTER_BITS 4
`define SEGMENT_7_DISPALY_DIGIT_N 4
`define SEGMENT_7_SEGMENT_N 8

module lab4_3_test();

reg CLK;
reg RST;
wire [`BCD_COUNTER_BITS-1:0]Q;
wire [`SEGMENT_7_DISPALY_DIGIT_N-1:0]P;
wire [`SEGMENT_7_SEGMENT_N-1:0]D;

lab4_3 U0 (.clk(CLK), .rst(RST), .q(Q), .P(P), .D(D));

initial
begin
    CLK = 0;
    RST = 0;
    #10 RST = 1;
    #10 RST = 0;
    #10 RST = 1;
end

always
begin
    #10; CLK = ~CLK;
end

endmodule