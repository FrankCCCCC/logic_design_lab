`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/01 01:24:10
// Design Name: 
// Module Name: ssd_freqdiv
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


module ssd_freqdiv(
    input clk,
    input rst_n,
    output reg clk_ctl
    );
        reg clk_out;
        reg [8:0]cnt_h;
        reg [14:0]cnt_l;
        reg [26:0]tmp_cnt;

        
   always@*
         tmp_cnt = {clk_out, cnt_h, clk_ctl, cnt_l} + 1'b1;
     always@(posedge clk or negedge rst_n)
         if (~rst_n){clk_out, cnt_h, clk_ctl, cnt_l} <= 27'd0;
         else {clk_out, cnt_h, clk_ctl, cnt_l} <= tmp_cnt;
         
endmodule
