`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 04:10:40 PM
// Design Name: 
// Module Name: fsm\
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

`define STATE_SETTING 2
`define STATE_PAUSE 1
`define STATE_START 0

module fsm(
    is_pause,
    is_restart,
    is_setting,
    q_target,
    pause_trig,
    restart_trig,    
    clk,
    pause,
    restart,
    mode_switch
    );
    
    output is_pause;
    output is_restart;
    output is_setting;
    output [`BCD_COUNTER_BITS-1:0]q_target;
    output restart_trig;
    output pause_trig;
    input clk;
    input pause;
    input restart;
    input mode_switch;
    
    reg is_restart, is_restart_temp;
    reg is_pause, last_is_pause;
    reg state, last_state;
    reg [`BCD_COUNTER_BITS-1:0]q_target;
    reg [`BCD_COUNTER_BITS-1:0]q_target_temp;
//    reg restart_trig;
//    reg pause_trig;
    reg last_restart;
    reg last_pause;
    
    assign is_setting = mode_switch;
    
    initial begin
        q_target = `BCD_COUNTER_BITS'd0;
        q_target_temp = `BCD_COUNTER_BITS'd0;
        last_state = `STATE_START;
        state = `STATE_START;
        is_restart = 1'b0;
        is_restart_temp = 1'b0;
        is_pause = 1'b0;
        last_restart = 1'b0;
        last_is_pause = 1'b0;
        last_pause = 1'b0;
//        restart_trig = 1'b0;
//        pause_trig = 1'b0;
    end
    
    always@(restart or mode_switch) begin
        if(mode_switch) begin
            is_restart_temp <= 1'b1;
        end else begin
            is_restart_temp <= is_restart ^ 1; 
        end
    end
    
    always@(clk) begin
        is_restart <= is_restart_temp;
        q_target <= q_target_temp;
    end
    
    always@(restart or pause) begin
        if(mode_switch) begin
            if(restart) begin
                q_target_temp <= q_target + `BCD_COUNTER_BITS'd60;
            end else if(pause) begin
                q_target_temp <= q_target + `BCD_COUNTER_BITS'd1;
            end
        end        
    end
    
    always@(mode_switch or pause) begin
        if(mode_switch) begin
            last_state <= state;
            last_is_pause <= is_pause;
            
            state <= `STATE_SETTING;
            is_pause <= 0;
        end else begin 
            if(pause) begin
                if(state == `STATE_PAUSE) begin
                    last_state <= state;
                    last_is_pause <= is_pause;
                    
                    state <= `STATE_START;
                    is_pause <= 0;
                end else if(state == `STATE_START) begin
                    last_state <= state;
                    last_is_pause <= is_pause;
                    
                    state <= `STATE_PAUSE;
                    is_pause <= 1;
                end else begin
                    state <= last_state;
                    is_pause <= last_is_pause; 
                    
                    last_state <= `STATE_SETTING; 
                    last_is_pause <= 0;
                end
            end
        end
    end
    
//    always@(restart) begin
////        if(restart) begin
//            restart_trig <= ~restart_trig;
////        end
//    end
    
//    always@(pause) begin
////        if(pause) begin
//            pause_trig <= ~pause_trig;
////        end
//    end
    
//    always@(posedge pause or mode_switch) begin
//        if(mode_switch) begin
//            state <= `STATE_SETTING;
//            is_pause <= 0;
//        end else if(state == `STATE_PAUSE) begin
//            state <= `STATE_START;
//            is_pause <= 0;
//        end else if(state == `STATE_START) begin
//            state <= `STATE_PAUSE;
//            is_pause <= 1;
//        end
//    end
endmodule