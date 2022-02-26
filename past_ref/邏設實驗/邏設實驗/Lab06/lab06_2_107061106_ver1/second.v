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


module day(
    input clk,
    input rst_n,
    output reg [3:0]one_d,
    output reg [3:0]ten_d,
    output reg [3:0]one_m,
    output reg [3:0]ten_m,
    output reg month
    );   
    reg [3:0]tmp_one_d;
    reg [3:0]tmp_ten_d;
    reg [3:0]tmp_one_m;
    reg day;
    reg [3:0]month_ctl_one;
    reg [3:0]month_ctl_ten;
    
    always@*
        if ((ten_m == 4'd0 && (one_m == 4'd1 || one_m == 4'd3 || one_m == 4'd5 || one_m == 4'd7 || one_m == 4'd8)) ||
            (ten_m == 4'd1 && (one_m == 4'd0 || one_m == 4'd2)))
            begin
                month_ctl_one <= 4'd1;
                month_ctl_ten <= 4'd3;
            end
        else if (ten_m == 4'd0 && one_m == 4'd2)
            begin
                month_ctl_one <= 4'd8;
                month_ctl_ten <= 4'd2;
            end
        else 
            begin
                month_ctl_one <= 4'd0;
                month_ctl_ten <= 4'd3;
            end
            
            
    always@*
        tmp_one_d = one_d + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            one_d <= 4'd1; 
        else if (one_d == month_ctl_one && ten_d == month_ctl_ten)
            one_d <= 4'd1;
        else if (one_d == 4'd9)
            one_d <= 4'd0;
        else 
            one_d <= tmp_one_d;
            
    always@*
        tmp_ten_d = ten_d + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            ten_d <= 4'd0;    
        else if (one_d == month_ctl_one && ten_d == month_ctl_ten)
            ten_d <= 4'd0;
        else if (one_d == 4'd9)
            ten_d <= tmp_ten_d;
        else
            ten_d <= ten_d;                       
            
// month
    always@*
        tmp_one_m = one_m + 1'b1;                  
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            one_m <= 4'd1;  
        else if(one_d == month_ctl_one && ten_d == month_ctl_ten)
            if (one_m == 4'd2 && ten_m == 4'd1)
                one_m <= 4'd1;
            else if (one_m == 4'd9)
                one_m <= 4'd0;
            else 
                one_m <= tmp_one_m;
        else
            one_m <= one_m;
            
    always@(posedge clk or negedge rst_n)
        if (~rst_n)
            begin
                ten_m <= 4'd0; 
                month <= 0;
            end   
        else if(one_m == 4'd2 && ten_m == 4'd1 && one_d == month_ctl_one && ten_d == month_ctl_ten)
            begin
                ten_m <= 4'd0;
                month <= 1;
            end
        else if (one_m == 4'd9 && ten_m == 4'd0 && one_d == month_ctl_one && ten_d == month_ctl_ten)
            begin
                ten_m <= 4'd1;
                month <= 0;
            end            
        else
            begin
                ten_m <= ten_m;
                month <= 0;
            end
endmodule
