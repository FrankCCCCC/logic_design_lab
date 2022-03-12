`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2022 01:16:10 PM
// Design Name: 
// Module Name: display_7seg
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

`define DIGIT_N 4
`define SEGMENT_N 8
`define NONE_BITS `SEGMENT_N'b1111111_0

module display_7seg(
    d_sel,
    d_out,
    clk,
    rst,
    d0,
    d1,
    d2,
    d3
    );
    
    output [`DIGIT_N-1:0]d_sel;
    output [`SEGMENT_N-1:0]d_out;
    input clk;
    input rst;
    input [`SEGMENT_N-1:0]d0;
    input [`SEGMENT_N-1:0]d1;
    input [`SEGMENT_N-1:0]d2;
    input [`SEGMENT_N-1:0]d3;
    
    reg [`DIGIT_N-1:0]d_sel;
    reg [`SEGMENT_N-1:0]d_out;
    
    always@(posedge clk or negedge rst)
    begin
        if(~rst)
        begin
            d_out <= `NONE_BITS;
            d_sel <= d_sel + `DIGIT_N'd1;
        end
        else
        begin
            case(d_sel)
                `DIGIT_N'b0001: d_out <= d0;
                `DIGIT_N'b0010: d_out <= d1;
                `DIGIT_N'b0100: d_out <= d2;
                `DIGIT_N'b1000: d_out <= d3;
                default: d_out <= `NONE_BITS;
            endcase
            d_sel <= d_sel + `DIGIT_N'd1;
        end
    end
        
endmodule
