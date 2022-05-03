`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/23 22:37:21
// Design Name: 
// Module Name: onepulse
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


module onepulse(
    input in_trig,
    input clk,
    input rst_n,
    output reg one_pulse
    );
    reg in_trig_delay;
    wire one_pulse_next;
    
    always@(posedge clk or posedge rst_n)
        if(rst_n)
            in_trig_delay <= 1'b0;
        else 
            in_trig_delay <= in_trig;
    
    assign one_pulse_next = in_trig & (~in_trig_delay);
    
    always@(posedge clk or posedge rst_n)
        if(rst_n)
            one_pulse <= 1'b0;
        else
            one_pulse <= one_pulse_next;
endmodule