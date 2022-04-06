`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 02:57:52 PM
// Design Name: 
// Module Name: lap_controller
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

module lap_controller(
    q,
    i,
    is_lap
    );
    
    output [`BCD_COUNTER_BITS-1:0]q;
    input [`BCD_COUNTER_BITS-1:0]i;
    input is_lap;
    
    reg [`BCD_COUNTER_BITS-1:0]q;
    
    initial begin
        q <= i;
    end
    
    always@(is_lap or i) begin
        if(!is_lap) begin
            q <= i; 
        end
    end
endmodule
