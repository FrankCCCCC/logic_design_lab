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
`define MODE_BITS_N 2

module bg_mem_addr_gen
#(
    parameter CNT_BITS_N = 10,
    parameter PX_ADDR_BITS_N = 17,
    parameter WIDTH = 640,
    parameter HEIGHT = 480
)
(
   input clk,
   input rst,
   input [`MODE_BITS_N-1:0] mode,
   input [CNT_BITS_N-1:0] h_cnt,
   input [CNT_BITS_N-1:0] v_cnt,
   output [PX_ADDR_BITS_N-1:0] pixel_addr,
   output valid
);
    wire [CNT_BITS_N-1:0] h_h_cnt = h_cnt >> 1;
    wire [CNT_BITS_N-1:0] h_v_cnt = v_cnt >> 1;
    reg [CNT_BITS_N-1:0] position;
  
//   assign pixel_addr = ((h_cnt>>1)+320*(v_cnt>>1)+ position*320 )% 76800;  //640*480 --> 320*240 
    assign pixel_addr = ((h_h_cnt + position) % (WIDTH>>1) + (WIDTH>>1) * h_v_cnt) % (WIDTH*HEIGHT>>2);  //640*480 --> 320*240
    assign valid = 1'b1;

   always @ (posedge clk or posedge rst) begin
        if(rst)
            position <= 0;
//       else if(position < 239)
        else if(position < (WIDTH>>1-1))
           position <= position + 1;
        else
           position <= 0;
   end
    
endmodule
