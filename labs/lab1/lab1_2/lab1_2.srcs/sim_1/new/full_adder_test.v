`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/24 19:09:40
// Design Name: 
// Module Name: full_adder_test
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


module full_adder_test();
wire SUM, C_OUT;
reg A, B, C_IN;

full_adder U0(.a(A), .b(B), .c_in(C_IN), .sum(SUM), .c_out(C_OUT));

initial
begin

A=0; B=0; C_IN=0;
#10 A=0; B=1; C_IN=0;
#10 A=1; B=0; C_IN=0;
#10 A=1; B=1; C_IN=0;
#10 A=0; B=0; C_IN=1;
#10 A=0; B=1; C_IN=1;
#10 A=1; B=0; C_IN=1;
#10 A=1; B=1; C_IN=1;

end
endmodule
