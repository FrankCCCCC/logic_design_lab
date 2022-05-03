`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/21 22:43:25
// Design Name: 
// Module Name: watch
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


module watch(
    input clk,
    input rst_n,
    input mode,
    input button_r,
    input button_l,
    input clk_c,
    output [7:0]D_ssd,
    output [3:0]d,
    output [15:0]led
    );
    wire d_rst;
    wire d_mode;
    wire d_button_r;
    wire d_button_l;
    wire p_mode;
    wire en_mode;
    wire s_mode;
    wire button_r_l;
    wire button_r_s;
    wire button_l_l;
    wire button_l_s;
    wire p_button_r_l;
    wire p_button_r_s;
    wire p_button_l_l;
    wire p_button_l_s;
    wire lap;
    wire start_in;
    wire start;
    wire pause;
    wire setting;
    wire set_min;
    wire set_hour;
    wire [7:0]D_ssd2;
    wire [3:0]d2;
    wire [15:0]led2;
    wire [7:0]D_ssd1;
    wire [3:0]d1;
    wire [15:0]led1;
    
    
debounce B0 (
    .clk(clk),
    .pb_in(rst_n),
    .pb_debounced(d_rst)
    );
            
debounce B1 (
    .clk(clk),
    .pb_in(mode),
    .pb_debounced(d_mode)
    );
        
debounce B2 (
    .clk(clk),
    .pb_in(button_r),
    .pb_debounced(d_button_r)
    );
                
debounce B3 (
    .clk(clk),
    .pb_in(button_l),
    .pb_debounced(d_button_l)
    );
    
onepulse O0 (
    .in_trig(d_mode),
    .clk(clk),
    .rst_n(d_rst),
    .one_pulse(p_mode)
    );
        
fsm F0 (
    .clk(clk),
    .rst_n(d_rst),
    .in(p_mode),
    .count_en(en_mode),
    .state(s_mode)
    );
    
rst R0 (
    .clk(clk),
    .button(d_button_r),
    .rst_n(button_r_l),
    .en(button_r_s)
    );    
onepulse O1 (
    .in_trig(button_r_l),
    .clk(clk),
    .rst_n(d_rst),
    .one_pulse(p_button_r_l)
    );
onepulse O2 (
    .in_trig(button_r_s),
    .clk(clk),
    .rst_n(d_rst),
    .one_pulse(p_button_r_s)
    ); 
          

rst R1 (
    .clk(clk),
    .button(d_button_l),
    .rst_n(button_l_l),
    .en(button_l_s)
    );        
onepulse O3 (
    .in_trig(button_l_l),
    .clk(clk),
    .rst_n(d_rst),
    .one_pulse(p_button_l_l)
    );
onepulse O4 (
    .in_trig(button_l_s),
    .clk(clk),
    .rst_n(d_rst),
    .one_pulse(p_button_l_s)
    );

    
mode U0 (
    .clk(clk),
    .rst_n(d_rst),
    .mode(s_mode),
    .button_r_l(p_button_r_l),
    .button_r_s(p_button_r_s),
    .button_l_l(p_button_l_l),
    .button_l_s(p_button_l_s),
    .lap(lap),
    .start_in(start_in),
    .start(start),
    .pause(pause),
    .setting(setting),
    .set_min(set_min),
    .set_hour(set_hour)
    );
    
downcounter L2 (
    .clk(clk),
    .clk_c(clk_c),
    .rst_n(rst_n),
    .start(p_button_l_s),
    .pause(p_button_r_s),
    .setting(p_button_r_l),
    .set_min(p_button_r_s),
    .set_hour(p_button_l_s),
    .D_ssd(D_ssd2),
    .d(d2),
    .led(led2)
    );
    
stopwatch L1 (
    .clk(clk),
    .rst(d_rst),
    .rst_in(p_button_r_s),
    .start_in(p_button_l_s),
    .clk_c(clk_c),
    .D_ssd(D_ssd1),
    .d(d1),
    .led(led1)
    );
    
fin_display K0 (
    .mode(s_mode),
    .D_ssd1(D_ssd1),
    .d1(d1),
    .led1(led1),
    .D_ssd2(D_ssd2),
    .d2(d2),
    .led2(led2),
    .D_ssd(D_ssd),
    .d(d),
    .led(led)
        );
endmodule
