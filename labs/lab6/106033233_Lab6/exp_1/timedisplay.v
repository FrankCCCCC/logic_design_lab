`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 09:20:58 PM
// Design Name: 
// Module Name: timedisplay
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
module timedisplay(
  output [`COUNTERX_BITS_N-1:0] sec,
  output [`COUNTERX_BITS_N-1:0] min,
  output [`COUNTERX_BITS_N-1:0] hour,
  output [`COUNTERX_BITS_N-1:0] day,
  output [`COUNTERX_BITS_N-1:0] month,
  output [`COUNTERX_BITS_N-1:0] year,
  input count_enable,
  input load_value_enable,
  input [`COUNTERX_BITS_N-1:0] load_value_sec,
  input [`COUNTERX_BITS_N-1:0] load_value_min,
  input [`COUNTERX_BITS_N-1:0] load_value_hour,
  input [`COUNTERX_BITS_N-1:0] load_value_day,
  input [`COUNTERX_BITS_N-1:0] load_value_month,
  input [`COUNTERX_BITS_N-1:0] load_value_year,
  input clk,
  input rst_n
);

wire carry_sec, carry_min, carry_hour, carry_day, carry_month, carry_year;
wire [`COUNTERX_BITS_N-1:0] year_limit_u, month_limit_u, day_limit_u,  hour_limit_u, min_limit_u, sec_limit_u;
wire [`COUNTERX_BITS_N-1:0] year_limit_l, month_limit_l, day_limit_l,  hour_limit_l, min_limit_l, sec_limit_l;

wire [`COUNTERX_BITS_N-1:0] alarm_hour_init, alarm_min_init, year_init, month_init, day_init,  hour_init, min_init, sec_init;

assign alarm_hour_init = `INIT_ALARM_HOUR;
assign alarm_min_init = `INIT_ALARM_MIN;
assign year_init = `INIT_YEAR;
assign month_init = `INIT_MONTH;
assign day_init = `INIT_DAY;
assign hour_init = `INIT_HOUR;
assign min_init = `INIT_MIN;
assign sec_init = `INIT_SEC;

datetime_limit U0(
    .year(year),
    .month(month),
    .year_limit(year_limit_u),
    .month_limit(month_limit_u),
    .day_limit(day_limit_u),
    .hour_limit(hour_limit_u),
    .min_limit(min_limit_u),
    .sec_limit(sec_limit_u),
    .year_init(year_limit_l),
    .month_init(month_limit_l),
    .day_init(day_limit_l),
    .hour_init(hour_limit_l),
    .min_init(min_limit_l),
    .sec_init(sec_limit_l)
);

//second counter
counterx USec(
    .q(sec), // counter value
    .time_carry(carry_sec), // counter carry
    .count_enable(count_enable), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_value_sec), // value to be loaded
    .count_limit_u(sec_limit_u), // limit of the up counter
    .count_limit_l(sec_limit_l), // limit of the up counter
    .count_init(sec_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

//minute counter
counterx UMin(
    .q(min), // counter value
    .time_carry(carry_min), // counter carry
    .count_enable(carry_sec), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_value_min), // value to be loaded
    .count_limit_u(min_limit_u), // limit of the up counter
    .count_limit_l(min_limit_l), // limit of the up counter
    .count_init(min_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

//Hour counter
counterx UHour(
    .q(hour), // counter value
    .time_carry(carry_hour), // counter carry
    .count_enable(carry_sec && carry_min), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_value_hour), // value to be loaded
    .count_limit_u(hour_limit_u), // limit of the up counter
    .count_limit_l(hour_limit_l), // limit of the up counter
    .count_init(hour_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

//Day counter
counterx UDay(
    .q(day), // counter value
    .time_carry(carry_day), // counter carry
    .count_enable(carry_sec && carry_min && carry_hour), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_value_day), // value to be loaded
    .count_limit_u(day_limit_u), // limit of the up counter
    .count_limit_l(day_limit_l), // limit of the up counter
    .count_init(day_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

counterx UMonth(
    .q(month), // counter value
    .time_carry(carry_month), // counter carry
    .count_enable(carry_sec && carry_min && carry_hour && carry_day), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_value_month), // value to be loaded
    .count_limit_u(month_limit_u), // limit of the up counter
    .count_limit_l(month_limit_l), // limit of the up counter
    .count_init(month_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

counterx UYear(
    .q(year), // counter value
    .time_carry(carry_year), // counter carry
    .count_enable(carry_sec && carry_min && carry_hour && carry_day && carry_month), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_value_year), // value to be loaded
    .count_limit_u(year_limit_u), // limit of the up counter
    .count_limit_l(year_limit_l), // limit of the up counter
    .count_init(year_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

//Hour1 counter
//counterx Uhour1(
//  .q(hour1), // counter value
//  .time_carry(carry_hour1), // counter carry
//  .count_enable(carry_sec0 && carry_sec1 && carry_min0 && carry_min1 && carry_hour0), // counting enabled control signal
//  .load_value_enable(load_value_enable), // load setting value control
//  .load_value(load_value_hour1), // value to be loaded
//  .count_limit(`TWO), // limit of the up counter
//  .clk(clk), // clock
//  .rst_n(rst_n) // low active reset
//);

endmodule

