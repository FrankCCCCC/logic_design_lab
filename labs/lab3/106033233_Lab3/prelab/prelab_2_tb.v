`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2022 10:49:11 AM
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

`define BIT_WIDTH 8

module shifter_test();

reg CLK;
reg RST;
wire [`BIT_WIDTH-1:0]Q;

shifter U0 (.clk(CLK), .rst(RST), .q(Q));

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
