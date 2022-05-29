`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2022 11:29:20 AM
// Design Name: 
// Module Name: text_ctrl
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

module text_ctrl #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter MEM_DATA_BIT_N = 0,
    parameter ALPHABET_BITS_N = 0,
    parameter ALPHABET_N = 0
)(
    input clk,
    input rst,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    input [CNT_BITS_N-1:0] pos_h_cnt,
    input [CNT_BITS_N-1:0] pos_v_cnt,
    input [ALPHABET_BITS_N * ALPHABET_N - 1:0] alphabets_1d,
    output [MEM_DATA_BIT_N-1:0] dout,
    output px_valid 
);

    localparam FONT_WIDTH_CNT = 8;
    localparam FONT_HEIGHT_CNT = 8;
    localparam FONT_NUM_ROW = 7;
    localparam FONT_NUM_COL = 8;
//    localparam ALPHABET_BITS_N = 8;
//    localparam ALPHABET_N = 4;

    wire [CNT_BITS_N-1:0] h_h_cnt = h_cnt >> 1;
    wire [CNT_BITS_N-1:0] h_v_cnt = v_cnt >> 1;

    reg [CNT_BITS_N-1:0] text_h_cnt = 0;
    reg [CNT_BITS_N-1:0] text_v_cnt = 0;

    // wire [CNT_BITS_N-1:0] pos_h_cnt = 160;
    // wire [CNT_BITS_N-1:0] pos_v_cnt = 20;
    reg [ALPHABET_BITS_N-1:0] alphabet = `ALPHA_B;
    reg [ALPHABET_BITS_N-1:0] alphabets [ALPHABET_N-1:0];
//    wire [ALPHABET_BITS_N * ALPHABET_N:0] alphabets_1d;
    
//    assign alphabets_1d[ALPHABET_BITS_N-1:0] = `ALPHA_D;
//    assign alphabets_1d[ALPHABET_BITS_N * 2-1:ALPHABET_BITS_N] = `ALPHA_C;
//    assign alphabets_1d[ALPHABET_BITS_N * 3-1:ALPHABET_BITS_N * 2] = `ALPHA_B;
//    assign alphabets_1d[ALPHABET_BITS_N * 4-1:ALPHABET_BITS_N * 3] = `ALPHA_A;

    initial begin
//        alphabets[0] = `ALPHA_A;
//        alphabets[1] = `ALPHA_B;
//        alphabets[2] = `ALPHA_C;
//        alphabets[3] = `ALPHA_D;
    end

    integer i;
    always@(*) begin
        for(i = 0; i < ALPHABET_N; i = i + 1) begin
            alphabets[i] = alphabets_1d[ALPHABET_BITS_N * i +: ALPHABET_BITS_N];
        end
    end

    wire [CNT_BITS_N-1:0] alpha_idx = ((h_h_cnt - pos_h_cnt) / FONT_WIDTH_CNT);
    always@(posedge clk) begin
        if(h_h_cnt >= pos_h_cnt && h_v_cnt >= pos_v_cnt) begin
            if((h_h_cnt - pos_h_cnt) < FONT_WIDTH_CNT * ALPHABET_N) begin
                text_h_cnt <= pos_h_cnt + FONT_WIDTH_CNT * alpha_idx;
                text_v_cnt <= pos_v_cnt;
                alphabet <= alphabets[alpha_idx];
                // alphabet <= alphabets[((((h_h_cnt - pos_h_cnt) / FONT_WIDTH_CNT) + 1) * ALPHABET_BITS_N - 1):(((h_h_cnt - pos_h_cnt) / FONT_WIDTH_CNT) * ALPHABET_BITS_N)];
            end
        end
    end

    font_ctrl #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
        .FONT_WIDTH_CNT(FONT_WIDTH_CNT),
        .FONT_HEIGHT_CNT(FONT_HEIGHT_CNT),
        .FONT_NUM_ROW(FONT_NUM_ROW),
        .FONT_NUM_COL(FONT_NUM_COL),
        .ALPHABET_BITS_N(ALPHABET_BITS_N)
    ) UTEXT (
        .clk(clk),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .pos_h_cnt(text_h_cnt),
        .pos_v_cnt(text_v_cnt),
        .alphabet(alphabet),
        .dout(dout),
        .px_valid(px_valid)
    );
endmodule
