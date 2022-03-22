`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2022 08:54:35 PM
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

`define FREQ_DIV_BITS 27

module frequency_divider_test();

reg CLK;
reg RST;
wire CLK_OUT;
wire [`FREQ_DIV_BITS-1:0]COUNTER_IN;
wire [`FREQ_DIV_BITS-1:0]COUNTER_OUT;

frequency_divider U0 (.clk(CLK), .rst(RST), .clk_out(CLK_OUT), .counter_in(COUNTER_IN), .counter_out(COUNTER_OUT));
//frequency_divider U0 (.clk(CLK), .rst(RST), .clk_out(CLK_OUT));

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
