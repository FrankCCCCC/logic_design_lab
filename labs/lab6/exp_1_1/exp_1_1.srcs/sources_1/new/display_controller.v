`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 05:21:33 PM
// Design Name: 
// Module Name: display_controller
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

module display_controller(
    output reg [`COUNTERX_BITS_N-1:0] ssd_reg0, 
    output reg [`COUNTERX_BITS_N-1:0] ssd_reg1,
    input [`STATE_BITS_N-1:0] state,
    input [`DISPLAY_SLIDE_BITS_N-1:0] display_slide,
    input [`COUNTERX_BITS_N-1:0] alarm_hour,
    input [`COUNTERX_BITS_N-1:0] alarm_min,
    input [`COUNTERX_BITS_N-1:0] time_year,
    input [`COUNTERX_BITS_N-1:0] time_month,
    input [`COUNTERX_BITS_N-1:0] time_day,
    input [`COUNTERX_BITS_N-1:0] time_hour,
    input [`COUNTERX_BITS_N-1:0] time_min,
    input [`COUNTERX_BITS_N-1:0] time_sec,
    input [`COUNTERX_BITS_N-1:0] stopwatch_min,
    input [`COUNTERX_BITS_N-1:0] stopwatch_sec,
    input [`COUNTERX_BITS_N-1:0] set_alarm_hour,
    input [`COUNTERX_BITS_N-1:0] set_alarm_min,
    input [`COUNTERX_BITS_N-1:0] set_year,
    input [`COUNTERX_BITS_N-1:0] set_month,
    input [`COUNTERX_BITS_N-1:0] set_day,
    input [`COUNTERX_BITS_N-1:0] set_hour,
    input [`COUNTERX_BITS_N-1:0] set_min,
    input [`COUNTERX_BITS_N-1:0] set_sec
);
    // Time Display State
    wire [`COUNTERX_BITS_N-1:0] ssd_reg1_time_state, ssd_reg0_time_state;
    switch_controller UswitchTime (
        .sel_d1(ssd_reg1_time_state), 
        .sel_d0(ssd_reg0_time_state), 
        .alarm_hour(alarm_hour), 
        .alarm_min(alarm_min),
        .year(time_year),
        .month(time_month),
        .day(time_day),
        .hour(time_hour),
        .min(time_min),
        .sec(time_sec),
        .display_slide(display_slide)
    );
    
    // Set State
    wire [`COUNTERX_BITS_N-1:0] ssd_reg1_set_state, ssd_reg0_set_state;
    switch_controller UswitchSet (
        .sel_d1(ssd_reg1_set_state), 
        .sel_d0(ssd_reg0_set_state), 
        .alarm_hour(set_alarm_hour), 
        .alarm_min(set_alarm_min),
        .year(set_year),
        .month(set_month),
        .day(set_day),
        .hour(set_hour),
        .min(set_min),
        .sec(set_sec),
        .display_slide(display_slide)
    );
    
    // Stopwatch State
    wire [`COUNTERX_BITS_N-1:0] ssd_reg1_stopwatch_state, ssd_reg0_stopwatch_state;
    switch_controller UswitchStopwatch (
        .sel_d1(ssd_reg1_stopwatch_state), 
        .sel_d0(ssd_reg0_stopwatch_state), 
        .alarm_hour(`COUNTERX_BITS_N'd0), 
        .alarm_min(`COUNTERX_BITS_N'd0),
        .year(`COUNTERX_BITS_N'd0),
        .month(`COUNTERX_BITS_N'd0),
        .day(`COUNTERX_BITS_N'd0),
        .hour(`COUNTERX_BITS_N'd0),
        .min(stopwatch_min),
        .sec(stopwatch_sec),
        .display_slide(`DISPLAY_SLIDE_BITS_N'd3)
    );
    
    always@(*) begin
        case (state[`STATE_BITS_N-1:`STATE_BITS_N-2])
            `TIME: begin
                ssd_reg0 <= ssd_reg0_time_state;
                ssd_reg1 <= ssd_reg1_time_state;
            end
            `SET: begin
                ssd_reg0 <= ssd_reg0_set_state;
                ssd_reg1 <= ssd_reg1_set_state;
            end
            `STW: begin
                ssd_reg0 <= ssd_reg0_stopwatch_state;
                ssd_reg1 <= ssd_reg1_stopwatch_state;
            end
            default: begin
                ssd_reg0 <= ssd_reg0_time_state;
                ssd_reg1 <= ssd_reg1_time_state;
            end
        endcase
    end
endmodule
