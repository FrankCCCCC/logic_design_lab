`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 09:21:40 PM
// Design Name: 
// Module Name: exp_1_1
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

module exp_1_1(
    output [15:0] led,
    output [`SSD_BIT_WIDTH-1:0] segs,  // 7-segment display
    output [`SSD_NUM-1:0] ssd_ctl, // scan control for 7-segment display
    input btn_l,
    input btn_m,
    input btn_r,
    input switch_0,
    input switch_1,
    input  clk,  // clock from oscillator
    input  rst_n  // active low reset
    );
    
    wire clk_1, clk_2k; //divided clock
    wire data_load_enable, reg_load_enable;
    wire [4:0] state;
    wire [1:0] set_min_sec;
    wire set_enable;
    wire [`COUNTERX_BITS_N-1:0] time_sec,time_min, time_hour; // Binary counter output
//    wire [`BCD_BIT_WIDTH-1:0] reg_q0, reg_q1, reg_q2, reg_q3; // Binary counter
    wire [`BCD_BIT_WIDTH-1:0] ssd_in;
    
    wire [`BCD_BIT_WIDTH-1:0] ssd_d0, ssd_d1, ssd_d2, ssd_d3; // Binary counter output 
//    reg [`BCD_BIT_WIDTH-1:0] reg_load_q0, reg_load_q1, reg_load_q2, reg_load_q3; // Binary counter
    
    wire [`COUNTERX_BITS_N-1:0] sel_d0, sel_d1;
    reg [`COUNTERX_BITS_N-1:0] ssd_reg0, ssd_reg1;
    wire [`DISPLAY_SLIDE_BITS_N-1:0] display_slide;
    
    assign led = {state_led, 8'b0};
    
    clock_generator Uclkgen(
      .clk_1(clk_1), // generated 1 Hz clock
      .clk_100(), // generated 100 Hz clock
      .clk_2k(clk_2k), // generated 100 Hz clock
      .clk(clk), // clock from crystal
      .rst_n(rst_n) // active low reset
    );
    
    // Time Display Counter
    timedisplay Utd(
      .sec(time_sec),
      .min(time_min),
      .hour(time_hour),
      .count_enable(`ENABLED),
      .load_value_enable(data_load_enable && (state[4:3] == `TIME)),
//      .load_value_sec0(reg_q0),
//      .load_value_sec1(reg_q1),
//      .load_value_min0(reg_q2),
//      .load_value_min1(reg_q3),
      .load_value_sec(`COUNTERX_BITS_N'd0),
      .load_value_min(`COUNTERX_BITS_N'd59),
      .load_value_hour(`COUNTERX_BITS_N'd0),
      .clk(clk_1),
      .rst_n(rst_n)
    );
    
    // FSM
    fsm Ufsm(
      .state_led(state_led),
      .display_slide(display_slide),
      .set_enable(set_enable),
//      .stopwatch_count_enable(stopwatch_count_enable),
      .data_load_enable(data_load_enable),
      .reg_load_enable(reg_load_enable),
//      .alarm_enable(alarm_enable),
      .set_min_sec(set_min_sec),
      .state(state),
      .btn_l(btn_l),
      .btn_m(btn_m),
      .btn_r(btn_r),
      .switch_0(switch_0),
      .switch_1(switch_1),
      .clk(clk_1),
      .rst_n(rst_n)
    );
    
    // Selection which data to load to setting register
//    always @*
//      case (state[4:3])
//      `TIME:
//        begin
//          reg_load_q0 = time_sec0;
//          reg_load_q1 = time_sec1;
//          reg_load_q2 = time_min0;
//          reg_load_q3 = time_min1;
//        end
//      default:
//        begin
//          reg_load_q0 = 4'd0;
//          reg_load_q1 = 4'd0;
//          reg_load_q2 = 4'd0;
//          reg_load_q3 = 4'd0;
//        end
//      endcase
  
  // Setting Registers
//    unitset Usreg(
//      .q0(reg_q0),
//      .q1(reg_q1),
//      .q2(reg_q2),
//      .q3(reg_q3),
//      .count_enable({set_enable & set_min_sec[1],set_enable & set_min_sec[0]}),
//      .load_value_enable(reg_load_enable),
//      .load_value_q0(reg_load_q0),
//      .load_value_q1(reg_load_q1),
//      .load_value_q2(reg_load_q2),
//      .load_value_q3(reg_load_q3),
//      .clk(clk_1),
//      .rst_n(rst_n)
//    );
    switch_controller Uswitch (
        .sel_d1(sel_d1), 
        .sel_d0(sel_d0), 
        .alarm_hour(`INIT_ALARM_HOUR), 
        .alarm_min(`INIT_ALARM_MIN),
        .year(`INIT_YEAR),
        .month(`INIT_MONTH),
        .day(`INIT_DAY),
        .hour(time_hour),
        .min(time_min),
        .sec(time_sec),
        .display_slide(display_slide)
    );
    always @(*) begin
        case (state)
            `TIME_DISP: begin
                ssd_reg0 <= sel_d0;
                ssd_reg1 <= sel_d1;
            end
//            `TIME_SETMIN: begin
//                sec0 = reg_q0;
//                sec1 = reg_q1;
//                min0 = reg_q2;
//                min1 = reg_q3;
//            end
//            `TIME_SETSEC: begin
//                sec0 = reg_q0;
//                sec1 = reg_q1;
//                min0 = reg_q2;
//                min1 = reg_q3;
//            end
            default: begin
                ssd_reg0 <= sel_d0;
                ssd_reg1 <= sel_d1;
            end
      endcase
   end
   
    extract (.d2(ssd_d1), .d1(ssd_d0), .x(ssd_reg0));
    extract (.d2(ssd_d3), .d1(ssd_d2), .x(ssd_reg1));

// Scan control
    scan_ctl U_SC(
      .ssd_ctl(ssd_ctl), // ssd display control signal
      .ssd_in(ssd_in), // output to ssd display
      .in0(ssd_d0), // 1st input
      .in1(ssd_d1), // 2nd input
      .in2(ssd_d2), // 3rd input
      .in3(ssd_d3),  // 4th input
      .ssd_ctl_en(clk_2k), // divided clock for scan control
      .rst_n(rst_n)
    );
    
    // binary to 7-segment display decoder
    display U_display(
      .segs(segs), // 7-segment display output
      .bin(ssd_in)  // BCD number input
    );
endmodule


