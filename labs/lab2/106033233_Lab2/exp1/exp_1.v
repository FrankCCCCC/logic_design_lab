`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2022 08:48:50 PM
// Design Name: 
// Module Name: gray_code_convertor
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


module gray_code_convertor(
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
