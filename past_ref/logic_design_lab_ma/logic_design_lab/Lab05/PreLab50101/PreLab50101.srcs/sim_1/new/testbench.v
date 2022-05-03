`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/23 23:40:27
// Design Name: 
// Module Name: testbench
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


module testbench;
    reg clk;
    reg rst_n;
    reg in;
    wire [3:0]ten;
    wire [3:0]digit;
    wire [14:0]led;
    wire state_led;
    
    stopwatch U3(
    .in(in),
    .rst_n(rst_n),
    .clk(clk),
    .ten(ten),
    .digit(digit),
    .led(led),
    .state_led(state_led)
        );
        
    initial
    begin
        in = 0; rst_n = 0; clk = 0;
        #10 rst_n = 1;
       
    end
     always
               #1 clk = (~clk);
    always
               #5 in = (~in);
            
endmodule
