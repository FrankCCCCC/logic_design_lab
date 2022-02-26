`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/01 22:44:09
// Design Name: 
// Module Name: adder
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


module smux1(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    
    assign s = (~a & (~b) & cin) | (~a & b & (~cin)) | (a & (~b) & (~cin)) | (a & b & cin);
    assign cout = (a & b) | (b & cin) | (a & cin);
    
endmodule

