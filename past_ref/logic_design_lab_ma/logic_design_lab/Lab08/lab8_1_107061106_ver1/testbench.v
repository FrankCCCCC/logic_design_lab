`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 20:56:01
// Design Name: 
// Module Name: testbench
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


module testbench;
    
    reg clk, rst_n;
    wire audio_mclk, audio_lrck, audio_sck, audio_sdin;
    
    speaker T0 (
    .clk(clk), // clock from crystal
    .rst_n(rst_n), // active low reset
    .audio_mclk(audio_mclk), // master clock
    .audio_lrck(audio_lrck), // left-right clock
    .audio_sck(audio_sck), // serial clock
    .audio_sdin(audio_sdin) // serial audio data input
    );

    
    always
        #5 clk = ~clk;
    initial
        begin
            clk = 0; rst_n = 0;
                #10 rst_n = 1;
                #100 rst_n = 0;
                #100 rst_n = 1;
            end
endmodule
