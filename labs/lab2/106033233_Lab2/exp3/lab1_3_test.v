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

reg [3:0]A_D1;
reg [3:0]A_D2;
reg [3:0]B_D1;
reg [3:0]B_D2;
wire [2:0]BULL;
wire [2:0]COW;

lab1_3 U0 (.A_D1(A_D1), .A_D2(A_D2), .B_D1(B_D1), .B_D2(B_D2), .bull(BULL), .cow(COW));

initial begin
     A_D1 = 4'd0; A_D2 = 4'd0; B_D1 = 4'd0; B_D2 = 4'd0;
#10; A_D1 = 4'd0; A_D2 = 4'd1; B_D1 = 4'd0; B_D2 = 4'd3;
#10; A_D1 = 4'd0; A_D2 = 4'd2; B_D1 = 4'd1; B_D2 = 4'd1;
#10; A_D1 = 4'd0; A_D2 = 4'd3; B_D1 = 4'd0; B_D2 = 4'd9;
#10; A_D1 = 4'd0; A_D2 = 4'd4; B_D1 = 4'd4; B_D2 = 4'd4;
#10; A_D1 = 4'd0; A_D2 = 4'd5; B_D1 = 4'd5; B_D2 = 4'd4;
#10; A_D1 = 4'd0; A_D2 = 4'd6; B_D1 = 4'd6; B_D2 = 4'd1;
#10; A_D1 = 4'd0; A_D2 = 4'd7; B_D1 = 4'd0; B_D2 = 4'd7;
#10; A_D1 = 4'd0; A_D2 = 4'd8; B_D1 = 4'd1; B_D2 = 4'd8;
#10; A_D1 = 4'd0; A_D2 = 4'd9; B_D1 = 4'd1; B_D2 = 4'd9;
#10; A_D1 = 4'd1; A_D2 = 4'd0; B_D1 = 4'd1; B_D2 = 4'd1;
#10; A_D1 = 4'd1; A_D2 = 4'd1; B_D1 = 4'd1; B_D2 = 4'd0;
#10; A_D1 = 4'd1; A_D2 = 4'd3; B_D1 = 4'd3; B_D2 = 4'd1;
#10; A_D1 = 4'd1; A_D2 = 4'd7; B_D1 = 4'd1; B_D2 = 4'd1;
#10; A_D1 = 4'd2; A_D2 = 4'd1; B_D1 = 4'd3; B_D2 = 4'd3;
#10; A_D1 = 4'd2; A_D2 = 4'd4; B_D1 = 4'd4; B_D2 = 4'd2;
#10; A_D1 = 4'd2; A_D2 = 4'd8; B_D1 = 4'd2; B_D2 = 4'd2;
#10; A_D1 = 4'd3; A_D2 = 4'd0; B_D1 = 4'd0; B_D2 = 4'd3;
#10; A_D1 = 4'd3; A_D2 = 4'd1; B_D1 = 4'd1; B_D2 = 4'd1;
#10; A_D1 = 4'd4; A_D2 = 4'd5; B_D1 = 4'd4; B_D2 = 4'd4;
#10; A_D1 = 4'd5; A_D2 = 4'd7; B_D1 = 4'd5; B_D2 = 4'd5;
#10; A_D1 = 4'd5; A_D2 = 4'd9; B_D1 = 4'd4; B_D2 = 4'd1;
#10; A_D1 = 4'd6; A_D2 = 4'd3; B_D1 = 4'd3; B_D2 = 4'd3;
#10; $finish;
end

endmodule
