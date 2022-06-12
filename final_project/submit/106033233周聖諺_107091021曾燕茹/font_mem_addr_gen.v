`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2022 10:06:11 AM
// Design Name: 
// Module Name: font_mem_addr_gen
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

module font_mem_addr_gen #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter FONT_WIDTH_CNT = 0,
    parameter FONT_HEIGHT_CNT = 0,
    parameter FONT_NUM_ROW = 0,
    parameter FONT_NUM_COL = 0,
    parameter ALPHABET_BITS_N = 0
)(
    input clk,
    input rst,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    input [CNT_BITS_N-1:0] pos_h_cnt,
    input [CNT_BITS_N-1:0] pos_v_cnt,
    input [ALPHABET_BITS_N-1:0] alphabet,
    output reg [PX_ADDR_BITS_N-1:0] pixel_addr = 0,
    output reg valid = 1'b0
);
    localparam FONT_AREA = FONT_WIDTH_CNT * FONT_HEIGHT_CNT;
    
    wire [CNT_BITS_N-1:0] h_h_cnt = h_cnt >> 1;
    wire [CNT_BITS_N-1:0] h_v_cnt = v_cnt >> 1;
    
    reg [PX_ADDR_BITS_N-1:0] addr_h_cnt = 0, blk_h_cnt = 0;
    reg [PX_ADDR_BITS_N-1:0] addr_v_cnt = 0, blk_v_cnt = 0;

    always@(*) begin
        blk_h_cnt <= alphabet % FONT_NUM_COL;
        blk_v_cnt <= (alphabet / FONT_NUM_COL) % FONT_NUM_ROW;
    end
    
    always@(*) begin
        pixel_addr <= (addr_h_cnt + FONT_WIDTH_CNT * blk_h_cnt) + (FONT_WIDTH_CNT * FONT_NUM_COL * (addr_v_cnt + FONT_HEIGHT_CNT * blk_v_cnt));
        // pixel_addr <= addr_h_cnt + (FONT_WIDTH_CNT * FONT_NUM_COL * addr_v_cnt);
    end
    
    always@(*) begin
        if(h_h_cnt >= pos_h_cnt && h_h_cnt < pos_h_cnt + FONT_WIDTH_CNT &&
           h_v_cnt >= pos_v_cnt && h_v_cnt < pos_v_cnt + FONT_HEIGHT_CNT) begin
            addr_h_cnt <= (h_h_cnt - pos_h_cnt) % FONT_WIDTH_CNT;
            addr_v_cnt <= (h_v_cnt - pos_v_cnt) % FONT_HEIGHT_CNT;
            valid <= 1'b1;      
        end else begin
            addr_h_cnt <= 0;
            addr_v_cnt <= 0;
            valid <= 1'b0;
        end
    end
endmodule