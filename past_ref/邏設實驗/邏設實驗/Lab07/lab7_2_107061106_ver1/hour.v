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
    input [3:0]set_hour_one,
    input [3:0]set_hour_ten,
    input setting,
    input start,
    input pause,
    output reg [3:0]one_h,
    output reg [3:0]ten_h,
    output reg hour0
    );
    reg [3:0]tmp_one_h;
    reg [3:0]tmp_ten_h;
    
    always@*
        if (start && ~pause)
            tmp_one_h = one_h - 1'b1;   
        else 
            one_h <= one_h;               
    always@(posedge clk or posedge rst_n)
        if (rst_n)
            one_h <= 4'd0;
        else if (setting || ~start)
            one_h <= set_hour_one;
        else if (start && ~pause)
            if(minute == 1)
                if (one_h == 4'd0)
                    if (ten_h == 4'd0)
                        one_h <= one_h;
                    else
                        one_h <= 4'd9;
                else
                    one_h <= tmp_one_h;         
            else
                one_h <= one_h;
        else 
            one_h <= one_h;

    always@*
        if (start && ~pause)
            tmp_ten_h = ten_h - 1'b1; 
        else 
            ten_h <= ten_h;                 
    always@(posedge clk or posedge rst_n)
        if (rst_n)
                ten_h <= 4'd0;
        else if (setting || ~start)
                ten_h <= set_hour_ten;
        else if (start && ~pause)
            if (minute == 1)     
                if (one_h == 4'd0)
                    if (ten_h == 4'd0)
                            ten_h <= 4'd0;
                    else
                            ten_h <= tmp_ten_h;
            else
                ten_h <= ten_h;
        else 
                ten_h <= ten_h;
                
    always@*
        if ({one_h, ten_h} == 8'd0)
            hour0 = 1'b1;
        else 
            hour0 = 1'b0;
endmodule
