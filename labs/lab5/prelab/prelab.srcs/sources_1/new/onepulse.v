`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2022 09:47:23 PM
// Design Name: 
// Module Name: onepulse
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
    
    initial begin
        push_onepulse = 1'b0;
        push_onepulse_next = 1'b0;
    end
    
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

