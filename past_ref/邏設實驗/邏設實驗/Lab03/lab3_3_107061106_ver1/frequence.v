`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/10 13:52:25
// Design Name: 
// Module Name: frequence
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


module frequence(
    clk,
    rst_n,
    t
    );
    output [7:0]t;
    input clk;
    input rst_n;
    reg [7:0]t;
    reg clk_out;
    reg[25:0]cnt;
    reg tmp_clk;
        
    always@(posedge clk or negedge rst_n)
        if (~rst_n)cnt<=26'd0;
        else if (cnt == 26'd50000000)
            begin 
                cnt<=26'd0;
                tmp_clk<=(~tmp_clk);
            end
        else 
            cnt<=cnt + 1'b1;
        
    always@(posedge tmp_clk or negedge rst_n)
        begin
            if(~rst_n)t<=8'b01010101;
            else
                begin
                    t[0] <= t[1];
                    t[1] <= t[2];
                    t[2] <= t[3];
                    t[3] <= t[4];
                    t[4] <= t[5];
                    t[5] <= t[6];
                    t[6] <= t[7];
                    t[7] <= t[0];
                end
        end
endmodule
