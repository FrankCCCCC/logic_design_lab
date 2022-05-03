`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/16 16:58:17
// Design Name: 
// Module Name: state_ctl
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


module state(
    input clk,
    input rst,
    input key_valid,
    input [8:0] last_change,
    input [511:0] key_down,
    output reg enter_st
    );
       
    always@(posedge clk or posedge rst)
        if(rst) 
            enter_st <= 0;
        else if((key_valid == 1) && (last_change == 9'h5A) && (enter_st != 1)) 
            enter_st <= ~enter_st;
        else 
            enter_st <= enter_st; 
endmodule
