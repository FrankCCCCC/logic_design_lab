`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/17 20:28:03
// Design Name: 
// Module Name: downcounter30
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


module downcounter30(
    input clk,
    input rst_n,
    input decrease,
    output reg [3:0]a,
    output reg [3:0]b
    );
    reg [3:0]one_cnt;
    reg [3:0]ten_cnt;


    always@*
        one_cnt = a - 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            a <= 4'd0;
        else if((a == 4'b0000) && (b == 4'b0000))
            a <= a;
        else if(a == 4'b0000 && decrease)
            a <= 4'b1001;            
        else if (decrease)
            a <= one_cnt;
        else
            a <= a;      
             
    always@*
        ten_cnt = b - 1'b1;
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            b <= 4'd3;
        else if((a == 4'b0000) && (b == 4'b0000))
            b <= b;
        else if(a == 4'b0000 && decrease)
            b <= ten_cnt;
        else b <= b;      
        
endmodule
