`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 02:43:49 PM
// Design Name: 
// Module Name: symbol_to_7segment
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

`define CODE_ADD_R `KB_ENCODE_BITS_N'b0_0111_1001
`define CODE_SUB_R `KB_ENCODE_BITS_N'b0_0111_1011
`define CODE_MUL_R `KB_ENCODE_BITS_N'b0_0111_1100

`define CODE_ENTER_L `KB_ENCODE_BITS_N'b0_0101_1010

module symbol_to_7segment(
    output reg [`SEGMENT_7_SEGMENT_N-1:0] seg7_code,
    input [`KB_ENCODE_BITS_N-1:0] kb_code
    );
    
    always@(kb_code)
        case(kb_code)
            `CODE_0_L: seg7_code = `SEGMENT_7_SEGMENT_N'b0000001_1;
            `CODE_1_L: seg7_code = `SEGMENT_7_SEGMENT_N'b1001111_1;
            `CODE_2_L: seg7_code = `SEGMENT_7_SEGMENT_N'b0010010_1;
            `CODE_3_L: seg7_code = `SEGMENT_7_SEGMENT_N'b0000110_1;
            `CODE_4_L: seg7_code = `SEGMENT_7_SEGMENT_N'b1001100_1;
            `CODE_5_L: seg7_code = `SEGMENT_7_SEGMENT_N'b0100100_1;
            `CODE_6_L: seg7_code = `SEGMENT_7_SEGMENT_N'b0100000_1;
            `CODE_7_L: seg7_code = `SEGMENT_7_SEGMENT_N'b0001111_1;
            `CODE_8_L: seg7_code = `SEGMENT_7_SEGMENT_N'b0000000_1;
            `CODE_9_L: seg7_code = `SEGMENT_7_SEGMENT_N'b0000100_1;
            `CODE_ADD_R: seg7_code = `SEGMENT_7_SEGMENT_N'b1001110_1;
            `CODE_SUB_R: seg7_code = `SEGMENT_7_SEGMENT_N'b1111110_1;
            `CODE_MUL_R: seg7_code = `SEGMENT_7_SEGMENT_N'b1001000_1;
            `CODE_ENTER_L: seg7_code = `SEGMENT_7_SEGMENT_N'b1111111_1;
            default: seg7_code = `SEGMENT_7_SEGMENT_N'b1111111_0;
        endcase
endmodule
