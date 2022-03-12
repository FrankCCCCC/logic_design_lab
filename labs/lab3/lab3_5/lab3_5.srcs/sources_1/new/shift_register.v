`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2022 11:47:45 AM
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


`define SHIFTER_WIDTH 10
`define REG_SIZE 8

module shift_register(
    q,
    clk,
    rst
    );
    
    output [`REG_SIZE-1:0]q [`SHIFTER_WIDTH-1:0];
    input clk;
    input rst;
    
    wire [`REG_SIZE-1:0]q [`SHIFTER_WIDTH-1:0];
    wire CLK_OUT;
    
    frequency_divider U0(.clk(clk), .rst(rst), .clk_out(CLK_OUT));
    shifter U1(.clk(CLK_OUT), .rst(rst), .q(q));
endmodule
