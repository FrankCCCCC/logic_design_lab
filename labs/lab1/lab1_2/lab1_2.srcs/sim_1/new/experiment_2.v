`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/24 14:56:33
// Design Name: 
// Module Name: problem_2_test
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


module experiment_2_TB;

lab1_2 uut (.m(m), .a(a), .b(b), .s(s), .v(v));
wire [3:0]s;
wire v;
reg [3:0]a, b;
reg m;

initial begin
     m = 0; a = -8; b = -8;
#10; m = 0; a = -3; b = -1;
#10; m = 0; a =  1; b = -2;
#10; m = 1; a = -4; b =  3;
#10; m = 1; a =  0; b = -4;

#10; m = 0; a =  0; b =  7;
#10; m = 0; a =  7; b =  7;
#10; m = 0; a =  15; b = -5;
#10; m = 0; a =  7; b = 3;
#10; m = 1; a =  -2; b = 6;
#10; m = 1; a =  -3; b = 6;
#10; m = 1; a =  2; b = -6;
#10; $finish;
end


endmodule
