`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/01 22:51:18
// Design Name: 
// Module Name: test2
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


module test2;
   wire [3:0]S;
   wire COUT;
   reg [3:0]A;
   reg [3:0]B;
   reg CIN;
   smux2 U0(.s(S), .cout(COUT), .a(A), .b(B), .cin(CIN));
   initial
   begin
       A = 0; B = 0; CIN = 0;
       #10 A = 4'd1; B = 4'd0;
       #10 A = 4'd3; B = 4'd2;
       #10 A = 4'd5; B = 4'd4;
       #10 A = 4'd7; B = 4'd6;
       #10 A = 4'd9; B = 4'd8;
       #10 A = 4'd1; B = 4'd0; CIN = 1;
       #10 A = 4'd3; B = 4'd2; CIN = 1;
       #10 A = 4'd5; B = 4'd4; CIN = 1;
       #10 A = 4'd7; B = 4'd6; CIN = 1;
       #10 A = 4'd9; B = 4'd8; CIN = 1;  
   end
endmodule

