`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2022 10:01:10 AM
// Design Name: 
// Module Name: song_setting
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

module song_setting #(
    parameter MUSIC_ADDR_BITS_N = 0,
    parameter MUSIC_DATA_BITS_N = 0,
    parameter SONG_ID_BITS_N = 0
)(
    input clk,
    input enable,
    input [SONG_ID_BITS_N-1:0] song_id,
    input [MUSIC_DATA_BITS_N-1:0] fruit_pudding_data, angry_bird_data, flap_data, bump_data,
    output reg [MUSIC_ADDR_BITS_N-1:0] cnt_limit,
    output reg [MUSIC_DATA_BITS_N-1:0] data
);
    localparam FRUIT_PUDDING_CNT_LIMIT = `FRUIT_PUDDING_CNT_LIMIT;
    localparam ANGRY_BIRD_CNT_LIMIT = `ANGRY_BIRD_CNT_LIMIT;
    localparam FLAP_CNT_LIMIT = `FLAP_CNT_LIMIT;
    localparam BUMP_CNT_LIMIT = `BUMP_CNT_LIMIT;
    
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
endmodule
