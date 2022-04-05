`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 08:57:12 PM
// Design Name: 
// Module Name: extract
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

module extract(
    input [`COUNTERX_BITS_N-1:0] x,
    output [`BCD_BIT_WIDTH-1:0] d0,
    output [`BCD_BIT_WIDTH-1:0] d1
    );
    
    wire [`COUNTERX_BITS_N-1:0]mod;
    wire [`COUNTERX_BITS_N-1:0]div;
    assign mod = x % `COUNTERX_BITS_N'd10;
    assign div = x / `COUNTERX_BITS_N'd10;
    
    assign d0 = mod[`BCD_BIT_WIDTH-1:0];
    assign d1 = div[`BCD_BIT_WIDTH-1:0];
endmodule
