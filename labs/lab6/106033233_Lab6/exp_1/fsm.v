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
    output reg load_to_disp_alarm,
    output reg load_to_unitset,
    output reg alarm_enable,
    output reg time_enable,
    output reg stopwatch_enable,
    output reg stopwatch_restart,
    output reg stopwatch_lap,
    output btn_m_short,
    output btn_m_debounce_long,
    output btn_r_short,
    output btn_r_debounced,
    output btn_l_short,
    output btn_l_long, 
    output btn_l_debounced,
    output reg [`DISPLAY_SLIDE_BITS_N-1:0] display_slide,
    output reg [1:0] set_u1_u0,
    output reg [`STATE_BITS_N-1:0] state,
    input btn_l,
    input btn_m,
    input btn_r,
    input switch_0,
    input switch_1,
    input switch_alarm,
    input clk,
    input rst_n
);

reg [`DISPLAY_SLIDE_BITS_N-1:0] display_slide_next;
wire btn_m_short, btn_m_debounce_long;
wire btn_r_short, btn_r_debounced;
wire btn_l_short, btn_l_long, btn_l_debounced;

// Determine short press or long press
onepulse SwitchBtn(.rst(rst_n), .clk(clk), .push(btn_m), .push_onepulse(btn_m_short), .push_debounced_long(btn_m_debounce_long));
onepulse RBtn(.rst(rst_n), .clk(clk), .push(btn_r), .push_debounced(btn_r_debounced), .push_onepulse(btn_r_short));
onepulse LBtn(.rst(rst_n), .clk(clk), .push(btn_l), .push_debounced(btn_l_debounced), .push_onepulse(btn_l_short), .push_onepulse_long(btn_l_long));

initial begin
    set_enable = `DISABLED;
    load_to_disp_alarm = `DISABLED;
    set_u1_u0 = {2{`DISABLED}};
    load_to_unitset = `DISABLED;
    state = `TIME_DISP;
    display_slide_next = `DISPLAY_SLIDE_BITS_N'd1;
    
    state_led = `STATE_LED_N'd0;
    
    // Stopwatch
    stopwatch_enable <= `ENABLED;
    stopwatch_restart <= `DISABLED;
    stopwatch_lap <= `DISABLED;
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

// Stopwatch
// Stopwatch Restart
always@(posedge btn_l_long) begin
    case ({switch_1, switch_0})
        2'b10: begin
            stopwatch_restart <= ~stopwatch_restart;
        end
//        default: begin
//            stopwatch_restart <= `DISABLED;
//        end
    endcase
end
// Stopwatch Lap
always@(posedge btn_l_short) begin
    case ({switch_1, switch_0})
        2'b10: begin
            stopwatch_lap <= ~stopwatch_lap;
        end
//        default: begin
//            stopwatch_lap <= `DISABLED;
//        end
    endcase
end

// Stopwatch Pause/Resume
always@(posedge btn_r_short) begin
    case ({switch_1, switch_0})
        2'b10: begin
            stopwatch_enable <= ~stopwatch_enable;
        end
//        default: begin
//            stopwatch_enable <= `ENABLED;
//        end
    endcase
end

// state transition
always @(switch_1 or switch_0) begin
    case ({switch_1, switch_0})
    2'b00: begin
        // Time
        state <= `TIME_DISP;
        load_to_disp_alarm <= `DISABLED;
        load_to_unitset <= `ENABLED;
        time_enable <= `ENABLED;
        if(switch_alarm) begin
            alarm_enable <= `ENABLED;
        end else begin
            alarm_enable <= `DISABLED;
        end
    end
    2'b01: begin
        // Set
        state <= `SET_DISP;
        load_to_disp_alarm <= `ENABLED;
        load_to_unitset <= `DISABLED;
        time_enable <= `DISABLED;
        alarm_enable <= `DISABLED;
    end
    2'b10: begin
        // Stopwatch
        state <= `STW_DISP;
        load_to_disp_alarm <= `DISABLED;
        load_to_unitset <= `DISABLED;
        time_enable <= `ENABLED;
        alarm_enable <= `DISABLED;
    end
    default: begin
        state <= `TIME_DISP;
        load_to_disp_alarm <= `DISABLED;
        load_to_unitset <= `ENABLED;
        time_enable <= `ENABLED;
        if(switch_alarm) begin
            alarm_enable <= `ENABLED;
        end else begin
            alarm_enable <= `DISABLED;
        end
    end
    endcase
end

always@(*) begin
    // State LEDs
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

// display_slide
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

always @(clk or rst_n) begin
    if (~rst_n) begin
        display_slide <= `DISPLAY_SLIDE_BITS_N'd1;
    end else begin
        if(state[`STATE_BITS_N-1:`STATE_BITS_N-2] == `TIME && btn_m_debounce_long) begin
            display_slide <= `DISPLAY_SLIDE_BITS_N'd0;
        end else begin 
            display_slide <= display_slide_next;
        end
    end
end 

endmodule

