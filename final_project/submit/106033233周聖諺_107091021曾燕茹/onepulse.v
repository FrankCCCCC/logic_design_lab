`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2022 02:25:54 PM
// Design Name: 
// Module Name: onepulse
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

`define COUNTER_BITS_N 30
`define PRESS_CYCLE_N `COUNTER_BITS_N'd200000000
//`define PRESS_CYCLE_N `COUNTER_BITS_N'd2
`define COUNTER_BITS_N 30

module onepulse (
    input clk,
    input rst,
    input push,
    output reg push_onepulse,
    output reg push_onepulse_long,
    output push_debounced,
    output reg push_debounced_long,
    output reg push_sig,
    output reg push_sig_long
    );
    // internal registers
    reg push_onepulse_next;
    reg push_debounced_delay;
//    reg push_onepulse;
    
    reg push_onepulse_next_long;
    reg push_debounced_delay_long;
//    reg push_onepulse_long;
    
    reg [`COUNTER_BITS_N-1:0]counter_temp;
    reg [`COUNTER_BITS_N-1:0]counter;
//    reg push_sig;
//    reg push_sig_long;
    
    debounce U0(.clk(clk), .rst(rst), .push(push), .push_debounced(push_debounced));
//    debounce U1(.clk(clk_long), .rst(rst), .push(push), .push_debounced(push_debounced_long));

    initial begin
        push_debounced_long = 1'b0;
    end
    
    always@(*) begin
        push_onepulse = push_sig;
        push_onepulse_long = push_sig_long;
    end

    // Switching long or short
    always@(counter) begin
        counter_temp <= counter + `COUNTER_BITS_N'b1;
    end
    
    always @(posedge clk or negedge rst) begin
        if (~rst) begin
            counter <= `COUNTER_BITS_N'b0;
            push_sig_long <= 1'b0;
            push_sig <= 1'b0;
        end else if(~push_debounced) begin
             if(counter > `PRESS_CYCLE_N) begin
                push_sig <= 1'b0;
                push_sig_long <= 1'b1;
             end else if(counter > `COUNTER_BITS_N'd2) begin
                push_sig <= 1'b1;
                push_sig_long <= 1'b0;
             end else begin
                push_sig <= 1'b0;
                push_sig_long <= 1'b0;
             end
             counter <= `COUNTER_BITS_N'b0;
             push_debounced_long <= 1'b0;
        end else if(push_debounced) begin
            if(counter > `PRESS_CYCLE_N) begin
                push_debounced_long <= 1'b1;
            end
            counter <= counter_temp;
            push_sig <= 1'b0;
            push_sig_long <= 1'b0;
        end
    end
endmodule
