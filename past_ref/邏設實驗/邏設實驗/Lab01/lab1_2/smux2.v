`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/01 22:48:14
// Design Name: 
// Module Name: smux2
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


module smux2(
   input [3:0]a,
   input [3:0]b,
   input cin,
   output [3:0]s,
   output cout
   );
   wire [3:0]z;
   wire [4:0]c;
   wire [1:0]t;
   wire [3:0]d;

  assign c[0] = cin;
  smux1 U0(.s(z[0]), .cout(c[1]), .a(a[0]), .b(b[0]), .cin(c[0]));
  smux1 U1(.s(z[1]), .cout(c[2]), .a(a[1]), .b(b[1]), .cin(c[1]));
  smux1 U2(.s(z[2]), .cout(c[3]), .a(a[2]), .b(b[2]), .cin(c[2]));
  smux1 U3(.s(z[3]), .cout(c[4]), .a(a[3]), .b(b[3]), .cin(c[3]));
  assign t[0] = z[3] & z[2];
  assign t[1] = z[3] & z[1];
  assign cout = c[4] | t[1] | t[0];
  
  smux1 U4(.s(s[0]), .cout(d[0]), .a(z[0]), .b(1'b0), .cin(1'b0));
  smux1 U5(.s(s[1]), .cout(d[1]), .a(z[1]), .b(cout), .cin(d[0]));
  smux1 U6(.s(s[2]), .cout(d[2]), .a(z[2]), .b(cout), .cin(d[1]));
  smux1 U7(.s(s[3]), .cout(d[3]), .a(z[3]), .b(1'b0), .cin(d[2]));
  
endmodule

