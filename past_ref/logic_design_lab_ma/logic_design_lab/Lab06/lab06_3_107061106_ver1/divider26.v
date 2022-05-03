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
    clk_c2,
    clk_out
    );
    output clk_out;
    input clk;
    input rst_n;
    input clk_c;
    input clk_c2;
    reg clk_out;
    reg[25:0]cnt;
    reg[25:0]cnt2;
    reg[25:0]cnt3;
    reg[25:0]cnt4;
    reg clk1;
    reg clk2;
    reg clk3;
    reg clk4;
    
    always@(posedge clk or negedge rst_n)
        if (~rst_n)cnt<=26'd0;
        else if (cnt == 26'd50000000)
            begin 
                cnt<=26'd0;
                clk1<=(~clk1);
            end
        else 
            cnt<=cnt + 1'b1;
            
    always@(posedge clk or negedge rst_n)
        if (~rst_n) cnt2 <= 26'd0;
            else if (cnt2 == 26'd1000000)
                begin 
                    cnt2 <= 26'd0;
                    clk2 <= (~clk2);
                end
            else 
                cnt2 <= cnt2 + 1'b1;
                
    always@(posedge clk or negedge rst_n)
                        if (~rst_n)cnt3<=26'd0;
                        else if (cnt3 == 26'd100)
                            begin 
                                cnt3<=26'd0;
                                clk3<=(~clk3);
                            end
                        else 
                            cnt3<=cnt3 + 1'b1;
                        
                                
                
    always@*
        if (clk_c && clk_c2)
            clk_out <= clk1;
        else if (clk_c && clk_c2 == 0)
            clk_out <= clk2;
        else if (clk_c == 0 && clk_c2)
            clk_out <= clk3;
        else
            clk_out <= clk;
            
   
endmodule
