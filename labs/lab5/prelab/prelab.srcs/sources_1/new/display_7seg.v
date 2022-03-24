`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 06:13:22 PM
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
`define EMPTY_BITS `SEGMENT_N'b1111111_1

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
    
    output [0:`DIGIT_N-1]d_sel;
    output [`SEGMENT_N-1:0]d_out;
    input clk;
    input rst;
    input [`SEGMENT_N-1:0]d0;
    input [`SEGMENT_N-1:0]d1;
    input [`SEGMENT_N-1:0]d2;
    input [`SEGMENT_N-1:0]d3;
    
    reg [0:`DIGIT_N-1]d_sel;
    reg [`SEGMENT_N-1:0]d_out;
    reg [0:`DIGIT_N-1]d_sel_temp;
    reg [`SEGMENT_N-1:0]d_out_temp;
    wire clk_out;
    
//    initial
//    begin
//        d_sel_temp <= `DIGIT_N'b1110;
//        d_out_temp <= `EMPTY_BITS;
//    end

    segment7_frequency_divider U0(.clk(clk), .rst(rst), .clk_out(clk_out));
    
    always@(d_sel)
    begin
        case((d_sel << 1) | (d_sel >> (`DIGIT_N-1)))
            `DIGIT_N'b1110: d_out_temp <= d0;
            `DIGIT_N'b1101: d_out_temp <= d1;
            `DIGIT_N'b1011: d_out_temp <= d2;
            `DIGIT_N'b0111: d_out_temp <= d3;
            default: d_out_temp <= `NONE_BITS;
        endcase
        d_sel_temp <= (d_sel << 1) | (d_sel >> (`DIGIT_N-1));
    end
    
    always@(posedge clk_out or negedge rst)
    begin
        if(~rst)
        begin
            d_out <= `EMPTY_BITS;
            d_sel <= `DIGIT_N'b1110;
        end
        else
        begin
            d_out <= d_out_temp;
            d_sel <= d_sel_temp;
        end
    end
        
endmodule
