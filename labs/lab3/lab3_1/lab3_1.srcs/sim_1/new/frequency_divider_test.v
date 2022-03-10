`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 07:01:26 PM
// Design Name: 
// Module Name: frequency_divider_test
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


module frequency_divider_test();

reg CLK;
reg RST_N;
wire CLK_OUT;

frequency_divider U0 (.clk(CLK), .rst_n(RST_N), .clk_out(CLK_OUT));

initial
begin
    CLK = 0;
    RST_N = 0;
    #10 RST_N = 1;
//    #10 RST_N = 0;
//    #10 RST_N = 1;
end

always
begin
    #10; CLK = ~CLK;
end

endmodule
