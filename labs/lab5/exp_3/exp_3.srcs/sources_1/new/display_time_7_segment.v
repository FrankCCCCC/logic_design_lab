`include "global.v"

module display_time_7_segment(
    d_sel,
    d_out,
    q_show,
    clk,
    rst
    );
    
    output [`SEGMENT_7_DISPALY_DIGIT_N-1:0]d_sel;
    output [`SEGMENT_7_SEGMENT_N-1:0]d_out;
    input [`BCD_COUNTER_BITS-1:0]q_show;
    input clk;
    input rst;
    
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]D0_MIN_BINARY;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]D1_MIN_BINARY;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]D0_SEC_BINARY;
    wire [`SEGMENT_7_INPUT_BITS_N-1:0]D1_SEC_BINARY;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D0_MIN_SEGMENT7;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D1_MIN_SEGMENT7;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D0_SEC_SEGMENT7;
    wire [`SEGMENT_7_SEGMENT_N-1:0]D1_SEC_SEGMENT7;
    
    // Extract digits
    min_sec_seperate SEP(.i(q_show), .d0_min(D0_MIN_BINARY), .d1_min(D1_MIN_BINARY), .d0_sec(D0_SEC_BINARY), .d1_sec(D1_SEC_BINARY));
    
    // Convert binary to 7-segment 
    segment7 D0_MIN_CONV(.i(D0_MIN_BINARY), .D(D0_MIN_SEGMENT7));
    segment7 D1_MIN_CONV(.i(D1_MIN_BINARY), .D(D1_MIN_SEGMENT7));
    segment7 D0_SEC_CONV(.i(D0_SEC_BINARY), .D(D0_SEC_SEGMENT7));
    segment7 D1_SEC_CONV(.i(D1_SEC_BINARY), .D(D1_SEC_SEGMENT7));
    
    // Show
    display_7seg(.clk(clk), .rst(rst), .d0(D0_SEC_SEGMENT7), .d1(D1_SEC_SEGMENT7), .d2(D0_MIN_SEGMENT7), .d3(D1_MIN_SEGMENT7), .d_sel(d_sel), .d_out(d_out));
endmodule