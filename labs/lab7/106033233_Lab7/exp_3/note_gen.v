`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 04:59:05 PM
// Design Name: 
// Module Name: note_gen
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

module note_gen( 
    clk, // clock from crystal 
    rst_n, // active low reset
    audio_level_left, 
    audio_level_right,
    note_div_left, // div for note generation 
    note_div_right,
    audio_left, // left sound audio 
    audio_right, // right sound audio
    audio_level_magnitude
);
    // I/O declaration
    input clk; // clock from crystal
    input rst_n; // active low reset
    input [`AUDIO_LEVEL_BITS_N-1:0] audio_level_left;
    input [`AUDIO_LEVEL_BITS_N-1:0] audio_level_right;
    input [`NOTE_GEN_FREQ_BITS_N-1:0] note_div_left; // div for note generation
    input [`NOTE_GEN_FREQ_BITS_N-1:0] note_div_right; // div for note generation
    output [`AUDIO_IN_BITS_N-1:0] audio_left; // left sound audio
    output [`AUDIO_IN_BITS_N-1:0] audio_right; // right sound audio
    output [`AUDIO_IN_BITS_N-1:0] audio_level_magnitude; // right sound audio
    
    // Declare internal signals
    reg [`NOTE_GEN_FREQ_BITS_N-1:0] clk_cnt_next_left, clk_cnt_left, clk_cnt_next_right, clk_cnt_right;
    reg b_clk_left, b_clk_next_left, b_clk_right, b_clk_next_right; // Note frequency generation
    wire [`AUDIO_IN_BITS_N-1:0] level_left, level_right;
    
    assign audio_level_magnitude = level_left;
    
    initial begin
        b_clk_left = 0;
        b_clk_next_left = 0;
        b_clk_right = 0;
        b_clk_next_right = 0;
        clk_cnt_next_left = `AUDIO_IN_BITS_N'd0;
        clk_cnt_left = `AUDIO_IN_BITS_N'd0;
        clk_cnt_next_right = `AUDIO_IN_BITS_N'd0;
        clk_cnt_right = `AUDIO_IN_BITS_N'd0;
    end
    
    // Left
    always @(posedge clk or negedge rst_n) 
        if (~rst_n) begin 
            clk_cnt_left <= `NOTE_GEN_FREQ_BITS_N'd0; 
            b_clk_left <= 1'b0; 
        end else begin 
            clk_cnt_left <= clk_cnt_next_left; 
            b_clk_left <= b_clk_next_left; 
        end
        
    always @* 
        if (clk_cnt_left == note_div_left) begin 
            clk_cnt_next_left = `NOTE_GEN_FREQ_BITS_N'd0; 
            b_clk_next_left = ~b_clk_left; 
        end else begin 
            clk_cnt_next_left = clk_cnt_left + `NOTE_GEN_FREQ_BITS_N'b1; 
            b_clk_next_left = b_clk_left; 
        end

    // Right
    always @(posedge clk or negedge rst_n) 
        if (~rst_n) begin 
            clk_cnt_right <= `NOTE_GEN_FREQ_BITS_N'd0; 
            b_clk_right <= 1'b0; 
        end else begin 
            clk_cnt_right <= clk_cnt_next_right; 
            b_clk_right <= b_clk_next_right; 
        end
        
    always @* 
        if (clk_cnt_right == note_div_right) begin 
            clk_cnt_next_right = `NOTE_GEN_FREQ_BITS_N'd0; 
            b_clk_next_right = ~b_clk_right; 
        end else begin 
            clk_cnt_next_right = clk_cnt_right + `NOTE_GEN_FREQ_BITS_N'b1; 
            b_clk_next_right = b_clk_right; 
        end
    
    assign level_left = audio_level_left * (`AUDIO_IN_BITS_N'hB000 - `AUDIO_IN_BITS_N'h7DFF) / 15 + `AUDIO_IN_BITS_N'h7DFF;
    assign level_right = audio_level_right * (`AUDIO_IN_BITS_N'hB000 - `AUDIO_IN_BITS_N'h7DFF) / 15 + `AUDIO_IN_BITS_N'h7DFF;
//    assign level_left = `AUDIO_IN_BITS_N'hFFFF >> (`AUDIO_LEVEL_BITS_N'd15 - audio_level_left);
//    assign level_right = `AUDIO_IN_BITS_N'hFFFF >> (`AUDIO_LEVEL_BITS_N'd15 - audio_level_right);
     
    // Assign the amplitude of the note
    assign audio_left = (b_clk_left == 1'b0) ? `AUDIO_IN_BITS_N'h0000 : level_left;
    assign audio_right = (b_clk_right == 1'b0) ? `AUDIO_IN_BITS_N'h0000 : level_right;
endmodule
