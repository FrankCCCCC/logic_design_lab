`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/21 11:39:38
// Design Name: 
// Module Name: downcounter
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


module downcounter(
    input clk,
    input clk_c,
    input rst_n,
    input start,
    input pause,
    input setting,
    input set_min,
    input set_hour,
    output [7:0]D_ssd,
    output [3:0]d,
    output [15:0]led
    );
    wire clk_26;
    wire clk_ctl;
    wire d_rst;
    wire d_start;
    wire d_pause;
    wire d_set_min;
    wire d_set_hour;
    wire p_start;
    wire p_pause;
    wire en_start;
    wire en_pause;
    wire s_start;
    wire s_pause;
    wire set_one_m;
    wire set_ten_m;
    wire set_one_h;
    wire set_ten_h;
    wire hour0;
    wire one_m, ten_m;
    wire minute;
    wire one_h;
    wire ten_h;
    wire D_ssd_one_m;
    wire D_ssd_ten_m;
    wire D_ssd_one_h;
    wire D_ssd_ten_h;
    
divider26 D0 (
    .clk(clk),
    .rst_n(d_rst),
    .clk_c(clk_c),
    .clk_out(clk_26)
    );
   
ssd_freqdiv D1 (
    .clk(clk),
    .rst_n(d_rst),
    .clk_ctl(clk_ctl)
    );
        
debounce B0 (
    .clk(clk),
    .pb_in(rst_n),
    .pb_debounced(d_rst)
    );
    
debounce B1 (
    .clk(clk),
    .pb_in(start),
    .pb_debounced(d_start)
    );
        
debounce B2 (
    .clk(clk),
    .pb_in(pause),
    .pb_debounced(d_pause)
    );
            
debounce B3 (
    .clk(clk),
    .pb_in(set_min),
    .pb_debounced(d_set_min)
    );
    
debounce B4 (
    .clk(clk),
    .pb_in(set_hour),
    .pb_debounced(d_set_hour)
    );
    
onepulse O0 (
    .in_trig(d_start),
    .clk(clk),
    .rst_n(d_rst),
    .one_pulse(p_start)
    );
        
onepulse O1 (
    .in_trig(d_pause),
    .clk(clk),
    .rst_n(d_rst),
    .one_pulse(p_pause)
    );
    
fsm F0 (
    .clk(clk),
    .rst_n(d_rst),
    .in(p_start),
    .count_en(en_start),
    .state(s_start)
    );
        
fsm F1 (
    .clk(clk),
    .rst_n(d_rst),
    .in(p_pause),
    .count_en(en_pause),
    .state(s_pause)
    );
    
set S0 (
    .setting(setting),
    .set_ctl(d_set_min),
    .set_one(set_one_m),
    .set_ten(set_ten_m)
    );
    
set S1 (
    .setting(setting),
    .set_ctl(d_set_hour),
    .set_one(set_one_h),
    .set_ten(set_ten_h)
    );
    
minute T0 (
    .clk(clk_26),
    .rst_n(d_rst),
    .set_min_one(set_one_m),
    .set_min_ten(set_ten_m),
    .hour0(hour0),
    .one_m(one_m),
    .ten_m(ten_m),
    .minute(minute)
    ); 
    
hour T1 (
    .clk(clk_26),
    .rst_n(d_rst),
    .minute(minute),
    .set_hour_one(set_one_h),
    .set_hour_ten(set_ten_h),
    .one_h(one_h),
    .ten_h(ten_h),
    .hour0(hour0)
    );
    
decoder E0(
    .binary(one_m),
    .D_ssd(D_ssd_one_m)
    );
    
decoder E1(
    .binary(ten_m),
    .D_ssd(D_ssd_ten_m)
    );
    
decoder E2(
    .binary(one_h),
    .D_ssd(D_ssd_one_h)
    );
        
decoder E3(
    .binary(ten_h),
    .D_ssd(D_ssd_ten_h)
    );
  
display U0 (
    .clk_ctl(clk_ctl),
    .rst_n(d_rst),
    .D_ssd_one_m(D_ssd_one_m),
    .D_ssd_ten_m(D_ssd_ten_m),
    .D_ssd_one_h(D_ssd_one_h),
    .D_ssd_ten_h(D_ssd_ten_h),
    .D_ssd(D_ssd),
    .d(d),
    .led(led)
    );      
        
endmodule
