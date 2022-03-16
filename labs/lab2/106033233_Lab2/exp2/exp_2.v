`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2022 09:40:23 PM
// Design Name: 
// Module Name: lab2_2
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


module lab2_2(
    input [3:0]i,
    output [3:0]d,
    output [3:0]P,
    output [7:0]D
    );
    
    bit4_binary U0(.i(i), .d(d));
    segment7 U1(.i(i), .P(P), .D(D));
endmodule
