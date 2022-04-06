`include "global.v"

//`define LONG_PRESS_N 3
//`define COUNTER_BITS_N 30

//module onepulse (
//    rst, 
//    clk, 
//    clk_long,
//    push, 
//    push_onepulse,
//    push_onepulse_long,
//    push_debounced,
//    push_sig,
//    push_sig_long
//    );
    
//    input clk, clk_long, rst;
//    input push;
//    output push_onepulse;
//    output push_onepulse_long;
//    output push_debounced;
//    output push_sig;
//    output push_sig_long;
//    // internal registers
//    reg push_onepulse_next;
//    reg push_debounced_delay;
//    reg push_onepulse;
    
//    reg push_onepulse_next_long;
//    reg push_debounced_delay_long;
//    reg push_onepulse_long;
    
//    reg [`COUNTER_BITS_N-1:0]counter_temp;
//    reg [`COUNTER_BITS_N-1:0]counter;
//    reg push_sig;
//    reg push_sig_long;
    
//    debounce U0(.clk(clk), .rst(rst), .push(push), .push_debounced(push_debounced));
////    debounce U1(.clk(clk_long), .rst(rst), .push(push), .push_debounced(push_debounced_long));
    
//    always@(*) begin
//        push_onepulse = push_sig;
//        push_onepulse_long = push_sig_long;
//    end

//    // Switching long or short
//    always@(counter) begin
//        counter_temp <= counter + `COUNTER_BITS_N'b1;
//    end
    
//    always @(posedge clk or negedge rst) begin
//        if (~rst) begin
//            counter <= `COUNTER_BITS_N'b0;
//            push_sig_long <= 1'b0;
//            push_sig <= 1'b0;
//        end else if(~push_debounced) begin
//             if(counter > `PRESS_CYCLE_N) begin
//                push_sig <= 1'b0;
//                push_sig_long <= 1'b1;
//             end else if(counter > 0) begin
//                push_sig <= 1'b1;
//                push_sig_long <= 1'b0;
//             end else begin
//                push_sig <= 1'b0;
//                push_sig_long <= 1'b0;
//             end
//             counter <= `COUNTER_BITS_N'b0;
//        end else if(push_debounced) begin
//            counter <= counter_temp;
//            push_sig <= 1'b0;
//            push_sig_long <= 1'b0;
//        end
//    end
//endmodule

module onepulse (
    rst, 
    clk, 
    push, 
    push_onepulse
    );
    
    input clk, rst;
    input push;
    output push_onepulse;
    // internal registers
    reg push_onepulse_next;
    reg push_debounced_delay;
    reg push_onepulse;
    wire push_debounced;
    
    debounce U0(.clk(clk), .rst(rst), .push(push), .push_debounced(push_debounced));
    
    always @* begin
        push_onepulse_next = push_debounced & ~push_debounced_delay;
    end
    
    always @(posedge clk or posedge rst) 
    begin
        if (~rst) begin
            push_onepulse <= 1'b0; 
            push_debounced_delay <= 1'b0; 
        end else begin
            push_onepulse <= push_onepulse_next;
            push_debounced_delay <=push_debounced;
        end
    end 
endmodule