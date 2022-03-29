`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 04:13:12 PM
// Design Name: 
// Module Name: timer_controller
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

module timer_controller(
    q_show,
    counting,
    target,
    is_setting
    );
    
    output [`BCD_COUNTER_BITS-1:0]q_show;
    input [`BCD_COUNTER_BITS-1:0]counting;
    input [`BCD_COUNTER_BITS-1:0]target;
    input is_setting;
    
    reg [`BCD_COUNTER_BITS-1:0]q_show;
    
    always@(is_setting or target or counting) begin
        if(is_setting) begin
            q_show <= target; 
        end else begin
            q_show <= counting;
        end
    end
endmodule