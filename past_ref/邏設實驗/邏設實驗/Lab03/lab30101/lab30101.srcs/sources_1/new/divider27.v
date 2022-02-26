`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/10 12:57:58
// Design Name: 
// Module Name: divider27
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


module divider27(
    clk_out,
    clk,
    rst_n
    );
    output clk_out;
    input clk;
    input rst_n;
    reg clk_out;
    reg [25:0]cnt;
    reg [26:0]tmp_cnt;
    
    always@*
        tmp_cnt = {clk_out, cnt} + 1'b1;
        
    always@(posedge clk or negedge rst_n)
        if (~rst_n){clk_out, cnt}<=27'd0;
        else {clk_out, cnt}<=tmp_cnt;
        
endmodule
