`include "global.v"

module led_control(
    q,
    is_pause,
    is_restart,
    is_lap,
    leds
    );
    
    input [`BCD_COUNTER_BITS-1:0]q;
    input is_pause;
    input is_restart;
    input is_lap;
    output [`LEDS_NUM-1:0]leds;
    
    reg [`LEDS_NUM-1:0]leds;
    
    always@(q or is_pause or is_restart or is_lap) begin
        if(q == `BCD_COUNTER_ZERO)begin
            leds = {`LEDS_NUM{1'b1}};
        end else begin
            leds[`LEDS_NUM-1:2] = {(`LEDS_NUM-2){1'b0}};
            if((!is_pause) && (is_restart)) begin
                leds[0] = 1'b1;
            end else begin
                leds[0] = 1'b0;
            end
            
            if(is_lap) begin
                leds[1] = 1'b1;
            end else begin
                leds[1] = 1'b0;
            end
        end
    end
endmodule