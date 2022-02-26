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
    input set_hour_one,
    input set_hour_ten,
    output reg [3:0]one_h,
    output reg [3:0]ten_h,
    output reg hour0
    );
    reg [3:0]tmp_one_h;
    reg [3:0]tmp_ten_h;
    
    always@*
        tmp_one_h = one_h - 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            one_h <= set_hour_one;
        else if(minute == 1)
            if (one_h == 4'd0)
                if (ten_h == 4'd0)
                    one_h <= one_h;
                else
                    one_h <= 4'd9;
            else
                one_h <= tmp_one_h;         
        else
            one_h <= one_h;

    always@*
        tmp_ten_h = ten_h - 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            begin
                ten_h <= set_hour_ten;
                hour0 <= 4'd0;
            end
        else if (minute == 1)     
            if (one_h == 4'd0)
                if (ten_h == 4'd0)
                    begin
                        ten_h <= ten_h;
                        hour0 <= 4'd1;
                    end
                else
                    begin
                        ten_h <= tmp_ten_h;
                        hour0 <= 4'd0;
                    end
        else
            ten_h <= ten_h;
endmodule
