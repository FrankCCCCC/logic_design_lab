`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/24 15:46:31
// Design Name: 
// Module Name: problem_3_test
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


module experiment_3_TB;

experiment_3_design uut (.a(a), .b(b), .o(o));
reg signed[2:0]a, b;
wire signed[2:0]o;

initial begin
     a = -3; b = -4;
#10; a =  2; b =  3;
#10; a = -1; b =  2;
#10; a =  2; b = -1;
#10; a = -4; b =  3;
#10; a =  3; b = -4;
#10; a =  3; b =  3;
#10; a = -4; b = -4;
#10; a =  0; b = -2;
#10; $finish;
end


endmodule
