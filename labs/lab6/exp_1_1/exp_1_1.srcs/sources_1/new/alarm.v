`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 05:29:35 PM
// Design Name: 
// Module Name: alarm
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

module alarm(
    output reg [`ALARM_LED_N-1:0] alarm_led,
    output reg [`COUNTERX_BITS_N-1:0] alarm_min,
    output reg [`COUNTERX_BITS_N-1:0] alarm_hour,
    input alarm_enable,
    input load_value_enable,
    input [`COUNTERX_BITS_N-1:0] current_min,
    input [`COUNTERX_BITS_N-1:0] current_hour,
    input [`COUNTERX_BITS_N-1:0] load_value_alarm_min,
    input [`COUNTERX_BITS_N-1:0] load_value_alarm_hour
);
    
//wire [`COUNTERX_BITS_N-1:0] alarm_hour_init, alarm_min_init;

//assign alarm_hour_init = `INIT_ALARM_HOUR;
//assign alarm_min_init = `INIT_ALARM_MIN;

initial begin
    alarm_hour = `INIT_ALARM_HOUR;
    alarm_min = `INIT_ALARM_MIN;
    alarm_led = {`ALARM_LED_N{1'b0}};
end

always@(*) begin
    if(load_value_enable) begin
        alarm_hour <= load_value_alarm_hour;
        alarm_min <= load_value_alarm_min;
    end
    
    if(alarm_enable && (current_hour == alarm_hour) && (current_min == alarm_min)) begin
        alarm_led <= {`ALARM_LED_N{1'b1}};     
    end else begin
        alarm_led <= {`ALARM_LED_N{1'b0}};
    end
end
endmodule
