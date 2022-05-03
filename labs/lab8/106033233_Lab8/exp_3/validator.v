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
//`define COUNTER_LIMIT `COUNTER_BITS_N'd10_000_000
`define COUNTER_LIMIT `COUNTER_BITS_N'd3

module validator(
    output reg [`KB_ENCODE_BITS_N-1:0] kb_in_debouce,
    output reg [`KB_ENCODE_OH_BITS_N-1:0] key_down_debouce,
    output onepulse,
    input [`KB_ENCODE_OH_BITS_N-1:0] key_down,
    input [`KB_ENCODE_BITS_N-1:0] kb_in,
    input key_valid,
    input clk,
    input rst
    );
    
    reg debounce_signal;
    reg [`COUNTER_BITS_N-1:0] counter, counter_temp;
    reg [`KB_ENCODE_OH_BITS_N-1:0] key_down_last;
    
    initial begin
        debounce_signal = 1'd0;
        counter = `COUNTER_BITS_N'd0;
        counter_temp = `COUNTER_BITS_N'd0;
        
        key_down_debouce = `KB_ENCODE_OH_BITS_N'd0;
        key_down_last = `KB_ENCODE_OH_BITS_N'd0;
        
        kb_in_debouce = `KB_ENCODE_BITS_N'd0;
    end
    
    OnePulse op (
		.signal_single_pulse(onepulse),
		.signal(debounce_signal),
		.clock(clk)
	);
    
    always@(*) begin
        counter_temp <= counter + `COUNTER_BITS_N'd1;
        debounce_signal <= key_down_debouce > 0? 1'd1 : 1'd0;
    end
    
    always@(posedge clk) begin
        if(~rst)begin
        // Reset
            key_down_debouce <= `KB_ENCODE_OH_BITS_N'd0;
            counter <= `COUNTER_BITS_N'd0;
            key_down_last <= key_down;
        end else if(key_down_last == key_down) begin
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
    
    always@(*) begin
        if(~rst) begin
            kb_in_debouce <= `KB_ENCODE_BITS_N'd0;
        end else if(key_down_debouce != `KB_ENCODE_OH_BITS_N'd1 << kb_in_debouce && key_down_debouce != `KB_ENCODE_OH_BITS_N'd0) begin
            kb_in_debouce <= kb_in;
        end        
    end
endmodule
