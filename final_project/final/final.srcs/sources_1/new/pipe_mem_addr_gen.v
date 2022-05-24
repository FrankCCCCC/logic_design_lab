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

`define PIPE_NUM 6
`define PIPE0_LEN 60
`define PIPE1_LEN 80
`define PIPE2_LEN 100
`define PIPE3_LEN 120
`define PIPE4_LEN 140
`define PIPE5_LEN 160

`define PIPE0_GAP 40
`define PIPE1_GAP 40
`define PIPE2_GAP 40
`define PIPE3_GAP 60
`define PIPE4_GAP 60
`define PIPE5_GAP 60

module pipe_mem_addr_gen
#(
    parameter CNT_BITS_N = `CNT_BITS_N,
    parameter PX_ADDR_BITS_N = `PX_ADDR_BITS_N,
    parameter PIPE_WIDTH_CNT = 16,
    parameter PIPE_LEN_CNT = 240
)
(
    input clk,
    input rst,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    output reg [PX_ADDR_BITS_N-1:0] pixel_addr = 0,
    output reg valid
);

    localparam PIPE_AREA = PIPE_WIDTH_CNT * PIPE_LEN_CNT;
    
    wire [CNT_BITS_N-1:0] h_h_cnt = h_cnt >> 1;
    wire [CNT_BITS_N-1:0] h_v_cnt = v_cnt >> 1;
    reg [PX_ADDR_BITS_N-1:0] addr_h_cnt = 0;
    reg [PX_ADDR_BITS_N-1:0] addr_v_cnt = 0;

    reg [CNT_BITS_N-1:0] pipe_gaps [`PIPE_NUM-1:0];
    reg [CNT_BITS_N-1:0] pipe_lens [`PIPE_NUM-1:0];
    
    initial begin
        pipe_gaps[0] = `PIPE0_GAP;
        pipe_gaps[1] = `PIPE1_GAP;
        pipe_gaps[2] = `PIPE2_GAP;
        pipe_gaps[3] = `PIPE3_GAP;
        pipe_gaps[4] = `PIPE4_GAP;
        pipe_gaps[5] = `PIPE5_GAP;
        
        pipe_lens[0] = `PIPE0_LEN;
        pipe_lens[1] = `PIPE1_LEN;
        pipe_lens[2] = `PIPE2_LEN;
        pipe_lens[3] = `PIPE3_LEN;
        pipe_lens[4] = `PIPE4_LEN;
        pipe_lens[5] = `PIPE5_LEN;
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
            
            pipe_gaps[5] <= pipe_gaps[0];
            pipe_gaps[0] <= pipe_gaps[1];
            pipe_gaps[1] <= pipe_gaps[2];
            pipe_gaps[2] <= pipe_gaps[3];
            pipe_gaps[3] <= pipe_gaps[4];
            pipe_gaps[4] <= pipe_gaps[5];
            
            pipe_lens[5] <= pipe_lens[0];
            pipe_lens[0] <= pipe_lens[1];
            pipe_lens[1] <= pipe_lens[2];
            pipe_lens[2] <= pipe_lens[3];
            pipe_lens[3] <= pipe_lens[4];
            pipe_lens[4] <= pipe_lens[5];
        end
    end
    
    always@(*) begin
        pixel_addr <= (addr_h_cnt % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * addr_v_cnt) % PIPE_AREA;
    end
    
    always@(*) begin
        if(h_h_cnt > 0 && PIPE_WIDTH_CNT > (`PHASE_CNT - pos) && h_h_cnt < PIPE_WIDTH_CNT - (`PHASE_CNT - pos)) begin
            if(h_v_cnt < pipe_lens[0]) begin
//                pixel_addr <= ((h_h_cnt + (`PHASE_CNT - pos)) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (pipe_lens[0] - h_v_cnt)) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt + (`PHASE_CNT - pos);
                addr_v_cnt <= pipe_lens[0] - h_v_cnt;
                valid <= 1'b1;
            end else if(h_v_cnt > pipe_lens[0] + pipe_gaps[0]) begin
//                pixel_addr <= ((h_h_cnt + (`PHASE_CNT - pos)) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (h_v_cnt - pipe_lens[0] - pipe_gaps[0])) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt + (`PHASE_CNT - pos);
                addr_v_cnt <= h_v_cnt - pipe_lens[0] - pipe_gaps[0];
                valid <= 1'b1;
            end else begin
                addr_h_cnt <= 0;
                addr_v_cnt <= 0;
                valid <= 1'b0;
            end
        end else if(h_h_cnt > pos && h_h_cnt < pos + PIPE_WIDTH_CNT) begin
            if(h_v_cnt < pipe_lens[1]) begin
//                pixel_addr <= ((h_h_cnt - pos) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (pipe_lens[1] - h_v_cnt)) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos;
                addr_v_cnt <= pipe_lens[1] - h_v_cnt;
                valid <= 1'b1;
            end else if(h_v_cnt > pipe_lens[1] + pipe_gaps[1]) begin
//                pixel_addr <= ((h_h_cnt - pos) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (h_v_cnt - pipe_lens[1] - pipe_gaps[1])) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos;
                addr_v_cnt <= h_v_cnt - pipe_lens[1] - pipe_gaps[1];
                valid <= 1'b1;
            end else begin
                addr_h_cnt <= 0;
                addr_v_cnt <= 0;
                valid <= 1'b0;
            end
        end else if(h_h_cnt > pos + `PHASE_CNT && h_h_cnt < pos + `PHASE_CNT + PIPE_WIDTH_CNT) begin
            if(h_v_cnt < pipe_lens[2]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (pipe_lens[2] - h_v_cnt)) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE_CNT;
                addr_v_cnt <= pipe_lens[2] - h_v_cnt;
                valid <= 1'b1;
            end else if(h_v_cnt > pipe_lens[2] + pipe_gaps[2]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (h_v_cnt - pipe_lens[2] - pipe_gaps[2])) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE_CNT;
                addr_v_cnt <= h_v_cnt - pipe_lens[2] - pipe_gaps[2];
                valid <= 1'b1;
            end else begin
                addr_h_cnt <= 0;
                addr_v_cnt <= 0;
                valid <= 1'b0;
            end
        end else if(h_h_cnt > pos + 2 * `PHASE_CNT && h_h_cnt < pos + 2 * `PHASE_CNT + PIPE_WIDTH_CNT) begin
            if(h_v_cnt < pipe_lens[3]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (pipe_lens[3] - h_v_cnt)) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE_CNT;
                addr_v_cnt <= pipe_lens[3] - h_v_cnt;
                valid <= 1'b1;
            end else if(h_v_cnt > pipe_lens[3] + pipe_gaps[3]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (h_v_cnt - pipe_lens[3] - pipe_gaps[3])) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE_CNT;
                addr_v_cnt <= h_v_cnt - pipe_lens[3] - pipe_gaps[3];
                valid <= 1'b1;
            end else begin
                addr_h_cnt <= 0;
                addr_v_cnt <= 0;
                valid <= 1'b0;
            end
        end else if(h_h_cnt > pos + 3 * `PHASE_CNT && h_h_cnt < pos + 3 * `PHASE_CNT + PIPE_WIDTH_CNT) begin
            if(h_v_cnt < pipe_lens[4]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (pipe_lens[4] - h_v_cnt)) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE_CNT;
                addr_v_cnt <= pipe_lens[4] - h_v_cnt;
                valid <= 1'b1;
            end else if(h_v_cnt > pipe_lens[4] + pipe_gaps[4]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (h_v_cnt - pipe_lens[4] - pipe_gaps[4])) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE_CNT;
                addr_v_cnt <= h_v_cnt - pipe_lens[4] - pipe_gaps[4];
                valid <= 1'b1;
            end else begin
                addr_h_cnt <= 0;
                addr_v_cnt <= 0;
                valid <= 1'b0;
            end
        end else begin
            addr_h_cnt <= 0;
            addr_v_cnt <= 0;
            valid <= 1'b0;
        end
    end

endmodule
