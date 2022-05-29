`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2022 07:55:42 PM
// Design Name: 
// Module Name: bird_mem_addr_gen
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

module bird_mem_addr_gen #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter BIRD_WIDTH_CNT = 0,
    parameter BIRD_HEIGHT_CNT = 0
)(
    input clk,
    input rst,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    input [CNT_BITS_N-1:0] pos_h_cnt,
    input [CNT_BITS_N-1:0] pos_v_cnt,
    output reg [PX_ADDR_BITS_N-1:0] pixel_addr = 0,
    output reg valid = 1'b0
);
    localparam BIRD_AREA = BIRD_WIDTH_CNT * BIRD_HEIGHT_CNT;
    
    wire [CNT_BITS_N-1:0] h_h_cnt = h_cnt >> 1;
    wire [CNT_BITS_N-1:0] h_v_cnt = v_cnt >> 1;
    
    reg [PX_ADDR_BITS_N-1:0] phase = 0, next_phase = 0;
    
    reg [PX_ADDR_BITS_N-1:0] addr_h_cnt = 0;
    reg [PX_ADDR_BITS_N-1:0] addr_v_cnt = 0;
    
    always@(posedge clk) begin
        if(rst) begin
            phase <= 0;
        end else begin
            if(phase == 0) begin
                phase <= 10;
            end else if(phase == 10) begin
                phase <= 20;
            end else if(phase == 20) begin
                phase <= 0;
            end
        end
    end
    
    always@(*) begin
        pixel_addr <= addr_h_cnt % BIRD_WIDTH_CNT + phase + BIRD_WIDTH_CNT * 3 * (addr_v_cnt % BIRD_HEIGHT_CNT);
    end
    
    always@(*) begin
        if(h_h_cnt >= pos_h_cnt && h_h_cnt < pos_h_cnt + BIRD_WIDTH_CNT &&
            h_v_cnt >= pos_v_cnt && h_v_cnt < pos_v_cnt + BIRD_HEIGHT_CNT) begin
            addr_h_cnt <= h_h_cnt - pos_h_cnt;
            addr_v_cnt <= h_v_cnt - pos_v_cnt;
            valid <= 1'b1;      
        end else begin
            addr_h_cnt <= 0;
            addr_v_cnt <= 0;
            valid <= 1'b0;
        end
    end
endmodule
