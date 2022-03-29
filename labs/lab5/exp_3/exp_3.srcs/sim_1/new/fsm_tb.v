`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 09:38:11 PM
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

`define BCD_COUNTER_BITS 12
`define STATE_SETTING 2
`define STATE_PAUSE 1
`define STATE_START 0

module fsm_tb();

reg CLK;
reg PUSH_RESTART, PUSH_PAUSE, SWITCH_MODE;

wire PAUSE_TRIG, RESTART_TRIG;
wire [`BCD_COUNTER_BITS-1:0]Q_TARGET;
wire IS_PAUSE, IS_RESTART, IS_SETTING;

fsm FSM(.is_pause(IS_PAUSE),
        .is_restart(IS_RESTART),
        .is_setting(IS_SETTING),
        .q_target(Q_TARGET),
        .pause_trig(PAUSE_TRIG),
        .restart_trig(RESTART_TRIG),
        .clk(CLK),
        .pause(PUSH_PAUSE), 
        .restart(PUSH_RESTART), 
        .mode_switch(SWITCH_MODE));

initial
begin
    CLK = 0;
    PUSH_RESTART = 0; PUSH_PAUSE = 0; SWITCH_MODE = 0;
    #10 PUSH_RESTART = 0; PUSH_PAUSE = 0; SWITCH_MODE = 1;
    #10 PUSH_RESTART = 0; PUSH_PAUSE = 0; SWITCH_MODE = 0;
    
    #10 PUSH_RESTART = 1; PUSH_PAUSE = 0; SWITCH_MODE = 1;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 0; SWITCH_MODE = 1;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 1; SWITCH_MODE = 1;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 0; SWITCH_MODE = 1;
    
    #20 PUSH_RESTART = 1; PUSH_PAUSE = 0; SWITCH_MODE = 1;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 0; SWITCH_MODE = 1;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 1; SWITCH_MODE = 1;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 0; SWITCH_MODE = 1;
    
    #20 PUSH_RESTART = 1; PUSH_PAUSE = 0; SWITCH_MODE = 0;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 0; SWITCH_MODE = 0;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 1; SWITCH_MODE = 0;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 0; SWITCH_MODE = 0;
    
    #20 PUSH_RESTART = 1; PUSH_PAUSE = 0; SWITCH_MODE = 0;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 0; SWITCH_MODE = 0;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 1; SWITCH_MODE = 0;
    #20 PUSH_RESTART = 0; PUSH_PAUSE = 0; SWITCH_MODE = 0;
end

always
begin
    #10; CLK = ~CLK;
end

endmodule
