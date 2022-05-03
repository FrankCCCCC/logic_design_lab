`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/14 14:27:03
// Design Name: 
// Module Name: clock
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


module clock(
    input clk,
    input rst_n,
    input switch_time,
    input switch_day,
    input mode,
    input clk_c,
    input clk_c2,
    output [7:0]D_ssd,
    output [3:0]d,
    output wire leap_year
    );
    wire clk_26;
    wire clk_ctl;
    wire [3:0]one_s;
    wire [3:0]ten_s;
    wire [3:0]one_min;
    wire [3:0]ten_min;
    wire [3:0]one_h;
    wire [3:0]ten_h;
    wire [3:0]one_h_12;
    wire [3:0]ten_h_12;
    wire pm;
    wire minute;
    wire [3:0] one_d;
    wire [3:0] ten_d;
    wire [3:0] one_m;
    wire [3:0] ten_m;
    wire [3:0] one_y;
    wire [3:0] ten_y;
    wire [3:0] hun_y;
    wire [3:0] thu_y;
    wire hour;
    wire month;
    wire [7:0] D_ssd_one_s, D_ssd_ten_s;
    wire [7:0] D_ssd_one_min, D_ssd_ten_min;
    wire [7:0] D_ssd_one_h, D_ssd_ten_h;
    wire [7:0] D_ssd_one_h_12, D_ssd_ten_h_12;
    wire [7:0] D_ssd_one_d, D_ssd_ten_d;
    wire [7:0] D_ssd_one_m, D_ssd_ten_m;
    wire [7:0] D_ssd_one_y, D_ssd_ten_y;
    wire [7:0] D_ssd_hun_y, D_ssd_thu_y;
    
    
ssd_freqdiv F0 (
    .clk(clk),
    .rst_n(rst_n),
    .clk_ctl(clk_ctl)
    );
    
divider26 F1 (
    .clk(clk),
    .rst_n(rst_n),
    .clk_c(clk_c),
    .clk_c2(clk_c2),
    .clk_out(clk_26)
        );

second T0(
    .clk(clk_26),
    .rst_n(rst_n),
    .one_s(one_s),
    .ten_s(ten_s),
    .one_m(one_min),
    .ten_m(ten_min),
    .minute(minute)
    );
    
hour T1(
    .clk(clk_26),
    .rst_n(rst_n),
    .minute(minute),
    .one_h(one_h),
    .ten_h(ten_h),
    .hour(hour)
    );
    
hour_12 T2 (
    .clk(clk_26),
    .rst_n(rst_n),
    .minute(minute),
    .one_h_12(one_h_12),
    .ten_h_12(ten_h_12),
    .pm(pm)
    );
    
day U0 (
    .clk(clk_26),
    .rst_n(rst_n),
    .leap_year(leap_year),
    .hour(hour),
    .one_d(one_d),
    .ten_d(ten_d),
    .one_m(one_m),
    .ten_m(ten_m),
    .month(month)
    );
    
year U1 (
    .clk(clk_26),
    .rst_n(rst_n),
    .month(month),
    .one_y(one_y),
    .ten_y(ten_y),
    .hun_y(hun_y),
    .thu_y(thu_y),
    .leap_year(leap_year)
        );
  
decoder T30 (
    .binary(one_s),
    .D_ssd(D_ssd_one_s)
    );
decoder T31 (
    .binary(ten_s),
    .D_ssd(D_ssd_ten_s)
    );
decoder T32 (
    .binary(one_min),
    .D_ssd(D_ssd_one_min)
    );
decoder T33 (
    .binary(ten_min),
    .D_ssd(D_ssd_ten_min)
    );
decoder T34 (
    .binary(one_h),
    .D_ssd(D_ssd_one_h)
    );
decoder T35 (
    .binary(ten_h),
    .D_ssd(D_ssd_ten_h)
    );
decoder12 T36 (
    .binary(one_h_12),
    .pm(pm),
    .D_ssd(D_ssd_one_h_12)
    );
decoder12 T37 (
    .binary(ten_h_12),
    .pm(pm),
    .D_ssd(D_ssd_ten_h_12)
    );
                            
decoder U30 (
    .binary(one_d),
    .D_ssd(D_ssd_one_d)
        );
decoder U31 (
    .binary(ten_d),
    .D_ssd(D_ssd_ten_d)
        );
decoder U32 (
    .binary(one_m),
    .D_ssd(D_ssd_one_m)
        );
decoder U33 (
    .binary(ten_m),
    .D_ssd(D_ssd_ten_m)
        );
decoder U34 (
    .binary(one_y),
    .D_ssd(D_ssd_one_y)
        );
decoder U35 (
    .binary(ten_y),
    .D_ssd(D_ssd_ten_y)
        );
decoder U36 (
    .binary(hun_y),
    .D_ssd(D_ssd_hun_y)
        );
decoder U37 (
    .binary(thu_y),
    .D_ssd(D_ssd_thu_y)
        );
        
display U4 (
    .clk_ctl(clk_ctl),
    .rst_n(rst_n),
    .D_ssd_one_s(D_ssd_one_s),
    .D_ssd_ten_s(D_ssd_ten_s),
    .D_ssd_one_min(D_ssd_one_min),
    .D_ssd_ten_min(D_ssd_ten_min),
    .D_ssd_one_h(D_ssd_one_h),
    .D_ssd_ten_h(D_ssd_ten_h),
    .D_ssd_one_h_12(D_ssd_one_h_12),
    .D_ssd_ten_h_12(D_ssd_ten_h_12),
    .mode(mode),
    .D_ssd_one_d(D_ssd_one_d),
    .D_ssd_ten_d(D_ssd_ten_d),
    .D_ssd_one_m(D_ssd_one_m),
    .D_ssd_ten_m(D_ssd_ten_m),
    .D_ssd_one_y(D_ssd_one_y),
    .D_ssd_ten_y(D_ssd_ten_y),
    .D_ssd_hun_y(D_ssd_hun_y),
    .D_ssd_thu_y(D_ssd_thu_y),
    .switch_time(switch_time),
    .switch_day(switch_day),
    .D_ssd(D_ssd),
    .d(d)
            );
endmodule
