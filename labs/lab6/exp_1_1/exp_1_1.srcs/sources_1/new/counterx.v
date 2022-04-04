`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 09:18:54 PM
// Design Name: 
// Module Name: counterx
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
module counterx(
  output reg [`COUNTERX_BITS_N-1:0] q, // counter value
  output reg time_carry, // counter carry
  input count_enable, // counting enabled control signal
  input load_value_enable, // load setting value control
  input [`COUNTERX_BITS_N-1:0] load_value, // value to be loaded
  input [`COUNTERX_BITS_N-1:0] count_limit, // limit of the up counter
  input clk, // clock
  input rst_n // low active reset
);

reg [`COUNTERX_BITS_N-1:0] q_next;

always @(posedge clk or negedge rst_n)
  if (~rst_n)
    q <= `COUNTERX_BITS_N'b0;
  else
    q <= q_next;

always @*
begin
  q_next = q;
  time_carry = `DISABLED;
  if (load_value_enable)
    q_next = load_value;
  else if (count_enable && q == count_limit)
  begin
    q_next = `COUNTERX_BITS_N'b0;
    time_carry = `ENABLED;
  end
  else if (count_enable)
    q_next = q + `COUNTERX_BITS_N'd1;
end
endmodule

