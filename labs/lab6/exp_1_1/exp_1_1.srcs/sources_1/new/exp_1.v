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
    input  clk,  // clock from oscillator
    input  rst_n  // active low reset
    );
    
    wire clk_1, clk_2k; //divided clock
    wire data_load_enable, reg_load_enable;
    wire [4:0] state;
    wire [`STATE_LED_N-1:0] state_led;
    wire [1:0] set_min_sec;
    wire set_enable;
    wire [`COUNTERX_BITS_N-1:0] time_sec,time_min, time_hour, time_day, time_month, time_year; // Binary counter output
    wire [`BCD_BIT_WIDTH-1:0] ssd_in;
    
    wire [`BCD_BIT_WIDTH-1:0] ssd_d0, ssd_d1, ssd_d2, ssd_d3; // Binary counter output 
    
    wire [`COUNTERX_BITS_N-1:0] sel_d0, sel_d1;
    wire [`COUNTERX_BITS_N-1:0] ssd_reg0, ssd_reg1;
    wire [`DISPLAY_SLIDE_BITS_N-1:0] display_slide;
    
    assign led = {state_led, 8'b0};
    
    clock_generator Uclkgen(
      .clk_1(clk_1), // generated 1 Hz clock
      .clk_100(), // generated 100 Hz clock
      .clk_2k(clk_2k), // generated 100 Hz clock
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
        .count_enable(`ENABLED),
        .load_value_enable(data_load_enable && (state[4:3] == `TIME)),
        .load_value_year(`COUNTERX_BITS_N'd1),
        .load_value_month(`COUNTERX_BITS_N'd1),
        .load_value_day(`COUNTERX_BITS_N'd1),
        .load_value_hour(`COUNTERX_BITS_N'd0),
        .load_value_min(`COUNTERX_BITS_N'd59),
        .load_value_sec(`COUNTERX_BITS_N'd0),
        .clk(clk_1),
        .rst_n(rst_n)
    );
    
    // FSM
    fsm Ufsm(
      .state_led(state_led),
      .display_slide(display_slide),
      .set_enable(set_enable),
//      .stopwatch_count_enable(stopwatch_count_enable),
      .data_load_enable(data_load_enable),
      .reg_load_enable(reg_load_enable),
//      .alarm_enable(alarm_enable),
      .set_min_sec(set_min_sec),
      .state(state),
      .btn_l(btn_l),
      .btn_m(btn_m),
      .btn_r(btn_r),
      .switch_0(switch_0),
      .switch_1(switch_1),
      .clk(clk),
      .rst_n(rst_n)
    );
    
    switch_controller Uswitch (
        .sel_d1(ssd_reg1), 
        .sel_d0(ssd_reg0), 
        .alarm_hour(`INIT_ALARM_HOUR), 
        .alarm_min(`INIT_ALARM_MIN),
        .year(time_year),
        .month(time_month),
        .day(time_day),
        .hour(time_hour),
        .min(time_min),
        .sec(time_sec),
        .display_slide(display_slide)
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
        .ssd_ctl_en(clk_2k), // divided clock for scan control
        .rst_n(rst_n)
    );
    
    // binary to 7-segment display decoder
    display U_display(
        .segs(segs), // 7-segment display output
        .bin(ssd_in)  // BCD number input
    );
endmodule
