`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2022 06:16:21 PM
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

`define FREQ_DIV_BIT 10

// Note Generation
`define AUDIO_IN_BITS_N 16
`define NOTE_GEN_FREQ_BITS_N 22
`define AUDIO_LEVEL_BITS_N 4


// Segment-7 Displayer
`define SEGMENT_7_INPUT_BITS_N 4
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