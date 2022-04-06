`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2022 05:51:23 PM
// Design Name: 
// Module Name: exp_2
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

module exp_2(
    leds,
    D_SEL,
    D_OUT,
    restart,
    push,
    rst,
    clk
    );
    output [`LEDS_NUM-1:0]leds;
    output [`SEGMENT_7_DISPALY_DIGIT_N-1:0]D_SEL;
    output [`SEGMENT_7_SEGMENT_N-1:0]D_OUT;
    input restart;
    input push;
    input rst;
    input clk;
    
    //    reg [`BCD_COUNTER_BITS-1:0]q;
    wire DIV_CLK;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]D0_MIN_BINARY;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]D1_MIN_BINARY;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]D0_SEC_BINARY;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]D1_SEC_BINARY;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D0_MIN_SEGMENT7;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D1_MIN_SEGMENT7;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D0_SEC_SEGMENT7;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D1_SEC_SEGMENT7;
    
    wire PAUSE_ONEPULSE;
    wire RESTART_ONEPULSE;
    wire LAP_ONEPULSE;
    wire IS_PAUSE;
    wire IS_RESTART;
    wire IS_LAP;
    
    wire [`BCD_COUNTER_BITS-1:0]Q;
    wire [`BCD_COUNTER_BITS-1:0]Q_LAP;

//    assign IS_RESTART = 1;
//    assign IS_PAUSE = 0;

    // 1 Hz Clock
    frequency_divider U0(.clk(clk), .rst(rst), .clk_out(DIV_CLK));
    
    onepulse PauseBtn(.rst(rst), .clk(clk), .clk_long(DIV_CLK), .push(push), .push_onepulse(PAUSE_ONEPULSE));
    onepulse RestartBtn(.rst(rst), .clk(clk), .clk_long(DIV_CLK), .push(restart), .push_onepulse(LAP_ONEPULSE), .push_onepulse_long(RESTART_ONEPULSE));
    fsm FSM(.clk(clk), .pause(PAUSE_ONEPULSE), .restart(RESTART_ONEPULSE), .lap(LAP_ONEPULSE), .is_pause(IS_PAUSE), .is_restart(IS_RESTART), .is_lap(IS_LAP));
    
    // 2-Digits Binary up counter 
    binary_up_4digit_counter U1(.clk(DIV_CLK), .rst(IS_RESTART), .is_pause(IS_PAUSE), .q(Q));
    lap_controller LAP_CONTROL(.q(Q_LAP), .i(Q), .is_lap(IS_LAP));
    
    // LEDs controller
    led_control LED_CONTROL(.q(Q), .is_pause(IS_PAUSE), .is_restart(IS_RESTART), .is_lap(IS_LAP), .leds(leds));
    display_time_7_segment TIME_DISPLAY(.q_lap(Q_LAP), .clk(clk), .rst(rst), .d_sel(D_SEL), .d_out(D_OUT));
endmodule
