`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 05:02:25 PM
// Design Name: 
// Module Name: speaker_control
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

module speaker_control(
    input clk, // clock from the crystal 
    input rst_n, // active low reset 
    input [`AUDIO_IN_BITS_N-1:0] audio_in_left, // left channel audio data input 
    input [`AUDIO_IN_BITS_N-1:0] audio_in_right, // right channel audio data input
    output audio_mclk, // master clock 
    output audio_lrck, // left-right clock 
    output audio_sck, // serial clock 
    output audio_sdin, // serial audio data input
    output [`FREQ_DIV_BIT-1:0] clk_out,
    output [`AUDIO_IN_BITS_N-1:0] buff_idx
);
    
    reg [`AUDIO_IN_BITS_N-1:0] buff, buff_idx;
    wire [`AUDIO_IN_BITS_N-1:0] audio_sdin_buff;
    
    frequency_divider UFreq(
        .clk_out(clk_out),
        .clk(clk),
        .rst_n(rst_n)
    );
    
    // 25M Hz
    assign audio_mclk = (clk_out & (`FREQ_DIV_BIT'b1 << 2))? 1 : 0;
    // 25M/128 Hz
    assign audio_lrck = (clk_out & (`FREQ_DIV_BIT'b1 << 9))? 1 : 0;
    // 25M/4 Hz
    assign audio_sck = (clk_out & (`FREQ_DIV_BIT'b1 << 4))? 1 : 0;
//    assign audio_sck = (clk_out & (`FREQ_DIV_BIT'b1 << 2))? 1 : 0;
    
    assign audio_sdin_buff = buff & buff_idx;
    assign audio_sdin = audio_sdin_buff? 1:0;
    
    initial begin
        buff = audio_in_right;
        buff_idx = `AUDIO_IN_BITS_N'd32768;
    end
    
    always@(audio_lrck) begin
        if(audio_lrck) begin
            buff <= audio_in_left; 
        end else begin
            buff <= audio_in_right;
        end
    end
    
    always@(audio_sck) begin
        if(buff_idx >> 1 > `AUDIO_IN_BITS_N'd0) begin
            buff_idx <= buff_idx >> 1; 
        end else begin
            buff_idx <= `AUDIO_IN_BITS_N'd32768;
        end
//        buff_idx <= (buff_idx >> 1 < `AUDIO_IN_BITS_N'd0)? {buff_idx[0], buff_idx[`AUDIO_IN_BITS_N-1:1]}:buff_idx >> 1;
    end
    
endmodule
