`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2022 04:55:27 PM
// Design Name: 
// Module Name: lab3_5_test
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

module lab3_5_test();

reg CLK;
reg RST;
wire [`DIGIT_N-1:0]D_SEL;
wire [`SEGMENT_N-1:0]D_OUT;

lab3_5 U0(.clk(CLK), .rst(RST), .d_sel(D_SEL), .d_out(D_OUT));

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
