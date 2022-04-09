`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/09/2022 11:15:14 AM
// Design Name: 
// Module Name: stopwatch
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

`define STOPWATCH_SEC_INIT `COUNTERX_BITS_N'd0
`define STOPWATCH_MIN_INIT `COUNTERX_BITS_N'd0

module stopwatch(
    output stopwatch_led,
    output reg [`COUNTERX_BITS_N-1:0] sec,
    output reg [`COUNTERX_BITS_N-1:0] min,
    input count_enable,
    input lap_enable,
    input clk,
    input rst_n
    );
    
    wire carry_sec, carry_min;
    wire [`COUNTERX_BITS_N-1:0] min_limit_u, sec_limit_u;
    wire [`COUNTERX_BITS_N-1:0] min_limit_l, sec_limit_l;
    
    wire [`COUNTERX_BITS_N-1:0] counting_sec, counting_min;
    
    assign stopwatch_led = count_enable; 
    
    initial begin
        sec <= `STOPWATCH_SEC_INIT;
        min <= `STOPWATCH_MIN_INIT;
    end
    
    always@(lap_enable or counting_sec or counting_min) begin
        if(!lap_enable) begin
            sec <= counting_sec;
            min <=  counting_min;
        end
    end
    
    //second counter
    counterx USec(
        .q(counting_sec), // counter value
        .time_carry(carry_sec), // counter carry
        .count_enable(count_enable), // counting enabled control signal
        .load_value_enable(`DISABLED), // load setting value control
        .load_value(`COUNTERX_BITS_N'd0), // value to be loaded
        .count_limit_u(`COUNTERX_BITS_N'd59), // limit of the up counter
        .count_limit_l(`COUNTERX_BITS_N'd0), // limit of the up counter
        .count_init(`STOPWATCH_SEC_INIT),
        .clk(clk), // clock
        .rst_n(rst_n) // low active reset
    );
    
    //minute counter
    counterx UMin(
        .q(counting_min), // counter value
        .time_carry(carry_min), // counter carry
        .count_enable(carry_sec), // counting enabled control signal
        .load_value_enable(`DISABLED), // load setting value control
        .load_value(`COUNTERX_BITS_N'd0), // value to be loaded
        .count_limit_u(`COUNTERX_BITS_N'd59), // limit of the up counter
        .count_limit_l(`COUNTERX_BITS_N'd0), // limit of the up counter
        .count_init(`STOPWATCH_MIN_INIT),
        .clk(clk), // clock
        .rst_n(rst_n) // low active reset
    );
endmodule
