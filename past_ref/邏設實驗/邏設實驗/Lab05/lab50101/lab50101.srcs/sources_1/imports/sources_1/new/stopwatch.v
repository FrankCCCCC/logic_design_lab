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
    output wire [7:0]D_ssd,
    output wire [3:0]d,
    output reg [14:0]led,
    output state_led
    );
    wire count_en;
    wire one_pulse;
    reg clk_26;
    wire in_use;
   
debounce U4(
    .clk(clk),
    .rst_n(rst_n),
    .pb_in(in),
    .pb_debounced(in_use)
        );
        
divider26 U3(
   .clk(clk),
   .rst_n(rst_n),
   .clk_out(clk_26)
        );
        
onepulse U0(
    .in_trig(in_use),
    .clk(clk),
    .rst_n(rst_n),
    .one_pulse(one_pulse)
     );
     
fsm U1(
    .clk(clk_26),
    .rst_n(rst_n),
    .in(one_pulse),
    .count_en(count_en),
    .state(state_led)
    );
 
downcounter U2(
    .clk(clk_26),
    .rst_n(rst_n),
    .decrease(decrease),
    .D_ssd(D_ssd),
    .d(d),
    .led(led)
        );
  
endmodule
