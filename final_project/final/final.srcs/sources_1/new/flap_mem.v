`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/08/2022 05:53:37 PM
// Design Name: 
// Module Name: flap_mem
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

module flap_mem #(
    parameter MUSIC_ADDR_BITS_N = 0,
    parameter MUSIC_DATA_BITS_N = 0
)(
    input clk,
    input rst_n,
    input [MUSIC_ADDR_BITS_N-1:0] addr,
    output reg [MUSIC_DATA_BITS_N-1:0] data
);

    localparam h_do = 22'd190839;
    localparam h_mi = 22'd151515;
        
    always@(*)begin
        case (addr)
            'd0: data = h_do;
            'd1: data = h_mi;
        default:
            data = 'd0;
        endcase
    end
      
endmodule