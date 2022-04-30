`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 10:31:24 PM
// Design Name: 
// Module Name: frequency_divider
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


`include "global.v"

module frequency_divider(
    clk_out, // divided clock output
    clk, // global clock input
    rst_n // active low reset
);

    output clk_out; // divided output
    input clk; // global clock input
    input rst_n; // active low reset
    reg [`FREQ_DIV_BIT-1:0] clk_out; // clk output (in always block)
//    reg [`FREQ_DIV_BIT-2:0] cnt; // remainder of the counter
    reg [`FREQ_DIV_BIT-1:0] cnt_tmp; // input to dff (in always block)
    
    initial begin
        cnt_tmp = `FREQ_DIV_BIT'd0;
        clk_out = `FREQ_DIV_BIT'd0;
    end
    // Combinational logics: increment, neglecting overflow 
    always @(clk_out)
        cnt_tmp = clk_out + 1'b1;
    
    // Sequential logics: Flip flops
    always @(posedge clk or negedge rst_n)
        if (~rst_n) clk_out <= `FREQ_DIV_BIT'd0;
        else clk_out <= cnt_tmp;

endmodule
