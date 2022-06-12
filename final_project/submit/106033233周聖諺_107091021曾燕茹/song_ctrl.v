`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2022 04:50:46 PM
// Design Name: 
// Module Name: song_ctrl
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

module song_ctrl #(
    parameter MUSIC_ADDR_BITS_N = 0,
    parameter MUSIC_DATA_BITS_N = 0,
    parameter SONG_ID_BITS_N = 0
)(
    input clk,
    input clk_song,
    input rst_n,
    input [SONG_ID_BITS_N-1:0] song_id,
    input enable,
    input is_repeat,
    output reg [MUSIC_DATA_BITS_N-1:0] data
);

//    localparam MUSIC_CNT_BITS_N = `MUSIC_CNT_BITS_N;

    localparam FRUIT_PUDDING_CNT_LIMIT = `FRUIT_PUDDING_CNT_LIMIT;
    localparam ANGRY_BIRD_CNT_LIMIT = `ANGRY_BIRD_CNT_LIMIT;
    localparam FLAP_CNT_LIMIT = `FLAP_CNT_LIMIT;
    localparam BUMP_CNT_LIMIT = `BUMP_CNT_LIMIT;

    wire [MUSIC_ADDR_BITS_N-1:0] addr;
    reg [MUSIC_ADDR_BITS_N-1:0] cnt_limit = 0;

    wire [MUSIC_DATA_BITS_N-1:0] fruit_pudding_data, angry_bird_data, flap_data, bump_data;

    up_counter #(
        .CNT_BITS_N(MUSIC_ADDR_BITS_N)
    ) UCNT (
        .clk(clk_song),
        .rst_n(rst_n),
        .is_repeat(is_repeat),
        .cnt_limit(cnt_limit),
        .cnt(addr)
    );

    always@(posedge clk) begin
        if(enable) begin
            case(song_id)
                `FRUIT_PUDDING_SONG_ID: begin
                    cnt_limit <= FRUIT_PUDDING_CNT_LIMIT;
                    data <= fruit_pudding_data;
                end
                `ANGRY_BIRD_SONG_ID: begin
                    cnt_limit <= ANGRY_BIRD_CNT_LIMIT;
                    data <= angry_bird_data;
                end
                `FLAP_SONG_ID: begin
                    cnt_limit <= FLAP_CNT_LIMIT;
                    data <= flap_data;
                end
                `BUMP_SONG_ID: begin
                    cnt_limit <= BUMP_CNT_LIMIT;
                    data <= bump_data;
                end
                default: begin
                    cnt_limit <= 0;
                    data <= 0;
                end
            endcase
        end else begin
            cnt_limit <= 0;
            data <= 0;
        end
    end

    fruit_pudding_mem #(
        .MUSIC_ADDR_BITS_N(MUSIC_ADDR_BITS_N),
        .MUSIC_DATA_BITS_N(MUSIC_DATA_BITS_N)
    ) UFPM (
        .rst_n(rst_n),
        .addr(addr),
        .data(fruit_pudding_data)
    );

    angry_bird_mem #(
        .MUSIC_ADDR_BITS_N(MUSIC_ADDR_BITS_N),
        .MUSIC_DATA_BITS_N(MUSIC_DATA_BITS_N)
    ) UABM (
        .rst_n(rst_n),
        .addr(addr),
        .data(angry_bird_data)
    );

    flap_mem #(
        .MUSIC_ADDR_BITS_N(MUSIC_ADDR_BITS_N),
        .MUSIC_DATA_BITS_N(MUSIC_DATA_BITS_N)
    ) UFLM (
        .rst_n(rst_n),
        .addr(addr),
        .data(flap_data)
    );

    bump_mem #(
        .MUSIC_ADDR_BITS_N(MUSIC_ADDR_BITS_N),
        .MUSIC_DATA_BITS_N(MUSIC_DATA_BITS_N)
    ) UBPM (
        .rst_n(rst_n),
        .addr(addr),
        .data(bump_data)
    );
endmodule
