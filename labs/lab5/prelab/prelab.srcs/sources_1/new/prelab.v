`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 08:51:13 PM
// Design Name: 
// Module Name: prelab
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

//`define BCD_COUNTER_BITS 8
//`define RST_HIGH 1'b1

//`define INPUT_BITS_N 4
//`define SEGMENT_7_DISPALY_DIGIT_N 4
//`define SEGMENT_7_SEGMENT_N 8

//`define P 4'b1111
//`define NONE_SEG7 `SEGMENT_7_SEGMENT_N'b1111111_1

module prelab(
    q,
    D_SEL,
    D_OUT,
    push,
    rst,
    clk
    );
    output [`BCD_COUNTER_BITS-1:0]q;
    output [`SEGMENT_7_DISPALY_DIGIT_N-1:0]D_SEL;
    output [`SEGMENT_7_SEGMENT_N-1:0]D_OUT;
    input push;
    input rst;
    input clk;
    
    //    reg [`BCD_COUNTER_BITS-1:0]q;
    wire DIV_CLK;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]D1_BINARY;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]D2_BINARY;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D1_SEGMENT7;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D2_SEGMENT7;
    wire PUSH_ONEPULSE;
    wire IS_PAUSE;
    
    onepulse PushBtn(.rst(rst), .clk(clk), .push(push), .push_onepulse(PUSH_ONEPULSE));
    fsm FSM(.clk(clk), .pause(PUSH_ONEPULSE), .reset(rst), .is_pause(IS_PAUSE));
    
    // 2-Digits Binary up counter 
    frequency_divider U0(.clk(clk), .rst(rst), .clk_out(DIV_CLK));
    binary_down_2digit_counter U1(.clk(DIV_CLK), .rst(rst), .is_pause(IS_PAUSE), .q(q));
    
    // Extract digits
    extract U2(.x(q), .d1(D1_BINARY), .d2(D2_BINARY));
    
    // Convert binary to 7-segment 
    segment7 U3(.i(D1_BINARY), .D(D1_SEGMENT7));
    segment7 U4(.i(D2_BINARY), .D(D2_SEGMENT7));
    
    // Show
    display_7seg(.clk(clk), .rst(rst), .d0(D1_SEGMENT7), .d1(D2_SEGMENT7), .d2(`SEGMENT_7_NONE), .d3(`SEGMENT_7_NONE), .d_sel(D_SEL), .d_out(D_OUT));
endmodule
