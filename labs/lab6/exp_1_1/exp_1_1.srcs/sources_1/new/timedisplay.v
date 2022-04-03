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
  output [`BCD_BIT_WIDTH-1:0] sec0,
  output [`BCD_BIT_WIDTH-1:0] sec1,
  output [`BCD_BIT_WIDTH-1:0] min0,
  output [`BCD_BIT_WIDTH-1:0] min1,
  output [`BCD_BIT_WIDTH-1:0] hour0,
  output [`BCD_BIT_WIDTH-1:0] hour1,
  output [`BCD_BIT_WIDTH-1:0] day0,
  output [`BCD_BIT_WIDTH-1:0] day1,
  output [`BCD_BIT_WIDTH-1:0] month0,
  output [`BCD_BIT_WIDTH-1:0] month1,
  output [`BCD_BIT_WIDTH-1:0] year0,
  output [`BCD_BIT_WIDTH-1:0] year1,
  output [`BCD_BIT_WIDTH-1:0] year2,
  output [`BCD_BIT_WIDTH-1:0] year3,
  input count_enable,
  input load_value_enable,
  input [`BCD_BIT_WIDTH-1:0] load_value_sec0,
  input [`BCD_BIT_WIDTH-1:0] load_value_sec1,
  input [`BCD_BIT_WIDTH-1:0] load_value_min0,
  input [`BCD_BIT_WIDTH-1:0] load_value_min1,
  input [`BCD_BIT_WIDTH-1:0] load_value_hour0,
  input [`BCD_BIT_WIDTH-1:0] load_value_hour1,
  input clk,
  input rst_n
);

wire carry_sec0, carry_sec1, carry_min0;

//second0 counter
counterx Usec0(
  .q(sec0), // counter value
  .time_carry(carry_sec0), // counter carry
  .count_enable(count_enable), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_value_sec0), // value to be loaded
  .count_limit(`NINE), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

//second1 counter
counterx Usec1(
  .q(sec1), // counter value
  .time_carry(carry_sec1), // counter carry
  .count_enable(carry_sec0), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_value_sec1), // value to be loaded
  .count_limit(`FIVE), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

//minute0 counter
counterx Umin0(
  .q(min0), // counter value
  .time_carry(carry_min0), // counter carry
  .count_enable(carry_sec0 && carry_sec1), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_value_min0), // value to be loaded
  .count_limit(`NINE), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

//minute1 counter
counterx Umin1(
  .q(min1), // counter value
  .time_carry(carry_min1), // counter carry
  .count_enable(carry_sec0 && carry_sec1 && carry_min0), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_value_min1), // value to be loaded
  .count_limit(`FIVE), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

//Hour0 counter
counterx Uhour0(
  .q(hour0), // counter value
  .time_carry(carry_hour0), // counter carry
  .count_enable(carry_sec0 && carry_sec1 && carry_min0 && carry_min1), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_value_hour0), // value to be loaded
  .count_limit(hour1 < 2? `NINE : `THREE), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

//Hour1 counter
counterx Uhour1(
  .q(hour1), // counter value
  .time_carry(carry_hour1), // counter carry
  .count_enable(carry_sec0 && carry_sec1 && carry_min0 && carry_min1 && carry_hour0), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_value_hour1), // value to be loaded
  .count_limit(`TWO), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

endmodule

