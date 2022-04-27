`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 08:44:41 PM
// Design Name: 
// Module Name: controller_tb
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

// Keyboard
`define KB_ENCODE_BITS_N 9
`define KB_ENCODE_OH_BITS_N 512

// Segment-7 Displayer
`define SEGMENT_7_INPUT_BITS_N 8

// Keyboard Symbol
`define CODE_0_L `KB_ENCODE_BITS_N'b0_0100_0101
`define CODE_1_L `KB_ENCODE_BITS_N'b0_0001_0110
`define CODE_2_L `KB_ENCODE_BITS_N'b0_0001_1110
`define CODE_3_L `KB_ENCODE_BITS_N'b0_0010_0110
`define CODE_4_L `KB_ENCODE_BITS_N'b0_0010_0101
`define CODE_5_L `KB_ENCODE_BITS_N'b0_0010_1110
`define CODE_6_L `KB_ENCODE_BITS_N'b0_0011_0110
`define CODE_7_L `KB_ENCODE_BITS_N'b0_0011_1101
`define CODE_8_L `KB_ENCODE_BITS_N'b0_0011_1110
`define CODE_9_L `KB_ENCODE_BITS_N'b0_0100_0110

`define CODE_0_R `KB_ENCODE_BITS_N'b0_0111_0000
`define CODE_1_R `KB_ENCODE_BITS_N'b0_0110_1001
`define CODE_2_R `KB_ENCODE_BITS_N'b0_0111_0010
`define CODE_3_R `KB_ENCODE_BITS_N'b0_0111_1010
`define CODE_4_R `KB_ENCODE_BITS_N'b0_0110_1011
`define CODE_5_R `KB_ENCODE_BITS_N'b0_0111_0011
`define CODE_6_R `KB_ENCODE_BITS_N'b0_0111_0100
`define CODE_7_R `KB_ENCODE_BITS_N'b0_0110_1100
`define CODE_8_R `KB_ENCODE_BITS_N'b0_0111_0101
`define CODE_9_R `KB_ENCODE_BITS_N'b0_0111_1101

`define CODE_ADD_R `KB_ENCODE_BITS_N'b0_0111_1001
`define CODE_SUB_R `KB_ENCODE_BITS_N'b0_0111_1011
`define CODE_MUL_R `KB_ENCODE_BITS_N'b0_0111_1100

`define CODE_ENTER_L `KB_ENCODE_BITS_N'b0_0101_1010
`define CODE_F1_L `KB_ENCODE_BITS_N'b0_0000_0101
`define CODE_F2_L `KB_ENCODE_BITS_N'b0_0000_0110

module controller_tb();
    reg clk, rst;
    reg [`KB_ENCODE_BITS_N-1:0] kb_in;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0] a, b, sum, kb_num;
    
    controller UCONT(
        .a(a),
        .b(b),
        .sum(sum),
        .kb_num(kb_num),
        .kb_in(kb_in),
        .clk(clk),
        .rst(rst)
    );
    
    initial begin
        clk = 0;
        rst = 1;
        kb_in = `CODE_0_L;
        
        #15 kb_in = `CODE_F1_L;
        #15 kb_in = `CODE_0_L;
        #15 kb_in = `CODE_1_L;
        #15 kb_in = `CODE_2_L;
        #15 kb_in = `CODE_F2_L;
        #15 kb_in = `CODE_2_L;
        #15 kb_in = `CODE_F1_L;
        #15 kb_in = `CODE_3_L;
        #15 kb_in = `CODE_4_L;
        #15 kb_in = `CODE_1_L;
        #15 kb_in = `CODE_2_L;
        #15 kb_in = `CODE_ADD_R;
    end
    
    always begin
        #5; clk = ~clk;
    end
endmodule
