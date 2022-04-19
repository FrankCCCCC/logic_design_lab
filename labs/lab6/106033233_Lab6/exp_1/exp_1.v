`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 01:11:28 PM
// Design Name: 
// Module Name: exp_1
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

module exp_1(
    output [`LED_N-1:0] led,
//    output [`COUNTERX_BITS_N-1:0] ssd_reg0,
//    output [`COUNTERX_BITS_N-1:0] ssd_reg1,
    output [`SSD_BIT_WIDTH-1:0] segs,  // 7-segment display
    output [`SSD_NUM-1:0] ssd_ctl, // scan control for 7-segment display
    input btn_l,
    input btn_m,
    input btn_r,
    input switch_0,
    input switch_1,
    input switch_alarm,
    input  clk,  // clock from oscillator
    input  rst_n  // active low reset
    );
    
    wire clk_1hz, clk_100hz; //divided clock
    wire load_to_disp_alarm, load_to_unitset;
    wire time_enable, alarm_enable, stopwatch_restart, stopwatch_enable, stopwatch_lap;
    wire [`STATE_BITS_N-1:0] state;
    wire [`STATE_LED_N-1:0] state_led;
    wire [`ALARM_LED_N-1:0] alarm_led;
    wire stopwatch_led;
    wire [1:0] set_u1_u0;
//    wire set_enable;
    
    wire [`COUNTERX_BITS_N-1:0] time_sec, time_min, time_hour, time_day, time_month, time_year;
    wire [`COUNTERX_BITS_N-1:0] alarm_min, alarm_hour;
    wire [`COUNTERX_BITS_N-1:0] stopwatch_min, stopwatch_sec;
    wire [`COUNTERX_BITS_N-1:0] set_alarm_hour, set_alarm_min, set_year, set_month, set_day, set_hour, set_min, set_sec;
    
    wire [`BCD_BIT_WIDTH-1:0] ssd_in;
    wire [`BCD_BIT_WIDTH-1:0] ssd_d0, ssd_d1, ssd_d2, ssd_d3; // Binary counter output 
    
    wire [`COUNTERX_BITS_N-1:0] sel_d0, sel_d1;
    wire [`COUNTERX_BITS_N-1:0] ssd_reg0, ssd_reg1;
    wire [`DISPLAY_SLIDE_BITS_N-1:0] display_slide;
    
    assign led = {state_led, alarm_led, stopwatch_led};
    
    clock_generator Uclkgen(
      .clk_1(clk_1hz), // generated 1 Hz clock
      .clk_100(), // generated 100 Hz clock
      .clk_2k(clk_100hz), // generated 100 Hz clock
      .clk(clk), // clock from crystal
      .rst_n(rst_n) // active low reset
    );
    
    // Time Display Counter
    timedisplay Utd(
        .year(time_year),
        .month(time_month),
        .day(time_day),
        .hour(time_hour),
        .min(time_min),
        .sec(time_sec),
//        .count_enable(state[`STATE_BITS_N-1:`STATE_BITS_N-2] == `TIME),
        .count_enable(time_enable),
//        .load_value_enable(load_to_disp_alarm && (state[`STATE_BITS_N-1:`STATE_BITS_N-2] == `SET)),
        .load_value_enable(load_to_disp_alarm),
        .load_value_year(set_year),
        .load_value_month(set_month),
        .load_value_day(set_day),
        .load_value_hour(set_hour),
        .load_value_min(set_min),
        .load_value_sec(set_sec),
        .clk(clk_1hz),
//        .clk(clk),
        .rst_n(rst_n)
    );
    
    alarm UAlarm(
        .alarm_led(alarm_led),
        .alarm_min(alarm_min),
        .alarm_hour(alarm_hour),
//        .alarm_enable(switch_alarm && (state[`STATE_BITS_N-1:`STATE_BITS_N-2] == `TIME)),
        .alarm_enable(alarm_enable),
//        .load_value_enable(`ENABLED),
        .load_value_enable(load_to_disp_alarm),
        .current_min(time_min),
        .current_hour(time_hour),
        .load_value_alarm_min(set_alarm_min),
        .load_value_alarm_hour(set_alarm_hour)
    );
    
    stopwatch UStopwatch(
        .stopwatch_led(stopwatch_led),
        .sec(stopwatch_sec),
        .min(stopwatch_min),
        .count_enable(stopwatch_enable),
        .lap_enable(stopwatch_lap),
        .clk(clk_1hz),
        .rst_n(stopwatch_restart)
    );
    
    // FSM
    fsm Ufsm(
        .state_led(state_led),
        .display_slide(display_slide),
        .set_enable(set_enable),
//        .stopwatch_count_enable(stopwatch_count_enable),
        .load_to_disp_alarm(load_to_disp_alarm),
        .load_to_unitset(load_to_unitset),
        .time_enable(time_enable),
        .alarm_enable(alarm_enable),
        .stopwatch_enable(stopwatch_enable),
        .stopwatch_restart(stopwatch_restart),
        .stopwatch_lap(stopwatch_lap),
        .set_u1_u0(set_u1_u0),
        .state(state),
        .btn_l(btn_l),
        .btn_m(btn_m),
        .btn_r(btn_r),
        .switch_0(switch_0),
        .switch_1(switch_1),
        .switch_alarm(switch_alarm),
        .clk(clk),
        .rst_n(rst_n)
    );
    
    unitset USet(
        .alarm_hour(set_alarm_hour),
        .alarm_min(set_alarm_min),
        .year(set_year),
        .month(set_month),
        .day(set_day),
        .hour(set_hour),
        .min(set_min),
        .sec(set_sec),
        .count_enable(set_u1_u0),
//        .load_value_enable(load_to_unitset && (state[`STATE_BITS_N-1:`STATE_BITS_N-2] == `TIME)),
        .load_value_enable(load_to_unitset),
        .load_alarm_hour(alarm_hour),
        .load_alarm_min(alarm_min),
        .load_year(time_year),
        .load_month(time_month),
        .load_day(time_day),
        .load_hour(time_hour),
        .load_min(time_min),
        .load_sec(time_sec),
        .display_slide(display_slide),
        .clk(clk_1hz),
//        .clk(clk),
        .rst_n(rst_n)
    );
    
