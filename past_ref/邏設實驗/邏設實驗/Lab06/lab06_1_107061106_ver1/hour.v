`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/14 13:32:47
// Design Name: 
// Module Name: hour
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


module hour(
    input clk,
    input rst_n,
    input minute,
    output reg [3:0]one_h,
    output reg [3:0]ten_h
    );
    reg [3:0]tmp_one_h;
    reg [3:0]tmp_ten_h;
    
    always@*
        tmp_one_h = one_h + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            one_h <= 4'd0;
        else if(minute == 1)
            if ((ten_h == 4'd2 && one_h == 4'd3) || (one_h == 4'd9))
                one_h <= 4'd0;
            else
                one_h <= tmp_one_h;         
        else
            one_h <= one_h;

    always@*
        tmp_ten_h = ten_h + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            ten_h <= 4'd0;       
        else if(one_h == 4'b1001 && minute == 1)
            ten_h <= tmp_ten_h;
        else if (one_h == 4'd3 && ten_h == 4'd2 && minute == 1)
            ten_h <= 4'd0;
        else
            ten_h <= ten_h;
endmodule
