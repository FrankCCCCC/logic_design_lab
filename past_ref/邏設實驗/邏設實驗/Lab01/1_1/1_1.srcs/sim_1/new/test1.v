`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/01 22:45:00
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
    wire S, COUT;
    reg A, B, CIN;
    smux1 U0(.s(S), .cout(COUT), .a(A), .b(B), .cin(CIN));
    initial
    begin
        A = 0; B = 0; CIN = 0;
        #10 A = 0; B = 0; CIN = 1;
        #10 A = 0; B = 1; CIN = 0;
        #10 A = 0; B = 1; CIN = 1;
        #10 A = 1; B = 0; CIN = 0;
        #10 A = 1; B = 0; CIN = 1;
        #10 A = 1; B = 1; CIN = 0;
        #10 A = 1; B = 1; CIN = 1;
    end
endmodule