//    switch_controller Uswitch (
//        .sel_d1(ssd_reg1), 
//        .sel_d0(ssd_reg0), 
//        .alarm_hour(set_alarm_hour), 
//        .alarm_min(set_alarm_min),
//        .year(time_year),
//        .month(time_month),
//        .day(time_day),
//        .hour(time_hour),
//        .min(time_min),
//        .sec(time_sec),
//        .display_slide(display_slide)
//    );

    display_controller UDispCont(
        .ssd_reg0(ssd_reg0), 
        .ssd_reg1(ssd_reg1),
        .state(state),
        .display_slide(display_slide),
        .alarm_hour(alarm_hour),
        .alarm_min(alarm_min),
        .time_year(time_year),
        .time_month(time_month),
        .time_day(time_day),
        .time_hour(time_hour),
        .time_min(time_min),
        .time_sec(time_sec),
        .stopwatch_min(stopwatch_min),
        .stopwatch_sec(stopwatch_sec),
        .set_alarm_hour(set_alarm_hour),
        .set_alarm_min(set_alarm_min),
        .set_year(set_year),
        .set_month(set_month),
        .set_day(set_day),
        .set_hour(set_hour),
        .set_min(set_min),
        .set_sec(set_sec)
    );
   
    extract UExt0(.d1(ssd_d1), .d0(ssd_d0), .x(ssd_reg0));
    extract UExt1(.d1(ssd_d3), .d0(ssd_d2), .x(ssd_reg1));

// Scan control
    scan_ctl U_SC(
        .ssd_ctl(ssd_ctl), // ssd display control signal
        .ssd_in(ssd_in), // output to ssd display
        .in0(ssd_d0), // 1st input
        .in1(ssd_d1), // 2nd input
        .in2(ssd_d2), // 3rd input
        .in3(ssd_d3),  // 4th input
        .ssd_ctl_en(clk_100hz), // divided clock for scan control
        .rst_n(rst_n)
    );
    
    // binary to 7-segment display decoder
    display U_display(
        .segs(segs), // 7-segment display output
        .bin(ssd_in)  // BCD number input
    );
endmodule
