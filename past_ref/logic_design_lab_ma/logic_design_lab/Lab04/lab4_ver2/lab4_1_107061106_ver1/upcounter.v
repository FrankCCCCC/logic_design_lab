`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/16 14:47:37
// Design Name: 
// Module Name: upcounter
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


module upcounter(
    input f,
    input rst_n,
    output reg [3:0]b
    );
    reg [3:0]tmp_cnt;
    reg clk_out;
    reg [25:0]cnt;
    reg tmp_clk;

    always@(posedge f or negedge rst_n)
        if (~rst_n)cnt<=26'd0;
        else if (cnt == 26'd50000000)
            begin 
                cnt<=26'd0;
                tmp_clk<=(~tmp_clk);
            end
        else 
            cnt<=cnt + 1'b1;
            
    always@*
        tmp_cnt = b + 1'b1;
        
    always@(posedge tmp_clk or negedge rst_n)
        if (~rst_n)
            b <= 0;
        else
            b <= tmp_cnt;
   
endmodule
