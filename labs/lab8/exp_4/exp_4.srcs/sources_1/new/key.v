`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/03 09:48:29
// Design Name: 
// Module Name: key_in
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

module key(
    input clk,
    input [`KB_ENCODE_OH_BITS_N-1:0]key_down,
    input key_valid,
    input [`KB_ENCODE_BITS_N-1:0] last_change,
    output reg [`CHAR_BITS_N-1:0] char
    );
    
    reg [10:0] counter = 0, counter_t = 0;
    
    always@(posedge clk) begin
//        if(key_down[last_change] == 1'b1 && key_valid) begin
        if(key_down[last_change] == 1'b1) begin
            counter_t <= counter + 1;
            case(last_change)
                `KB_ENCODE_BITS_N'b0_0001_1100: char <= `CHAR_BITS_N'd1;
                `KB_ENCODE_BITS_N'b0_0001_1100: char <= `CHAR_BITS_N'd1; 
                `KB_ENCODE_BITS_N'b0_0011_0010: char <= `CHAR_BITS_N'd2;
                `KB_ENCODE_BITS_N'b0_0010_0001: char <= `CHAR_BITS_N'd3;
                `KB_ENCODE_BITS_N'b0_0010_0011: char <= `CHAR_BITS_N'd4;
                `KB_ENCODE_BITS_N'b0_0010_0100: char <= `CHAR_BITS_N'd5;
                `KB_ENCODE_BITS_N'b0_0010_1011: char <= `CHAR_BITS_N'd6;
                `KB_ENCODE_BITS_N'b0_0011_0100: char <= `CHAR_BITS_N'd7;
                `KB_ENCODE_BITS_N'b0_0011_0011: char <= `CHAR_BITS_N'd8;
                `KB_ENCODE_BITS_N'b0_0100_0011: char <= `CHAR_BITS_N'd9;
                `KB_ENCODE_BITS_N'b0_0011_1011: char <= `CHAR_BITS_N'd10;
                `KB_ENCODE_BITS_N'b0_0100_0010: char <= `CHAR_BITS_N'd11;
                `KB_ENCODE_BITS_N'b0_0100_1011: char <= `CHAR_BITS_N'd12;
                `KB_ENCODE_BITS_N'b0_0011_1010: char <= `CHAR_BITS_N'd13;
                `KB_ENCODE_BITS_N'b0_0011_0001: char <= `CHAR_BITS_N'd14;
                `KB_ENCODE_BITS_N'b0_0100_0100: char <= `CHAR_BITS_N'd15;
                `KB_ENCODE_BITS_N'b0_0100_1101: char <= `CHAR_BITS_N'd16;
                `KB_ENCODE_BITS_N'b0_0001_0101: char <= `CHAR_BITS_N'd17;
                `KB_ENCODE_BITS_N'b0_0010_1101: char <= `CHAR_BITS_N'd18;
                `KB_ENCODE_BITS_N'b0_0001_1011: char <= `CHAR_BITS_N'd19;
                `KB_ENCODE_BITS_N'b0_0010_1100: char <= `CHAR_BITS_N'd20;
                `KB_ENCODE_BITS_N'b0_0011_1100: char <= `CHAR_BITS_N'd21;
                `KB_ENCODE_BITS_N'b0_0010_1010: char <= `CHAR_BITS_N'd22;
                `KB_ENCODE_BITS_N'b0_0001_1101: char <= `CHAR_BITS_N'd23;
                `KB_ENCODE_BITS_N'b0_0010_0010: char <= `CHAR_BITS_N'd24;
                `KB_ENCODE_BITS_N'b0_0011_0101: char <= `CHAR_BITS_N'd25;
                `KB_ENCODE_BITS_N'b0_0001_1010: char <= `CHAR_BITS_N'd26;
                default: char <= `CHAR_BITS_N'd0;
            endcase
        end else begin
            char <= `CHAR_BITS_N'd0;
//            char <= char;
        end
    end
endmodule
