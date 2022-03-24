`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 05:59:20 PM
// Design Name: 
// Module Name: FSM
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
module FSM( 
    count_enable, // if counter is enabled
    freeze_enable, // if ssd is freezed 
    in, //input control 
    clk, // global clock signal 
    rst // high active reset
    );
    // outputs
    output count_enable; // if counter is enabled 
    output freeze_enable; // if ssd is freezed
    reg freeze_enable;
    // inputs
    input clk; // global clock signal
    input rst; // high active reset
    input in; //input control
    reg count_enable; // if counter is enabled 
    reg freeze_enable; // if ssd is freezed
    reg [1:0] state; // state of FSM
    reg [1:0] next_state; // next state of FSM
    reg [2:0] in_latch; // input latch
    reg [2:0] in_latch_temp; // input latch
    
    // State Definition
    `define STAT_DEF 2'b00
    `define STAT_COUNT 2'b01
    `define STAT_FREEZE 2'b10
    
    // FSM state transition
    always @(posedge clk or posedge rst) 
        if (rst) state <= `STAT_DEF; 
        else state <= next_state;
        
    // ************************
    // Press counting
    // ************************
    always @(*)
        if((in) && (state != `STAT_COUNT))
        in_latch_temp = 3'b000;
        else
        in_latch_temp = {in_latch[1:0],~in};
    
    always @(posedge clk or posedge rst) 
        if (rst) in_latch <= 3'b000; 
        else in_latch <= in_latch_temp;

    // FSM state decision
    always @(state or in or in_latch) 
        case (state) 
            `STAT_DEF: 
                if (in) begin 
                    next_state = `STAT_DEF; 
                    count_enable = `DISABLED; 
                    freeze_enable = `DISABLED; 
                end 
                else begin 
                    next_state = `STAT_COUNT; 
                    count_enable = `ENABLED; 
                    freeze_enable = `DISABLED; 
            end 
            `STAT_COUNT: 
                if ((in) && (in_latch==3'b111)) begin 
                    next_state = `STAT_DEF;
                    count_enable = `DISABLED; 
                    freeze_enable = `DISABLED; 
                end 
                else if ((in) && (in_latch==3'b001)) begin 
                    next_state = `STAT_FREEZE; 
                    count_enable = `ENABLED; 
                    freeze_enable = `ENABLED; 
                end 
                else begin 
                    next_state = `STAT_COUNT; 
                    count_enable = `ENABLED; 
                    freeze_enable = `DISABLED; 
                end
            `STAT_FREEZE: 
                if (~in) begin 
                    next_state = `STAT_COUNT; 
                    count_enable = `ENABLED; 
                    freeze_enable = `DISABLED; 
                end 
                else begin 
                    next_state = `STAT_FREEZE; 
                    count_enable = `ENABLED; 
                    freeze_enable = `ENABLED; 
                end 
                default: begin 
                    next_state = `STAT_DEF; 
                    count_enable = `DISABLED; 
                    freeze_enable = `DISABLED; 
        end endcase
endmodule

