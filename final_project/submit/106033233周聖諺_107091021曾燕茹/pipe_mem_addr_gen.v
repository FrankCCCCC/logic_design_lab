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

// `include "global.v"

`define POS_INIT 0

`define PHASE_N 3
`define PHASE0_CNT 107
`define PHASE1_CNT 107
`define PHASE2_CNT 107
`define PHASE3_CNT 106
`define PHASE4_CNT 0

`define PIPE_NUM 15
`define PIPE0_LEN 60
`define PIPE1_LEN 80
`define PIPE2_LEN 40
`define PIPE3_LEN 100
`define PIPE4_LEN 120
`define PIPE5_LEN 90
`define PIPE6_LEN 130
`define PIPE7_LEN 140
`define PIPE8_LEN 160
`define PIPE9_LEN 100
`define PIPE10_LEN 20
`define PIPE11_LEN 10
`define PIPE12_LEN 30
`define PIPE13_LEN 40
`define PIPE14_LEN 70

`define PIPE0_GAP 60
`define PIPE1_GAP 60
`define PIPE2_GAP 60
`define PIPE3_GAP 65
`define PIPE4_GAP 60
`define PIPE5_GAP 70
`define PIPE6_GAP 65
`define PIPE7_GAP 50
`define PIPE8_GAP 67
`define PIPE9_GAP 70
`define PIPE10_GAP 60
`define PIPE11_GAP 50
`define PIPE12_GAP 70
`define PIPE13_GAP 65
`define PIPE14_GAP 65

