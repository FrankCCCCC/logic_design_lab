`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2022 05:20:36 PM
// Design Name: 
// Module Name: bit3_add_sub
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


module bit3_add_sub(
    input [2:0]a,
    input [2:0]b,
    input m,
    output [2:0]s,
    output v
    );
    // Refers to https://www.geeksforgeeks.org/4-bit-binary-adder-subtractor/amp/
    wire C_IN;
    wire C_OUT_0, C_OUT_1, c_OUT_2;
        
    assign C_IN = m;
    
    full_adder U0(.a(a[0]), .b(b[0] ^ m), .c_in(C_IN), .sum(s[0]), .c_out(C_OUT_0));
    full_adder U1(.a(a[1]), .b(b[1] ^ m), .c_in(C_OUT_0), .sum(s[1]), .c_out(C_OUT_1));
    full_adder U2(.a(a[2]), .b(b[2] ^ m), .c_in(C_OUT_1), .sum(s[2]), .c_out(C_OUT_2));
//    full_adder U3(.a(a[3]), .b(b[3] ^ m), .c_in(C_OUT_2), .sum(s[3]), .c_out(c_OUT_3));

    assign v = (c_OUT_2 ^ s[2]) & (~(a[2] ^ b[2]) ^ m);
    
endmodule
