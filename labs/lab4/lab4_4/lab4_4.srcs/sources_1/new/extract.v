`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2022 06:02:09 PM
// Design Name: 
// Module Name: extract
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


module extract(
    input [7:0] x,
    output [3:0] d1,
    output [3:0] d2
    );
    
    wire [7:0]mod;
    wire [7:0]div;
    assign mod = x % 10;
    assign div = x / 10;
    
    assign d1 = mod[3:0];
    assign d2 = div[3:0];
endmodule
