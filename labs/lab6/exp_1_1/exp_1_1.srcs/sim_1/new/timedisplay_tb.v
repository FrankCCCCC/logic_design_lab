`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 10:21:19 PM
// Design Name: 
// Module Name: timedisplay_tb
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

`define ENABLED 1'b1
`define DISABLED 1'b0
`define COUNTERX_BITS_N 9
`define STATE_LED_N 8
`define DISPLAY_SLIDE_BITS_N 2

// Initial values of clock and alarm
`define INIT_ALARM_HOUR `COUNTERX_BITS_N'd17
`define INIT_ALARM_MIN `COUNTERX_BITS_N'd31
`define INIT_YEAR `COUNTERX_BITS_N'd22
`define INIT_MONTH `COUNTERX_BITS_N'd4
`define INIT_DAY `COUNTERX_BITS_N'd7
`define INIT_HOUR `COUNTERX_BITS_N'd17
`define INIT_MIN `COUNTERX_BITS_N'd30
`define INIT_SEC `COUNTERX_BITS_N'd30

module timedisplay_tb();
    reg CLK;
    reg RST;
    reg COUNT_ENABLE;
    reg LOAD_ENABLE;
    wire [`COUNTERX_BITS_N-1:0] YEAR, MONTH, DAY, HOUR, MIN, SEC;
    
    // Time Display Counter
    timedisplay Utd(
        .year(YEAR),
        .month(MONTH),
        .day(DAY),
        .hour(HOUR),
        .min(MIN),
        .sec(SEC),
        .count_enable(COUNT_ENABLE),
        .load_value_enable(LOAD_ENABLE),
        .load_value_year(`COUNTERX_BITS_N'd20),
        .load_value_month(`COUNTERX_BITS_N'd2),
        .load_value_day(`COUNTERX_BITS_N'd29),
        .load_value_hour(`COUNTERX_BITS_N'd23),
        .load_value_min(`COUNTERX_BITS_N'd59),
        .load_value_sec(`COUNTERX_BITS_N'd55),
        .clk(CLK),
        .rst_n(RST)
    );
    
    initial begin
        CLK = 0;
        RST = 1;
        COUNT_ENABLE = `ENABLED;
        LOAD_ENABLE = `ENABLED;
        
        #40 LOAD_ENABLE = `DISABLED;
    end
    
    always begin
        #10; CLK = ~CLK;
    end
endmodule
