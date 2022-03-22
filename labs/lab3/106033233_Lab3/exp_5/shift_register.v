`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2022 11:47:45 AM
// Design Name: 
// Module Name: shift_register
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

module shift_register(
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
    
    wire [`REG_SIZE-1:0]q0;
    wire [`REG_SIZE-1:0]q1;
    wire [`REG_SIZE-1:0]q2;
    wire [`REG_SIZE-1:0]q3;
    wire [`REG_SIZE-1:0]q4;
    wire [`REG_SIZE-1:0]q5;
    wire [`REG_SIZE-1:0]q6;
    wire [`REG_SIZE-1:0]q7;
    wire [`REG_SIZE-1:0]q8;
    wire [`REG_SIZE-1:0]q9;
    wire CLK_OUT;
    
    frequency_divider U0(.clk(clk), .rst(rst), .clk_out(CLK_OUT));
    shifter U1(.clk(CLK_OUT), .rst(rst), .q0(q0), .q1(q1), .q2(q2), .q3(q3), .q4(q4), .q5(q5), .q6(q6), .q7(q7), .q8(q8), .q9(q9));
endmodule
