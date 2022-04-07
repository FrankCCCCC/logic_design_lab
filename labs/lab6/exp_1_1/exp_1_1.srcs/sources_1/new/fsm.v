`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2022 10:20:41 PM
// Design Name: 
// Module Name: fsm
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

module fsm(
    output reg [`STATE_LED_N-1:0] state_led,
    output reg set_enable,
    output reg data_load_enable,
    output reg reg_load_enable,
    output btn_m_short,
    output btn_m_long,
    output reg [`DISPLAY_SLIDE_BITS_N-1:0] display_slide,
    output reg [1:0] set_u1_u0,
    output reg [`STATE_BITS_N-1:0] state,
    input btn_l,
    input btn_m,
    input btn_r,
    input switch_0,
    input switch_1,
    input clk,
    input rst_n
);

reg [`DISPLAY_SLIDE_BITS_N-1:0] display_slide_next;
reg [`STATE_BITS_N-1:0] state_next;
wire btn_m_short, btn_m_long;
wire btn_r_debounced;
wire btn_l_debounced;

// Determine short press or long press
onepulse SwitchBtn(.rst(rst_n), .clk(clk), .push(btn_m), .push_onepulse(btn_m_short), .push_onepulse_long(btn_m_long));
onepulse RBtn(.rst(rst_n), .clk(clk), .push(btn_r), .push_debounced(btn_r_debounced));
onepulse LBtn(.rst(rst_n), .clk(clk), .push(btn_l), .push_debounced(btn_l_debounced));

//wire Press_Merge;
//assign Press_Merge = short_press | long_press;

initial begin
    set_enable = `DISABLED;
    data_load_enable = `DISABLED;
    set_u1_u0 = {2{`DISABLED}};
    reg_load_enable = `DISABLED;
    state = `TIME_DISP;
    state_next = `TIME_DISP;
    display_slide_next = `DISPLAY_SLIDE_BITS_N'd1;
    
    state_led = `STATE_LED_N'd0;
end

always@(*) begin
    case (state[`STATE_BITS_N-1:`STATE_BITS_N-2])
        `SET: begin
            set_u1_u0 <= {btn_l_debounced, btn_r_debounced};
        end
        default: begin
            set_u1_u0 <= {2{`DISABLED}};
        end
    endcase
end

always@(posedge btn_m_short) begin
    case (state[`STATE_BITS_N-1:`STATE_BITS_N-2])
        `TIME: begin
            if(display_slide < `DISPLAY_SLIDE_BITS_N'd3) begin
                display_slide_next <= display_slide + `DISPLAY_SLIDE_BITS_N'd1;
            end else begin
                display_slide_next <= `DISPLAY_SLIDE_BITS_N'd1;
            end
         end
         `SET: begin
            if(display_slide < `DISPLAY_SLIDE_BITS_N'd3) begin
                display_slide_next <= display_slide + `DISPLAY_SLIDE_BITS_N'd1;
            end else begin
                display_slide_next <= `DISPLAY_SLIDE_BITS_N'd0;
            end
         end
    endcase
end

// state transition
always @(switch_1 or switch_0) begin
    case ({switch_1, switch_0})
    2'b00: begin
        state_next <= `TIME_DISP;
        data_load_enable <= `DISABLED;
        reg_load_enable <= `ENABLED;
    end
    2'b01: begin
        state_next <= `SET_DISP;
        data_load_enable <= `ENABLED;
        reg_load_enable <= `DISABLED;
    end
    2'b10: begin
        state_next <= `STW_DISP;
        data_load_enable <= `DISABLED;
        reg_load_enable <= `DISABLED;
    end
    default: begin
        state_next <= `TIME_DISP; 
    end
    endcase
end

// state register
always @(clk or rst_n) begin
    if (~rst_n) begin
        state <= `TIME_DISP;
        display_slide <= `DISPLAY_SLIDE_BITS_N'd1;
    end else begin
        state <= state_next;
        display_slide <= display_slide_next;
    end
    
    if(state[`STATE_BITS_N-1:`STATE_BITS_N-2] == `TIME) begin
        state_led[`STATE_LED_N-1:`STATE_LED_N-4] <= 0; 
        case (display_slide)
            `DISPLAY_SLIDE_BITS_N'd0: begin
                state_led[`STATE_LED_N-5:0] <= 1;
            end
            `DISPLAY_SLIDE_BITS_N'd1: begin
                state_led[`STATE_LED_N-5:0] <= 2;
            end
            `DISPLAY_SLIDE_BITS_N'd2: begin
                state_led[`STATE_LED_N-5:0] <= 4;
            end
            `DISPLAY_SLIDE_BITS_N'd3: begin
                state_led[`STATE_LED_N-5:0] <= 8;
            end
            default: begin
                state_led[`STATE_LED_N-5:0] <= 0;
            end
        endcase
    end else if(state[`STATE_BITS_N-1:`STATE_BITS_N-2] == `SET) begin
        state_led[`STATE_LED_N-5:0] <= 0; 
        case (display_slide)
            `DISPLAY_SLIDE_BITS_N'd0: begin
                state_led[`STATE_LED_N-1:`STATE_LED_N-4] <= 1;
            end
            `DISPLAY_SLIDE_BITS_N'd1: begin
                state_led[`STATE_LED_N-1:`STATE_LED_N-4] <= 2;
            end
            `DISPLAY_SLIDE_BITS_N'd2: begin
                state_led[`STATE_LED_N-1:`STATE_LED_N-4] <= 4;
            end
            `DISPLAY_SLIDE_BITS_N'd3: begin
                state_led[`STATE_LED_N-1:`STATE_LED_N-4] <= 8;
            end
            default: begin
                state_led[`STATE_LED_N-1:`STATE_LED_N-4] <= 0;
            end
        endcase
    end else begin
        state_led[`STATE_LED_N-1:0] <= 0; 
    end
end 

endmodule

