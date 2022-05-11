`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 03:51:20 PM
// Design Name: 
// Module Name: global
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


`define FREQ_DIV_BIT 30

// Note Generation
//`define AUDIO_IN_BITS_N 16
//`define NOTE_GEN_FREQ_BITS_N 22
//`define AUDIO_LEVEL_BITS_N 4

// Keyboard
`define KB_ENCODE_BITS_N 9
`define KB_ENCODE_OH_BITS_N 512

// Segment-7 Displayer
`define SEGMENT_7_INPUT_BITS_N 8
`define SEGMENT_7_DISPALY_DIGIT_N 4
`define SEGMENT_7_SEGMENT_N 8
`define SEGMENT_7_NONE `SEGMENT_7_SEGMENT_N'b1111111_1
`define SEGMENT_7_EMPTY `SEGMENT_7_SEGMENT_N'b1111111_0

// @Segment-7 Displayer Frequency Divider
`define SEGMENT_7_FREQ_DIV_BITS 30
// 1000 Hz
`define SEGMENT_7_FREQ_DIV_COUNT `SEGMENT_7_FREQ_DIV_BITS'd50000
//`define SEGMENT_7_FREQ_DIV_COUNT `SEGMENT_7_FREQ_DIV_BITS'd2
// 1 Hz
//`define SEGMENT_7_FREQ_DIV_COUNT `SEGMENT_7_FREQ_DIV_BITS'd5000000
`define RST_OFF 1'b1

// Keyboard Symbol
`define CODE_0_L `KB_ENCODE_BITS_N'b0_0100_0101
`define CODE_1_L `KB_ENCODE_BITS_N'b0_0001_0110
`define CODE_2_L `KB_ENCODE_BITS_N'b0_0001_1110
`define CODE_3_L `KB_ENCODE_BITS_N'b0_0010_0110
`define CODE_4_L `KB_ENCODE_BITS_N'b0_0010_0101
`define CODE_5_L `KB_ENCODE_BITS_N'b0_0010_1110
`define CODE_6_L `KB_ENCODE_BITS_N'b0_0011_0110
`define CODE_7_L `KB_ENCODE_BITS_N'b0_0011_1101
`define CODE_8_L `KB_ENCODE_BITS_N'b0_0011_1110
`define CODE_9_L `KB_ENCODE_BITS_N'b0_0100_0110

`define CODE_0_R `KB_ENCODE_BITS_N'b0_0111_0000
`define CODE_1_R `KB_ENCODE_BITS_N'b0_0110_1001
`define CODE_2_R `KB_ENCODE_BITS_N'b0_0111_0010
`define CODE_3_R `KB_ENCODE_BITS_N'b0_0111_1010
`define CODE_4_R `KB_ENCODE_BITS_N'b0_0110_1011
`define CODE_5_R `KB_ENCODE_BITS_N'b0_0111_0011
`define CODE_6_R `KB_ENCODE_BITS_N'b0_0111_0100
`define CODE_7_R `KB_ENCODE_BITS_N'b0_0110_1100
`define CODE_8_R `KB_ENCODE_BITS_N'b0_0111_0101
`define CODE_9_R `KB_ENCODE_BITS_N'b0_0111_1101

`define CODE_ADD_R `KB_ENCODE_BITS_N'b0_0111_1001
`define CODE_SUB_R `KB_ENCODE_BITS_N'b0_0111_1011
`define CODE_MUL_R `KB_ENCODE_BITS_N'b0_0111_1100

`define CODE_ENTER_L `KB_ENCODE_BITS_N'b0_0101_1010
`define CODE_F1_L `KB_ENCODE_BITS_N'b0_0000_0101
`define CODE_F2_L `KB_ENCODE_BITS_N'b0_0000_0110
`define CODE_F3_L `KB_ENCODE_BITS_N'b0_0000_0100
`define CODE_F4_L `KB_ENCODE_BITS_N'b0_0000_1100