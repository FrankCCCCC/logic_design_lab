`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 06:22:28 PM
// Design Name: 
// Module Name: speaker_control_tb
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

`define FREQ_DIV_BIT 10
`define AUDIO_IN_BITS_N 16

module speaker_control_tb();
    reg clk, rst_n; 
    wire [`AUDIO_IN_BITS_N-1:0] audio_in_left, audio_in_right;
    wire [`FREQ_DIV_BIT-1:0] clk_out;
    wire [`AUDIO_IN_BITS_N-1:0] buff_idx;
    wire audio_mclk, audio_lrck, audio_sck, audio_sdin;
    
    note_gen Ung (
        .clk(clk), // clock from crystal 
        .rst_n(rst_n), // active low reset 
        .note_div(22'd191571), // div for note generation 
        .audio_left(audio_in_left), // left sound audio 
        .audio_right(audio_in_right) // right sound audio
    );
    
    speaker_control U0(
        .clk_out(clk_out),
        .buff_idx(buff_idx),
        .audio_mclk(audio_mclk), 
        .audio_lrck(audio_lrck), 
        .audio_sck(audio_sck), 
        .audio_sdin(audio_sdin),
        .audio_in_left(audio_in_left),
        .audio_in_right(audio_in_right),
        .clk(clk),
        .rst_n(rst_n)
    );
    
    initial begin
        clk = 0;
        rst_n = 1;
        
    end
    
    always begin
        #1; clk = ~clk;
    end
endmodule
