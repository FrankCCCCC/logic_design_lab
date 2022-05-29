`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 08:35:37 PM
// Design Name: 
// Module Name: bird_pos_ctrl
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

`define POS_H_CNT_INIT 10
`define POS_V_CNT_INIT 110

module bird_pos_ctrl #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter BIRD_WIDTH_CNT = 0,
    parameter BIRD_HEIGHT_CNT = 0,
    parameter WIDTH_CNT = 0,
    parameter HEIGHT_CNT = 0
)(
    input clk,
    input clk_move,
    input rst,
    input is_dead,
    input btn_fly,
    output reg [CNT_BITS_N-1:0] pos_h_cnt = `POS_H_CNT_INIT,
    output reg [CNT_BITS_N-1:0] pos_v_cnt = `POS_V_CNT_INIT
);
    reg [CNT_BITS_N-1:0] pos_h_cnt_next = `POS_H_CNT_INIT, pos_v_cnt_next = `POS_V_CNT_INIT;
    reg [10:0] drop_count = 0, drop_count_next = 0;
    reg is_clicked = 0, is_clicked_next = 0;
    
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            pos_h_cnt_next <= `POS_H_CNT_INIT;
            pos_v_cnt_next <= `POS_V_CNT_INIT;
            is_clicked_next <= 0;
            drop_count_next <= 0;
        end else begin
            if(btn_fly && ~is_dead &&pos_v_cnt > 0) begin
                if(pos_v_cnt - 2 <= 1) begin
                    pos_v_cnt_next <= 0;
                end else begin
                    pos_v_cnt_next <= pos_v_cnt - 2;
                end
                drop_count_next <= 0;
                is_clicked_next <= 1;
            end else if(~btn_fly && is_clicked && pos_v_cnt < HEIGHT_CNT) begin
                pos_v_cnt_next <= pos_v_cnt + drop_count * drop_count / 32;
                drop_count_next <= drop_count + 1;
            end
        end
    end

    always@(posedge clk_move or posedge rst) begin
        if(rst) begin
            pos_h_cnt <= `POS_H_CNT_INIT;
            pos_v_cnt <= `POS_V_CNT_INIT;
            drop_count <= 0;
            is_clicked <= 0;
        end else begin
            pos_h_cnt <= `POS_H_CNT_INIT;
            pos_v_cnt <= pos_v_cnt_next;
            drop_count <= drop_count_next;
            is_clicked <= is_clicked_next;
        end
    end
endmodule
