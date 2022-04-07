`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 09:19:37 PM
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


// Clock Generator
`define DIV_BY_50M 50_000_000
`define DIV_BY_50M_BIT_WIDTH 27
`define DIV_BY_500K 500_000
`define DIV_BY_500K_BIT_WIDTH 20
`define DIV_BY_25K 25_000
`define DIV_BY_25K_BIT_WIDTH 15
`define BCD_BIT_WIDTH 4

//7-segment display
`define SSD_BIT_WIDTH 8 // 7-segment display control
`define SSD_NUM 4 //number of 7-segment display
`define SSD_ZERO   `SSD_BIT_WIDTH'b0000_0011 // 0
`define SSD_ONE    `SSD_BIT_WIDTH'b1001_1111 // 1
`define SSD_TWO    `SSD_BIT_WIDTH'b0010_0101 // 2
`define SSD_THREE  `SSD_BIT_WIDTH'b0000_1101 // 3
`define SSD_FOUR   `SSD_BIT_WIDTH'b1001_1001 // 4
`define SSD_FIVE   `SSD_BIT_WIDTH'b0100_1001 // 5
`define SSD_SIX    `SSD_BIT_WIDTH'b0100_0001 // 6
`define SSD_SEVEN  `SSD_BIT_WIDTH'b0001_1111 // 7
`define SSD_EIGHT  `SSD_BIT_WIDTH'b0000_0001 // 8
`define SSD_NINE   `SSD_BIT_WIDTH'b0000_1001 // 9
`define SSD_A   `SSD_BIT_WIDTH'b0000_0101 // a
`define SSD_B   `SSD_BIT_WIDTH'b1100_0001 // b
`define SSD_C   `SSD_BIT_WIDTH'b1110_0101 // c
`define SSD_D   `SSD_BIT_WIDTH'b1000_0101 // d
`define SSD_E   `SSD_BIT_WIDTH'b0110_0001 // e
`define SSD_F   `SSD_BIT_WIDTH'b0111_0001 // f
`define SSD_DEF    `SSD_BIT_WIDTH'b0000_0000 // default, all LEDs being lighted

// FSM State
`define TIME_DISP 5'b00_000
`define TIME_SETMIN 5'b00_001
`define TIME_SETSEC 5'b00_010
`define STW_DISP 5'b01_100
`define STW_SETMIN 5'b01_000
`define STW_SETSEC 5'b01_001
`define STW_START 5'b01_010
`define STW_PAUSE 5'b01_011
`define ALM_DISP 5'b10_000
`define ALM_SETMIN 5'b10_001
`define ALM_SETSEC 5'b10_010
`define SET_DISP 5'b11_000

`define SETMIN 2'b10
`define SETSEC 2'b01
`define TIME 2'b00
`define STW 2'b01
`define ALM 2'b10
`define SET 2'b11


`define ENABLED 1'b1
`define DISABLED 1'b0


//`define NINETY_NINE `BCD_BIT_WIDTH'd99
//`define FIFTY_NINE `BCD_BIT_WIDTH'd59
//`define THIRTY_TWO `BCD_BIT_WIDTH'd32
//`define THIRTY_ONE `BCD_BIT_WIDTH'd31
//`define THIRTY `BCD_BIT_WIDTH'd30
//`define TWENTY_NINE `BCD_BIT_WIDTH'd29
//`define TWENTY_EIGHT `BCD_BIT_WIDTH'd28
//`define TWENTY_THREE `BCD_BIT_WIDTH'd23

`define NINE `BCD_BIT_WIDTH'd9
`define FIVE `BCD_BIT_WIDTH'd5
`define FOUR `BCD_BIT_WIDTH'd4
`define THREE `BCD_BIT_WIDTH'd3
`define TWO `BCD_BIT_WIDTH'd2
`define ONE `BCD_BIT_WIDTH'd1
`define ZERO `BCD_BIT_WIDTH'd0


// One Pulse
`define COUNTER_BITS_N 30
`define PRESS_CYCLE_N `COUNTER_BITS_N'd200000000
//`define PRESS_CYCLE_N `COUNTER_BITS_N'd2

//`define SWITCH_MODE_N 3
`define DISPLAY_SLIDE_BITS_N 2

// unitset
`define ENABLED_COUNTING_DIGITS_N 8

// timedisplay
`define COUNT_ENABLE_N 2

// Counterx
`define COUNTERX_BITS_N 9

// Frequency Divider
// @Frequency Divider
`define FREQ_DIV_BITS 30
// 1 Hz
`define FREQ_DIV_COUNT `FREQ_DIV_BITS'd50000000
//`define FREQ_DIV_COUNT `FREQ_DIV_BITS'd2

// Initial values of clock and alarm
`define INIT_ALARM_HOUR `COUNTERX_BITS_N'd17
`define INIT_ALARM_MIN `COUNTERX_BITS_N'd31
`define INIT_YEAR `COUNTERX_BITS_N'd22
`define INIT_MONTH `COUNTERX_BITS_N'd4
`define INIT_DAY `COUNTERX_BITS_N'd7
`define INIT_HOUR `COUNTERX_BITS_N'd17
`define INIT_MIN `COUNTERX_BITS_N'd30
`define INIT_SEC `COUNTERX_BITS_N'd30

// exp_1.v
`define LED_N 16

// FSM.v
`define STATE_LED_N 8
`define STATE_BITS_N 5