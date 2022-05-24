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
`include "global.v"

`define MODE_BITS_N 2

module bg_mem_addr_gen
#(
//    parameter CNT_BITS_N = `CNT_BITS_N,
//    parameter PX_ADDR_BITS_N = `PX_ADDR_BITS_N,
    parameter BG_WIDTH = 320,
    parameter BG_HEIGHT = 240
)
(
   input clk,
   input rst,
   input [`MODE_BITS_N-1:0] mode,
   input [`CNT_BITS_N-1:0] h_cnt,
   input [`CNT_BITS_N-1:0] v_cnt,
   output [`PX_ADDR_BITS_N-1:0] pixel_addr,
   output valid
);
    localparam SCALE = 1;
    localparam H_WIDTH = BG_WIDTH;
    localparam H_HEIGHT = BG_HEIGHT;
    localparam BG_AREA = H_WIDTH * H_HEIGHT;
    
    wire [`CNT_BITS_N-1:0] h_h_cnt = h_cnt >> SCALE;
    wire [`CNT_BITS_N-1:0] h_v_cnt = v_cnt >> SCALE;
    reg [`CNT_BITS_N-1:0] position;
  
//   assign pixel_addr = (h_h_cnt + H_WIDTH * (h_v_cnt + position) )% 76800;  //640*480 --> 320*240 
    assign pixel_addr = ((h_h_cnt + position) % H_WIDTH + H_WIDTH * h_v_cnt) % BG_AREA;  //640*480 --> 320*240
    assign valid = 1'b1;

   always @ (posedge clk or posedge rst) begin
        if(rst)
            position <= 0;
//       else if(position < (H_HEIGHT - 1))
        else if(position < (H_WIDTH - 1))
           position <= position + 1;
        else
           position <= 0;
   end
    
endmodule
