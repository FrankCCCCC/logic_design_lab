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
    output reg [3:0]ten_y
    );
    reg [3:0]tmp_one_y;
    reg [3:0]tmp_ten_y;
    
    always@*
        tmp_one_y = one_y + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            one_y <= 4'd0;
        else if(month == 1)
            if (one_y == 4'd9)
                one_y <= 4'd0;
            else
                one_y <= tmp_one_y;         
        else
            one_y <= one_y;

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
endmodule
