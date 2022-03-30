`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 04:00:14 PM
// Design Name: 
// Module Name: exp_3
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

module exp_3(
    leds,
    D_SEL,
    D_OUT,
    restart,
    push,
    mode_switch,
    rst,
    clk
    );
    output [`LEDS_NUM-1:0]leds;
    output [`SEGMENT_7_DISPALY_DIGIT_N-1:0]D_SEL;
    output [`SEGMENT_7_SEGMENT_N-1:0]D_OUT;
    input restart;
    input push;
    input mode_switch;
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
    wire IS_PAUSE;
    wire IS_RESTART;
    wire IS_SETTING;
    
    wire [`BCD_COUNTER_BITS-1:0]Q;
    wire [`BCD_COUNTER_BITS-1:0]Q_SHOW;
    wire [`BCD_COUNTER_BITS-1:0]Q_TARGET;

//    assign IS_RESTART = 1;
//    assign IS_PAUSE = 0;

//    assign Q_TARGET = `BCD_COUNTER_BITS'd70;

    // 1 Hz Clock
    frequency_divider U0(.clk(clk), .rst(rst), .clk_out(DIV_CLK));
    
    onepulse PauseBtn(.rst(rst), .clk(clk), .push(push), .push_onepulse(PAUSE_ONEPULSE));
    onepulse RestartBtn(.rst(rst), .clk(clk), .push(restart), .push_onepulse(RESTART_ONEPULSE));
    fsm FSM(.clk(clk), .mode_switch(mode_switch), .pause(PAUSE_ONEPULSE), .restart(RESTART_ONEPULSE), .is_pause(IS_PAUSE), .is_restart(IS_RESTART), .is_setting(IS_SETTING), .q_target(Q_TARGET));
    
    // 2-Digits Binary up counter 
    binary_down_4digit_counter U1(.clk(DIV_CLK), .rst(IS_RESTART), .counter_limit(Q_TARGET), .is_pause(IS_PAUSE), .q(Q));
    timer_controller TIMER_CONTROL(.counting(Q), .target(Q_TARGET), .is_setting(IS_SETTING), .q_show(Q_SHOW));
    
    // LEDs controller
    led_controller LED_CONTROL(.q(Q), .is_pause(IS_PAUSE), .is_restart(IS_RESTART), .is_setting(IS_SETTING), .leds(leds));
    display_time_7_segment TIME_DISPLAY(.q_show(Q_SHOW), .clk(clk), .rst(rst), .d_sel(D_SEL), .d_out(D_OUT));
endmodule