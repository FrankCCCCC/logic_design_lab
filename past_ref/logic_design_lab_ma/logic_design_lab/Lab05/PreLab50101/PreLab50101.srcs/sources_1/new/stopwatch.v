`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/23 22:23:58
// Design Name: 
// Module Name: stopwatch
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


module stopwatch(
    input in,
    input rst_n,
    input clk,
    output wire [3:0]ten,
    output wire [3:0]digit,
    output reg [14:0]led,
    output state_led
    );
    wire count_en;
    wire one_pulse;
    
onepulse U0(
    .in_trig(in),
    .clk(clk),
    .rst_n(rst_n),
    .one_pulse(one_pulse)
     );
     
fsm U1(
    .clk(clk),
    .rst_n(rst_n),
    .in(one_pulse),
    .count_en(count_en),
    .state(state_led)
    );
    
downcounter30 U2(
    .clk(clk),
    .rst_n(rst_n),
    .decrease(count_en),
    .a(digit),
    .b(ten)
    );
  
  always@*
  begin  
    if(digit == 4'b0000 && ten == 4'b0000)
        led <= 15'b111111111111111;
    else
        led <= 15'b000000000000000;
   end 
endmodule
