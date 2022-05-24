`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2022 11:27:33 PM
// Design Name: 
// Module Name: addr_flip
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


module addr_flip
#(
    parameter ADDR_BIT_N = 17,
    parameter OBJ_AREA = 2**ADDR_BIT_N
)
(
    input [ADDR_BIT_N-1:0] addr,
    output [ADDR_BIT_N-1:0]addr_out
);
    assign addr_out = (OBJ_AREA - 1) - addr;
endmodule
