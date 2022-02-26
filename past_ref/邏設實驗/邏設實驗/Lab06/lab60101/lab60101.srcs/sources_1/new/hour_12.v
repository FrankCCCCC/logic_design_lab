`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/14 14:00:12
// Design Name: 
// Module Name: hour_12
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


module hour_12(
    input clk,
    input rst_n,
    input minute,
    output reg [3:0]one_h_12,
    output reg [3:0]ten_h_12
    );
    reg [3:0]tmp_one_h;
    reg [3:0]tmp_ten_h;
    
    always@*
        tmp_one_h = one_h_12 + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            one_h_12 <= 4'd2; 
        else if(minute == 1)
            if (ten_h_12 == 4'd1 && one_h_12 == 4'd2)
                one_h_12 <= 4'd1;
            else if (ten_h_12 == 4'd0 && one_h_12 == 4'd9)
                one_h_12 <= 4'd0;
            else
                one_h_12 <= tmp_one_h;            
        else
            one_h_12 <= one_h_12;         

    always@*
        tmp_ten_h = ten_h_12 + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            ten_h_12 <= 4'd1;       
        else if(minute == 1)
            if (ten_h_12 == 4'd1 && one_h_12 == 4'd2)
                ten_h_12 <= 4'd0;
            else if (ten_h_12 == 4'd0 && one_h_12 == 4'd9)
                ten_h_12 <= 4'd1;         
        else
            ten_h_12 <= ten_h_12;
endmodule
