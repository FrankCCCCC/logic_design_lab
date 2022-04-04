`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2022 12:01:07 AM
// Design Name: 
// Module Name: switch_controller
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

module switch_controller(
    output reg [`COUNTERX_BITS_N-1:0] sel_d1,
    output reg [`COUNTERX_BITS_N-1:0] sel_d0,
    input [`COUNTERX_BITS_N-1:0] alarm_hour,
    input [`COUNTERX_BITS_N-1:0] alarm_min,
    input [`COUNTERX_BITS_N-1:0] year,
    input [`COUNTERX_BITS_N-1:0] month,
    input [`COUNTERX_BITS_N-1:0] day,
    input [`COUNTERX_BITS_N-1:0] hour,
    input [`COUNTERX_BITS_N-1:0] min,
    input [`COUNTERX_BITS_N-1:0] sec,
    input [`DISPLAY_SLIDE_BITS_N-1:0] display_slide
    );
    // Binary counter output
    
    always@(*) begin
//        case(display_slide)
//            `DISPLAY_SLIDE_BITS_N'd0: begin
//                sel_d1 <= alarm_hour;
//                sel_d0 <= alarm_min;
//            end 
//            `DISPLAY_SLIDE_BITS_N'd1: begin
//                sel_d1 <= year;
//                sel_d0 <= month;
//            end
//            `DISPLAY_SLIDE_BITS_N'd2: begin
//                sel_d1 <= day;
//                sel_d0 <= hour;
//            end
//            `DISPLAY_SLIDE_BITS_N'd3: begin
//                sel_d1 <= min;
//                sel_d0 <= sec;
//            end
//        endcase        
        case(display_slide)
            `DISPLAY_SLIDE_BITS_N'd0: begin
                sel_d1 <= hour;
                sel_d0 <= min;
//                sel_d1 <= min;
//                sel_d0 <= sec;
            end
            `DISPLAY_SLIDE_BITS_N'd1: begin
//                sel_d1 <= min;
//                sel_d0 <= sec;
                sel_d1 <= min;
                sel_d0 <= sec;
            end
            default: begin
                sel_d1 <= min;
                sel_d0 <= sec;
            end
        endcase        
    end
endmodule
