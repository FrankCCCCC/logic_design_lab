`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 06:27:55 PM
// Design Name: 
// Module Name: alarm_tb
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
`define ALARM_LED_N 7

module alarm_tb();
    wire [`ALARM_LED_N-1:0] ALARM_LED;
    wire [`COUNTERX_BITS_N-1:0] ALARM_MIN, ALARM_HOUR;
    
    reg ALARM_ENABLE, LOAD_VALUE_ENABLE;
    reg [`COUNTERX_BITS_N-1:0] CURRENT_MIN, CURRENT_HOUR;
    reg [`COUNTERX_BITS_N-1:0] LOAD_VALUE_ALARM_MIN, LOAD_VALUE_ALARM_HOUR;
    
    alarm U0(
        .alarm_led(ALARM_LED),
        .alarm_min(ALARM_MIN),
        .alarm_hour(ALARM_HOUR),
        .alarm_enable(ALARM_ENABLE),
        .load_value_enable(LOAD_VALUE_ENABLE),
        .current_min(CURRENT_MIN),
        .current_hour(CURRENT_HOUR),
        .load_value_alarm_min(LOAD_VALUE_ALARM_MIN),
        .load_value_alarm_hour(LOAD_VALUE_ALARM_HOUR)
    );
    
    initial begin
        ALARM_ENABLE = 1'b1;
        LOAD_VALUE_ENABLE = 1'b1;
        CURRENT_HOUR = `COUNTERX_BITS_N'd17;
        CURRENT_MIN = `COUNTERX_BITS_N'd30;
        
        LOAD_VALUE_ALARM_HOUR = `COUNTERX_BITS_N'd17;
        LOAD_VALUE_ALARM_MIN = `COUNTERX_BITS_N'd31;
        
        #10 CURRENT_HOUR = `COUNTERX_BITS_N'd17; CURRENT_MIN = `COUNTERX_BITS_N'd31;
        #10 LOAD_VALUE_ENABLE = 1'b1;
    end
endmodule
