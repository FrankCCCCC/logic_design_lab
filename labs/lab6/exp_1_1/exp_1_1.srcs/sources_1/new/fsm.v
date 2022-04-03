`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 10:20:41 PM
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


module fsm(
  output reg [4:0] state_led,
  output reg set_enable,
  output reg data_load_enable,
  output reg reg_load_enable,
  output reg [1:0] set_min_sec,
  output reg [4:0] state,
  input mode,
  input switch,
  input clk,
  input rst_n
);

reg [4:0] state_next;
wire long_press, short_press;

// Determine short press or long press
//onepulse RestartBtn(.rst(rst_n), .clk(clk), .push(mode), .push_onepulse(short_press), .push_onepulse_long(long_press));

wire Press_Merge;
assign Press_Merge = short_press | long_press;

initial begin
    set_enable = `DISABLED;
    data_load_enable = `DISABLED;
    set_min_sec = {2{`DISABLED}};
    reg_load_enable = `DISABLED;
    state_next = `TIME_DISP;
    state_led = state;
end

// state transition
always @(posedge Press_Merge)
begin
  set_enable = `DISABLED;
  data_load_enable = `DISABLED;
  set_min_sec = {2{`DISABLED}};
  reg_load_enable = `DISABLED;
  state_next = `TIME_DISP;
  state_led = state;
//  case (state)
//  `TIME_DISP:
//    begin
//      state_led = `TIME_DISP;
//      if (long_press)
//      begin
//        state_next = `TIME_SETMIN;
//        reg_load_enable = `ENABLED;
//      end
//      else if (short_press)
//        state_next = `STW_DISP;
//      else 
//        state_next = `TIME_DISP;
//    end
//  `TIME_SETMIN:
//    begin
//      state_led = `TIME_SETMIN;
//      set_enable = switch;
//      set_min_sec = `SETMIN;
//      if (short_press)
//        state_next = `TIME_SETSEC;
//      else if (long_press)
//      begin
//        state_next =  `TIME_DISP;
//        data_load_enable = `ENABLED;
//      end
//      else
//        state_next = `TIME_SETMIN;
//    end
//  `TIME_SETSEC:
//    begin
//      state_led = `TIME_SETSEC;
//      set_enable = switch;
//      set_min_sec = `SETSEC;
//      if (short_press)
//        state_next = `TIME_SETMIN;
//      else if (long_press)
//      begin
//        state_next =  `TIME_DISP;
//        data_load_enable = `ENABLED;
//      end
//      else
//        state_next = `TIME_SETSEC;
//    end
//  endcase
end

// state register
always @(posedge clk or negedge rst_n)
  if (~rst_n)
    state <= `TIME_DISP;
  else
    state <= state_next;    

endmodule

