`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 06:11:54 PM
// Design Name: 
// Module Name: validator
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

`define COUNTER_BITS_N 30
`define COUNTER_LIMIT `COUNTER_BITS_N'd10_000_000
//module validator(
//    output reg [`KB_ENCODE_BITS_N-1:0] kb_in_debouce,
//    output reg [`KB_ENCODE_OH_BITS_N-1:0] key_down_onepulse,
//    input [`KB_ENCODE_OH_BITS_N-1:0] key_down,
//    input [`KB_ENCODE_BITS_N-1:0] kb_in,
//    input key_valid,
//    input clk,
//    input rst
//    );
    
//    reg count_enable, count_enable_temp;
//    reg [`COUNTER_BITS_N-1:0] counter, counter_temp;
    
//    initial begin
//        count_enable = 1'b0;
//        count_enable_temp = 1'b0;
//        counter = `COUNTER_BITS_N'd0;
//        counter_temp = `COUNTER_BITS_N'd0;
//    end
    
//    always@(*) begin
//        counter_temp <= counter + `COUNTER_BITS_N'd1;
//        count_enable_temp <= count_enable;
//    end
    
//    always@(posedge clk or negedge rst) begin
//        if(key_valid && ~count_enable) begin
//            count_enable <= 1'b1;
//            kb_in_debouce <= kb_in;
//        end else if(count_enable) begin
//            if(counter >= `COUNTER_LIMIT || ~rst) begin
//                counter <= `COUNTER_BITS_N'd0;
//                count_enable <= 1'b0;
//            end else begin
//                counter <= counter_temp;
//            end
//        end
//    end
//endmodule

module validator(
    output reg [`KB_ENCODE_BITS_N-1:0] kb_in_debouce,
    output reg [`KB_ENCODE_OH_BITS_N-1:0] key_down_debouce,
    input [`KB_ENCODE_OH_BITS_N-1:0] key_down,
    input [`KB_ENCODE_BITS_N-1:0] kb_in,
    input key_valid,
    input clk,
    input rst
    );
    
//    reg count_enable, count_enable_temp;
    reg [`COUNTER_BITS_N-1:0] counter, counter_temp;
    reg [`KB_ENCODE_OH_BITS_N-1:0] key_down_last;
    
    initial begin
//        count_enable = 1'b0;
//        count_enable_temp = 1'b0;
        counter = `COUNTER_BITS_N'd0;
        counter_temp = `COUNTER_BITS_N'd0;
        
        key_down_debouce = `KB_ENCODE_OH_BITS_N'd0;
        key_down_last = `KB_ENCODE_OH_BITS_N'd0;
        
        kb_in_debouce = `KB_ENCODE_BITS_N'd0;
    end
    
    always@(*) begin
        counter_temp <= counter + `COUNTER_BITS_N'd1;
    end
    
    always@(posedge clk or negedge rst) begin
        if(key_down_last == key_down) begin
            if(counter >= `COUNTER_LIMIT) begin
                key_down_debouce <= key_down;
            end else begin
                counter <= counter_temp;
            end
            
            key_down_last <= key_down;
        end else begin
            counter <= `COUNTER_BITS_N'd0;
            key_down_last <= key_down;
        end
    end
    
    always@(posedge clk) begin
        if(key_down_debouce != `KB_ENCODE_OH_BITS_N'd1 << kb_in_debouce && key_down_debouce != `KB_ENCODE_OH_BITS_N'd0) begin
            kb_in_debouce <= kb_in;
        end        
    end
endmodule
