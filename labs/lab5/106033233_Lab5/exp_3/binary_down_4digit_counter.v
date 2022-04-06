`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 04:14:29 PM
// Design Name: 
// Module Name: binary_down_4digit_counter
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

module binary_down_4digit_counter(
    q,
    clk,
    rst,
    is_pause,
    counter_limit
    );
    
    output [`BCD_COUNTER_BITS-1:0]q;
    input clk;
    input rst;
    input is_pause;
    input [`BCD_COUNTER_BITS-1:0]counter_limit;
    
    reg [`BCD_COUNTER_BITS-1:0]q;
    reg [`BCD_COUNTER_BITS-1:0]Q_IN;
    
    initial
    begin
        q <= counter_limit;
    end
    
    always@(q or is_pause)
    begin
//        if(q == (`BCD_COUNTER_LIMIT - `BCD_COUNTER_BITS'd1))
        if(q <= `BCD_COUNTER_BITS'd1)
        begin
            Q_IN <= `BCD_COUNTER_ZERO;
        end
        else
        begin
            if(~is_pause)
            begin
                Q_IN <= q - `BCD_COUNTER_BITS'd1;
            end
            else
            begin
                Q_IN <= q;
            end
        end
    end
    
    always@(posedge clk or negedge rst)
    begin
        if(~rst)
        begin
            q <= counter_limit;
        end
        else
        begin
            q <= Q_IN;
        end
    end
endmodule
