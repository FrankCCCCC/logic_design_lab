`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2022 11:59:28 PM
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
reg RST;
wire CLK_OUT;
//wire [7:0]COUNTER;

//frequency_divider U0 (.clk(CLK), .rst(RST), .clk_out(CLK_OUT), .counter(COUNTER));
frequency_divider U0 (.clk(CLK), .rst(RST), .clk_out(CLK_OUT));

initial
begin
    CLK = 0;
    RST = 0;
    #10 RST = 1;
//    #10 RST = 1;
//    #10 RST = 0;
//    #10 RST = 0;
    #10 RST = 1;
end

always
begin
    #10; CLK = ~CLK;
end

endmodule
