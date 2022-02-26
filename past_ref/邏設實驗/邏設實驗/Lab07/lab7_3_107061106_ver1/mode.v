`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/21 23:52:23
// Design Name: 
// Module Name: mode
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


module mode(
    input clk,
    input rst_n,
    input mode,
    input button_r_l,
    input button_r_s,
    input button_l_l,
    input button_l_s,
    output reg lap,
    output reg start_in,
    output reg start,
    output reg pause,
    output reg setting,
    output reg set_min,
    output reg set_hour
    );
    
always@(posedge clk or posedge rst_n)
            if (rst_n)
                begin
                    lap <= 0;
                    start_in <= 0;
                    start <= 0;
                    pause <= 0;
                    setting <= 0;
                    set_min <= 0;
                    set_hour <= 0;
                end
            else
                if (mode)
                    begin
                        setting <= button_r_l;
                        if (setting)
                            begin
                                set_min <= button_r_s;
                                set_hour <= button_l_s;
                            end
                        else
                            begin
                                start <= button_r_s;
                                pause <= button_l_s;
                            end
                    end
                else
                    begin
                        lap <= button_r_s;
                        start_in <= button_l_s;
                    end
endmodule
