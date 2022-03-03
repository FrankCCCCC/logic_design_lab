`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2022 05:30:36 PM
// Design Name: 
// Module Name: lab1_3_test
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


module lab1_3_test();

// Output
wire [2:0]O;
//wire [2:0]MINUS;
//wire SEL;
// Input
reg [2:0]A; 
reg [2:0]B;

lab1_3 U0(.a(A), .b(B), .o(O));

initial
begin
// Plus
A=3'b000; B=3'b000;
#10 A=3'b111; B=3'b111;
#10 A=3'b000; B=3'b001;
#10 A=3'b001; B=3'b000;
#10 A=3'b001; B=3'b001;
#10 A=3'b010; B=3'b001;
#10 A=3'b001; B=3'b010;
#10 A=3'b010; B=3'b010;
#10 A=3'b011; B=3'b001;
#10 A=3'b001; B=3'b011;
#10 A=3'b011; B=3'b011;
// Overflow
#10 A=3'b001; B=3'b111;
#10 A=3'b010; B=3'b110;
#10 A=3'b110; B=3'b000;
#10 A=3'b100; B=3'b010;
#10 A=3'b100; B=3'b011;

// TA's test bench
#10 A = -3; B = -4;
#10 A =  2; B =  3;
#10 A = -1; B =  2;
#10 A =  2; B = -1;
#10 A = -4; B =  3;
#10 A =  3; B = -4;
#10 A =  3; B =  3;
#10 A = -4; B = -4;
#10 A =  0; B = -2;
end

endmodule
