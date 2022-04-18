`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 05:01:01 PM
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

module speaker( 
    input clk, // clock from the crystal
    input rst_n, // active low reset 
    input btn_l,
    input btn_m,
    input btn_r,
    input btn_u,
    input btn_d,
    output audio_mclk, // master clock
    output audio_lrck, // left-right clock
    output audio_sck, // serial clock
    output audio_sdin, // serial audio data input
    output [`SEGMENT_7_DISPALY_DIGIT_N-1:0] d_sel,
    output [`SEGMENT_7_SEGMENT_N-1:0] d_out 
);
    
    // Declare internal nodes
    wire [`AUDIO_IN_BITS_N-1:0] audio_in_left, audio_in_right, audio_level_magnitude; // Note generation
    wire [`AUDIO_LEVEL_BITS_N-1:0] audio_level_left, audio_level_right;
    wire [`NOTE_GEN_FREQ_BITS_N-1:0] note_div;
    
    controller Ucon(
        .clk(clk),
        .rst_n(rst_n),
        .btn_l(btn_l),
        .btn_m(btn_m),
        .btn_r(btn_r),
        .btn_u(btn_u),
        .btn_d(btn_d),
        .audio_level_left(audio_level_left),
        .audio_level_right(audio_level_right),
        .note_div(note_div)
    );
    
    note_gen Ung (
        .clk(clk), // clock from crystal 
        .rst_n(rst_n), // active low reset
//        .audio_level_left(`AUDIO_LEVEL_BITS_N'd14),
        .audio_level_left(audio_level_left), 
//        .audio_level_right(`AUDIO_LEVEL_BITS_N'd14),
        .audio_level_right(audio_level_right),
//        .note_div(`NOTE_GEN_FREQ_BITS_N'd191571), // div for note generation
        .note_div(note_div), 
        .audio_left(audio_in_left), // left sound audio 
        .audio_right(audio_in_right), // right sound audio
        .audio_level_magnitude(audio_level_magnitude)
    );
    
    // Speaker controllor
    speaker_control Usc (
        .clk(clk), // clock from the crystal 
        .rst_n(rst_n), // active low reset 
        .audio_in_left(audio_in_left), // left channel audio data input 
        .audio_in_right(audio_in_right), // right channel audio data input
        .audio_mclk(audio_mclk), // master clock 
        .audio_lrck(audio_lrck), // left-right clock 
        .audio_sck(audio_sck), // serial clock 
        .audio_sdin(audio_sdin) // serial audio data input
    );
    
    wire [`SEGMENT_7_INPUT_BITS_N-1:0] D0_BINARY, D1_BINARY, D2_BINARY, D3_BINARY;
    wire [`SEGMENT_7_SEGMENT_N-1:0] D0_SEGMENT7, D1_SEGMENT7, D2_SEGMENT7, D3_SEGMENT7;
    
    // Convert binary to 7-segment 
    segment7 D0_CONV(.i(audio_level_magnitude[3:0]), .D(D0_SEGMENT7));
    segment7 D1_CONV(.i(audio_level_magnitude[7:4]), .D(D1_SEGMENT7));
    segment7 D2_CONV(.i(audio_level_magnitude[11:8]), .D(D2_SEGMENT7));
    segment7 D3_CONV(.i(audio_level_magnitude[15:12]), .D(D3_SEGMENT7));
//    segment7 D0_CONV(.i(4'd0), .D(D0_SEGMENT7));
//    segment7 D1_CONV(.i(4'd1), .D(D1_SEGMENT7));
//    segment7 D2_CONV(.i(4'd2), .D(D2_SEGMENT7));
//    segment7 D3_CONV(.i(4'd3), .D(D3_SEGMENT7));
    
    // Show
    display_7seg UDisp(.clk(clk), .rst(rst_n), .d0(D0_SEGMENT7), .d1(D1_SEGMENT7), .d2(D2_SEGMENT7), .d3(D3_SEGMENT7), .d_sel(d_sel), .d_out(d_out));
endmodule

