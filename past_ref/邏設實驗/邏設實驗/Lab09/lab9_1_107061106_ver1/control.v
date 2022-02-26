`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/19 02:34:41
// Design Name: 
// Module Name: control
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


module control(
    input clk,
    input rst_n,
    input [511:0]key_down,
    input [8:0]last_change,
    input key_valid,
    output reg [8:0]D_ssd_in
    );
    
    reg [14:0]cnt;
    reg [1:0]ssd_ctl_en;
    reg [8:0]ssd_in;
    reg [3:0]ssd_ctl;
    reg [8:0]last_change_tmp;
    
    always@(posedge clk or posedge rst_n)
        if (rst_n)
            {ssd_ctl_en, cnt} <= 17'b0;
        else 
            {ssd_ctl_en, cnt} <= {ssd_ctl_en, cnt} + 1'b1;
            
    always@(posedge clk or posedge rst_n)
        if (rst_n)
            last_change_tmp <= 8'b0;
        else if (key_valid && key_down[last_change])
            last_change_tmp <= last_change;
        else
            last_change_tmp <= last_change_tmp;
            
    always@(posedge clk or posedge rst_n)
        if (rst_n)
            D_ssd_in <= 9'b001011010;
        else
            D_ssd_in <= last_change_tmp;
    
endmodule
