`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 10:10:59 PM
// Design Name: 
// Module Name: lab3_2
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

`define FREQ_DIV_BITS 27
`define FREQ_DIV_COUNT `FREQ_DIV_BITS'd1000000

module lab3_2(
    clk_out,
//    counter,
    clk,
    rst
    );
    
    input clk;
    input rst;
    output clk_out;
//    output counter;
    
    reg clk_out;
    reg [`FREQ_DIV_BITS-1:0] counter_in;
    reg [`FREQ_DIV_BITS-1:0] counter_out;
    
    always@(counter_out or clk_out)
        if(counter_out < (`FREQ_DIV_COUNT - 1))
        begin
            counter_in <= counter_out + `FREQ_DIV_BITS'd1;
        end
        else
        begin
            counter_in <= `FREQ_DIV_BITS'd0;
        end
        
    always@(posedge clk or negedge rst)
        if(~rst)
        begin
            counter_out <= `FREQ_DIV_BITS'd0;
            clk_out <= 1'd0;
        end
        else
        begin
            counter_out <= counter_in;
            if(counter_in == (`FREQ_DIV_COUNT - 1))
            begin
                clk_out <= ~clk_out;
            end
        end
endmodule

//`define FREQ_DIV_BIT 2

//module lab3_2(
//    clk_out, // divided clock output
//    clk, // global clock input
//    rst // active low reset
//);

//    output clk_out; // divided output
//    input clk; // global clock input
//    input rst; // active low reset
//    reg clk_out; // clk output (in always block)
//    reg [`FREQ_DIV_BIT-2:0] cnt; // remainder of the counter
//    reg [`FREQ_DIV_BIT-1:0] cnt_tmp; // input to dff (in always block)
    
//    // Combinational logics: increment, neglecting overflow 
//    always @(clk_out or cnt)
//        cnt_tmp = {clk_out,cnt} + 1'b1;
    
//    // Sequential logics: Flip flops
//    always @(posedge clk or negedge rst)
//        if (~rst) {clk_out, cnt}<=`FREQ_DIV_BIT'd0;
//        else {clk_out,cnt}<=cnt_tmp;
        
//endmodule
