`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 03:45:45 PM
// Design Name: 
// Module Name: debounce
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

`define CLICK_N 4

module debounce (
    rst, 
    clk, 
    push, 
    push_debounced
    );
    
    input rst;
    input clk;
    input push;
    output push_debounced;
    // declare the outputs
    reg push_debounced;
    // declare the shifting registers
    reg[3:0] push_window;
    
    always @(posedge clk or negedge rst) 
    begin
        if (~rst) begin
            push_window <= 4'b0;
            push_debounced <= 1'b0;
        end else begin
            push_window<={push, push_window[3:1]};
            
            if (push_window[3:0] == 4'b1111) begin
                push_debounced <= 1'b1; 
            end else begin
                push_debounced <= 1'b0; 
            end 
        end
    end 
endmodule
