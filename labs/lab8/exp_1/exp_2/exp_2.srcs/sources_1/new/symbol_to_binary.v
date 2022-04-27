`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 04:24:58 PM
// Design Name: 
// Module Name: symbol_to_binary
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

module symbol_to_binary(
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] binary,
    input [`KB_ENCODE_BITS_N-1:0] kb_code
    );
    
//    initial begin
//        binary = `SEGMENT_7_INPUT_BITS_N'd0;
//    end
    
    always@(*) begin
        case(kb_code)
            `CODE_0_L: binary = `SEGMENT_7_INPUT_BITS_N'd0;
            `CODE_1_L: binary = `SEGMENT_7_INPUT_BITS_N'd1;
            `CODE_2_L: binary = `SEGMENT_7_INPUT_BITS_N'd2;
            `CODE_3_L: binary = `SEGMENT_7_INPUT_BITS_N'd3;
            `CODE_4_L: binary = `SEGMENT_7_INPUT_BITS_N'd4;
            `CODE_5_L: binary = `SEGMENT_7_INPUT_BITS_N'd5;
            `CODE_6_L: binary = `SEGMENT_7_INPUT_BITS_N'd6;
            `CODE_7_L: binary = `SEGMENT_7_INPUT_BITS_N'd7;
            `CODE_8_L: binary = `SEGMENT_7_INPUT_BITS_N'd8;
            `CODE_9_L: binary = `SEGMENT_7_INPUT_BITS_N'd9;
            `CODE_0_R: binary = `SEGMENT_7_INPUT_BITS_N'd0;
            `CODE_1_R: binary = `SEGMENT_7_INPUT_BITS_N'd1;
            `CODE_2_R: binary = `SEGMENT_7_INPUT_BITS_N'd2;
            `CODE_3_R: binary = `SEGMENT_7_INPUT_BITS_N'd3;
            `CODE_4_R: binary = `SEGMENT_7_INPUT_BITS_N'd4;
            `CODE_5_R: binary = `SEGMENT_7_INPUT_BITS_N'd5;
            `CODE_6_R: binary = `SEGMENT_7_INPUT_BITS_N'd6;
            `CODE_7_R: binary = `SEGMENT_7_INPUT_BITS_N'd7;
            `CODE_8_R: binary = `SEGMENT_7_INPUT_BITS_N'd8;
            `CODE_9_R: binary = `SEGMENT_7_INPUT_BITS_N'd9;
            default: binary = `SEGMENT_7_INPUT_BITS_N'd0;
        endcase
    end
endmodule
