`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2022 02:52:43 PM
// Design Name: 
// Module Name: binary_up_4digit_counter
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

module binary_up_4digit_counter(
    q,
    clk,
    rst,
    is_pause
    );
    
    output [`BCD_COUNTER_BITS-1:0]q;
    input clk;
    input rst;
    input is_pause;
    
    reg [`BCD_COUNTER_BITS-1:0]q;
    reg [`BCD_COUNTER_BITS-1:0]q_in;
    
    initial
    begin
//        q <= `BCD_COUNTER_LIMIT;
        q <= `BCD_COUNTER_ZERO;
    end
    
    always@(q or is_pause)
    begin
//        if(q == (`BCD_COUNTER_LIMIT - `BCD_COUNTER_BITS'd1))
        if(q >= `BCD_COUNTER_LIMIT)
        begin
//            q_in <= `BCD_COUNTER_ZERO;
            q_in <= `BCD_COUNTER_LIMIT;
        end
        else
        begin
            if(~is_pause)
            begin
                q_in <= q + `BCD_COUNTER_BITS'd1;
            end
            else
            begin
                q_in <= q;
            end
        end
    end
    
    always@(posedge clk or negedge rst)
    begin
        if(~rst)
        begin
//            q <= `BCD_COUNTER_LIMIT;
            q <= `BCD_COUNTER_ZERO;
        end
        else
        begin
            q <= q_in;
        end
    end
endmodule