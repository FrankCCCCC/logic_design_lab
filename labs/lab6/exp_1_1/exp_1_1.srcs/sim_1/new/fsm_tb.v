`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 11:00:13 AM
// Design Name: 
// Module Name: fsm_tb
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

//`include "global.v"

`define STATE_LED_N 8
`define DISPLAY_SLIDE_BITS_N 2
`define STATE_BITS_N 5

module fsm_tb();
    reg CLK;
    reg RST;
    reg BTN_L, BTN_M, BTN_R;
    reg SWITCH_0, SWITCH_1;
    wire BTN_M_SHORT, BTN_M_DEBOUNCE_LONG;
    wire BTN_R_SHORT, BTN_R_DEBOUNCED;
    wire BTN_L_SHORT, BTN_L_LONG, BTN_L_DEBOUNCED;
    
    wire [`STATE_LED_N-1:0] STATE_LED;
    wire [`DISPLAY_SLIDE_BITS_N-1:0] DISPLAY_SLIDE;
    
    wire [`STATE_BITS_N-1:0] STATE;
    wire LOAD_TO_DISP_ALARM, LOAD_TO_UNITSET;
    wire ALARM_ENABLE;
    wire TIME_ENABLE;
    wire STOPWATCH_ENABLE, STOPWATCH_RESTART, STOPWATCH_LAP;
    
//    onepulse UBtn(.rst(RST), .clk(CLK), .push(BTN_M), .push_onepulse(BTN_M_SHORT), .push_onepulse_long(BTN_M_LONG));
    
    fsm U0(
        .state_led(STATE_LED),
        .state(STATE),
        .load_to_disp_alarm(LOAD_TO_DISP_ALARM),
        .load_to_unitset(LOAD_TO_UNITSET),
        .alarm_enable(ALARM_ENABLE),
        .time_enable(TIME_ENABLE),
        .stopwatch_enable(STOPWATCH_ENABLE), 
        .stopwatch_restart(STOPWATCH_RESTART), 
        .stopwatch_lap(STOPWATCH_LAP),
        .btn_m_short(BTN_M_SHORT),
        .btn_m_debounce_long(BTN_M_DEBOUNCE_LONG),
        .btn_r_short(BTN_R_SHORT),
        .btn_r_debounced(BTN_R_DEBOUNCED),
        .btn_l_short(BTN_L_SHORT),
        .btn_l_long(BTN_L_LONG), 
        .btn_l_debounced(BTN_L_DEBOUNCED),
        .display_slide(DISPLAY_SLIDE),
        .clk(CLK), 
        .rst_n(RST), 
        .btn_l(BTN_L), 
        .btn_m(BTN_M), 
        .btn_r(BTN_R), 
        .switch_0(SWITCH_0),
        .switch_1(SWITCH_1)
        );
    
    initial begin
        CLK = 0;
        RST = 0;
        BTN_L = 0; BTN_M = 0; BTN_R = 0; SWITCH_0 = 0; SWITCH_1 = 0;
        #10 RST = 1;
        #10 RST = 0;
    //    #10 RST = 0;
        #10 RST = 1;
        
        // Time state click & press
//        #5 SWITCH_1 = 0; SWITCH_0 = 0;
        #10 BTN_L = 0; BTN_M = 1; BTN_R = 0; SWITCH_0 = 0; SWITCH_1 = 0;
        #80 BTN_L = 0; BTN_M = 0; BTN_R = 0; SWITCH_0 = 0; SWITCH_1 = 0;
        #40 BTN_L = 0; BTN_M = 1; BTN_R = 0; SWITCH_0 = 0; SWITCH_1 = 0;
        #240 BTN_L = 0; BTN_M = 0; BTN_R = 0; SWITCH_0 = 0; SWITCH_1 = 0;
        
        // Sopwatch state click & press
//        #5 SWITCH_1 = 1; SWITCH_0 = 0;
        #40 BTN_L = 1; BTN_M = 0; BTN_R = 0; SWITCH_0 = 0; SWITCH_1 = 1;
        #240 BTN_L = 0; BTN_M = 0; BTN_R = 0; SWITCH_0 =0; SWITCH_1 = 1;
        #10 BTN_L = 0; BTN_M = 0; BTN_R = 1; SWITCH_0 = 0; SWITCH_1 = 1;
        #80 BTN_L = 0; BTN_M = 0; BTN_R = 0; SWITCH_0 = 0; SWITCH_1 = 1;
    end
    
    always begin
        #5; CLK = ~CLK;
    end
endmodule