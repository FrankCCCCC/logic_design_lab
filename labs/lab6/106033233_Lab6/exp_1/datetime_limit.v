`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2022 05:30:24 PM
// Design Name: 
// Module Name: datetime_limit
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

module datetime_limit(
    input [`COUNTERX_BITS_N-1:0] year,
    input [`COUNTERX_BITS_N-1:0] month,
    output [`COUNTERX_BITS_N-1:0] year_limit,
    output [`COUNTERX_BITS_N-1:0] month_limit,
    output reg [`COUNTERX_BITS_N-1:0] day_limit,
    output [`COUNTERX_BITS_N-1:0] hour_limit,
    output [`COUNTERX_BITS_N-1:0] min_limit,
    output [`COUNTERX_BITS_N-1:0] sec_limit,
    output [`COUNTERX_BITS_N-1:0] year_init,
    output [`COUNTERX_BITS_N-1:0] month_init,
    output [`COUNTERX_BITS_N-1:0] day_init,
    output [`COUNTERX_BITS_N-1:0] hour_init,
    output [`COUNTERX_BITS_N-1:0] min_init,
    output [`COUNTERX_BITS_N-1:0] sec_init
    );
    
    assign year_limit = `COUNTERX_BITS_N'd99;
    assign month_limit = `COUNTERX_BITS_N'd12;
    assign hour_limit = `COUNTERX_BITS_N'd23;
    assign min_limit = `COUNTERX_BITS_N'd59;
    assign sec_limit = `COUNTERX_BITS_N'd59;
    
    assign year_init = `COUNTERX_BITS_N'd0;
    assign month_init = `COUNTERX_BITS_N'd1;
    assign day_init = `COUNTERX_BITS_N'd1;
    assign hour_init = `COUNTERX_BITS_N'd0;
    assign min_init = `COUNTERX_BITS_N'd0;
    assign sec_init = `COUNTERX_BITS_N'd0;
    
    always@(*) begin
        if(month == `COUNTERX_BITS_N'd1 || 
           month == `COUNTERX_BITS_N'd3 || 
           month == `COUNTERX_BITS_N'd5 || 
           month == `COUNTERX_BITS_N'd7 || 
           month == `COUNTERX_BITS_N'd8 ||
           month == `COUNTERX_BITS_N'd10 ||
           month == `COUNTERX_BITS_N'd12) begin
           day_limit = `COUNTERX_BITS_N'd31;
        end else if(month == `COUNTERX_BITS_N'd2) begin
            if((year % `COUNTERX_BITS_N'd4 != `COUNTERX_BITS_N'd0) || (year % `COUNTERX_BITS_N'd100 == `COUNTERX_BITS_N'd0)) begin
                day_limit = `COUNTERX_BITS_N'd28;
            end else begin
                day_limit = `COUNTERX_BITS_N'd29;
            end
        end else begin
            day_limit = `COUNTERX_BITS_N'd30;
        end
    end
endmodule
