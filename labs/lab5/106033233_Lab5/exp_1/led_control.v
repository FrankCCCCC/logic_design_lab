`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2022 02:58:56 PM
// Design Name: 
// Module Name: led_control
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

module led_control(
    q,
    is_pause,
    is_restart,
    leds
    );
    
    input [`BCD_COUNTER_BITS-1:0]q;
    input is_pause;
    input is_restart;
    output [`LEDS_NUM-1:0]leds;
    
    reg [`LEDS_NUM-1:0]leds;
    
    always@(q or is_pause or is_restart)
    begin
        if(q == `BCD_COUNTER_ZERO)
        begin
            leds = {`LEDS_NUM{1'b1}};
        end
        else if((!is_pause) && (is_restart))
        begin
            leds = `LEDS_NUM'b1;
        end
        else
        begin
            leds = `LEDS_NUM'b0;
        end
    end
endmodule
