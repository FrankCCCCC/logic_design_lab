`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/01 23:04:43
// Design Name: 
// Module Name: smux3
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


module smux3(
    input en,
    input [2:0]a,
    output [7:0]b
    );
    
    assign b[0] = en & (~a[2]) & (~a[1]) & (~a[0]);
    assign b[1] = en & (~a[2]) & (~a[1]) & a[0];
    assign b[2] = en & (~a[2]) & a[1] & (~a[0]);
    assign b[3] = en & (~a[2]) & a[1] & a[0];
    assign b[4] = en & a[2] & (~a[1]) & (~a[0]);
    assign b[5] = en & a[2] & (~a[1]) & a[0];
    assign b[6] = en & a[2] & a[1] & (~a[0]);
    assign b[7] = en & a[2] & a[1] & a[0];
endmodule

