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

`define NOTE_GEN_FREQ_BITS_N 22

module note_gen( 
    clk, // clock from crystal 
    rst_n, // active low reset 
    note_div, // div for note generation 
    audio_left, // left sound audio 
    audio_right // right sound audio
);
    // I/O declaration
    input clk; // clock from crystal
    input rst_n; // active low reset
    input [`NOTE_GEN_FREQ_BITS_N-1:0] note_div; // div for note generation
    output [`AUDIO_IN_BITS_N-1:0] audio_left; // left sound audio
    output [`AUDIO_IN_BITS_N-1:0] audio_right; // right sound audio
    
    // Declare internal signals
    reg [21:0] clk_cnt_next, clk_cnt;
    reg b_clk, b_clk_next; // Note frequency generation
    
    initial begin
        b_clk = 0;
        b_clk_next = 0;
        clk_cnt_next = `AUDIO_IN_BITS_N'd0;
        clk_cnt = `AUDIO_IN_BITS_N'd0;
    end
    
    always @(posedge clk or negedge rst_n) 
        if (~rst_n) begin 
            clk_cnt <= `NOTE_GEN_FREQ_BITS_N'd0; 
            b_clk <= 1'b0; 
        end else begin 
            clk_cnt <= clk_cnt_next; 
            b_clk <= b_clk_next; 
        end
        
    always @* 
        if (clk_cnt == note_div) begin 
            clk_cnt_next = `NOTE_GEN_FREQ_BITS_N'd0; 
            b_clk_next = ~b_clk; 
        end else begin 
            clk_cnt_next = clk_cnt + 1'b1; 
            b_clk_next = b_clk; 
        end
         
    // Assign the amplitude of the note
    assign audio_left = (b_clk == 1'b0) ? `AUDIO_IN_BITS_N'hB000 : `AUDIO_IN_BITS_N'h5FFF;
    assign audio_right = (b_clk == 1'b0) ? `AUDIO_IN_BITS_N'hB000 : `AUDIO_IN_BITS_N'h5FFF;
endmodule
