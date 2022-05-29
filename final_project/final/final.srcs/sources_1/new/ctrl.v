`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2022 03:22:24 PM
// Design Name: 
// Module Name: ctrl
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


module ctrl #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter MEM_DATA_BIT_N = 0,
    parameter SCORE_BITS_N = 0
)(
    input clk,
    input clk_pipe_scroll,
    input rst,
    input push_debounced_u,
    input [CNT_BITS_N-1:0] pos,
    input bg_px_valid, pipe_px_valid, bird_px_valid, text_px_valid,
    input [MEM_DATA_BIT_N-1:0] bg_pixel, pipe_pixel, bird_pixel, text_pixel,
    output reg [MEM_DATA_BIT_N-1:0] pixel = 0,
    output reg [SCORE_BITS_N-1:0] score = 0,
    output reg is_game_over = 1'b0,
    output reg is_dead = 1'b0
);

    reg is_start = 0;
    reg [3:0] state = 0;

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

    always@(posedge push_debounced_u) begin
        if(state == 0) begin
            // Welcome scence
            state <= 1;

            is_start <= 1;
            is_dead <= 0;
            is_game_over <= 0;
        end else if(state == 1) begin
            // Play scence
//            if()
            state <= 2;

            is_start <= 1;
            is_dead <= 0;
            is_game_over <= 0;
        end
    end

    // Determine wheter the bird is died or not
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            is_dead <= 0;
            is_game_over <= 0;
        end else begin
            if(bird_px_valid && pipe_px_valid) begin    
                is_dead <= 1;
                is_game_over <= 1;
            end
        end
    end

    always@(posedge clk_pipe_scroll) begin
        if(rst) begin
            score <= 0;
        end else if(pos <= 0 && ~is_dead) begin
            score <= score + 1;
        end
    end

endmodule
