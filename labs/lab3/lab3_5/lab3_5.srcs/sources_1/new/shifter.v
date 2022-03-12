`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2022 11:31:23 AM
// Design Name: 
// Module Name: shifter
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


`define SHIFTER_WIDTH 10
`define REG_SIZE 8

`define NONE_BITS `REG_SIZE'b11111110
`define E_BITS `REG_SIZE'b01100001
`define H_BITS `REG_SIZE'b10010001
`define N_BITS `REG_SIZE'b11010101
`define T_BITS `REG_SIZE'b11100001
`define U_BITS `REG_SIZE'b10000011
`define C_BITS `REG_SIZE'b01100011
`define S_BITS `REG_SIZE'b01001001

module shifter(
    q,
    clk,
    rst
    );
    
    output [`REG_SIZE-1:0]q [`SHIFTER_WIDTH-1:0];
    input clk;
    input rst;
    
    reg [`REG_SIZE-1:0]q [`SHIFTER_WIDTH-1:0];
    
    always@(posedge clk or negedge rst)
    begin
        if(~rst)
        begin
            q[4] <= `NONE_BITS;
            
            q[5] <= `S_BITS;
            q[6] <= `C_BITS;
            q[7] <= `E_BITS;
            q[8] <= `E_BITS;
            
            q[9] <= `NONE_BITS;
            
            q[0] <= `U_BITS;
            q[1] <= `H_BITS;
            q[2] <= `T_BITS;
            q[3] <= `N_BITS;
        end
        else
        begin
            q[0] <= q[9];
            q[1] <= q[0];
            q[2] <= q[1];
            q[3] <= q[2];
            q[4] <= q[3];
            q[5] <= q[4];
            q[6] <= q[5];
            q[7] <= q[6];
            q[8] <= q[7];
            q[9] <= q[8];
        end
    end
endmodule
