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
  input clk,
  input rst_n
);

wire carry_sec, carry_sec1, carry_min0;

//second counter
counterx Usec(
  .q(sec), // counter value
  .time_carry(carry_sec), // counter carry
  .count_enable(count_enable), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_value_sec), // value to be loaded
  .count_limit(`COUNTERX_BITS_N'd59), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

////second1 counter
//counterx Usec1(
//  .q(sec1), // counter value
//  .time_carry(carry_sec1), // counter carry
//  .count_enable(carry_sec0), // counting enabled control signal
//  .load_value_enable(load_value_enable), // load setting value control
//  .load_value(load_value_sec1), // value to be loaded
//  .count_limit(`), // limit of the up counter
//  .clk(clk), // clock
//  .rst_n(rst_n) // low active reset
//);

//minute counter
counterx Umin(
  .q(min), // counter value
  .time_carry(carry_min), // counter carry
  .count_enable(carry_sec), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_value_min), // value to be loaded
  .count_limit(`COUNTERX_BITS_N'd59), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

//minute1 counter
//counterx Umin1(
//  .q(min1), // counter value
//  .time_carry(carry_min1), // counter carry
//  .count_enable(carry_sec0 && carry_sec1 && carry_min0), // counting enabled control signal
//  .load_value_enable(load_value_enable), // load setting value control
//  .load_value(load_value_min1), // value to be loaded
//  .count_limit(`FIVE), // limit of the up counter
//  .clk(clk), // clock
//  .rst_n(rst_n) // low active reset
//);

//Hour0 counter
counterx Uhour(
  .q(hour), // counter value
  .time_carry(carry_hour), // counter carry
  .count_enable(carry_sec && carry_min), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_value_hour), // value to be loaded
  .count_limit(`COUNTERX_BITS_N'd23), // limit of the up counter
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

