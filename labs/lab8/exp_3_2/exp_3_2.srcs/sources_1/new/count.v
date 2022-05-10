`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/20 00:24:05
// Design Name: 
// Module Name: count
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

module count(
    input clk,
    input key_valid,
    input [`KB_ENCODE_OH_BITS_N-1:0]key_down,
    input [`KB_ENCODE_BITS_N-1:0]last_change,
    input rst_n,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] in0, in1, in2, in3,
    output reg [`VALUE_BITS_N-1:0]value,
    output reg [`STATE_BITS_N-1:0]state
    );
    
    wire [`SEGMENT_7_INPUT_BITS_N-1:0] kb_num;
    wire is_kb_in_num;
    symbol_to_binary UA_BIN(.binary(kb_num), .kb_code(last_change));
    num_checker UN_CK(.is_number(is_kb_in_num), .lr(`R_SIDE_NUM), .kb_in(last_change));
    
    reg [`OP_BITS_N-1:0] op;
    reg [`STATE_BITS_N-1:0] next_state;
    
    initial begin
        in0 <= `SEGMENT_7_INPUT_BITS_N'd0;
        in1 <= `SEGMENT_7_INPUT_BITS_N'd0;
        in2 <= `SEGMENT_7_INPUT_BITS_N'd0;
        in3 <= `SEGMENT_7_INPUT_BITS_N'd0;
        value <= `VALUE_BITS_N'd0;
        next_state = `STATE_BITS_N'd0;
        op <= `OP_BITS_N'd0;
    end
    
    always@(*) begin
        state <= next_state;
    end
    
    always@(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            in0 <= `SEGMENT_7_INPUT_BITS_N'd0;
            in1 <= `SEGMENT_7_INPUT_BITS_N'd0;
            in2 <= `SEGMENT_7_INPUT_BITS_N'd0;
            in3 <= `SEGMENT_7_INPUT_BITS_N'd0;
            value <= `VALUE_BITS_N'd0;
            next_state = `STATE_BITS_N'd0;
            op <= `OP_BITS_N'd0;
        end else begin
            case(state)
            `STATE_BITS_N'd0: begin
//                    if(key_down[last_change] && key_valid) begin
                    in0 <= `SEGMENT_7_INPUT_BITS_N'd0;
                    in1 <= `SEGMENT_7_INPUT_BITS_N'd0;
                    in2 <= `SEGMENT_7_INPUT_BITS_N'd0;
                    in3 <= `SEGMENT_7_INPUT_BITS_N'd0;
                    if(key_down[last_change] && key_valid && is_kb_in_num) begin
                        next_state = `STATE_BITS_N'd1;
                        in0 <= kb_num;
                    end
                end
            `STATE_BITS_N'd1:
//                if(key_down[last_change] && key_valid) begin
                if (key_down[last_change] && key_valid && is_kb_in_num) begin
                    next_state = `STATE_BITS_N'd2;
                    in1 <= kb_num;
                end
            `STATE_BITS_N'd2:
//                if (key_down[last_change] && key_valid) begin
                if (key_down[last_change] && key_valid && (last_change == `CODE_ADD_R || last_change == `CODE_SUB_R || last_change == `CODE_MUL_R)) begin
                    next_state <= `STATE_BITS_N'd3;
                    case(last_change)
                        `CODE_ADD_R: op = `OP_BITS_N'd0;
                        `CODE_SUB_R: op = `OP_BITS_N'd1;
                        `CODE_MUL_R: op = `OP_BITS_N'd2;
                        default: op = `OP_BITS_N'd0;
                    endcase
                end
            `STATE_BITS_N'd3:
//                if(key_down[last_change] && key_valid) begin
                if(key_down[last_change] && key_valid && is_kb_in_num) begin
                        next_state = `STATE_BITS_N'd4;
                        in2 <= kb_num;
                end
            `STATE_BITS_N'd4:
//                if(key_down[last_change] && key_valid) begin
                if(key_down[last_change] && key_valid && is_kb_in_num) begin
                        next_state = `STATE_BITS_N'd5;
                        in3 <= kb_num;
                end                
            `STATE_BITS_N'd5:                
                if (key_down[last_change] && key_valid && last_change == `CODE_ENTER_L) begin
//                if (key_down[last_change] && key_valid) begin
                    next_state = `STATE_BITS_N'd0;
                    case(op)
                        `OP_BITS_N'd0: value = (in0 * `SEGMENT_7_INPUT_BITS_N'd10) + in1 + (in2 * `SEGMENT_7_INPUT_BITS_N'd10) + in3;
                        `OP_BITS_N'd1: value = (in0 * `SEGMENT_7_INPUT_BITS_N'd10) + in1 - (in2 * `SEGMENT_7_INPUT_BITS_N'd10) - in3;
                        `OP_BITS_N'd2: value = ((in0 * `SEGMENT_7_INPUT_BITS_N'd10) + in1) * ((in2 * `SEGMENT_7_INPUT_BITS_N'd10) + in3);
                        default : value = `VALUE_BITS_N'd0;
                    endcase
                end
            endcase    
        end 
    end                        
endmodule
