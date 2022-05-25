`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2022 09:57:26 PM
// Design Name: 
// Module Name: bg_mem_addr_gen
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
//`include "global.v"

//`define MODE_BITS_N 2

module bg_mem_addr_gen #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter BG_WIDTH_CNT = 0,
    parameter BG_HEIGHT_CNT = 0
)(
   input clk,
   input rst,
//   input [`MODE_BITS_N-1:0] mode,
   input [CNT_BITS_N-1:0] h_cnt,
   input [CNT_BITS_N-1:0] v_cnt,
   output [PX_ADDR_BITS_N-1:0] pixel_addr,
   output valid
);
    localparam SCALE = 1;
    localparam BG_AREA = BG_WIDTH_CNT * BG_HEIGHT_CNT;
    
    wire [CNT_BITS_N-1:0] h_h_cnt = h_cnt >> SCALE;
    wire [CNT_BITS_N-1:0] h_v_cnt = v_cnt >> SCALE;
    reg [CNT_BITS_N-1:0] position;
  
//   assign pixel_addr = (h_h_cnt + BG_WIDTH_CNT * (h_v_cnt + position) )% 76800;  //640*480 --> 320*240 
    assign pixel_addr = ((h_h_cnt + position) % BG_WIDTH_CNT + BG_WIDTH_CNT * h_v_cnt) % BG_AREA;  //640*480 --> 320*240
    assign valid = 1'b1;

   always @ (posedge clk or posedge rst) begin
        if(rst)
            position <= 0;
//       else if(position < (BG_HEIGHT_CNT - 1))
        else if(position < (BG_WIDTH_CNT - 1))
           position <= position + 1;
        else
           position <= 0;
   end
    
endmodule
