`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 08:35:37 PM
// Design Name: 
// Module Name: bird_pos_ctrl
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
`include "global.v"

module bird_pos_ctrl
#(
    parameter CNT_BITS_N = 10,
    parameter PX_ADDR_BITS_N = 17,
    parameter BIRD_WIDTH_CNT = 10,
    parameter BIRD_HEIGHT_CNT = 10,
    parameter WIDTH = `DISP_WIDTH,
    parameter HEIGHT = `DISP_HEIGHT
)
(
    input clk,
    input rst,
    output reg [CNT_BITS_N-1:0] pos_h_cnt = 0,
    output reg [CNT_BITS_N-1:0] pos_v_cnt = 0
);
    
endmodule
