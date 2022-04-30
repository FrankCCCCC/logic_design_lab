`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 10:08:54 PM
// Design Name: 
// Module Name: controller_2
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

module controller_2(
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] a,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] b,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] sum,
    output [`SEGMENT_7_INPUT_BITS_N-1:0] kb_num,
    input [`KB_ENCODE_BITS_N-1:0] kb_in,
    input key_valid,
    input clk,
    input rst
    );
    
    reg [1:0] digit, digit_next;
    
    symbol_to_binary UA_BIN(.binary(kb_num), .kb_code(kb_in));
    
    initial begin
        a = `SEGMENT_7_INPUT_BITS_N'd0;
        b = `SEGMENT_7_INPUT_BITS_N'd0;
        sum = `SEGMENT_7_INPUT_BITS_N'd0;
        digit = 2'd0; 
        digit_next = 2'd0;
    end
    
    always@(*) begin
        sum <= a + b;
    end

    always@(*) begin
        digit <= digit_next;
    end
    
//    always@(*) begin
//        if((kb_in == `CODE_F1_L && key_valid) || ~rst) begin
//            digit <= 2'd0;
//        end else if(kb_in == `CODE_F2_L && key_valid) begin
//            digit <= 2'd1;
//        end
//    end
    
    always@(posedge clk) begin
        if(kb_in == `CODE_ENTER_L || ~rst) begin
            a <= `SEGMENT_7_INPUT_BITS_N'd0;
            b <= `SEGMENT_7_INPUT_BITS_N'd0;
            digit_next <= 2'd0;
        end else begin
            if(digit == 2'd0) begin
                if((kb_in == `CODE_0_L ||
                   kb_in == `CODE_1_L ||
                   kb_in == `CODE_2_L ||
                   kb_in == `CODE_3_L ||
                   kb_in == `CODE_4_L ||
                   kb_in == `CODE_5_L ||
                   kb_in == `CODE_6_L ||
                   kb_in == `CODE_7_L ||
                   kb_in == `CODE_8_L ||
                   kb_in == `CODE_9_L) && key_valid) begin
                   a <= kb_num;
                   digit_next <= 2'd1;
                end else begin
                    a <= a;
                end
            end else if(digit == 2'd1) begin
                if((kb_in == `CODE_0_L ||
                   kb_in == `CODE_1_L ||
                   kb_in == `CODE_2_L ||
                   kb_in == `CODE_3_L ||
                   kb_in == `CODE_4_L ||
                   kb_in == `CODE_5_L ||
                   kb_in == `CODE_6_L ||
                   kb_in == `CODE_7_L ||
                   kb_in == `CODE_8_L ||
                   kb_in == `CODE_9_L) && key_valid) begin
                   b <= kb_num;
                   digit_next <= 2'd0;
                end else begin
                    b <= b;
                end
            end
        end
    end
endmodule
