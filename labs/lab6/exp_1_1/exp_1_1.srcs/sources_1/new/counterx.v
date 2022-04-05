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
  input [`COUNTERX_BITS_N-1:0] count_init, // initial value of the up counter
  input clk, // clock
  input rst_n // low active reset
);

reg [`COUNTERX_BITS_N-1:0] q_next;

initial begin
    q <= count_init;
    q_next <= count_init;
end

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
//        q <= `COUNTERX_BITS_N'b0;
        q <= count_init;
    end else begin
        q <= q_next;
    end
end

always @(*) begin
    q_next = q;
    time_carry = `DISABLED;
    if (load_value_enable) begin
        q_next = load_value;
    end else if (count_enable && q == count_limit) begin
//        q_next = `COUNTERX_BITS_N'b0;
        q_next = count_init;
        time_carry = `ENABLED;
    end else if (count_enable) begin
        q_next = q + `COUNTERX_BITS_N'd1;
    end
end

endmodule


//`include "global.v"

//`define NOT_ALLOWED 2'd0
//`define ALLOWED 2'd1
//`define DONE 2'd2

//module counterx(
//    output reg [`COUNTERX_BITS_N-1:0] q, // counter value
//    output reg time_carry, // counter carry
//    input count_enable, // counting enabled control signal
//    input load_value_enable, // load setting value control
//    input [`COUNTERX_BITS_N-1:0] load_value, // value to be loaded
//    input [`COUNTERX_BITS_N-1:0] count_limit, // limit of the up counter
//    input [`COUNTERX_BITS_N-1:0] count_init, // initial value of the up counter
//    input clk, // clock
//    input rst_n // low active reset
//);

//reg [`COUNTERX_BITS_N-1:0] q_next, q_next_load;
//reg [1:0] is_load, is_load_next;

//initial begin
////    q <= `COUNTERX_BITS_N'b0;
//    q_next = count_init;
////    q_next_load = load_value;
//    q = count_init;
//    is_load = `NOT_ALLOWED;
//    is_load_next = `NOT_ALLOWED;
//    time_carry = `DISABLED;
//end

//always @(posedge clk or negedge rst_n) begin
//    if (~rst_n) begin
//        q <= count_init;
//        is_load <= `NOT_ALLOWED;
//    end else begin
//        if(load_value_enable && (is_load_next == `ALLOWED)) begin
//            q <= load_value;
//        end else begin
//            q <= q_next;
//        end
//        is_load <= is_load_next;
//    end
//end

//always @(*)begin
//    case(is_load)
//        `NOT_ALLOWED: begin
//            if(load_value_enable) begin
//                is_load_next <= `ALLOWED;
//            end else begin
//                is_load_next <= `NOT_ALLOWED;
//            end
//        end
//        `ALLOWED: begin
//            is_load_next <= `DONE;
//        end
//        `DONE: begin
//            if(load_value_enable) begin
//                is_load_next <= `DONE;
//            end else begin
//                is_load_next <= `NOT_ALLOWED;
//            end
//        end
//    endcase
//end

//always @(q)begin
////always @(posedge count_enable or negedge clk)begin
////    if (load_value_enable && (!clk) && (q_next != q)) begin
////        q_next <= q;
////        time_carry <= `DISABLED;
////    end else begin
//        if (count_enable && q == count_limit) begin
//            q_next <= count_init;
//            time_carry <= `ENABLED;
//        end else if (count_enable) begin
//            q_next <= q + `COUNTERX_BITS_N'd1;
//            time_carry <= `DISABLED;
//        end else begin
//            q_next <= q;
//            time_carry <= `DISABLED;
//        end
////    end
//end
//endmodule

