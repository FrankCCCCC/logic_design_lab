`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 06:04:39 PM
// Design Name: 
// Module Name: stopwatch_disp
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

module stopwatch_disp(
    display, // seven segment display control 
    ssd_ctl, // scan control for seven-segment display 
    clk, // clock 
    rst, // high active reset 
    mode, // mode selection for the stopwatch 
    in // input control for FSM
    );
    
    output [0:`SSD_BIT_WIDTH-1] display; // seven segment display control
    output [`SSD_DIGIT_NUM-1:0] ssd_ctl; // scan control for ssd
    input clk; // clock
    input rst; // high active reset
    input mode; // mode selection for the stopwatch
    input in; // input control for FSM
    wire [`SSD_SCAN_CTL_BIT_NUM-1:0] ssd_ctl_en; // divided output for ssd ctl
//    wire [0:`SSD_BIT_WIDTH-1] disp0,disp1,disp2,disp3; // ssd control
    wire clk_d; // divided clock
    wire count_enable; // if count is enabled
    wire freeze_enable; // if ssd is enabled
    wire [`BCD_BIT_WIDTH-1:0] dig0,dig1; // two counter outputs
//    reg [`BCD_BIT_WIDTH-1:0] dig0_latch,dig1_latch; // two counter latches
//    reg [`BCD_BIT_WIDTH-1:0] dig0_out,dig1_out; // output to ssd
    
    wire [`BCD_COUNTER_BITS-1:0]q;

    // 2-Digits Binary up counter 
    frequency_divider U0(.clk(clk), .rst(rst), .clk_out(clk_d));
    binary_down_2digit_counter U1(.clk(clk_d), .rst(rst), .q(q));
    
    // Extract digits
    extract U2(.x(q), .d1(dig0), .d2(dig1));
    
    bcd_ssd ssd_disp(
        .D_SEL(ssd_ctl),
        .D_OUT(display),
        .d0(dig0),
        .d1(dig1), 
        .d2(dig0),
        .d3(dig1),
        .clk(clk)
    );
endmodule
