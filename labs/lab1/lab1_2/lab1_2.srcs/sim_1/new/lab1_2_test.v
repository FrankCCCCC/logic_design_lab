`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2022 10:35:32 PM
// Design Name: 
// Module Name: lab1_2_test
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


module lab1_2_test();

// Output
wire [3:0]SUM;
wire V;
// Input
reg [3:0]A; 
reg [3:0]B;
reg M;

lab1_2 U0(.a(A), .b(B), .m(M), .s(SUM), .v(V));

initial
begin
// Plus
A=4'b0000; B=4'b0000; M=0;
#10 A=4'b1111; B=4'b1111; M=0;
#10 A=4'b0000; B=4'b0001; M=0;
#10 A=4'b0001; B=4'b0000; M=0;
#10 A=4'b0001; B=4'b0001; M=0;
#10 A=4'b0010; B=4'b0001; M=0;
#10 A=4'b0001; B=4'b0010; M=0;
#10 A=4'b0010; B=4'b0010; M=0;
#10 A=4'b0011; B=4'b0001; M=0;
#10 A=4'b0001; B=4'b0011; M=0;
#10 A=4'b0011; B=4'b0011; M=0;
// Overflow
#10 A=4'b0001; B=4'b1111; M=0;
#10 A=4'b0010; B=4'b1110; M=0;

// Minus
#10 A=4'b0000; B=4'b0000; M=1;
#10 A=4'b0001; B=4'b0001; M=1;
#10 A=4'b0010; B=4'b0001; M=1;
#10 A=4'b0011; B=4'b0001; M=1;
#10 A=4'b0011; B=4'b0010; M=1;
// Underflow
#10 A=4'b0000; B=4'b0001; M=1;
#10 A=4'b0000; B=4'b0010; M=1;

end
endmodule
