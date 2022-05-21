`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2022 08:06:28 PM
// Design Name: 
// Module Name: pipe_mem_addr_gen
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

`define PHASE_N 4
`define PHASE_CNT 80

module pipe_mem_addr_gen
#(
    parameter CNT_BITS_N = 10,
    parameter PX_ADDR_BITS_N = 17,
    parameter PIPE_WIDTH_CNT = 16,
    parameter PIPE_LEN_CNT = 240,
    parameter WIDTH = `DISP_WIDTH,
    parameter HEIGHT = `DISP_HEIGHT
)
(
    input clk,
    input rst,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    output reg [PX_ADDR_BITS_N-1:0] pixel_addr = `PX_ADDR_BITS_N'd0,
    output reg valid
);
    wire [CNT_BITS_N-1:0] h_h_cnt = h_cnt >> 1;
    wire [CNT_BITS_N-1:0] h_v_cnt = v_cnt >> 1;
//    reg [PX_ADDR_BITS_N-1:0] pixel_addr_temp;    
//    adddr_flip(.addr_out(pixel_addr), .addr(pixel_addr_temp));

    reg [CNT_BITS_N-1:0] pipe_gaps [3:0];
    reg [CNT_BITS_N-1:0] pipe_lens [3:0];
    reg [CNT_BITS_N-1:0] pipe_lens_temp;
    
    initial begin
        pipe_gaps[0] = 64;
        pipe_lens[0] = 120;
        pipe_lens[1] = 160;
        pipe_lens[2] = 80;
    end
    
    reg [CNT_BITS_N-1:0] pos = 0, pos_temp = 0;
    always@(*)begin
        pos_temp <= pos - 1;
    end
    always@(posedge clk or negedge rst) begin
        if(rst) begin
            pos <= `PHASE_CNT;
        end else if(pos_temp >= 0 && pos_temp < `PHASE_CNT) begin
            pos <= pos_temp;
        end else begin
            pos <= `PHASE_CNT;
            
            pipe_lens[1] <= pipe_lens[0];
            pipe_lens[2] <= pipe_lens[1];
            pipe_lens[3] <= pipe_lens[2];
            pipe_lens[0] <= pipe_lens[3];
        end
    end
    
    always@(*) begin
//        if(h_cnt < `PHASE_CNT - pos && h_cnt > `PHASE_CNT - pos - PIPE_WIDTH_CNT) begin
//            // Phase 1
//            pixel_addr <= h_cnt - (`PHASE_CNT - pos - PIPE_WIDTH_CNT) + v_cnt * pipe_lens[0];
//            valid <= 1'b1;
//        end else begin
//            pixel_addr <= `PX_ADDR_BITS_N'd0;
//            valid <= 1'b0;
//        end
        
        if(h_h_cnt > pos && h_h_cnt < pos + PIPE_WIDTH_CNT && h_v_cnt < pipe_lens[0]) begin
            pixel_addr <= ((h_h_cnt - pos) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * h_v_cnt) % (PIPE_WIDTH_CNT * PIPE_LEN_CNT);
            valid <= 1'b1;
        end else if(h_h_cnt > pos * 2 && h_h_cnt < pos * 2 + PIPE_WIDTH_CNT && h_v_cnt < pipe_lens[1]) begin
            pixel_addr <= ((h_h_cnt - pos * 2) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * h_v_cnt) % (PIPE_WIDTH_CNT * PIPE_LEN_CNT);
            valid <= 1'b1;
        end else if(h_h_cnt > pos * 3 && h_h_cnt < pos * 3 + PIPE_WIDTH_CNT && h_v_cnt < pipe_lens[2]) begin
            pixel_addr <= ((h_h_cnt - pos * 3) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * h_v_cnt) % (PIPE_WIDTH_CNT * PIPE_LEN_CNT);
            valid <= 1'b1;
        end else begin
            pixel_addr <= `PX_ADDR_BITS_N'd0;
            valid <= 1'b0;
        end
    end

endmodule
