`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/09 20:45:28
// Design Name: 
// Module Name: smux4
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


module smux4(
    input [3:0]a,
    input [3:0]b,
    output x,
    output [3:0]A,
    output [3:0]B
    );
    wire [3:0]c;
    assign A = a;
    assign B = b;
    assign c = ~(a&(~b) | (~a)&b);
    assign x = a[3]&(~b[3]) | c[3]&a[2]&(~b[2]) | c[3]&c[2]&a[1]&(~b[1]) | c[3]&c[2]&c[1]&a[0]&(~b[0]);
endmodule
