`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2022 10:54:20 AM
// Design Name: 
// Module Name: shift_register
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

module shift_register(
    q,
    clk,
    rst
    );
    
    output [`BIT_WIDTH-1:0]q;
    input clk;
    input rst;
    
    wire [`BIT_WIDTH-1:0]q;
    wire CLK_OUT;
    
    frequency_divider U0(.clk(clk), .rst(rst), .clk_out(CLK_OUT));
//    shifter U1(.clk(CLK_OUT), .rst(rst), .q(q));
    shifter U1(.clk(clk), .rst(rst), .q(q));
endmodule
