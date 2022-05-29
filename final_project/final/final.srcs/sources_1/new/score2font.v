`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2022 05:13:33 PM
// Design Name: 
// Module Name: score2font
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


module score2font #(
    parameter SCORE_BITS_N = 0,
    parameter DEC_BITS_N = 0,
    parameter ALPHABET_BITS_N = 0
)(
    input [SCORE_BITS_N-1:0] num,
    output [ALPHABET_BITS_N-1:0] d0_font_font, d1_font, d2_font, d3_font
);
    wire [DEC_BITS_N-1:0] d0, d1, d2, d3;

    assign d0 = num % 10;
    assign d1 = ((num % 100) - (num % 10) ) / 10;
    assign d2 = ((num % 1000) - (num % 100)) / 100;
    assign d3 = num / 1000;

    dec2font #(
        .DEC_BITS_N(DEC_BITS_N),
        .ALPHABET_BITS_N(ALPHABET_BITS_N)
    ) U0 (
        .dec(d0),
        .font(d0_font_font)
    );

    dec2font #(
        .DEC_BITS_N(DEC_BITS_N),
        .ALPHABET_BITS_N(ALPHABET_BITS_N)
    ) U1 (
        .dec(d1),
        .font(d1_font_font)
    );

    dec2font #(
        .DEC_BITS_N(DEC_BITS_N),
        .ALPHABET_BITS_N(ALPHABET_BITS_N)
    ) U2 (
        .dec(d2),
        .font(d2_font_font)
    );

    dec2font #(
        .DEC_BITS_N(DEC_BITS_N),
        .ALPHABET_BITS_N(ALPHABET_BITS_N)
    ) U3 (
        .dec(d3),
        .font(d3_font_font)
    );
endmodule
