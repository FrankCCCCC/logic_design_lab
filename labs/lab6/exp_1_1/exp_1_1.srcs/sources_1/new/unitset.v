`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 09:37:12 PM
// Design Name: 
// Module Name: unitset
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
module unitset(
  output [`BCD_BIT_WIDTH-1:0] alarm_hour1,
  output [`BCD_BIT_WIDTH-1:0] alarm_hour0,
  output [`BCD_BIT_WIDTH-1:0] alarm_min1,
  output [`BCD_BIT_WIDTH-1:0] alarm_min0,
  output [`BCD_BIT_WIDTH-1:0] year1,
  output [`BCD_BIT_WIDTH-1:0] year0,
  output [`BCD_BIT_WIDTH-1:0] month1,
  output [`BCD_BIT_WIDTH-1:0] month0,
  output [`BCD_BIT_WIDTH-1:0] day1,
  output [`BCD_BIT_WIDTH-1:0] day0,
  output [`BCD_BIT_WIDTH-1:0] hour1,
  output [`BCD_BIT_WIDTH-1:0] hour0,
  output [`BCD_BIT_WIDTH-1:0] min1,
  output [`BCD_BIT_WIDTH-1:0] min0,
  output [`BCD_BIT_WIDTH-1:0] sec1,
  output [`BCD_BIT_WIDTH-1:0] sec0,
  input [`COUNT_ENABLE_N-1:0] count_enable,
  input load_value_enable,
  input [`BCD_BIT_WIDTH-1:0] load_alarm_hour1,
  input [`BCD_BIT_WIDTH-1:0] load_alarm_hour0,
  input [`BCD_BIT_WIDTH-1:0] load_alarm_min1,
  input [`BCD_BIT_WIDTH-1:0] load_alarm_min0,
  input [`BCD_BIT_WIDTH-1:0] load_year1,
  input [`BCD_BIT_WIDTH-1:0] load_year0,
  input [`BCD_BIT_WIDTH-1:0] load_month1,
  input [`BCD_BIT_WIDTH-1:0] load_month0,
  input [`BCD_BIT_WIDTH-1:0] load_day1,
  input [`BCD_BIT_WIDTH-1:0] load_day0,
  input [`BCD_BIT_WIDTH-1:0] load_hour1,
  input [`BCD_BIT_WIDTH-1:0] load_hour0,
  input [`BCD_BIT_WIDTH-1:0] load_min1,
  input [`BCD_BIT_WIDTH-1:0] load_min0,
  input [`BCD_BIT_WIDTH-1:0] load_sec1,
  input [`BCD_BIT_WIDTH-1:0] load_sec0,
  input [`DISPLAY_SLIDE_BITS_N-1:0] display_slide,
  input clk,
  input rst_n
);

wire carry_sec0, carry_min0, carry_hour0;

reg [`ENABLED_COUNTING_DIGITS_N-1:0] enabled_counting_digits;

always@(*) begin
    case(display_slide)
        `DISPLAY_SLIDE_BITS_N'd0: begin
            enabled_counting_digits <= {(`COUNT_ENABLE_N'b11 & count_enable), `COUNT_ENABLE_N-2'd0};
        end 
        `DISPLAY_SLIDE_BITS_N'd1: begin
            enabled_counting_digits <= {2'd0, (`COUNT_ENABLE_N'b11 & count_enable), `COUNT_ENABLE_N-4'd0};
        end
        `DISPLAY_SLIDE_BITS_N'd2: begin
            enabled_counting_digits <= {4'd0, (`COUNT_ENABLE_N'b11 & count_enable), `COUNT_ENABLE_N-6'd0};
        end
        `DISPLAY_SLIDE_BITS_N'd3: begin
            enabled_counting_digits <= {6'd0, (`COUNT_ENABLE_N'b11 & count_enable)};
        end
    endcase        
end

counterx Usec0(
  .q(sec0), // counter value
  .time_carry(carry_sec0), // counter carry
  .count_enable(enabled_counting_digits[0]), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_sec0), // value to be loaded
  .count_limit(`NINE), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

counterx Usec1(
  .q(sec1), // counter value
  .time_carry(), // counter carry
  .count_enable(carry_sec0), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_sec1), // value to be loaded
  .count_limit(`FIVE), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

counterx Umin0(
  .q(min0), // counter value
  .time_carry(carry_min0), // counter carry
  .count_enable(enabled_counting_digits[1]), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_min0), // value to be loaded
  .count_limit(`NINE), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

counterx Umin1(
  .q(min1), // counter value
  .time_carry(), // counter carry
  .count_enable(carry_min0), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_min1), // value to be loaded
  .count_limit(`FIVE), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

counterx Uhour0(
  .q(hour0), // counter value
  .time_carry(carry_hour0), // counter carry
  .count_enable(enabled_counting_digits[2]), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_hour0), // value to be loaded
  .count_limit(hour1 < 2? `NINE : `THREE), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

counterx Uhour1(
  .q(hour1), // counter value
  .time_carry(), // counter carry
  .count_enable(carry_hour0), // counting enabled control signal
  .load_value_enable(load_value_enable), // load setting value control
  .load_value(load_hour1), // value to be loaded
  .count_limit(`TWO), // limit of the up counter
  .clk(clk), // clock
  .rst_n(rst_n) // low active reset
);

endmodule
