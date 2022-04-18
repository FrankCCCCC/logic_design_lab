---
title: "Lab 6 - Electronic Clock"
author: 106033233 資工大四 周聖諺(Sheng-Yen Chou)
date: "2022-04-15"
CJKmainfont: "Microsoft JhengHei"
CJKoptions: AutoFakeBold
subject: "Lab 6 - Electronic Clock"
keywords: [Markdown, Pandoc]
titlepage: true, 
titlepage-text-color: "FFFFFF" 
titlepage-rule-color: "360049" 
titlepage-rule-height: 0 
titlepage-background: "background.pdf"
toc-own-page: true
footer-left: false
---

# Lab 6 - Electronic Clock Report

106033233 資工大四 周聖諺(Sheng-Yen Chou)

---

## Finite State Machine

### Design Specification

[fsm.v Source Code](exp_1_1/exp_1_1.srcs/sources_1new/fsm.v)

Output [15:0] state_led, [1:0] display_slide, load_to_disp_alarm, load_to_unitset, time_enable, alarm_enable, stopwatch_enable, stopwatch_restart, stopwatch_lap, [1:0] set_u1_u0,
[4:0] state

Input btn_l, btn_m, btn_r, switch_0, switch_1, switch_alarm, clk, rst_n

### Design Implementation

**State Control**

Use 3 DIP switches to control the states and the activation of the alarm  and some variables only depend on the state, including ``state``, ``load_to_disp_alarm``, ``load_to_unitset``, ``time_enable``, and ``alarm_enable``. The variable ``load_to_disp_alarm`` decides whether to load the output of the module ``unitset`` and ``load_to_unitset`` determine whether to load current digits of the alarm and the time components to module ``unitset``. ``load_to_disp_alarm`` is on in the state ``TIME`` and ``SET``. 

**Time Display and Alarm**

The variables ``time_enable`` and ``alarm_enable`` control whether to enable counting of the modules. Absolutely, ``time_enable`` is enabled in state ``TIME`` and ``alarm_enable`` is enabled in state ``ALARM``.

**Stopwatch**

The variables ``stopwatch_enable``, ``stopwatch_restart``, and ``stopwatch_lap`` control the behavior of the stopwatch module. The implementation is totally the same as the Lab 5-2. The finite state machine controls 2 signals: ``stopwatch_enable`` and ``stopwatch_restart``. The down counter will pause while the signal ``stopwatch_enable`` is at low voltage and resume to count while the signal is at low voltage. It is controlled independently, so I only need to inverse the signal whenever the button right button ``btn_r`` is pressed.

On the other hand, the down counter will reset to 0 when the signal ``stopwatch_restart`` raises. It only depends on ``btn_l`` button, so we only need to inverse the signal whenever the button is clicked. 

**Others**

The variable ``state_led`` controls the LED display of the board and it can simply implemented by switch and if-else condition control. 

``display_slide`` controls the digits that would be displayed in the 7-segment display. 

## Time Component

### Design Specification

[timedisplay.v Source Code](exp_1_1/exp_1_1.srcs/sources_1new/timedisplay.v)

Output year, month, day, hour, min, sec

Input count_enable, load_value_enable, load_value_year, load_value_month, load_value_day, load_value_hour, load_value_min, load_value_sec, clk, rst_n

### Design Implementation

The module is implemented with a series of ``counterx`` module. We can simply cascade the ``counterx`` from the second to the year. Use the carry bit to trigger the next counter. 

For leap year, I design a module called ``datetime_limit`` to count the length of a month. The module will set the length of February in the leap year as 29, otherwise, as 28.

## Setting Component

### Design Specification

[unitset.v Source Code](exp_1_1/exp_1_1.srcs/sources_1new/unitset.v)

Output [8:0] alarm_hour, [8:0] alarm_min, [8:0] year, [8:0] month, [8:0] day, [8:0] hour, [8:0] min, [8:0] sec

Input count_enable, load_value_enable, [8:0] load_alarm_hour, [8:0] load_alarm_min, [8:0] load_year, [8:0] load_month, [8:0] load_day, [8:0] load_hour, [8:0] load_min, [8:0] load_sec, display_slide, clk, rst_n

### Design Implementation

The ``display_slide`` will control the variable ``enabled_counting_digits`` to decide which unit to set up. While ``display_slide`` is 3, 2, 1, 0, the unitset will set the (alarm hour, alarm minute), (year, month), (day, hour) and, (minute, second) individually. The module also support leap years. 

The module is implemented by a series of cascaded counters ``counterx``. The counting would be enabled 

## Alarm Component

## Stopwatch Component

## Conclusion

