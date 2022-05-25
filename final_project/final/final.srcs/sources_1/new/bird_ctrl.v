`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 07:54:46 PM
// Design Name: 
// Module Name: bird_ctrl
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

`define DEFAULT_COLOR_BIRD 'h000

module bird_ctrl #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter MEM_DATA_BIT_N = 0,
    parameter BIRD_WIDTH_CNT = 0,
    parameter BIRD_HEIGHT_CNT = 0,
    parameter WIDTH_CNT = 0,
    parameter HEIGHT_CNT = 0
)(
    input clk,
    input clk_flap,
    input clk_move,
    input rst,
    input btn_fly,
    input enable_move,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    output [MEM_DATA_BIT_N-1:0] dout,
    output px_valid 
);
    
    wire [PX_ADDR_BITS_N-1:0] pixel_addr;
    wire px_valid_0, px_valid_1;
    
    wire [CNT_BITS_N-1:0] pos_h_cnt;
    wire [CNT_BITS_N-1:0] pos_v_cnt;
    
    assign px_valid_1 = (dout == `DEFAULT_COLOR_BIRD)? 1'b0 : 1'b1;
    assign px_valid = px_valid_0 & px_valid_1;
    
    bird_mem_addr_gen #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .BIRD_WIDTH_CNT(BIRD_WIDTH_CNT),
        .BIRD_HEIGHT_CNT(BIRD_HEIGHT_CNT)
    ) UMEMGEN (
        .clk(clk_flap),
        .rst(rst),
        .pos_h_cnt(pos_h_cnt),
        .pos_v_cnt(pos_v_cnt),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .pixel_addr(pixel_addr),
        .valid(px_valid_0)
    );
    
    bird_pos_ctrl #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .BIRD_WIDTH_CNT(BIRD_WIDTH_CNT),
        .BIRD_HEIGHT_CNT(BIRD_HEIGHT_CNT),
        .WIDTH_CNT(WIDTH_CNT),
        .HEIGHT_CNT(HEIGHT_CNT)
    ) UBIRDCTRL (
        .clk(clk),
        .clk_move(clk_move),
        .rst(rst),
        .btn_fly(btn_fly),
        .pos_h_cnt(pos_h_cnt),
        .pos_v_cnt(pos_v_cnt)
    );
    
    blk_mem_gen_bird blk_mem_gen_bird_inst(
        .clka(clk),
        .wea(0),
        .addra(pixel_addr),
        .dina(12'd0),
        .douta(dout)
    );
    
endmodule
