`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 10:16:22 PM
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

`define STATE_PAUSE 1
`define STATE_START 0

module fsm(
    is_pause,
    is_restart,
    pause,
    clk,
    restart
    );
    
    output is_pause;
    output is_restart;
    input pause;
    input clk;
    input restart;
    
    reg is_restart;
    reg is_pause;
    reg state;
    
    initial
    begin
        state = `STATE_START;
    end
    
    always@(posedge restart)
    begin
        is_restart = is_restart ^ 1;
    end
    
    always@(posedge pause)
    begin
          if(state == `STATE_PAUSE)
          begin
            state = `STATE_START;
            is_pause = 0;
          end
          else if(state == `STATE_START)
          begin
            state = `STATE_PAUSE;
            is_pause = 1;
          end
    end
endmodule
