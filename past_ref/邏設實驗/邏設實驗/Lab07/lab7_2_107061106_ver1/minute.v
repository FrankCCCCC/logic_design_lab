`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/14 10:36:10
// Design Name: 
// Module Name: second
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
    input [3:0]set_min_one,
    input [3:0]set_min_ten,
    input start,
    input pause,
    input setting,
    input hour0,
    output reg [3:0]one_m,
    output reg [3:0]ten_m,
    output reg minute
    ); 
    reg [3:0]one_s;
    reg [3:0]ten_s;
    reg [3:0]tmp_one_s;
    reg [3:0]tmp_ten_s;
    reg [3:0]tmp_one_m;
    reg [3:0]tmp_ten_m;
    
    
    always@*
        if (start && ~pause)
            tmp_one_s = one_s + 1'b1; 
        else 
            one_s <= one_s;                 
    always@(posedge clk or posedge rst_n)
        if (rst_n)
            one_s <= 4'd0;
        else if (~start)
            one_s <= 4'd0;
        else if (start && ~pause)
            if (hour0 && one_m == 4'd0 && ten_m == 4'd0)
                one_s <= 4'b0;
            else if(one_s == 4'b1001)
                one_s <= 4'b0000;            
            else
                one_s <= tmp_one_s;         
        else 
            one_s <= one_s;
            
    always@*
        if (start && ~pause)
            tmp_ten_s = ten_s + 1'b1;   
        else 
            ten_s <= ten_s;               
    always@(posedge clk or posedge rst_n)
        if (rst_n)
            ten_s <= 4'd0;
        else if (~start)
            ten_s <= 4'd0;
        else if (start && ~pause)
            if (hour0 && one_m == 4'd0 && ten_m == 4'd0 && one_s == 4'd0)
                ten_s <= 4'b0;
            else if(one_s == 4'b1001)
                if (ten_s == 4'd5)
                    ten_s <= 4'd0;
                else
                    ten_s <= tmp_ten_s;            
            else
                ten_s <= ten_s;
        else
           ten_s <= ten_s;
// minute
    always@*
        if (start && ~pause)
            tmp_one_m = one_m - 1'b1; 
        else 
            one_m <= one_m;                 
    always@(posedge clk or posedge rst_n )
        if (rst_n)
            one_m <= 4'd0;
        else if (setting || ~start)
            one_m <= set_min_one;
        else if (start && ~pause)            
            if(one_s == 4'b1001 && ten_s == 4'b0101)
                if (one_m == 4'd0)
                    if (ten_m == 4'd0 && hour0)
                        one_m <= 4'b0;
                    else
                        one_m <= 4'd9;
                else
                    one_m <= tmp_one_m;
            else
                one_m <= one_m;
        else 
            one_m <= one_m;
    
    always@*
        if (start && ~pause)
            tmp_ten_m = ten_m - 1'b1;      
        else 
            ten_m <= ten_m;            
    always@(posedge clk or posedge rst_n)
        if (rst_n)
            begin
                ten_m <= 4'd0; 
                minute <= 1'b0;
            end  
        else if (setting || ~start)
             begin
                ten_m <= set_min_ten; 
                minute <= 1'b0;
            end
        else if (start && ~pause)
            if(one_m == 4'd0 && one_s == 4'd9 && ten_s == 4'd5)
                if (ten_m == 4'd0)
                    if (hour0)
                        begin
                            ten_m <= 4'b0; 
                            minute <= 1'b1;
                        end
                    else
                        begin
                            ten_m <= 4'd5; 
                            minute <= 1'b1;
                        end      
                else
                    begin
                        ten_m <=  tmp_ten_m;   
                        minute <= 1'b0;  
                    end
            else
                begin
                    ten_m <= ten_m;
                    minute <= 1'b0;
                end
        else 
            begin
                ten_m <= ten_m;
                minute <= 1'b0;
            end
endmodule
