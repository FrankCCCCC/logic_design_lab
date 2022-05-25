`include "global.v"

module segment7 #(
    parameter SEGMENT_7_INPUT_BITS_N = 4
)(
    input [SEGMENT_7_INPUT_BITS_N-1:0] i,
    output reg [`SEGMENT_7_SEGMENT_N-1:0] D
);  
    always@(i)
        case(i)
            0: D = `SEGMENT_7_SEGMENT_N'b0000001_1;
            1: D = `SEGMENT_7_SEGMENT_N'b1001111_1;
            2: D = `SEGMENT_7_SEGMENT_N'b0010010_1;
            3: D = `SEGMENT_7_SEGMENT_N'b0000110_1;
            4: D = `SEGMENT_7_SEGMENT_N'b1001100_1;
            5: D = `SEGMENT_7_SEGMENT_N'b0100100_1;
            6: D = `SEGMENT_7_SEGMENT_N'b0100000_1;
            7: D = `SEGMENT_7_SEGMENT_N'b0001111_1;
            8: D = `SEGMENT_7_SEGMENT_N'b0000000_1;
            9: D = `SEGMENT_7_SEGMENT_N'b0000100_1;
            10: D = `SEGMENT_7_SEGMENT_N'b0001000_1;
            11: D = `SEGMENT_7_SEGMENT_N'b1100000_1;
            12: D = `SEGMENT_7_SEGMENT_N'b0110001_1;
            13: D = `SEGMENT_7_SEGMENT_N'b1000010_1;
            14: D = `SEGMENT_7_SEGMENT_N'b0110000_1;
            15: D = `SEGMENT_7_SEGMENT_N'b0111000_1;
            default: D = `SEGMENT_7_SEGMENT_N'b1111111_0;
        endcase
        
endmodule