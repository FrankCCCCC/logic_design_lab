`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 04:00:30 PM
// Design Name: 
// Module Name: OnePulse
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

//`include "global.v"

//`define DELAY_BITS_N 16

//module OnePulse (
//	output reg signal_single_pulse,
//	input wire signal,
//	input wire clock
//	);
	
//	wire [`FREQ_DIV_BIT-1:0] clk_out;
	
//	frequency_divider U0(
//	   .clk_out(clk_out),
//	   .clk(clock),
//	   .rst_n(1'b1)
//	);
	
//	reg [`DELAY_BITS_N-1:0] signal_delay;

//	 always @(posedge clock) begin
////	always @(posedge clk_out[20]) begin
//		if (signal == 1'b1 & signal_delay == {`DELAY_BITS_N{1'b1}})
//		  signal_single_pulse <= 1'b1;
//		else
//		  signal_single_pulse <= 1'b0;

//		signal_delay <= {signal_delay[`DELAY_BITS_N-2:0], signal};
//	end
//endmodule

module OnePulseKB (
	output reg signal_single_pulse,
	input wire signal,
	input wire clock
	);
	
	reg signal_delay;
	initial begin
	   signal_single_pulse = 1'b0;
	end

	always @(posedge clock) begin
		if (signal == 1'b1 & signal_delay == 1'b0)
		  signal_single_pulse <= 1'b1;
		else
		  signal_single_pulse <= 1'b0;

		signal_delay <= signal;
	end
endmodule
