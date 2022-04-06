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
    reg is_pause, is_pause_temp;
    reg state, state_temp;
    reg [`BCD_COUNTER_BITS-1:0]q_target;
    reg [`BCD_COUNTER_BITS-1:0]q_target_min;
    reg [`BCD_COUNTER_BITS-1:0]q_target_sec;
//    reg last_restart;
//    reg last_pause;
    
    assign is_setting = mode_switch;
    
    initial begin
        q_target = `BCD_COUNTER_BITS'd0;
//        last_state = `STATE_START;
        state = `STATE_START;
        state_temp = `STATE_START;
        
        is_restart = 1'b0;
        is_restart_temp = 1'b0;
        is_pause = 1'b0;
        is_pause_temp = 1'b0;
//        last_restart = 1'b0;
//        last_is_pause = 1'b0;
//        last_pause = 1'b0;
        
        q_target_min = `BCD_COUNTER_BITS'd0;
        q_target_sec = `BCD_COUNTER_BITS'd0;
    end
    
    always@(posedge restart) begin
        if(!mode_switch) begin
            is_restart_temp <= is_restart ^ 1; 
        end
    end
    
    always@(posedge pause) begin
        if(!mode_switch) begin 
            if(state == `STATE_PAUSE) begin
//                last_state <= state;
//                last_is_pause <= is_pause;
                
                state_temp <= `STATE_START;
                is_pause_temp <= 0;
            end else if(state == `STATE_START) begin
//                last_state <= state;
//                last_is_pause <= is_pause;
                
                state_temp <= `STATE_PAUSE;
                is_pause_temp <= 1;
            end else begin
                state_temp <= `STATE_START;
                is_pause_temp <= 1'b0; 
                
//                last_state <= `STATE_SETTING; 
//                last_is_pause <= 0;
            end
        end
    end
    
    always@(posedge clk) begin
//        is_restart <= is_restart_temp;
        q_target <= q_target_min + q_target_sec;
        
        if(mode_switch) begin            
            state <= `STATE_SETTING;
            is_pause <= 0;
            is_restart <= 1'b1;
        end else begin
            state <= state_temp;
            is_pause <= is_pause_temp;
            is_restart <= is_restart_temp;
        end
    end

    always@(posedge restart) begin
        if(mode_switch) begin
            q_target_min <= q_target_min + `BCD_COUNTER_BITS'd60;
        end        
    end
    
    always@(posedge pause) begin
        if(mode_switch) begin
            q_target_sec <= q_target_sec + `BCD_COUNTER_BITS'd1;
        end        
    end
    
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