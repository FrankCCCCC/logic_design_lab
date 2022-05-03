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
    clk_c,
    clk_out
    );
    output clk_out;
    input clk;
    input rst_n;
    input clk_c;
    reg clk_out;
    reg[25:0]cnt;
    reg[25:0]cnt2;
    reg clk1;
    reg clk2;
    
    always@(posedge clk or posedge rst_n)
        if (rst_n)cnt<=26'd0;
        else if (cnt == 26'd20000)
            begin 
                cnt<=26'd0;
                clk1<=(~clk1);
            end
        else 
            cnt<=cnt + 1'b1;
            
    always@(posedge clk or posedge rst_n)
        if (rst_n) cnt2 <= 26'd0;
            else if (cnt2 == 26'd50000000)
                begin 
                    cnt2 <= 26'd0;
                    clk2 <= (~clk2);
                end
            else 
                cnt2 <= cnt2 + 1'b1;
                
    always@*
        if (clk_c)
            clk_out <= clk1;
        else
            clk_out <= clk2;
            
   
endmodule
