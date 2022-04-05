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
    output [`COUNTERX_BITS_N-1:0] alarm_hour,
    output [`COUNTERX_BITS_N-1:0] alarm_min,
    output [`COUNTERX_BITS_N-1:0] year,
    output [`COUNTERX_BITS_N-1:0] month,
    output [`COUNTERX_BITS_N-1:0] day,
    output [`COUNTERX_BITS_N-1:0] hour,
    output [`COUNTERX_BITS_N-1:0] min,
    output [`COUNTERX_BITS_N-1:0] sec,
    input [`COUNT_ENABLE_N-1:0] count_enable,
    input load_value_enable,
    input [`COUNTERX_BITS_N-1:0] load_alarm_hour,
    input [`COUNTERX_BITS_N-1:0] load_alarm_min,
    input [`COUNTERX_BITS_N-1:0] load_year,
    input [`COUNTERX_BITS_N-1:0] load_month,
    input [`COUNTERX_BITS_N-1:0] load_day,
    input [`COUNTERX_BITS_N-1:0] load_hour,
    input [`COUNTERX_BITS_N-1:0] load_min,
    input [`COUNTERX_BITS_N-1:0] load_sec,
    input [`DISPLAY_SLIDE_BITS_N-1:0] display_slide,
    input clk,
    input rst_n
);

wire carry_sec, carry_min, carry_hour, carry_day, carry_month, carry_year, carry_alarm_min, carry_alarm_hour;
wire [`COUNTERX_BITS_N-1:0] year_limit, month_limit, day_limit,  hour_limit, min_limit, sec_limit;
wire [`COUNTERX_BITS_N-1:0] year_init, month_init, day_init,  hour_init, min_init, sec_init;

reg [`ENABLED_COUNTING_DIGITS_N-1:0] enabled_counting_digits;

always@(*) begin
    case(display_slide)
        `DISPLAY_SLIDE_BITS_N'd0: begin
            // Alarm
            enabled_counting_digits <= {(`COUNT_ENABLE_N'b11 & count_enable), `COUNT_ENABLE_N-2'd0};
        end 
        `DISPLAY_SLIDE_BITS_N'd1: begin
            // Year &  Month
            enabled_counting_digits <= {2'd0, (`COUNT_ENABLE_N'b11 & count_enable), `COUNT_ENABLE_N-4'd0};
        end
        `DISPLAY_SLIDE_BITS_N'd2: begin
            // Day & Hour
            enabled_counting_digits <= {4'd0, (`COUNT_ENABLE_N'b11 & count_enable), `COUNT_ENABLE_N-6'd0};
        end
        `DISPLAY_SLIDE_BITS_N'd3: begin
            // Minute & Second
            enabled_counting_digits <= {6'd0, (`COUNT_ENABLE_N'b11 & count_enable)};
        end
    endcase        
end

datetime_limit U0(
    .year(year),
    .month(month),
    .year_limit(year_limit),
    .month_limit(month_limit),
    .day_limit(day_limit),
    .hour_limit(hour_limit),
    .min_limit(min_limit),
    .sec_limit(sec_limit),
    .year_init(year_init),
    .month_init(month_init),
    .day_init(day_init),
    .hour_init(hour_init),
    .min_init(min_init),
    .sec_init(sec_init)
    );

counterx USec(
    .q(sec), // counter value
    .time_carry(carry_sec), // counter carry
    .count_enable(enabled_counting_digits[0]), // counting enabled control signal
//    .count_enable(count_enable[0]), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_sec), // value to be loaded
    .count_limit(sec_limit), // limit of the up counter
    .count_init(sec_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

counterx UMin(
    .q(min), // counter value
    .time_carry(carry_min), // counter carry
    .count_enable(enabled_counting_digits[1]), // counting enabled control signal
//    .count_enable(count_enable[1]), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_min), // value to be loaded
    .count_limit(min_limit), // limit of the up counter
    .count_init(min_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

counterx UHour(
    .q(hour), // counter value
    .time_carry(carry_hour), // counter carry
    .count_enable(enabled_counting_digits[2]), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_hour), // value to be loaded
    .count_limit(hour_limit), // limit of the up counter
    .count_init(hour_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

counterx UDay(
    .q(day), // counter value
    .time_carry(carry_day), // counter carry
    .count_enable(enabled_counting_digits[3]), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_day), // value to be loaded
    .count_limit(day_limit), // limit of the up counter
    .count_init(day_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

counterx UMonth(
    .q(month), // counter value
    .time_carry(carry_month), // counter carry
    .count_enable(enabled_counting_digits[4]), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_month), // value to be loaded
    .count_limit(month_limit), // limit of the up counter
    .count_init(month_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

counterx UYear(
    .q(year), // counter value
    .time_carry(carry_year), // counter carry
    .count_enable(enabled_counting_digits[5]), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_year), // value to be loaded
    .count_limit(year_limit), // limit of the up counter
    .count_init(year_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

counterx UAlarmMin(
    .q(alarm_min), // counter value
    .time_carry(carry_alarm_min), // counter carry
    .count_enable(enabled_counting_digits[7]), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_alarm_min), // value to be loaded
    .count_limit(min_limit), // limit of the up counter
    .count_init(min_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

counterx UAlarmHour(
    .q(alarm_hour), // counter value
    .time_carry(carry_alarm_hour), // counter carry
    .count_enable(enabled_counting_digits[8]), // counting enabled control signal
    .load_value_enable(load_value_enable), // load setting value control
    .load_value(load_alarm_hour), // value to be loaded
    .count_limit(hour_limit), // limit of the up counter
    .count_init(hour_init),
    .clk(clk), // clock
    .rst_n(rst_n) // low active reset
);

endmodule
