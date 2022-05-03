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


module year(
    input clk,
    input rst_n,
    input month,
    output reg [3:0]one_y,
    output reg [3:0]ten_y,
    output reg [3:0]hun_y,
    output reg [3:0]thu_y,
    output reg leap_year
    );
    reg [3:0]tmp_one_y;
    reg [3:0]tmp_ten_y;
    reg [3:0]tmp_hun_y;
    reg [11:0]leap_cnt;
    reg [11:0]tmp_leap_cnt;
    
    always@*
        begin
            tmp_one_y = one_y + 1'b1;
            tmp_leap_cnt = leap_cnt + 1'b1;
        end
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            begin
                one_y <= 4'd0;
                leap_cnt <= 12'd2000;
            end
        else if(month == 1)
            if (hun_y == 4'd2)
                begin
                    one_y <= 4'd0;
                    leap_cnt <= 12'd2000;
                end
            else if (one_y == 4'd9)
                begin
                    one_y <= 4'd0;
                    leap_cnt <= tmp_leap_cnt;
                end 
            else
                begin
                    one_y <= tmp_one_y;   
                    leap_cnt <= tmp_leap_cnt;
                end
        else
            begin
                one_y <= one_y;
                leap_cnt <= leap_cnt;
            end

    always@*
        tmp_ten_y = ten_y + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            ten_y <= 4'd0;  
        else if (month == 1)
            if (one_y == 4'd9 && ten_y == 4'd9)
                ten_y <= 4'd0;
            else if(one_y == 4'd9)
                ten_y <= tmp_ten_y;
        else
            ten_y <= ten_y;
            
    always@*
        tmp_hun_y = hun_y + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            hun_y <= 4'd0;  
        else if (month == 1)
            if (hun_y == 4'd2)
                hun_y <= 4'd0;
            else if(one_y == 4'd9 && ten_y == 4'd9)
                hun_y <= tmp_hun_y;
        else
            hun_y <= hun_y;
            
    always@*
        thu_y = 4'd2;
        
// leap year 
    always@*
        if (leap_cnt % 4 == 0 && (leap_cnt % 400 == 0 || leap_cnt % 100 != 0))
            leap_year <= 1;
        else 
            leap_year <= 0;
endmodule
