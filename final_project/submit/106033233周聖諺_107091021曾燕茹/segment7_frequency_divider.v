module segment7_frequency_divider #(
    parameter SEGMENT_7_FREQ_DIV_BITS = 30,
    parameter SEGMENT_7_FREQ_DIV_COUNT = 50000
)(
    output clk_out,
    input clk,
    input rst
);
    reg clk_in;
    reg clk_out;
    reg [SEGMENT_7_FREQ_DIV_BITS-1:0] counter_in;
    reg [SEGMENT_7_FREQ_DIV_BITS-1:0] counter_out;
    
    always@(counter_out or clk_out)
        if(counter_out < (SEGMENT_7_FREQ_DIV_COUNT - 1))
        begin
            counter_in <= counter_out + 1;
            clk_in <= clk_out;
        end
        else
        begin
            counter_in <= 0;
            clk_in <= ~clk_out;
        end
        
    always@(posedge clk or negedge rst)
        if(~rst)
        begin
            counter_out <= 0;
            clk_out <= 1'd0;
        end
        else
        begin
            counter_out <= counter_in;
            clk_out <= clk_in;
        end
endmodule
