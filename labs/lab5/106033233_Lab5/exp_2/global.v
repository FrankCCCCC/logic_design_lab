`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2022 03:28:32 PM
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


// Segment-7 Displayer
`define SEGMENT_7_INPUT_BITS_N 4
`define SEGMENT_7_DISPALY_DIGIT_N 4
`define SEGMENT_7_SEGMENT_N 8
`define SEGMENT_7_NONE `SEGMENT_7_SEGMENT_N'b1111111_1
`define SEGMENT_7_EMPTY `SEGMENT_7_SEGMENT_N'b1111111_0

// @Segment-7 Displayer Frequency Divider
`define SEGMENT_7_FREQ_DIV_BITS 30
// 1000 Hz
`define SEGMENT_7_FREQ_DIV_COUNT `FREQ_DIV_BITS'd50000
//`define SEGMENT_7_FREQ_DIV_COUNT `FREQ_DIV_BITS'd2
// 1 Hz
//`define SEGMENT_7_FREQ_DIV_COUNT `FREQ_DIV_BITS'd5000000
`define RST_OFF 1'b1

// @BCD Counter
`define BCD_COUNTER_BITS 12
`define BCD_COUNTER_LIMIT `BCD_COUNTER_BITS'd3600
`define BCD_COUNTER_ZERO `BCD_COUNTER_BITS'd0

// @Frequency Divider
`define FREQ_DIV_BITS 30
// 1 Hz
`define FREQ_DIV_COUNT `FREQ_DIV_BITS'd50000000
//`define FREQ_DIV_COUNT `FREQ_DIV_BITS'd2

// @LED control
`define LEDS_NUM 16

// @Minute-Second Seperater
`define UNIT_BITS 6

// One Pulse
`define COUNTER_BITS_N 30
`define PRESS_CYCLE_N `COUNTER_BITS_N'd200000000
//`define PRESS_CYCLE_N `COUNTER_BITS_N'd2