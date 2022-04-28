`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 03:51:55 PM
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


`include "global.v"

//`define DIGIT_N 4
//`define SEGMENT_N 8


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
    
    output [0:`SEGMENT_7_DISPALY_DIGIT_N-1]d_sel;
    output [`SEGMENT_7_SEGMENT_N-1:0]d_out;
    input clk;
    input rst;
    input [`SEGMENT_7_SEGMENT_N-1:0]d0;
    input [`SEGMENT_7_SEGMENT_N-1:0]d1;
    input [`SEGMENT_7_SEGMENT_N-1:0]d2;
    input [`SEGMENT_7_SEGMENT_N-1:0]d3;
    
    reg [0:`SEGMENT_7_DISPALY_DIGIT_N-1]d_sel;
    reg [`SEGMENT_7_SEGMENT_N-1:0]d_out;
    reg [0:`SEGMENT_7_DISPALY_DIGIT_N-1]d_sel_temp;
    reg [`SEGMENT_7_SEGMENT_N-1:0]d_out_temp;
    wire clk_out;
    
//    initial
//    begin
//        d_sel <= `SEGMENT_7_DISPALY_DIGIT_N'b1110;
//        d_out <= `SEGMENT_7_EMPTY;
//    end

    segment7_frequency_divider U0(.clk(clk), .rst(`RST_OFF), .clk_out(clk_out));
    
    always@(d_sel)
    begin
        case((d_sel << 1) | (d_sel >> (`SEGMENT_7_DISPALY_DIGIT_N-1)))
            `SEGMENT_7_DISPALY_DIGIT_N'b1110: d_out_temp <= d0;
            `SEGMENT_7_DISPALY_DIGIT_N'b1101: d_out_temp <= d1;
            `SEGMENT_7_DISPALY_DIGIT_N'b1011: d_out_temp <= d2;
            `SEGMENT_7_DISPALY_DIGIT_N'b0111: d_out_temp <= d3;
            default: d_out_temp <= `SEGMENT_7_NONE;
        endcase
        d_sel_temp <= (d_sel << 1) | (d_sel >> (`SEGMENT_7_DISPALY_DIGIT_N-1));
    end
    
    always@(posedge clk_out or negedge rst)
    begin
        if(~rst)
        begin
            d_out <= `SEGMENT_7_EMPTY;
            d_sel <= `SEGMENT_7_DISPALY_DIGIT_N'b1110;
//            d_sel <= d_sel_temp;
        end
        else
        begin
            d_out <= d_out_temp;
            d_sel <= d_sel_temp;
        end
    end
        
endmodule
