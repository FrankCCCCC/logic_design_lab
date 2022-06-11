`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2022 08:28:16 PM
// Design Name: 
// Module Name: song_switch
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

module song_switch #(
    parameter SONG_ID_BITS_N = 0
)(
    input clk,
    input is_start, is_game_over, is_overlap,
    output reg [SONG_ID_BITS_N-1:0] song_id = `NONE_SONG_ID
);
    always@(posedge clk) begin
        if(is_overlap) begin
            song_id <= `BUMP_SONG_ID;
        end else if(~is_start && ~is_game_over) begin
            song_id <= `ANGRY_BIRD_SONG_ID;
        end else if(is_start && ~is_game_over) begin
            song_id <= `FRUIT_PUDDING_SONG_ID;
        end else if(~is_start && is_game_over) begin
            song_id <= `ANGRY_BIRD_SONG_ID;
        end
    end
endmodule
