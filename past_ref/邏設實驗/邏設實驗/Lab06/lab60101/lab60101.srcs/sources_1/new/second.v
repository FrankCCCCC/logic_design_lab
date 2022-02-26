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


module second(
    input clk,
    input rst_n,
    output reg [3:0]one_s,
    output reg [3:0]ten_s,
    output reg [3:0]one_m,
    output reg [3:0]ten_m,
    output reg minute
    );   
    reg [3:0]tmp_one_s;
    reg [3:0]tmp_ten_s;
    reg [3:0]tmp_one_m;
    reg [3:0]tmp_ten_m;
    
    
    always@*
        tmp_one_s = one_s + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            one_s <= 4'd0;       
        else if(one_s == 4'b1001)
            one_s <= 4'b0000;            
        else
            one_s <= tmp_one_s;         

    always@*
        tmp_ten_s = ten_s + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            ten_s <= 4'd0;       
        else if(one_s == 4'b1001)
            if (ten_s == 4'd5)
                ten_s <= 4'd0;
            else
                ten_s <= tmp_one_s;            
        else
            ten_s <= ten_s;
            
// minute
    always@*
        tmp_one_m = one_m + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            one_m <= 4'd0;       
        else if(one_s == 4'b1001 && ten_s == 4'b0101)
            if (one_m == 4'd9)
                one_m <= 4'd0;
            else 
                one_m <= tmp_one_m;
        else
            one_m <= one_m;
    
    always@*
        tmp_ten_m = ten_m + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            ten_m <= 4'd0;       
        else if(one_m == 4'b1001 && one_s == 4'b1001 && ten_s == 4'b0101)
            if (ten_m == 4'd5)
                begin
                    ten_m <= 4'b0000; 
                    minute <= 1'b1;
                end      
            else
                ten_m <=  tmp_one_m;    
        else
            ten_m <= ten_m;
endmodule
