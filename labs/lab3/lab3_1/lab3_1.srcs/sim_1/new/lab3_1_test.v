`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 09:54:21 PM
// Design Name: 
// Module Name: lab3_1_test
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


module lab3_1_test();

reg CLK;
reg RST;
wire CLK_OUT;

lab3_1 U0 (.clk(CLK), .rst(RST), .clk_out(CLK_OUT));

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
