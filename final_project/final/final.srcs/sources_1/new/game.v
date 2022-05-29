`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2022 05:03:47 PM
// Design Name: 
// Module Name: game
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

module game #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter MEM_DATA_BIT_N = 0,
    parameter SCORE_BITS_N = 0,
    parameter WIDTH_CNT = 0,
    parameter HEIGHT_CNT = 0
)(
    input clk,
    input clk_bg_scroll,
    input clk_pipe_scroll,
    input clk_flap,
    input clk_move,
    input rst,
    input push_debounced_u,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    output reg [MEM_DATA_BIT_N-1:0] pixel = 0,
    output reg [SCORE_BITS_N-1:0] score = 0,
    output reg is_start = 1'b0,
    output reg is_game_over = 1'b0,
    output reg is_dead = 1'b0
);
    wire [MEM_DATA_BIT_N-1:0] bg_pixel, pipe_pixel, bird_pixel, text_pixel;
    wire bg_px_valid, pipe_px_valid, bird_px_valid, text_px_valid;
    wire [CNT_BITS_N-1:0] pos;
    
    // Background variables
    localparam BG_WIDTH_CNT = 320;
    localparam BG_HEIGHT_CNT = 240;
    bg_ctrl #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
        .BG_WIDTH_CNT(BG_WIDTH_CNT),
        .BG_HEIGHT_CNT(BG_HEIGHT_CNT)
    ) UBG(
        .clk(clk),
        .clk_scroll(clk_bg_scroll),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .dout(bg_pixel),
        .px_valid(bg_px_valid)
    );
    
    // Pipe variables
    localparam PIPE_WIDTH_CNT = 16;
    localparam PIPE_LEN_CNT = 240;
    pipe_ctrl #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
        .PIPE_WIDTH_CNT(PIPE_WIDTH_CNT),
        .PIPE_LEN_CNT(PIPE_LEN_CNT)
    ) UPIPE (
        .clk(clk),
        .clk_scroll(clk_pipe_scroll),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .pos(pos),
        .dout(pipe_pixel),
        .px_valid(pipe_px_valid)
    );
    
    // Bird variables
    localparam BIRD_WIDTH_CNT = 10;
    localparam BIRD_HEIGHT_CNT = 10;
    bird_ctrl #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
        .BIRD_WIDTH_CNT(BIRD_WIDTH_CNT),
        .BIRD_HEIGHT_CNT(BIRD_HEIGHT_CNT),
        .WIDTH_CNT(WIDTH_CNT),
        .HEIGHT_CNT(HEIGHT_CNT)
    ) UBIRD (
        .clk(clk),
        .clk_flap(clk_flap),
        .clk_move(clk_move),
        .rst(rst),
        .is_dead(is_dead),
        .btn_fly(push_debounced_u),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .dout(bird_pixel),
        .px_valid(bird_px_valid)
    );
    
    // Text variables
    // localparam ALPHABET_BITS_N = 8;
    // localparam ALPHABET_N = 4;
    // wire [ALPHABET_BITS_N * ALPHABET_N:0] alphabets_1d = {`ALPHA_D, `ALPHA_C, `ALPHA_B, `ALPHA_A};
    // wire [CNT_BITS_N-1:0] pos_h_cnt = 160;
    // wire [CNT_BITS_N-1:0] pos_v_cnt = 20;
    
    // text_ctrl #(
    //     .CNT_BITS_N(CNT_BITS_N),
    //     .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
    //     .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
    //     .ALPHABET_BITS_N(ALPHABET_BITS_N),
    //     .ALPHABET_N(ALPHABET_N)
    // ) UTEXT (
    //     .clk(clk),
    //     .rst(rst),
    //     .h_cnt(h_cnt),
    //     .v_cnt(v_cnt),
    //     .pos_h_cnt(pos_h_cnt),
    //     .pos_v_cnt(pos_v_cnt),
    //     .alphabets_1d(alphabets_1d),
    //     .dout(text_pixel),
    //     .px_valid(text_px_valid)
    // );

    scence_ctrl #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
        .SCORE_BITS_N(SCORE_BITS_N)
    ) USCENCE (
        .clk(clk),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .score(score),
        .dout(text_pixel),
        .px_valid(text_px_valid)
    );
    
    // Merge layers
    always@(*) begin
        if(text_px_valid) begin
            pixel <= text_pixel;
        end else if(bird_px_valid) begin
            pixel <= bird_pixel;
        end else if(pipe_px_valid) begin
            pixel <= pipe_pixel;
        end else begin
            pixel <= bg_pixel;
        end
    end

    // Determine wheter the bird is died or not
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            is_start <= 1;
            is_dead <= 0;
            is_game_over <= 0;
        end else begin
            if(bird_px_valid && pipe_px_valid) begin    
                is_dead <= 1;
                is_game_over <= 1;
            end
        end
    end

    // Count score
    always@(posedge clk_pipe_scroll) begin
        if(rst) begin
            score <= 0;
        end else if(pos <= 0 && ~is_dead) begin
            score <= score + 1;
        end
    end
    
endmodule
