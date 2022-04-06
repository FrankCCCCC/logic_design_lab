`include "global.v"

module min_sec_seperate(
    i,
    d0_min,
    d1_min,
    d0_sec,
    d1_sec
    );
    
    input [`BCD_COUNTER_BITS-1:0]i;
    output [`SEGMENT_7_INPUT_BITS_N-1:0]d0_min;
    output [`SEGMENT_7_INPUT_BITS_N-1:0]d1_min;
    output [`SEGMENT_7_INPUT_BITS_N-1:0]d0_sec;
    output [`SEGMENT_7_INPUT_BITS_N-1:0]d1_sec;
    
    wire [`BCD_COUNTER_BITS-1:0]MINS;
    wire [`BCD_COUNTER_BITS-1:0]SECS;
    wire [`BCD_COUNTER_BITS-1:0]D0_MIN;
    wire [`BCD_COUNTER_BITS-1:0]D1_MIN;
    wire [`BCD_COUNTER_BITS-1:0]D0_SEC;
    wire [`BCD_COUNTER_BITS-1:0]D1_SEC;
    
    assign MINS = i / 60;
    assign SECS = i % 60;
    
    assign D0_MIN = MINS % 10;
    assign D1_MIN = MINS / 10;
    assign D0_SEC = SECS % 10;
    assign D1_SEC = SECS / 10;
    
    assign d0_min = D0_MIN[`SEGMENT_7_INPUT_BITS_N-1:0];
    assign d1_min = D1_MIN[`SEGMENT_7_INPUT_BITS_N-1:0];
    assign d0_sec = D0_SEC[`SEGMENT_7_INPUT_BITS_N-1:0];
    assign d1_sec = D1_SEC[`SEGMENT_7_INPUT_BITS_N-1:0];
endmodule