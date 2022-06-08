`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/23 05:04:35
// Design Name: 
// Module Name: freq_div
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


module fre_div(
    output reg clk_ctl,
    input clk,
    input rst_n
);
    reg [21:0] cnt_l;
    reg [9:0] cnt_h;
    reg [22:0] cnt_tmp;
    //combitional logic
    always @*
        cnt_tmp = {clk_ctl, cnt_l} + 1'b1;  
    //sequential logic
    always @(posedge clk or negedge rst_n)
        if (~rst_n)
            {clk_ctl, cnt_l} <= 22'd0;
        else
            {clk_ctl, cnt_l} <= cnt_tmp;
endmodule
