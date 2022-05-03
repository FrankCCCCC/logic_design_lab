`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 19:59:11
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


module speaker_control(
    input clk,
    input rst_n,
    input [15:0] audio_in_left,
    input [15:0] audio_in_right,
    output reg audio_mclk, // master clock, 25MHz
    output reg audio_lrck, // left - right clock, 25/128MHz
    output reg audio_sck, // serial clock,  (25/128)*32MHz
    output reg audio_sdin // serial audio data input
    );
    
    reg [31:0]tmp_audio;
    reg out;
    reg [4:0]i;
    reg [4:0]tmp_i;
    reg [8:0]temp;
    reg [3:0]cnt_a;
    reg cnt;
    reg cnt_b;
    
    
    always @*
        temp = {audio_lrck, cnt_a, audio_sck, cnt, audio_mclk, cnt_b} + 1'b1;
    
    always @(posedge clk or posedge rst_n)
        if (rst_n)
            {audio_lrck, cnt_a, audio_sck, cnt, audio_mclk, cnt_b} <= 9'b0;
        else
            {audio_lrck, cnt_a, audio_sck, cnt, audio_mclk, cnt_b} <= temp;


            
    always@*
        tmp_audio = {audio_in_left, audio_in_right};
        
    always@*
        begin
            out = tmp_audio[31-i];
            tmp_i = i + 1'b1;
        end
        
    always@(posedge audio_sck or posedge rst_n)
        if (rst_n)
            begin
                audio_sdin <= 1'b0;
                i <= 5'd0;
            end
        else
            begin
                audio_sdin <= out;
                i <= tmp_i;
            end
            

endmodule
