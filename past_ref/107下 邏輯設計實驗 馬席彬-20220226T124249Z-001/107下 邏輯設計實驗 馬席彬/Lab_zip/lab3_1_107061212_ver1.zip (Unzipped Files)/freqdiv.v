`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/07 23:58:15
// Design Name: 
// Module Name: freqdiv
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

`define FREQ_DIV_BIT 27
module freqdiv(
    clk_out, //divided clock output
    clk,    //clock input
    rst_n   //low-active reset
);
    output reg clk_out; //divided clk output(in always block)
    input clk, rst_n; //clock input, low-active reset
    
    reg [`FREQ_DIV_BIT - 2:0] cnt; //remainder of the counter
    reg [`FREQ_DIV_BIT - 1:0] cnt_tmp; //input to D-FF

    //combinational logics
    always @*
    cnt_tmp = {clk_out, cnt} + 1'b1;

    //sequential logics
    always @(posedge clk or negedge rst_n)
    if (~rst_n)
        {clk_out, cnt} <= `FREQ_DIV_BIT'd0;
    else
        {clk_out, cnt} <= cnt_tmp;
endmodule
