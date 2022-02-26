`include "full_adder.v"
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/24 18:42:03
// Design Name: 
// Module Name: lab1_2
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


module lab1_2(
    input [3:0]a,
    input [3:0]b,
    input m,
    output [3:0]s,
    output v
    );
    // Refers to https://www.geeksforgeeks.org/4-bit-binary-adder-subtractor/amp/
    wire C_IN;
    wire C_OUT_0, C_OUT_1, c_OUT_2, c_OUT_3;
//    wire [3:0]xor_b;    
    assign C_IN = m;
//    assign xor_b = b ^ {4{m}};
    full_adder U0(.a(a[0]), .b(b[0] ^ m), .c_in(C_IN), .sum(s[0]), .c_out(C_OUT_0));
    full_adder U1(.a(a[1]), .b(b[1] ^ m), .c_in(C_OUT_0), .sum(s[1]), .c_out(C_OUT_1));
    full_adder U2(.a(a[2]), .b(b[2] ^ m), .c_in(C_OUT_1), .sum(s[2]), .c_out(C_OUT_2));
    full_adder U3(.a(a[3]), .b(b[3] ^ m), .c_in(C_OUT_2), .sum(s[3]), .c_out(c_OUT_3));
    assign v = c_OUT_3 ^ m;
    
endmodule
