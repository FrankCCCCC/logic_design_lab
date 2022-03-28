`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2022 02:44:46 PM
// Design Name: 
// Module Name: lab4_1_test
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

module lab4_1_test();

reg CLK;
reg RST;
wire [`BCD_COUNTER_BITS-1:0]Q;

lab4_1 U0 (.clk(CLK), .rst(RST), .q(Q));

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