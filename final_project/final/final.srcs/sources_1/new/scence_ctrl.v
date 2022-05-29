`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2022 07:46:26 PM
// Design Name: 
// Module Name: scence_ctrl
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

`define PLAY_STATE 2
`define START_STATE 0
`define END_STATE 1

module scence_ctrl#(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter MEM_DATA_BIT_N = 0,
    parameter SCORE_BITS_N = 0
)(
    input clk,
    input rst,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    input [SCORE_BITS_N-1:0] score,
    output [MEM_DATA_BIT_N-1:0] dout,
    output px_valid 
);

    // Text variables
    localparam ALPHABET_BITS_N = `ALPHABET_BITS_N;
    localparam ALPHABET_N = 10;

    reg [3:0] state = `PLAY_STATE;
    
    reg [ALPHABET_BITS_N * ALPHABET_N - 1:0] alphabets_1d = {ALPHABET_N{`ALPHA_SPACE}};
    reg [CNT_BITS_N-1:0] pos_h_cnt = 0;
    reg [CNT_BITS_N-1:0] pos_v_cnt = 0;
    
    // assign alphabets_1d[ALPHABET_BITS_N-1:0] = `ALPHA_D;
    // assign alphabets_1d[ALPHABET_BITS_N * 2-1:ALPHABET_BITS_N] = `ALPHA_C;
    // assign alphabets_1d[ALPHABET_BITS_N * 3-1:ALPHABET_BITS_N * 2] = `ALPHA_B;
    // assign alphabets_1d[ALPHABET_BITS_N * 4-1:ALPHABET_BITS_N * 3] = `ALPHA_A;

    always@(*)begin
        if(state == `PLAY_STATE) begin
            alphabets_1d <= {`ALPHA_S, `ALPHA_C, `ALPHA_O, `ALPHA_R, `ALPHA_E, `ALPHA_COLON, `ALPHA_0, `ALPHA_1, `ALPHA_2, `ALPHA_3};
            pos_h_cnt <= 120;
            pos_v_cnt <= 5;
        end
    end

    text_ctrl #(
        .CNT_BITS_N(CNT_BITS_N),
        .PX_ADDR_BITS_N(PX_ADDR_BITS_N),
        .MEM_DATA_BIT_N(MEM_DATA_BIT_N),
        .ALPHABET_BITS_N(ALPHABET_BITS_N),
        .ALPHABET_N(ALPHABET_N)
    ) UTEXT (
        .clk(clk),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .pos_h_cnt(pos_h_cnt),
        .pos_v_cnt(pos_v_cnt),
        .alphabets_1d(alphabets_1d),
        .dout(dout),
        .px_valid(px_valid)
    );
endmodule
