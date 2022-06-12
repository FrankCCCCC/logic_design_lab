`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2022 06:38:50 PM
// Design Name: 
// Module Name: bump_mem
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

module bump_mem #(
    parameter MUSIC_ADDR_BITS_N = 0,
    parameter MUSIC_DATA_BITS_N = 0
)(
    input clk,
    input rst_n,
    input [MUSIC_ADDR_BITS_N-1:0] addr,
    output reg [MUSIC_DATA_BITS_N-1:0] data
);

    localparam l_fa = 22'd4545455;
    localparam l_so = 22'd2040816;
    localparam l_la = 22'd909091;
    localparam l_la_b = 22'd963113;
    
    always@(*)begin
        case (addr)
            'd0: data = l_la;
            'd1: data = l_la_b;
            'd2: data = l_so;
            'd3: data = l_fa;
        default:
            data = 'd0;
        endcase
    end
      
endmodule