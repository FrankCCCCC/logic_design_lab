`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2022 04:31:43 PM
// Design Name: 
// Module Name: fsm_tb
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


module fsm_tb();

reg CLK;
reg RST;
reg PAUSE, RESTART;

wire PAUSE_ONEPULSE;
wire RESTART_ONEPULSE;
//wire LAP_ONEPULSE;
wire IS_PAUSE;
wire IS_RESTART;
//wire IS_LAP;

onepulse PauseBtn(.rst(RST), .clk(CLK), .push(PAUSE), .push_onepulse(PAUSE_ONEPULSE));
onepulse RestartBtn(.rst(RST), .clk(CLK), .push(RESTART), .push_onepulse(RESTART_ONEPULSE));
fsm FSM(.clk(CLK), .pause(PAUSE_ONEPULSE), .restart(RESTART_ONEPULSE), .is_pause(IS_PAUSE), .is_restart(IS_RESTART));

initial
begin
    CLK = 0;
    RST = 1;
    PAUSE = 0; RESTART = 0;
    
    // Restart
    #20 PAUSE = 0; RESTART = 1;
    #40 PAUSE = 0; RESTART = 0;
    
    // Pause
    #20 PAUSE = 1; RESTART = 0;
    #40 PAUSE = 0; RESTART = 0;
    
    // Pause
    #20 PAUSE = 1; RESTART = 0;
    #40 PAUSE = 0; RESTART = 0;
    
    // Restart
    #20 PAUSE = 0; RESTART = 1;
    #40 PAUSE = 0; RESTART = 0;
    
    // Restart
    #20 PAUSE = 0; RESTART = 1;
    #40 PAUSE = 0; RESTART = 0;
    
    // Pause
    #20 PAUSE = 1; RESTART = 0;
    #40 PAUSE = 0; RESTART = 0;
    
    // Restart
    #20 PAUSE = 0; RESTART = 1;
    #40 PAUSE = 0; RESTART = 0;
    
    // Pause
    #20 PAUSE = 1; RESTART = 0;
    #40 PAUSE = 0; RESTART = 0;
end

always
begin
    #5; CLK = ~CLK;
end

endmodule
