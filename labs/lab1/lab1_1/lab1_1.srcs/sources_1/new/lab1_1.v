`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2022 09:23:42 PM
// Design Name: 
// Module Name: lab1_1
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


module lab1_1(
    a, b, c, d,
    w, x, y, z
    );
    
    input a, b, c, d;
    output w, x, y, z;
    
    assign w = a;
    assign x = a ^ b;
    assign y = b ^ c;
    assign z = c ^ d;
endmodule
