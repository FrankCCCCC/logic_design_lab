---
title: "Lab 5 - Timer and Stopwatch"
author: 106033233 資工大四 周聖諺(Sheng-Yen Chou)
date: "2022-03-28"
CJKmainfont: "Microsoft JhengHei"
CJKoptions: AutoFakeBold
subject: "Lab 5 - Timer and Stopwatch"
keywords: [Markdown, Pandoc]
titlepage: true, 
titlepage-text-color: "FFFFFF" 
titlepage-rule-color: "360049" 
titlepage-rule-height: 0 
titlepage-background: "background.pdf"
toc-own-page: true
footer-left: false
---

# Lab 5 - Timer and Stopwatch Report

106033233 資工大四 周聖諺(Sheng-Yen Chou)

---

## Lab 5 - Pre Lab: 40-Second Timer

### Design Specification

[Source Code](./prelab/)

**Debounce**

Input: rst, clk, push

Output: push_debounced

**One Pulse**

Input: rst, clk, push

Output: push_onepulse

**Frequency Divider**

Input: rst, clk

Output: clk_out

**4-bit Synchronous Binary Down Counter**

Input: rst, clk

Output [3:0]q

**1Hz 4-bit Synchronous Binary Down Counter**

Input: rst, clk

Output [3:0]q

### Design Implementation

#### Frequency Divider

To generate the 1 Hz clock, I use variables counter_in and counter_out to count from 0 to 50M. The counter_in will store the value for the next time step and pass the value to the counter_out when the clock raises. The reason why we need  50M counting is each counting is triggered only when the clock raises, so the circuit will count 1 more for every twice clock pulses.

```verilog
`define FREQ_DIV_BITS 30
//`define FREQ_DIV_COUNT `FREQ_DIV_BITS'd1000000
`define FREQ_DIV_COUNT `FREQ_DIV_BITS'd50000000

module frequency_divider(
    clk_out,
//    counter,
    clk,
    rst
    );
    
    input clk;
    input rst;
    output clk_out;
//    output counter;
    
    reg clk_in;
    reg clk_out;
    reg [`FREQ_DIV_BITS-1:0] counter_in;
    reg [`FREQ_DIV_BITS-1:0] counter_out;
    
    always@(counter_out or clk_out)
        if(counter_out < (`FREQ_DIV_COUNT - 1))
        begin
            counter_in <= counter_out + `FREQ_DIV_BITS'd1;
            clk_in <= clk_out;
        end
        else
        begin
            counter_in <= `FREQ_DIV_BITS'd0;
            clk_in <= ~clk_out;
        end
        
    always@(posedge clk or negedge rst)
        if(~rst)
        begin
            counter_out <= `FREQ_DIV_BITS'd0;
            clk_out <= 1'd0;
        end
        else
        begin
            counter_out <= counter_in;
            clk_out <= clk_in;
        end
endmodule
```

#### 4-bit Synchronous Binary Down Counter

To implement the binary down counter, I use a variable q_in to count from 0 to 15. Whenever the output of the counter q changes, the variable q_in should be changed to q - 1. In addition, when the circuit detects the raise of the clock, the output of the counter will change to the variable q_in. On the other hand, if the reset switch to 0 or the counter hits 0, q will be reset to the upper limit 15.

**Verilog Code**

```verilog
`define BCD_COUNTER_BITS 4

module binary_down_counter(
    q,
    clk,
    rst
    );
    
    output [`BCD_COUNTER_BITS-1:0]q;
    input clk;
    input rst;
    
    reg [`BCD_COUNTER_BITS-1:0]q;
    reg [`BCD_COUNTER_BITS-1:0]q_in;
    
    always@(q)
    begin
        q_in <= q - `BCD_COUNTER_BITS'd1;
    end
    
    always@(posedge clk or negedge rst)
    begin
        if(~rst)
        begin
            q <= `BCD_COUNTER_BITS'd0;
        end
        else
        begin
            q <= q_in;
        end
    end
endmodule
```

#### 1 Hz 4-bit Synchronous Binary Down Counter

All we need to do is combine the 1 Hz frequency divider and the 4-bit binary down counter which triggered by the 1 Hz frequency divider.

```verilog
`define BCD_COUNTER_BITS 4
`define RST_HIGH 1'b1

module lab4_1(
    q,
    rst,
    clk
    );
    output [`BCD_COUNTER_BITS-1:0]q;
    input rst;
    input clk;
    
//    reg [`BCD_COUNTER_BITS-1:0]q;
    wire DIV_CLK;
    
    frequency_divider U0(.clk(clk), .rst(rst), .clk_out(DIV_CLK));
    binary_down_counter U1(.clk(DIV_CLK), .rst(rst), .q(q));
endmodule
```

### I/O Pin Assignment

| I/O | clk | rst | q[0] | q[1] | q[2] | q[3] |
|-----|----|-----|-----|-----|-----|-----|
| LOC | W5 | V17 | U16 | E19 | U19 | V19 |

### Block Diagram

![Lab 4-1 Logic Diagram](img/lab4-1_diag.png)

### RTL Simulation

![Lab 4-1 RTL Simulation](img/lab4-1_sim.png)