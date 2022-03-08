`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2022 09:25:29 PM
// Design Name: 
// Module Name: lab1_1_test
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


module lab1_1_test();
reg A, B, C, D;
wire W, X, Y, Z;

lab1_1 U0(.a(A), .b(B), .c(C), .d(D), .w(W), .x(X), .y(Y), .z(Z));

initial
begin

A=0; B=0; C=0; D=0;
#10 A=0; B=0; C=0; D=1;
#10 A=0; B=0; C=1; D=0;
#10 A=0; B=0; C=1; D=1;
#10 A=0; B=1; C=0; D=0;
#10 A=0; B=1; C=0; D=1;
#10 A=0; B=1; C=1; D=0;
#10 A=0; B=1; C=1; D=1;

#10 A=1; B=0; C=0; D=0;
#10 A=1; B=0; C=0; D=1;
#10 A=1; B=0; C=1; D=0;
#10 A=1; B=0; C=1; D=1;
#10 A=1; B=1; C=0; D=0;
#10 A=1; B=1; C=0; D=1;
#10 A=1; B=1; C=1; D=0;
#10 A=1; B=1; C=1; D=1;
end

endmodule