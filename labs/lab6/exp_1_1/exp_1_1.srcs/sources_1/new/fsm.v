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
  output reg [`DISPLAY_SLIDE_BITS_N-1:0] display_slide,
  output reg [1:0] set_min_sec,
  output reg [4:0] state,
  input btn_l,
  input btn_m,
  input btn_r,
  input switch_0,
  input switch_1,
  input clk,
  input rst_n
);

reg [`DISPLAY_SLIDE_BITS_N-1:0] display_slide_next;
reg [4:0] state_next;
wire btn_m_short, btn_m_long;

// Determine short press or long press
onepulse RestartBtn(.rst(rst_n), .clk(clk), .push(btn_m), .push_onepulse(btn_m_short), .push_onepulse_long(btn_m_long));

//wire Press_Merge;
//assign Press_Merge = short_press | long_press;

initial begin
    set_enable = `DISABLED;
    data_load_enable = `DISABLED;
    set_min_sec = {2{`DISABLED}};
    reg_load_enable = `DISABLED;
    state_next = `TIME_DISP;
    state_led = state;
end

always@(posedge btn_m_short) begin
    case (state)
        `TIME_DISP: begin
            if(display_slide < `DISPLAY_SLIDE_BITS_N'd3) begin
                display_slide_next <= display_slide + 2'd1;
            end else begin
                display_slide_next <= `DISPLAY_SLIDE_BITS_N'd1;
            end
         end
//         `TIME_DISP: begin
//            display_slide_next <= display_slide + `DISPLAY_SLIDE_BITS_N'd1;
//         end
    endcase
end
// state transition
always @(switch_0 or switch_1) begin
//  set_enable = `DISABLED;
//  data_load_enable = `DISABLED;
//  set_min_sec = {2{`DISABLED}};
//  reg_load_enable = `DISABLED;
//  state_next = `TIME_DISP;
//  state_led = state;

  case ({switch_0, switch_1})
    2'b00: begin
        state_next <= `TIME_DISP;
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
    end
    2'b01: begin
        state_next <= `TIME_DISP;
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
    end
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
  endcase
end

// state register
always @(posedge clk or negedge rst_n)
    if (~rst_n) begin
        state <= `TIME_DISP;
        display_slide <= `DISPLAY_SLIDE_BITS_N'd1;
    end else begin
        state <= state_next;
        display_slide <= display_slide_next;
    end    
  
endmodule

