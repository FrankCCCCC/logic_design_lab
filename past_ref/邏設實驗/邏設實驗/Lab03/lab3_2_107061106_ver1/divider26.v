`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/10 13:07:44
// Design Name: 
// Module Name: divider26
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


module divider26(
    clk,
    rst_n,
    clk_out
    );
    output clk_out;
    input clk;
    input rst_n;
    reg clk_out;
    reg[25:0]cnt;
    
    always@(posedge clk or negedge rst_n)
        if (~rst_n)cnt<=26'd0;
        else if (cnt == 26'd50000000)
            begin 
                cnt<=26'd0;
                clk_out<=(~clk_out);
            end
        else 
            cnt<=cnt + 1'b1;
   
endmodule
