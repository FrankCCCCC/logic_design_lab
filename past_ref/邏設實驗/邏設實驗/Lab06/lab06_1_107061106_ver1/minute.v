`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/14 11:00:16
// Design Name: 
// Module Name: minute
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


module minute(
    input clk,
    input rst_n,
    input [1:0] clk_ctl,
    input [3:0]one_s,
    input [3:0]ten_s,
    output reg [3:0]one_m,
    output reg [3:0]ten_m
    );
    reg [3:0]tmp_one;
    reg [3:0]tmp_ten;
    
    always@*
        tmp_one = one_s + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            one_m <= 4'd0;       
        else if(one_s == 4'b1001)
            one_m <= 4'b0000;            
        else
            one_m <= tmp_one;         

    always@*
        tmp_ten = ten_s + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            ten_m <= 4'd0;       
        else if(one_s == 4'b1001)
            ten_m <= tmp_one;            
        else
            ten_m <= 4'b0000;
endmodule
