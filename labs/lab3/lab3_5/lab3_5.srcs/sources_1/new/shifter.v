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

`define NONE_BITS `REG_SIZE'b1111111_0
`define E_BITS `REG_SIZE'b0110000_1
`define H_BITS `REG_SIZE'b1001000_1
`define N_BITS `REG_SIZE'b1101010_1
`define T_BITS `REG_SIZE'b1110000_1
`define U_BITS `REG_SIZE'b1000001_1
`define C_BITS `REG_SIZE'b0110001_1
`define S_BITS `REG_SIZE'b0100100_1

module shifter(
    q0, q1, q2, q3, q4, q5, q6, q7, q8, q9,
    clk,
    rst
    );
    
    output [`REG_SIZE-1:0]q0;
    output [`REG_SIZE-1:0]q1;
    output [`REG_SIZE-1:0]q2;
    output [`REG_SIZE-1:0]q3;
    output [`REG_SIZE-1:0]q4;
    output [`REG_SIZE-1:0]q5;
    output [`REG_SIZE-1:0]q6;
    output [`REG_SIZE-1:0]q7;
    output [`REG_SIZE-1:0]q8;
    output [`REG_SIZE-1:0]q9;
    input clk;
    input rst;
    
    reg [`REG_SIZE-1:0]q0;
    reg [`REG_SIZE-1:0]q1;
    reg [`REG_SIZE-1:0]q2;
    reg [`REG_SIZE-1:0]q3;
    reg [`REG_SIZE-1:0]q4;
    reg [`REG_SIZE-1:0]q5;
    reg [`REG_SIZE-1:0]q6;
    reg [`REG_SIZE-1:0]q7;
    reg [`REG_SIZE-1:0]q8;
    reg [`REG_SIZE-1:0]q9;
    
    always@(posedge clk or negedge rst)
    begin
        if(~rst)
        begin
            q4 <= `NONE_BITS;
            
            q5 <= `S_BITS;
            q6 <= `C_BITS;
            q7 <= `E_BITS;
            q8 <= `E_BITS;
            
            q9 <= `NONE_BITS;
            
            q0 <= `U_BITS;
            q1 <= `H_BITS;
            q2 <= `T_BITS;
            q3 <= `N_BITS;
        end
        else
        begin
            q0 <= q9;
            q1 <= q0;
            q2 <= q1;
            q3 <= q2;
            q4 <= q3;
            q5 <= q4;
            q6 <= q5;
            q7 <= q6;
            q8 <= q7;
            q9 <= q8;
        end
    end
endmodule
