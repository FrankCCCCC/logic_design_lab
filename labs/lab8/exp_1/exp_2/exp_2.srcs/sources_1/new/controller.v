`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 04:13:32 PM
// Design Name: 
// Module Name: controller
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

module controller(
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] a,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] b,
    output reg [`SEGMENT_7_INPUT_BITS_N-1:0] sum,
    input [`KB_ENCODE_BITS_N-1:0] kb_in
    );
    
    reg [1:0] digit, digit_next;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0] kb_num;
    
    symbol_to_binary UA_BIN(.binary(kb_num), .kb_code(kb_in));
    
    initial begin
        a = `SEGMENT_7_INPUT_BITS_N'd0;
        b = `SEGMENT_7_INPUT_BITS_N'd0;
        digit = 2'd0; 
        digit_next = 2'd0;
    end
    
    always@(a or b) begin
        sum <= a + b;
    end

    always@(digit) begin
        digit_next = digit;
    end
    
    always@(kb_num) begin
        if(digit == 2'd0) begin
            a <= kb_num;
            digit_next <= 2'd1;
        end else begin
            b <= kb_num;
            digit_next <= 2'd0;
        end
    end
endmodule