module pipe_mem_addr_gen #(
    parameter CNT_BITS_N = 0,
    parameter PX_ADDR_BITS_N = 0,
    parameter PIPE_WIDTH_CNT = 0,
    parameter PIPE_LEN_CNT = 0
)(
    input clk,
    input clk_scroll,
    input rst,
    input [CNT_BITS_N-1:0] h_cnt,
    input [CNT_BITS_N-1:0] v_cnt,
    output reg [CNT_BITS_N-1:0] pos = `PHASE1_CNT,
    output [PX_ADDR_BITS_N-1:0] pixel_addr,
    output reg valid
);

    localparam PIPE_AREA = PIPE_WIDTH_CNT * PIPE_LEN_CNT;
    
    wire [CNT_BITS_N-1:0] h_h_cnt = h_cnt >> 1;
    wire [CNT_BITS_N-1:0] h_v_cnt = v_cnt >> 1;
    reg [PX_ADDR_BITS_N-1:0] addr_h_cnt = 0;
    reg [PX_ADDR_BITS_N-1:0] addr_v_cnt = 0;

    reg [CNT_BITS_N-1:0] pipe_gaps [`PIPE_NUM-1:0];
    reg [CNT_BITS_N-1:0] pipe_lens [`PIPE_NUM-1:0];
    reg is_pass_first_pipe = 0;
    
    initial begin
        pipe_gaps[0] = `PIPE0_GAP;
        pipe_gaps[1] = `PIPE1_GAP;
        pipe_gaps[2] = `PIPE2_GAP;
        pipe_gaps[3] = `PIPE3_GAP;
        pipe_gaps[4] = `PIPE4_GAP;
        pipe_gaps[5] = `PIPE5_GAP;
        pipe_gaps[6] = `PIPE6_GAP;
        pipe_gaps[7] = `PIPE7_GAP;
        pipe_gaps[8] = `PIPE8_GAP;
        pipe_gaps[9] = `PIPE9_GAP;
        pipe_gaps[10] = `PIPE10_GAP;
        pipe_gaps[11] = `PIPE11_GAP;
        pipe_gaps[12] = `PIPE12_GAP;
        pipe_gaps[13] = `PIPE13_GAP;
        pipe_gaps[14] = `PIPE14_GAP;
        
        pipe_lens[0] = `PIPE0_LEN;
        pipe_lens[1] = `PIPE1_LEN;
        pipe_lens[2] = `PIPE2_LEN;
        pipe_lens[3] = `PIPE3_LEN;
        pipe_lens[4] = `PIPE4_LEN;
        pipe_lens[5] = `PIPE5_LEN;
        pipe_lens[6] = `PIPE6_LEN;
        pipe_lens[7] = `PIPE7_LEN;
        pipe_lens[8] = `PIPE8_LEN;
        pipe_lens[9] = `PIPE9_LEN;
        pipe_lens[10] = `PIPE10_LEN;
        pipe_lens[11] = `PIPE11_LEN;
        pipe_lens[12] = `PIPE12_LEN;
        pipe_lens[13] = `PIPE13_LEN;
        pipe_lens[14] = `PIPE14_LEN;
    end
    
    reg [CNT_BITS_N-1:0] pos_next = `PHASE1_CNT;
    always@(*)begin
        pos_next <= pos - 1;
    end
    always@(posedge clk_scroll or posedge rst) begin
        if(rst) begin
            pos <= `PHASE1_CNT;
            is_pass_first_pipe <= 0;

            pipe_gaps[0] <= `PIPE0_GAP;
            pipe_gaps[1] <= `PIPE1_GAP;
            pipe_gaps[2] <= `PIPE2_GAP;
            pipe_gaps[3] <= `PIPE3_GAP;
            pipe_gaps[4] <= `PIPE4_GAP;
            pipe_gaps[5] <= `PIPE5_GAP;
            pipe_gaps[6] <= `PIPE6_GAP;
            pipe_gaps[7] <= `PIPE7_GAP;
            pipe_gaps[8] <= `PIPE8_GAP;
            pipe_gaps[9] <= `PIPE9_GAP;
            pipe_gaps[10] <= `PIPE10_GAP;
            pipe_gaps[11] <= `PIPE11_GAP;
            pipe_gaps[12] <= `PIPE12_GAP;
            pipe_gaps[13] <= `PIPE13_GAP;
            pipe_gaps[14] <= `PIPE14_GAP;
            
            pipe_lens[0] <= `PIPE0_LEN;
            pipe_lens[1] <= `PIPE1_LEN;
            pipe_lens[2] <= `PIPE2_LEN;
            pipe_lens[3] <= `PIPE3_LEN;
            pipe_lens[4] <= `PIPE4_LEN;
            pipe_lens[5] <= `PIPE5_LEN;
            pipe_lens[6] <= `PIPE6_LEN;
            pipe_lens[7] <= `PIPE7_LEN;
            pipe_lens[8] <= `PIPE8_LEN;
            pipe_lens[9] <= `PIPE9_LEN;
            pipe_lens[10] <= `PIPE10_LEN;
            pipe_lens[11] <= `PIPE11_LEN;
            pipe_lens[12] <= `PIPE12_LEN;
            pipe_lens[13] <= `PIPE13_LEN;
            pipe_lens[14] <= `PIPE14_LEN;
        end else if(pos_next >= 0 && pos_next < `PHASE1_CNT) begin
            pos <= pos_next;
        end else begin
            pos <= `PHASE1_CNT;
            is_pass_first_pipe <= 1;
            
            pipe_gaps[14] <= pipe_gaps[0];
            pipe_gaps[0] <= pipe_gaps[1];
            pipe_gaps[1] <= pipe_gaps[2];
            pipe_gaps[2] <= pipe_gaps[3];
            pipe_gaps[3] <= pipe_gaps[4];
            pipe_gaps[4] <= pipe_gaps[5];
            pipe_gaps[5] <= pipe_gaps[6];
            pipe_gaps[6] <= pipe_gaps[7];
            pipe_gaps[7] <= pipe_gaps[8];
            pipe_gaps[8] <= pipe_gaps[9];
            pipe_gaps[9] <= pipe_gaps[10];
            pipe_gaps[10] <= pipe_gaps[11];
            pipe_gaps[11] <= pipe_gaps[12];
            pipe_gaps[12] <= pipe_gaps[13];
            pipe_gaps[13] <= pipe_gaps[14];
            
            pipe_lens[14] <= pipe_lens[0];
            pipe_lens[0] <= pipe_lens[1];
            pipe_lens[1] <= pipe_lens[2];
            pipe_lens[2] <= pipe_lens[3];
            pipe_lens[3] <= pipe_lens[4];
            pipe_lens[4] <= pipe_lens[5];
            pipe_lens[5] <= pipe_lens[6];
            pipe_lens[6] <= pipe_lens[7];
            pipe_lens[7] <= pipe_lens[8];
            pipe_lens[8] <= pipe_lens[9];
            pipe_lens[9] <= pipe_lens[10];
            pipe_lens[10] <= pipe_lens[11];
            pipe_lens[11] <= pipe_lens[12];
            pipe_lens[12] <= pipe_lens[13];
            pipe_lens[13] <= pipe_lens[14];
        end
    end
    
    assign pixel_addr = (addr_h_cnt % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * addr_v_cnt) % PIPE_AREA;
    
    always@(posedge clk) begin
        if(is_pass_first_pipe && h_h_cnt > 0 && PIPE_WIDTH_CNT > (`PHASE1_CNT - pos) && h_h_cnt < PIPE_WIDTH_CNT - (`PHASE1_CNT - pos)) begin
            if(h_v_cnt < pipe_lens[0]) begin
//                pixel_addr <= ((h_h_cnt + (`PHASE0_CNT - pos)) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (pipe_lens[0] - h_v_cnt)) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt + (`PHASE1_CNT - pos);
                addr_v_cnt <= pipe_lens[0] - h_v_cnt;
                valid <= 1'b1;
            end else if(h_v_cnt > pipe_lens[0] + pipe_gaps[0]) begin
//                pixel_addr <= ((h_h_cnt + (`PHASE0_CNT - pos)) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (h_v_cnt - pipe_lens[0] - pipe_gaps[0])) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt + (`PHASE1_CNT - pos);
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
        end else if(h_h_cnt > pos + `PHASE1_CNT && h_h_cnt < pos + `PHASE1_CNT + PIPE_WIDTH_CNT) begin
            if(h_v_cnt < pipe_lens[2]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE1_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (pipe_lens[2] - h_v_cnt)) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE1_CNT;
                addr_v_cnt <= pipe_lens[2] - h_v_cnt;
                valid <= 1'b1;
            end else if(h_v_cnt > pipe_lens[2] + pipe_gaps[2]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE1_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (h_v_cnt - pipe_lens[2] - pipe_gaps[2])) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE1_CNT;
                addr_v_cnt <= h_v_cnt - pipe_lens[2] - pipe_gaps[2];
                valid <= 1'b1;
            end else begin
                addr_h_cnt <= 0;
                addr_v_cnt <= 0;
                valid <= 1'b0;
            end
        end else if(h_h_cnt > pos + `PHASE1_CNT + `PHASE2_CNT && h_h_cnt < pos + `PHASE1_CNT + `PHASE2_CNT + PIPE_WIDTH_CNT) begin
            if(h_v_cnt < pipe_lens[3]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE2_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (pipe_lens[3] - h_v_cnt)) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE1_CNT - `PHASE2_CNT;
                addr_v_cnt <= pipe_lens[3] - h_v_cnt;
                valid <= 1'b1;
            end else if(h_v_cnt > pipe_lens[3] + pipe_gaps[3]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (h_v_cnt - pipe_lens[3] - pipe_gaps[3])) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE1_CNT - `PHASE2_CNT;
                addr_v_cnt <= h_v_cnt - pipe_lens[3] - pipe_gaps[3];
                valid <= 1'b1;
            end else begin
                addr_h_cnt <= 0;
                addr_v_cnt <= 0;
                valid <= 1'b0;
            end
        end else if(h_h_cnt > pos + `PHASE1_CNT + `PHASE2_CNT + `PHASE3_CNT && h_h_cnt < pos + `PHASE1_CNT + `PHASE2_CNT + `PHASE3_CNT + PIPE_WIDTH_CNT) begin
            if(h_v_cnt < pipe_lens[4]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE3_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (pipe_lens[4] - h_v_cnt)) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE1_CNT - `PHASE2_CNT - `PHASE3_CNT;
                addr_v_cnt <= pipe_lens[4] - h_v_cnt;
                valid <= 1'b1;
            end else if(h_v_cnt > pipe_lens[4] + pipe_gaps[4]) begin
//                pixel_addr <= ((h_h_cnt - pos - `PHASE3_CNT) % PIPE_WIDTH_CNT + PIPE_WIDTH_CNT * (h_v_cnt - pipe_lens[4] - pipe_gaps[4])) % PIPE_AREA;
                addr_h_cnt <= h_h_cnt - pos - `PHASE1_CNT - `PHASE2_CNT - `PHASE3_CNT;
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
