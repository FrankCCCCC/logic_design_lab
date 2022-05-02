`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 04:13:32 PM
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

`define STATE_BITS_N 4
`define OP_BITS_N 2

`define OP_ADD `OP_BITS_N'd1
`define OP_SUB `OP_BITS_N'd2
`define OP_MUL `OP_BITS_N'd3

`define RES_BITS_N `SEGMENT_7_INPUT_BITS_N * 4 - 1
`define RES_EXTN_BITS_N `RES_BITS_N-`SEGMENT_7_INPUT_BITS_N

module controller(
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] a0,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] a1,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] b0,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] b1,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] res0,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] res1,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] res2,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] res3,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] d0, 
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] d1, 
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] d2, 
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] d3,
    output reg [`STATE_BITS_N-1:0] state,
    output [`SEGMENT_7_INPUT_BITS_N-1:0] kb_num,
    input [`KB_ENCODE_BITS_N-1:0] kb_in,
    input key_valid,
    input clk,
    input rst
    );
    
    reg [`OP_BITS_N-1:0] op;
    reg [`STATE_BITS_N-1:0] state_next;
    wire [`RES_BITS_N:0] sum, diff, prod;
    reg [`RES_BITS_N:0] res;
    wire is_kb_in_num;
    
    symbol_to_binary UA_BIN(.binary(kb_num), .kb_code(kb_in));
    num_checker UN_CK(.is_number(is_kb_in_num), .lr(`R_SIDE_NUM), .kb_in(kb_in));
