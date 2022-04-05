`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 11:37:44 AM
// Design Name: 
// Module Name: switch_controller_tb
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

`define COUNTERX_BITS_N 9
`define DISPLAY_SLIDE_BITS_N 2

`define INIT_ALARM_HOUR `COUNTERX_BITS_N'd17
`define INIT_ALARM_MIN `COUNTERX_BITS_N'd31
`define INIT_YEAR `COUNTERX_BITS_N'd22
`define INIT_MONTH `COUNTERX_BITS_N'd4
`define INIT_DAY `COUNTERX_BITS_N'd7
`define INIT_HOUR `COUNTERX_BITS_N'd17
`define INIT_MIN `COUNTERX_BITS_N'd30
`define INIT_SEC `COUNTERX_BITS_N'd30

module switch_controller_tb();
    reg [`COUNTERX_BITS_N-1:0] ALARM_HOUR, ALARM_MIN, YEAR, MONTH, DAY, HOUR, MIN, SEC;
    reg [`DISPLAY_SLIDE_BITS_N-1:0] DISPLAY_SLIDE;
    
    wire [`COUNTERX_BITS_N-1:0] SEL_D1, SEL_D0;
    
    switch_controller USwitchControl(
        .sel_d1(SEL_D1),
        .sel_d0(SEL_D0),
        .alarm_hour(ALARM_HOUR),
        .alarm_min(ALARM_MIN),
        .year(YEAR),
        .month(MONTH),
        .day(DAY),
        .hour(HOUR),
        .min(MIN),
        .sec(SEC),
        .display_slide(DISPLAY_SLIDE)
    );
    
    initial begin
        ALARM_HOUR = `INIT_ALARM_HOUR;
        ALARM_MIN = `INIT_ALARM_MIN;
        YEAR = `INIT_YEAR;
        MONTH = `INIT_MONTH;
        DAY = `INIT_DAY;
        HOUR = `INIT_HOUR;
        MIN = `INIT_MIN;
        SEC = `INIT_SEC;
        DISPLAY_SLIDE = `DISPLAY_SLIDE_BITS_N'd0;
    end
    
    always begin
        #20 DISPLAY_SLIDE = `DISPLAY_SLIDE_BITS_N'd0;
        #20 DISPLAY_SLIDE = `DISPLAY_SLIDE_BITS_N'd1;
        #20 DISPLAY_SLIDE = `DISPLAY_SLIDE_BITS_N'd2;
        #20 DISPLAY_SLIDE = `DISPLAY_SLIDE_BITS_N'd3;
    end
endmodule
