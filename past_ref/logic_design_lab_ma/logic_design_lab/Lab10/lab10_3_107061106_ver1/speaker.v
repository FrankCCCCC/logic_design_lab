`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 19:50:28
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


module speaker(
    input clk, // clock from crystal
    input rst_n, // active low reset
    input [3:0]sound,
    input channel,
    input [511:0]key_down,
    input [8:0]last_change,
    output audio_mclk, // master clock
    output audio_lrck, // left-right clock
    output audio_sck, // serial clock
    output audio_sdin // serial audio data input
);

wire [15:0] audio_in_left;
wire [15:0]audio_in_right;
// Note generation
buzzer_ctl U0(
.clk(clk), // clock from crystal
.rst_n(rst_n), // active low reset
.sound(sound),
.key_down(key_down),
.last_change(last_change),
.channel(channel),
.audio_left(audio_in_left), // left sound audio
.audio_right(audio_in_right) // right sound audio
);
// Speaker controllor
speaker_ctl U1(
.clk(clk), // clock from the crystal
.rst_n(rst_n), // active low reset
.audio_in_left(audio_in_left), // left channel audio data input
.audio_in_right(audio_in_right), // right channel audio data input
.audio_mclk(audio_mclk), // master clock
.audio_lrck(audio_lrck), // left-right clock
.audio_sck(audio_sck), // serial clock
.audio_sdin(audio_sdin) // serial audio data input
);
endmodule