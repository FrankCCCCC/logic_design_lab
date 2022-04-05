`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 03:52:51 PM
// Design Name: 
// Module Name: unitset_tb
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

`define COUNT_ENABLE_N 2
`define DISPLAY_SLIDE_BITS_N 2

`define COUNTERX_BITS_N 9
//`define INIT_ALARM_HOUR `COUNTERX_BITS_N'd17
//`define INIT_ALARM_MIN `COUNTERX_BITS_N'd31
//`define INIT_YEAR `COUNTERX_BITS_N'd22
//`define INIT_MONTH `COUNTERX_BITS_N'd4
//`define INIT_DAY `COUNTERX_BITS_N'd7
//`define INIT_HOUR `COUNTERX_BITS_N'd17
//`define INIT_MIN `COUNTERX_BITS_N'd30
//`define INIT_SEC `COUNTERX_BITS_N'd30

module unitset_tb();
    // Output
    wire [`COUNTERX_BITS_N-1:0] ALARM_HOUR, ALARM_MIN;
    wire [`COUNTERX_BITS_N-1:0] YEAR, MONTH, DAY, HOUR, MIN, SEC;
    
    //Input
    reg CLK;
    reg RST;
    reg [`DISPLAY_SLIDE_BITS_N-1:0] DISPLAY_SLIDE;
    reg [`COUNT_ENABLE_N-1:0] COUNT_ENABLE;
    reg LOAD_VALUE_ENABLE;
    
    reg [`COUNTERX_BITS_N-1:0] LOAD_ALARM_HOUR, LOAD_ALARM_MIN, LOAD_YEAR, LOAD_MONTH, LOAD_DAY, LOAD_HOUR, LOAD_MIN, LOAD_SEC;
    
    unitset U0(
        .alarm_hour(ALARM_HOUR),
        .alarm_min(ALARM_MIN),
        .year(YEAR),
        .month(MONTH),
        .day(DAY),
        .hour(HOUR),
        .min(MIN),
        .sec(SEC),
        .count_enable(COUNT_ENABLE),
        .load_value_enable(LOAD_VALUE_ENABLE),
        .load_alarm_hour(LOAD_ALARM_HOUR),
        .load_alarm_min(LOAD_ALARM_MIN),
        .load_year(LOAD_YEAR),
        .load_month(LOAD_MONTH),
        .load_day(LOAD_DAY),
        .load_hour(LOAD_HOUR),
        .load_min(LOAD_MIN),
        .load_sec(LOAD_SEC),
        .display_slide(DISPLAY_SLIDE),
        .clk(CLK), 
        .rst_n(RST)
        );
    
    initial begin
        CLK = 0; RST = 1; LOAD_VALUE_ENABLE = 0;
        DISPLAY_SLIDE = `DISPLAY_SLIDE_BITS_N'd3;
        COUNT_ENABLE = 2'b00;
        
        LOAD_ALARM_HOUR = `COUNTERX_BITS_N'd1;  LOAD_ALARM_MIN = `COUNTERX_BITS_N'd59;
        LOAD_YEAR = `COUNTERX_BITS_N'd1;  LOAD_MONTH = `COUNTERX_BITS_N'd12; LOAD_DAY = `COUNTERX_BITS_N'd29;
        LOAD_HOUR = `COUNTERX_BITS_N'd23;  LOAD_MIN = `COUNTERX_BITS_N'd59; LOAD_SEC = `COUNTERX_BITS_N'd59;
        
        #50 RST = 1;

//        #10 RST = 1;
//        #10 RST = 0;
//        #10 RST = 1;
        #10 LOAD_VALUE_ENABLE = 1;
        #10 LOAD_VALUE_ENABLE = 0;
        #40 COUNT_ENABLE = 2'b00;
        #40 COUNT_ENABLE = 2'b10;
        #40 COUNT_ENABLE = 2'b00;
        #40 COUNT_ENABLE = 2'b10;
        #40 COUNT_ENABLE = 2'b00;
        #40 COUNT_ENABLE = 2'b01;
        #40 COUNT_ENABLE = 2'b00;
        #40 COUNT_ENABLE = 2'b01;
    end
    
    always begin
        #10; CLK = ~CLK;
    end
endmodule

