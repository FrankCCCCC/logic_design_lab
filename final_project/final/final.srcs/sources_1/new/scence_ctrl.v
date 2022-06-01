`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2022 07:46:26 PM
// Design Name: 
// Module Name: scence_ctrl
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

module scence_ctrl #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter MEM_DATA_BIT_N = 0,
    parameter SCORE_BITS_N = 0
)(
    input clk,
    input rst,
    input is_visible,
    input is_start,
    input is_dead,
    input is_game_over,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    input [SCORE_BITS_N-1:0] score,
    output [MEM_DATA_BIT_N-1:0] dout,
    output px_valid
);

    // Text variables
    localparam ALPHABET_BITS_N = `ALPHABET_BITS_N;
    localparam ALPHABET_N = 11;
    localparam DEC_BITS_N = 4;

    wire [ALPHABET_BITS_N-1:0] d0_font, d1_font, d2_font, d3_font;

    // reg [3:0] state = `END_STATE;
    
    reg [ALPHABET_BITS_N * ALPHABET_N - 1:0] alphabets_1d = {ALPHABET_N{`ALPHA_SPACE}};
    reg [CNT_BITS_N-1:0] pos_h_cnt = 0;
    reg [CNT_BITS_N-1:0] pos_v_cnt = 0;

    wire [CNT_BITS_N-1:0] h_h_cnt = h_cnt >> 1;
    wire [CNT_BITS_N-1:0] h_v_cnt = v_cnt >> 1;

    score2font #(
        .SCORE_BITS_N(SCORE_BITS_N),
        .DEC_BITS_N(DEC_BITS_N),
        .ALPHABET_BITS_N(ALPHABET_BITS_N)
    ) USCORE (
        .score(score),
        .d0_font(d0_font), 
        .d1_font(d1_font), 
        .d2_font(d2_font), 
        .d3_font(d3_font)
    );

    always@(*)begin
        if((~is_start) && (~is_dead)) begin
            alphabets_1d <= {`ALPHA_F, `ALPHA_L, `ALPHA_A, `ALPHA_P, `ALPHA_P, `ALPHA_Y, `ALPHA_SPACE, `ALPHA_B, `ALPHA_I, `ALPHA_R, `ALPHA_D};
            pos_h_cnt <= 120;
            pos_v_cnt <= 100;
        end if((is_start) && (~is_dead)) begin
            alphabets_1d <= {`ALPHA_S, `ALPHA_C, `ALPHA_O, `ALPHA_R, `ALPHA_E, `ALPHA_COLON, `ALPHA_SPACE, d3_font, d2_font, d1_font, d0_font};
            pos_h_cnt <= 120;
            pos_v_cnt <= 5;
        end if((~is_start) && (is_dead)) begin
            if(h_v_cnt >= 120) begin
                alphabets_1d <= {`ALPHA_S, `ALPHA_C, `ALPHA_O, `ALPHA_R, `ALPHA_E, `ALPHA_COLON, `ALPHA_SPACE, d3_font, d2_font, d1_font, d0_font};
                pos_h_cnt <= 112;
                pos_v_cnt <= 120;
            end else begin
                alphabets_1d <= {`ALPHA_G, `ALPHA_A, `ALPHA_M, `ALPHA_E, `ALPHA_SPACE, `ALPHA_O, `ALPHA_V, `ALPHA_E, `ALPHA_R, `ALPHA_SPACE, `ALPHA_SPACE};
                pos_h_cnt <= 120;
                pos_v_cnt <= 100;
            end
        end 
    end

    text_ctrl #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
        .ALPHABET_BITS_N(ALPHABET_BITS_N),
        .ALPHABET_N(ALPHABET_N)
    ) UTEXT (
        .clk(clk),
        .rst(rst),
        .is_visible(is_visible),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .pos_h_cnt(pos_h_cnt),
        .pos_v_cnt(pos_v_cnt),
        .alphabets_1d(alphabets_1d),
        .dout(dout),
        .px_valid(px_valid)
    );
endmodule
