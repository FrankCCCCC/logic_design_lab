`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/09 21:36:39
// Design Name: 
// Module Name: test1
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


module test1;
    wire [3:0]Q;
    reg CLK;
    reg RST_N;
    bcdcounter U0(.q(Q), .clk(CLK), .rst_n(RST_N));
    
    initial
        begin
            RST_N = 0;
            #20 RST_N = 1;
        end
    initial
        begin
            CLK = 0;
            forever #5 CLK = ~CLK;
        end
        
endmodule
