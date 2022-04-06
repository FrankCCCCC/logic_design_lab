`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2022 04:40:28 PM
// Design Name: 
// Module Name: binary_down_2digit_counter_test
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

//`include "global.v"

`define BCD_COUNTER_BITS 8

module binary_down_2digit_counter_test();

reg CLK;
reg RST;
reg IS_PAUSE;
wire [`BCD_COUNTER_BITS-1:0]Q;

binary_down_2digit_counter U0 (.clk(CLK), .rst(RST), .is_pause(IS_PAUSE), .q(Q));

initial
begin
    CLK = 0;
    RST = 0;
    IS_PAUSE = 0;
    #10 RST = 1;
    #10 RST = 0;
    #10 RST = 1;
end

always
begin
    #10; CLK = ~CLK;
end

endmodule
