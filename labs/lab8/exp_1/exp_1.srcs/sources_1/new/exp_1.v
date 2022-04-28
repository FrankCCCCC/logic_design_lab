`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 06:28:47 PM
// Design Name: 
// Module Name: exp_1
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

module exp_1(
    output [`SEGMENT_7_DISPALY_DIGIT_N-1:0] d_sel,
    output [`SEGMENT_7_SEGMENT_N-1:0] d_out,
    output [`KB_ENCODE_BITS_N-1:0] last_change,
    output key_valid,
    inout PS2_DATA,
    inout PS2_CLK,
    input rst,
    input clk
    );
    
    wire [`KB_ENCODE_OH_BITS_N-1:0] key_down;
    
    KeyboardDecoder UKD(
        .key_down(key_down),
        .last_change(last_change),
        .key_valid(key_valid),
        .PS2_DATA(PS2_DATA),
        .PS2_CLK(PS2_CLK),
        .rst(~rst),
        .clk(clk)
    );
    
//    KeyboardCtrl_0 (
//        .key_in(key_in),
//        .is_extend(is_extend),
//        .is_break(is_break),
//        .valid(valid),
//        .err(err),
//        .PS2_DATA(PS2_DATA),
//        .PS2_CLK(PS2_CLK),
//        .rst(rst),
//        .clk(clk)
//    );

    wire [`SEGMENT_7_SEGMENT_N-1:0] seg7_d0, seg7_d1, seg7_d2, seg7_d3;
    
    symbol_to_7segment US27_D0(
        .seg7_code(seg7_d0),
        .kb_code(last_change)
    );
    
    symbol_to_7segment US27_d1(
        .seg7_code(seg7_d1),
        .kb_code(`KB_ENCODE_BITS_N'd0)
    );
    
    symbol_to_7segment US27_d2(
        .seg7_code(seg7_d2),
        .kb_code(`KB_ENCODE_BITS_N'd0)
    );
    
    symbol_to_7segment US27_d3(
        .seg7_code(seg7_d3),
        .kb_code(`KB_ENCODE_BITS_N'd0)
    );
    
    // Show
    display_7seg UDisp(.clk(clk), .rst(rst), .d0(seg7_d0), .d1(seg7_d1), .d2(seg7_d2), .d3(seg7_d3), .d_sel(d_sel), .d_out(d_out));
endmodule
