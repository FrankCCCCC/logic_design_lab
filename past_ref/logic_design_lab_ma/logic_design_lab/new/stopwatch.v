`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/20 21:32:07
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
    input clk,
    input rst_in,
    input start_in,
    input clk_c,
    output [7:0]D_ssd,
    output [3:0]d
    );
    wire clk_ctl;
    wire clk_26;
    wire rst_out;
    wire start_out;
    wire rst;
    wire lab;
    wire start;
    wire lab_tmp;
    wire lab_en;
    wire start_en;
    wire [3:0] one_s;
    wire [3:0] ten_s;
    wire [3:0] one_m;
    wire [3:0] ten_m;
    wire [3:0] lab_one_s;
    wire [3:0] lab_ten_s;
    wire [3:0] lab_one_m;
    wire [3:0] lab_ten_m;
    wire [7:0] D_ssd_one_s, D_ssd_ten_s;
    wire [7:0] D_ssd_one_m, D_ssd_ten_m;
    wire [7:0] D_ssd_lab_one_s, D_ssd_lab_ten_s;
    wire [7:0] D_ssd_lab_one_m, D_ssd_lab_ten_m;

    
ssd_freqdiv F0 (
    .clk(clk),
    .rst_n(rst),
    .clk_ctl(clk_ctl)
    );
    
divider26 F1 (
    .clk(clk),
    .rst_n(rst),
    .clk_c(clk_c),
    .clk_out(clk_26)
        );
        
debounce U0(
    .clk(clk),
    .pb_in(rst_in),
    .pb_debounced(rst_out)
    );
    
debounce U1(
    .clk(clk),
    .pb_in(start_in),
    .pb_debounced(start_out)
    );
    
rst U2 (
    .clk(clk),
    .button(rst_out),
    .rst_n(rst),
    .en(lab_tmp)
    );
        
onepulse U3 (
    .in_trig(lab_tmp),
    .clk(clk),
    .rst_n(rst),
    .one_pulse(lab)
        );
        
onepulse U4 (
    .in_trig(start_out),
    .clk(clk),
    .rst_n(rst),
    .one_pulse(start)
    );
    
fsm U5 (
    .clk(clk),
    .rst_n(rst),
    .in(lab),
    .count_en(lab_en)
        );
        
fsm U6 (
    .clk(clk),
    .rst_n(rst),
    .in(start),
    .count_en(start_en)
    );
    
counter U7 (
    .clk(clk_26),
    .rst_n(rst),
    .lab(lab_en),
    .one_s(one_s),
    .ten_s(ten_s),
    .one_m(one_m),
    .ten_m(ten_m),
    .lab_one_s(lab_one_s),
    .lab_ten_s(lab_ten_s),
    .lab_one_m(lab_one_m),
    .lab_ten_m(lab_ten_m)
    ); 
    
decoder D0 (
    .binary(one_s),
    .D_ssd(D_ssd_one_s)
    );
        
decoder D1 (
    .binary(ten_s),
    .D_ssd(D_ssd_ten_s)
    );
     
decoder D2 (
    .binary(one_m),
    .D_ssd(D_ssd_one_m)
    );
             
decoder D3 (
    .binary(ten_m),
    .D_ssd(D_ssd_ten_m)
    );
    
decoder D4 (
    .binary(lab_one_s),
    .D_ssd(D_ssd_lab_one_s)
    );
            
decoder D5 (
    .binary(lab_ten_s),
    .D_ssd(D_ssd_lab_ten_s)
    );
         
decoder D6 (
    .binary(lab_one_m),
    .D_ssd(D_ssd_lab_one_m)
    );
                 
decoder D7 (
    .binary(lab_ten_m),
    .D_ssd(D_ssd_lab_ten_m)
    );
    
display U8 (
    .clk_ctl(clk_ctl),
    .rst_n(rst),
    .D_ssd_one_s(D_ssd_one_s),
    .D_ssd_ten_s(D_ssd_ten_s),
    .D_ssd_one_m(D_ssd_one_m),
    .D_ssd_ten_m(D_ssd_ten_m),
    .D_ssd_lab_one_s(D_ssd_lab_one_s),
    .D_ssd_lab_ten_s(D_ssd_lab_ten_s),
    .D_ssd_lab_one_m(D_ssd_lab_one_m),
    .D_ssd_lab_ten_m(D_ssd_lab_ten_m),
    .lab(lab_en),
    .D_ssd(D_ssd),
    .d(d)
        );
endmodule
