`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2022 08:37:19 PM
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

reg [7:0]A;
reg [7:0]B;
wire [2:0]BULL;
wire [2:0]COW;

lab1_3 U0 (.a(A), .b(B), .bull(BULL), .cow(COW));

initial begin
     A = 0; B = 0;
#10; A = 1; B = 3;
#10; A = 2; B = 11;
#10; A = 3; B = 9;
#10; A = 4; B = 44;
#10; A = 5; B = 54;
#10; A = 6; B = 61;
#10; A = 7; B = 7;
#10; A = 8; B = 18;
#10; A = 9; B = 19;
#10; A = 10; B = 11;
#10; A = 11; B = 10;
#10; A = 13; B = 31;
#10; A = 17; B = 11;
#10; A = 21; B = 33;
#10; A = 24; B = 42;
#10; A = 28; B = 22;
#10; A = 30; B = 3;
#10; A = 31; B = 11;
#10; A = 45; B = 44;
#10; A = 57; B = 55;
#10; A = 59; B = 41;
#10; A = 63; B = 33;
#10; $finish;
end

endmodule
