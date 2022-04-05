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

module fsm_tb();
    reg CLK;
    reg RST;
    reg BTN_L, BTN_M, BTN_R;
    reg SWITCH_0, SWITCH_1;
    wire BTN_M_SHORT, BTN_M_LONG;
    
    wire [`STATE_LED_N-1:0] STATE_LED;
    wire [`DISPLAY_SLIDE_BITS_N-1:0] DISPLAY_SLIDE;
    
//    onepulse UBtn(.rst(RST), .clk(CLK), .push(BTN_M), .push_onepulse(BTN_M_SHORT), .push_onepulse_long(BTN_M_LONG));
    
    fsm U0(
        .state_led(STATE_LED),
        .btn_m_short(BTN_M_SHORT),
        .btn_m_long(BTN_M_LONG),
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
        #10 BTN_L = 0; BTN_M = 1; BTN_R = 0; SWITCH_0 = 0; SWITCH_1 = 0;
        #80 BTN_L = 0; BTN_M = 0; BTN_R = 0; SWITCH_0 = 0; SWITCH_1 = 0;
        #40 BTN_L = 0; BTN_M = 1; BTN_R = 0; SWITCH_0 = 0; SWITCH_1 = 0;
        #240 BTN_L = 0; BTN_M = 0; BTN_R = 0; SWITCH_0 = 0; SWITCH_1 = 0;
    end
    
    always begin
        #10; CLK = ~CLK;
    end
endmodule

//module fsm_tb();

//reg CLK;
//reg RST;
//reg PUSH;

//wire CLICK;
//wire LONG_PRESS;
//wire DIV_CLK;
//wire PUSH_DEBOUNCED;

//wire PUSH_SIG;
//wire PUSH_SIG_LONG;

//// 1 Hz Clock
////frequency_divider U0(.clk(CLK), .rst(RST), .clk_out(DIV_CLK));
//onepulse U1(.rst(RST), .clk(CLK), .push(PUSH), .push_onepulse(CLICK), .push_onepulse_long(LONG_PRESS), .push_debounced(PUSH_DEBOUNCED), .push_sig(PUSH_SIG), .push_sig_long(PUSH_SIG_LONG));

//initial
//begin
//    CLK = 0;
//    RST = 0;
//    PUSH = 0;
//    #10 RST = 1;
//    #10 PUSH = 0;
//    #10 PUSH = 1;
//    #10 PUSH = 0;
//    #20 PUSH = 1;
//    #80 PUSH = 0;
//    #20 PUSH = 1;
//    #260 PUSH = 0;
//    #20 PUSH = 1;
//    #80 PUSH = 0;
//    #20 PUSH = 1;
//    #260 PUSH = 0;
//    #20 PUSH = 1;
//    #260 PUSH = 0;
//    #20 PUSH = 1;
//    #80 PUSH = 0;
//    #20 PUSH = 1;
//    #260 PUSH = 0;
//    #20 PUSH = 1;
//end

//always
//begin
//    #10; CLK = ~CLK;
//end

//endmodule

