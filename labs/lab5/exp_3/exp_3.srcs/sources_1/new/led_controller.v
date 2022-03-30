`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 04:15:23 PM
// Design Name: 
// Module Name: led_controller
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

module led_controller(
    q,
    is_pause,
    is_restart,
    is_setting,
    leds
    );
    
    input [`BCD_COUNTER_BITS-1:0]q;
    input is_pause;
    input is_restart;
    input is_setting;
    output [`LEDS_NUM-1:0]leds;
    
    reg [`LEDS_NUM-1:0]leds;
    
    always@(q or is_pause or is_restart or is_setting) begin
        if(is_setting) begin
            leds[`LEDS_NUM-1:2] = {(`LEDS_NUM-2){1'b0}};
            leds[1] = 1'b1;
            leds[0] = 1'b0;
        end else begin
            if(q == `BCD_COUNTER_ZERO)begin
                leds = {`LEDS_NUM{1'b1}};
            end else begin
                leds[`LEDS_NUM-1:1] = {(`LEDS_NUM-1){1'b0}};
                
                if((!is_pause) && (is_restart)) begin
                    leds[0] = 1'b1;
                end else begin
                    leds[0] = 1'b0;
                end
            end
        end
    end
endmodule