//    assign is_kb_in_num = 1'b1;
    
    initial begin
        a0 = `SEGMENT_7_INPUT_BITS_N'd0;
        a1 = `SEGMENT_7_INPUT_BITS_N'd0;
        b0 = `SEGMENT_7_INPUT_BITS_N'd0;
        b1 = `SEGMENT_7_INPUT_BITS_N'd0;
        res0 = `SEGMENT_7_INPUT_BITS_N'd0;
        res1 = `SEGMENT_7_INPUT_BITS_N'd0;
        res2 = `SEGMENT_7_INPUT_BITS_N'd0;
        
        d0 <= `SEGMENT_7_INPUT_BITS_N'd0;
        d1 <= `SEGMENT_7_INPUT_BITS_N'd0;
        d2 <= `SEGMENT_7_INPUT_BITS_N'd0;
        d3 <= `SEGMENT_7_INPUT_BITS_N'd0;
        
        res <= `RES_BITS_N'd0;
        
        state = `STATE_BITS_N'd0; 
        state_next = `STATE_BITS_N'd0;
    end
    
    
    assign sum = ({{`RES_EXTN_BITS_N{1'd0}},a1} * 10 + {{`RES_EXTN_BITS_N{1'd0}},a0}) + ({{`RES_EXTN_BITS_N{1'd0}},b1} * 10 + {{`RES_EXTN_BITS_N{1'd0}},b0});
    assign diff = ({{`RES_EXTN_BITS_N{1'd0}},a1} * 10 + {{`RES_EXTN_BITS_N{1'd0}},a0}) - ({{`RES_EXTN_BITS_N{1'd0}},b1} * 10 + {{`RES_EXTN_BITS_N{1'd0}},b0});
    assign prod = ({{`RES_EXTN_BITS_N{1'd0}},a1} * 10 + {{`RES_EXTN_BITS_N{1'd0}},a0}) * ({{`RES_EXTN_BITS_N{1'd0}},b1} * 10 + {{`RES_EXTN_BITS_N{1'd0}},b0});
    
    wire [`SEGMENT_7_INPUT_BITS_N-1:0] res0_temp, res1_temp, res2_temp, res3_temp;
    assign res0_temp = res % 10;
    assign res1_temp = (res / 10) - (res / 100) * 10;
    assign res2_temp = (res / 100) - (res / 1000) * 10;
    assign res3_temp = res / 1000;
    
    always@(*) begin
        res0 <= res0_temp[`SEGMENT_7_INPUT_BITS_N-1:0];
        res1 <= res1_temp[`SEGMENT_7_INPUT_BITS_N-1:0];
        res2 <= res2_temp[`SEGMENT_7_INPUT_BITS_N-1:0];
        if(res > 9999) begin
            res3 <= `SEG_7_SUB;
        end else begin
            res3 <= res3_temp[`SEGMENT_7_INPUT_BITS_N-1:0];
        end
    end

    always@(*) begin
        state <= state_next;
    end
    
    always@(posedge clk) begin
        if(~rst) begin
            a0 = `SEGMENT_7_INPUT_BITS_N'd0;
            a1 = `SEGMENT_7_INPUT_BITS_N'd0;
            b0 = `SEGMENT_7_INPUT_BITS_N'd0;
            b1 = `SEGMENT_7_INPUT_BITS_N'd0;
            res0 = `SEGMENT_7_INPUT_BITS_N'd0;
            res1 = `SEGMENT_7_INPUT_BITS_N'd0;
            res2 = `SEGMENT_7_INPUT_BITS_N'd0;
            d0 <= `SEGMENT_7_INPUT_BITS_N'd0;
            d1 <= `SEGMENT_7_INPUT_BITS_N'd0;
            d2 <= `SEGMENT_7_INPUT_BITS_N'd0;
            d3 <= `SEGMENT_7_INPUT_BITS_N'd0;
            state_next = `STATE_BITS_N'd0;
        end else if(state == `STATE_BITS_N'd0) begin
            // Set A0
            d0 <= `SEGMENT_7_INPUT_BITS_N'd0;
            d1 <= `SEGMENT_7_INPUT_BITS_N'd0;
            d2 <= `SEGMENT_7_INPUT_BITS_N'd0;
            d3 <= `SEGMENT_7_INPUT_BITS_N'd0;
            
            if(is_kb_in_num && key_valid) begin
                a0 <= kb_num;
                d0 <= kb_num;
                state_next <= `STATE_BITS_N'd1;
            end
        end else if(state == `STATE_BITS_N'd1) begin
            // Set A1
            d2 <= `SEGMENT_7_INPUT_BITS_N'd0;
            d3 <= `SEGMENT_7_INPUT_BITS_N'd0;
            
            if(is_kb_in_num && key_valid) begin
                a1 <= kb_num;
                d1 <= kb_num;
                state_next <= `STATE_BITS_N'd2;
            end
        end else if(state == `STATE_BITS_N'd2) begin
            // Set OP
            d2 <= `SEGMENT_7_INPUT_BITS_N'd0;
            d3 <= `SEGMENT_7_INPUT_BITS_N'd0;
            
            if(kb_in == `CODE_ADD_R && key_valid) begin
                op <= `OP_ADD;
                d1 <= `SEGMENT_7_INPUT_BITS_N'd0;
                d0 <= `SEG_7_ADD;
                state_next <= `STATE_BITS_N'd3;
            end if(kb_in == `CODE_SUB_R && key_valid) begin
                op <= `OP_SUB;
                d1 <= `SEGMENT_7_INPUT_BITS_N'd0;
                d0 <= `SEG_7_SUB;
                state_next <= `STATE_BITS_N'd3;
            end if(kb_in == `CODE_MUL_R && key_valid) begin
                op <= `OP_MUL;
                d1 <= `SEGMENT_7_INPUT_BITS_N'd0;
                d0 <= `SEG_7_MUL;
                state_next <= `STATE_BITS_N'd3;
            end else begin
                op <= `OP_ADD;
            end
        end else if(state == `STATE_BITS_N'd3) begin
            // Set B0
            d1 <= `SEGMENT_7_INPUT_BITS_N'd0;
            d2 <= `SEGMENT_7_INPUT_BITS_N'd0;
            d3 <= `SEGMENT_7_INPUT_BITS_N'd0;
            if(is_kb_in_num && key_valid) begin
                b0 <= kb_num;
                d0 <= kb_num; 
                state_next <= `STATE_BITS_N'd4;
            end
        end else if(state == `STATE_BITS_N'd4) begin
            // Set B1
            d2 <= `SEGMENT_7_INPUT_BITS_N'd0;
            d3 <= `SEGMENT_7_INPUT_BITS_N'd0;
            if(is_kb_in_num && key_valid) begin
               b1 <= kb_num;
               d1 <= kb_num;
               state_next <= `STATE_BITS_N'd5;
            end
        end else if(state == `STATE_BITS_N'd5) begin
            // Capture Enter
            case(op)
                `OP_ADD: res <= sum;
                `OP_SUB: res <= diff;
                `OP_MUL: res <= prod;
                default: res <= sum;
            endcase
            
            if(kb_in == `CODE_ENTER_L && key_valid) begin
               state_next <= `STATE_BITS_N'd6;
            end
        end else if(state == `STATE_BITS_N'd6) begin
            // Show result
            d0 <= res0;
            d1 <= res1;
            d2 <= res2;
            d3 <= res3;
            
//            d0 <= `SEGMENT_7_INPUT_BITS_N'd1;
//            d1 <= `SEGMENT_7_INPUT_BITS_N'd2;
//            d2 <= `SEGMENT_7_INPUT_BITS_N'd3;
//            d3 <= `SEGMENT_7_INPUT_BITS_N'd4;
//            if(kb_in == `CODE_ENTER_L && key_valid) begin
//               state_next <= `STATE_BITS_N'd0;
//            end
        end else begin
            d0 <= res0;
            d1 <= res1;
            d2 <= res2;
            d3 <= res3;
        end
    end
endmodule
