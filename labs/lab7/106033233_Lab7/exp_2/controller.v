`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2022 06:49:11 PM
// Design Name: 
// Module Name: controller
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

`define BTN_COUNTER_BITS_N 30

module controller(
    input clk,
    input rst_n,
    input btn_l,
    input btn_m,
    input btn_r,
    input btn_u,
    input btn_d,
    output [`AUDIO_LEVEL_BITS_N-1:0] audio_level_left,
    output [`AUDIO_LEVEL_BITS_N-1:0] audio_level_right,
    output reg [`NOTE_GEN_FREQ_BITS_N-1:0] note_div
    );
    
    reg [`BTN_COUNTER_BITS_N-1:0] neg_counter, neg_counter_next, pos_counter, pos_counter_next;
    wire [`BTN_COUNTER_BITS_N-1:0] counter_sum;
    reg [`AUDIO_LEVEL_BITS_N-1:0] audio_level;
    wire btn_r_debounced, btn_m_debounced, btn_l_debounced, btn_u_short, btn_d_short;
    onepulse RBtn(.rst(rst_n), .clk(clk), .push(btn_r), .push_debounced(btn_r_debounced));
    onepulse MBtn(.rst(rst_n), .clk(clk), .push(btn_m), .push_debounced(btn_m_debounced));
    onepulse LBtn(.rst(rst_n), .clk(clk), .push(btn_l), .push_debounced(btn_l_debounced));
    
    onepulse UBtn(.rst(rst_n), .clk(clk), .push(btn_u), .push_onepulse(btn_u_short));
    onepulse DBtn(.rst(rst_n), .clk(clk), .push(btn_d), .push_onepulse(btn_d_short));
    
    initial begin
        audio_level = `AUDIO_LEVEL_BITS_N'd0;
        neg_counter = `BTN_COUNTER_BITS_N'd0;
        neg_counter_next = `BTN_COUNTER_BITS_N'd0;
        pos_counter = `BTN_COUNTER_BITS_N'd0;
        pos_counter_next = `BTN_COUNTER_BITS_N'd0;
    end
    
    always@(*) begin
        case({btn_l_debounced, btn_m_debounced, btn_r_debounced})
            3'b100: begin
                // 261 Hz Do
                note_div = `NOTE_GEN_FREQ_BITS_N'd383141;
            end
            3'b010: begin
                // 293 Hz Re
                note_div = `NOTE_GEN_FREQ_BITS_N'd341296;
            end
            3'b001: begin
                // 330 Hz Mi
                note_div = `NOTE_GEN_FREQ_BITS_N'd303030;
            end
            default: begin
                // 20 Hz
                note_div = `NOTE_GEN_FREQ_BITS_N'd4194303;
            end
        endcase
    end
    
    assign counter_sum = pos_counter - neg_counter;
    assign audio_level_left = counter_sum[3:0]; 
    assign audio_level_right = counter_sum[3:0];
    
    always@(posedge btn_d_short) begin
        neg_counter_next <= neg_counter + `BTN_COUNTER_BITS_N'd1;
    end
    
    always@(posedge btn_u_short) begin
        pos_counter_next <= pos_counter + `BTN_COUNTER_BITS_N'd1;
    end
    
    always@(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            pos_counter <= `BTN_COUNTER_BITS_N'd0;
            neg_counter <= `BTN_COUNTER_BITS_N'd0;
        end else begin
            pos_counter <= pos_counter_next;
            neg_counter <= neg_counter_next;
        end
    end
endmodule
