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
    output reg [3:0]ten_h_12,
    output reg pm
    );
    reg [3:0]tmp_one_h;
    
    always@*
        tmp_one_h = one_h_12 + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            one_h_12 <= 4'd0; 
        else if(minute == 1)
            if ((ten_h_12 == 4'd0 && one_h_12 == 4'd0) || (ten_h_12 == 4'd1 && one_h_12 == 4'd2))
                one_h_12 <= 4'd1;
            else if ((ten_h_12 == 4'd0 && one_h_12 == 4'd9) || (ten_h_12 == 4'd1 && one_h_12 == 4'd1 && pm == 1'b1))
                one_h_12 <= 4'd0;
            else
                one_h_12 <= tmp_one_h;            
        else
            one_h_12 <= one_h_12;         
           
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            begin
            ten_h_12 <= 4'd0;
            pm <= 1'b0;
            end   
        else if(minute == 1)
            if ((ten_h_12 == 4'd1 && one_h_12 == 4'd2) ||(ten_h_12 == 4'd1 && one_h_12 == 4'd1 && pm == 1'b1))
                begin
                ten_h_12 <= 4'd0;
                pm <= ~pm;
                end
            else if (ten_h_12 == 4'd0 && one_h_12 == 4'd9)
                begin
                ten_h_12 <= 4'd1;
                pm <= pm;
                end         
        else
            begin
            ten_h_12 <= ten_h_12;
            pm <= pm;
            end
    

endmodule
