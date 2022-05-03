`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/10 01:29:06
// Design Name: 
// Module Name: testring
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


module testring;
    wire [7:0]T;
    reg CLK;
    reg RST_N;
    ringcounter U0(.t(T), .clk(CLK), .rst_n(RST_N));
    
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
