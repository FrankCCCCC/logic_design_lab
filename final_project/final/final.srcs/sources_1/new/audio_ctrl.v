`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/05 17:47:09
// Design Name: 
// Module Name: speaker
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

module audio_ctrl #(
    parameter MUSIC_ADDR_BITS_N = 0,
    parameter MUSIC_DATA_BITS_N = 0,
    parameter SONG_ID_BITS_N = 0
)(
    input clk,
    input rst_n,
    input [`SONG_ID_BITS_N-1:0] song_id,
    input enable,
    input is_repeat,
    output mclk, lrck, sck,
    output sdin
);
    // localparam MUSIC_ADDR_BITS_N = `MUSIC_ADDR_BITS_N;
    // localparam MUSIC_DATA_BITS_N = `MUSIC_DATA_BITS_N;
    // localparam SONG_ID_BITS_N = `SONG_ID_BITS_N;
//    localparam MUSIC_CNT_BITS_N = `MUSIC_CNT_BITS_N;
    
    wire [MUSIC_ADDR_BITS_N-1:0] addr;
    wire [MUSIC_DATA_BITS_N-1:0] data;
    wire clk_1;
    
    fre_div UFQ (
        .clk(clk),
        .rst_n(rst_n),
        .clk_ctl(clk_1)
    );
    
//    up_counter #(
//        .CNT_BITS_N(MUSIC_ADDR_BITS_N)
////        .CNT_LIMIT(`MUSIC_ADDR_BITS_N'd340)
//    ) UCNT (
//        .clk(clk_1),
//        .rst_n(rst_n),
//        .cnt_limit('d340),
//        .cnt(addr)
//    );
      
//    fruit_pudding_mem #(
//        .MUSIC_ADDR_BITS_N(MUSIC_ADDR_BITS_N),
//        .MUSIC_DATA_BITS_N(MUSIC_DATA_BITS_N)
//    ) UFPM (
//        .rst_n(rst_n),
//        .addr(addr),
//        .data(data)
//    );

    song_ctrl #(
        .MUSIC_ADDR_BITS_N(MUSIC_ADDR_BITS_N),
        .MUSIC_DATA_BITS_N(MUSIC_DATA_BITS_N),
        .SONG_ID_BITS_N(SONG_ID_BITS_N)
    ) SCTRL(
        .clk(clk),
        .clk_song(clk_1),
        .rst_n(rst_n),
        .song_id(song_id),
        .enable(enable),
        .is_repeat(is_repeat),
        .data(data)
    );
    
    wire [15:0] left, right;
    note_gen U0 (.clk(clk), .rst_n(rst_n), .note_div(data), .left(left), .right(right));
    speaker_control U1(
        .clk(clk),  // clock from the crystal
        .rst_n(rst_n),  // active low reset
        .audio_in_left(left), // left channel audio data input
        .audio_in_right(right), // right channel audio data input
        .audio_mclk(mclk), // master clock
        .audio_lrck(lrck), // left-right clock, Word Select clock, or sample rate clock
        .audio_sck(sck), // serial clock
        .audio_sdin(sdin) // serial audio data input
    );
    
endmodule

