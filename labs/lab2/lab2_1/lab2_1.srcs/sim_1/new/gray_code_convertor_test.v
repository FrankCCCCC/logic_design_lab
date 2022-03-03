`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2022 08:50:31 PM
// Design Name: 
// Module Name: gray_code_convertor_test
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


module gray_code_convertor_test();
reg A, B, C, D;
wire W, X, Y, Z;

gray_code_convertor U0(.a(A), .b(B), .c(C), .d(D), .w(W), .x(X), .y(Y), .z(Z));

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
