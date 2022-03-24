`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 06:19:00 PM
// Design Name: 
// Module Name: bcd_ssd
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
`define SEGMENT_7_DISPALY_DIGIT_N 4
//`define SEGMENT_7_SEGMENT_N 8

//`define P 4'b1111
//`define NONE_SEG7 `SEGMENT_7_SEGMENT_N'b1111111_1

module bcd_ssd(
    D_SEL,
    D_OUT,
    d0,
    d1, 
    d2,
    d3,
    rst,
    clk
    );
    
//    output [`BCD_COUNTER_BITS-1:0]q;
    output [`SEGMENT_7_DISPALY_DIGIT_N-1:0]D_SEL;
    output [`SSD_BIT_WIDTH-1:0]D_OUT;
    input [`BCD_BIT_WIDTH-1:0]d0;
    input [`BCD_BIT_WIDTH-1:0]d1;
    input [`BCD_BIT_WIDTH-1:0]d2;
    input [`BCD_BIT_WIDTH-1:0]d3;
    input rst;
    input clk;
    
    //    reg [`BCD_COUNTER_BITS-1:0]q;
//    wire DIV_CLK;
    wire [`SSD_BIT_WIDTH-1:0]D0_SEGMENT7;
    wire [`SSD_BIT_WIDTH-1:0]D1_SEGMENT7;
    wire [`SSD_BIT_WIDTH-1:0]D2_SEGMENT7;
    wire [`SSD_BIT_WIDTH-1:0]D3_SEGMENT7;
    
    // 2-Digits Binary up counter 
//    frequency_divider U0(.clk(clk), .rst(rst), .clk_out(DIV_CLK));
//    binary_up_2digit_counter U1(.clk(DIV_CLK), .rst(rst), .q(q));
    
    // Extract digits
//    extract U2(.x(q), .d1(D1_BINARY), .d2(D2_BINARY));
    
    // Convert binary to 7-segment 
    segment7 U3(.i(d0), .D(D0_SEGMENT7));
    segment7 U4(.i(d1), .D(D1_SEGMENT7));
    segment7 U5(.i(d2), .D(D2_SEGMENT7));
    segment7 U6(.i(d3), .D(D3_SEGMENT7));
    
    // Show
    display_7seg U7(
        .clk(clk), 
        .rst(rst), 
        .d0(D0_SEGMENT7), 
        .d1(D1_SEGMENT7), 
        .d2(D2_SEGMENT7), 
        .d3(D3_SEGMENT7), 
        .d_sel(D_SEL), 
        .d_out(D_OUT));
endmodule
