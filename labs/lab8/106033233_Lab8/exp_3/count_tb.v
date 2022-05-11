`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 04:42:30 PM
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


`define CODE_A_L `KB_ENCODE_BITS_N'b0_0001_1100
`define CODE_S_L `KB_ENCODE_BITS_N'b0_0001_1011
`define CODE_M_L `KB_ENCODE_BITS_N'b0_0011_1010

`define CODE_ADD_R `KB_ENCODE_BITS_N'b0_0111_1001
`define CODE_SUB_R `KB_ENCODE_BITS_N'b0_0111_1011
`define CODE_MUL_R `KB_ENCODE_BITS_N'b0_0111_1100

`define CODE_ENTER_L `KB_ENCODE_BITS_N'b0_0101_1010
`define CODE_F1_L `KB_ENCODE_BITS_N'b0_0000_0101
`define CODE_F2_L `KB_ENCODE_BITS_N'b0_0000_0110
`define CODE_F3_L `KB_ENCODE_BITS_N'b0_0000_0100
`define CODE_F4_L `KB_ENCODE_BITS_N'b0_0000_1100

`define SEGMENT_7_INPUT_BITS_N 4
`define SEGMENT_7_DISPALY_DIGIT_N 4
`define SEGMENT_7_SEGMENT_N 8
`define VALUE_BITS_N 14

//`inlcude "global.v"

module count_tb();
    reg clk, rst, key_valid;
    reg [`KB_ENCODE_BITS_N-1:0] kb_in;
    wire [`STATE_BITS_N-1:0] state;
    wire [`VALUE_BITS_N-1:0] value;
//    wire [`KB_ENCODE_BITS_N-1:0] last_change;
    
    reg [`KB_ENCODE_BITS_N-1:0] kb_in;
    reg [`KB_ENCODE_OH_BITS_N-1:0] key_down;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0] in0, in1, in2, in3;
    
    count U1(
        .clk(clk),
        .key_valid(key_valid),
        .key_down(key_down),
        .last_change(kb_in),
        .rst_n(rst),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .value(value),
        .state(state)
    );
    
    initial begin
        clk = 0;
        rst = 1;
        key_valid = 1;
        
        kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        #20 kb_in = `CODE_1_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_1_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        #20 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        #20 kb_in = `CODE_1_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_1_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        
        #20 kb_in = `CODE_ADD_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1);  key_valid = 1'b1;
        #4 kb_in = `CODE_ADD_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        
        #20 kb_in = `CODE_0_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_ADD_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        #20 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        #20 kb_in = `CODE_3_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_3_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        
        #20 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        
        #20 kb_in = `CODE_ENTER_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_ENTER_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        
        #20 kb_in = `CODE_ENTER_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_ENTER_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        
        #1 rst = 0;
        #1 rst = 1;
        
        #20 kb_in = `CODE_0_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_0_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        #20 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        #20 kb_in = `CODE_5_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_5_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        
        #20 kb_in = `CODE_MUL_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_MUL_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        
        #20 kb_in = `CODE_5_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_5_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        #20 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        #20 kb_in = `CODE_3_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_3_R; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        
        #20 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_F1_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
        
        #20 kb_in = `CODE_ENTER_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b1;
        #4 kb_in = `CODE_ENTER_L; key_down = `KB_ENCODE_OH_BITS_N'd1 << (kb_in - 1); key_valid = 1'b0;
        #20 kb_in = `KB_ENCODE_BITS_N'd0; key_down = `KB_ENCODE_OH_BITS_N'd0; key_valid = 1'b0;
    end
    
    always begin
        #1; clk = ~clk;
    end
endmodule
