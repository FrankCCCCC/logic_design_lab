`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/09 21:24:51
// Design Name: 
// Module Name: bcdcounter
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

module bcdcounter(
    q,
    clk,
    rst_n
    );
    output [3:0]q;
    input clk;
    input rst_n;
    
    reg[3:0]q;
    reg[3:0]q_tmp;
    
    always@*
        q_tmp = q+4'd1;
        
    always@(posedge clk or negedge rst_n)
    begin
        if(~rst_n)q<=4'd0;
        else q<=q_tmp;
    end
endmodule
