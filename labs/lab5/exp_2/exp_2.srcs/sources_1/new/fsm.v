`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2022 06:43:01 PM
// Design Name: 
// Module Name: fsm
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

`define STATE_LAP 2
`define STATE_PAUSE 1
`define STATE_START 0

module fsm(
    is_pause,
    is_restart,
    is_lap,
    clk,
    pause,
    restart,
    lap
    );
    
    output is_pause;
    output is_restart;
    output is_lap;
    input clk;
    input pause;
    input restart;
    input lap;
    
    reg is_lap;
    reg is_restart;
    reg is_pause;
    reg state;
    
    initial begin
        state = `STATE_START;
    end
    
    always@(posedge restart) begin
        is_restart = is_restart ^ 1;
    end
    
    always@(posedge lap) begin
        is_lap <= ~is_lap;
    end
    
    always@(posedge pause) begin
      if(state == `STATE_PAUSE) begin
        state = `STATE_START;
        is_pause = 0;
      end
      else if(state == `STATE_START) begin
        state = `STATE_PAUSE;
        is_pause = 1;
      end
    end
endmodule
