`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/14 13:45:56
// Design Name: 
// Module Name: display
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


module display(
    input clk_ctl,
    input rst_n,
    input [7:0]D_ssd_one_s,
    input [7:0]D_ssd_ten_s,
    input [7:0]D_ssd_one_m,
    input [7:0]D_ssd_ten_m,
    input [7:0]D_ssd_one_h,
    input [7:0]D_ssd_ten_h,
    input [7:0]D_ssd_one_h_12,
    input [7:0]D_ssd_ten_h_12,
    input mode,
    input switch,
    output reg [7:0]D_ssd,
    output reg [3:0]d
    );
    reg [1:0]cnt_ctl;
    reg [1:0]c;

    always@*
        cnt_ctl = c + 1'b1;       
    always@(posedge clk_ctl or negedge rst_n)
        if (~rst_n)
            begin
                c <= 0;
            end
        else
            c <= cnt_ctl;
        
    always@(posedge clk_ctl or negedge rst_n)
        if (~rst_n)
            D_ssd <= 8'b11111111;
        else if (switch == 1)
            case(c)
                2'b00 : D_ssd <= D_ssd_one_s;
                2'b01 : D_ssd <= D_ssd_ten_s;
                default : D_ssd <= 11111111;
            endcase
        else 
            begin
            if (mode)
                case(c)
                    2'b00 : D_ssd <= D_ssd_one_m;
                    2'b01 : D_ssd <= D_ssd_ten_m;
                    2'b10 : D_ssd <= D_ssd_one_h;
                    2'b11 : D_ssd <= D_ssd_ten_h;
                    default : D_ssd <= 11111111;
                endcase
            else 
                case(c)
                    2'b00 : D_ssd <= D_ssd_one_m;
                    2'b01 : D_ssd <= D_ssd_ten_m;
                    2'b10 : D_ssd <= D_ssd_one_h_12;
                    2'b11 : D_ssd <= D_ssd_ten_h_12;
                    default : D_ssd <= 11111111;
                endcase
            end
            
   always@(posedge clk_ctl or negedge rst_n)
       if (~rst_n)
            d <= 4'b0000;
       else if (switch == 0)
            case(c)
                2'b00 : d <= 4'b1110;
                2'b01 : d <= 4'b1101;
                2'b10 : d <= 4'b1011;
                2'b11 : d <= 4'b0111;
            endcase 
        else 
            case(c)
                2'b00 : d <= 4'b1110;
                2'b01 : d <= 4'b1101;
                default : d <= 4'b1111;
            endcase
endmodule
