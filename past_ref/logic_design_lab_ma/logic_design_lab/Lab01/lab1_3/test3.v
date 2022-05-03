`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/01 23:05:20
// Design Name: 
// Module Name: test3
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


module test3;
wire [7:0]B;
reg EN;
reg [2:0]A;
smux3 U0(.a(A), .en(EN), .b(B));
initial
begin
    A = 0; EN = 0;
    #10 A = 3'b001;
    #10 A = 3'b010;
    #10 A = 3'b011;
    #10 A = 3'b100;
    #10 A = 3'b101;
    #10 A = 3'b110;
    #10 A = 3'b111;
    #10 A = 3'b000; EN = 1;
    #10 A = 3'b001; EN = 1;
    #10 A = 3'b010; EN = 1;
    #10 A = 3'b011; EN = 1;
    #10 A = 3'b100; EN = 1;
    #10 A = 3'b101; EN = 1;
    #10 A = 3'b110; EN = 1;
    #10 A = 3'b111; EN = 1;
end
endmodule
