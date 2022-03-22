`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 09:53:14 PM
// Design Name: 
// Module Name: lab3_1
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


`define FREQ_DIV_BIT 26

//module lab3_1(
//    clk_out,
//    clk, // global clock input
//    rst_n // active low reset
//);

//    output clk_out; // divided output
//    input clk; // global clock input
//    input rst_n; // active low reset
//    reg clk_out; // clk output (in always block)
//    reg [`FREQ_DIV_BIT-2:0] cnt; // remainder of the counter
//    reg [`FREQ_DIV_BIT-1:0] cnt_tmp; // input to dff (in always block)
    
//    // Combinational logics: increment, neglecting overflow 
//    always @(clk_out or cnt)
//        cnt_tmp = {clk_out,cnt} + 1'b1;
    
//    // Sequential logics: Flip flops
//    always @(posedge clk or negedge rst_n)
//        if (~rst_n) {clk_out, cnt}<=`FREQ_DIV_BIT'd0;
//        else {clk_out,cnt}<=cnt_tmp;

//endmodule

`define FREQ_DIV_BITS 1

module lab3_1(
    clk_out,
    clk,
    rst
);

    output clk_out;
    input clk;
    input rst;
    
    reg clk_out;
    reg [`FREQ_DIV_BITS-1:0]count_out;
    reg [`FREQ_DIV_BITS:0]count; 
    
    always@(clk_out or count_out)
    begin
        count = {clk_out, count_out} + `FREQ_DIV_BITS'd1;
    end
    
    always@(posedge clk or negedge rst)
    begin
        if(~rst)
        begin
            {clk_out, count_out} = `FREQ_DIV_BITS'd0;
        end
        else
        begin
            {clk_out, count_out} = count;
        end
    end
endmodule