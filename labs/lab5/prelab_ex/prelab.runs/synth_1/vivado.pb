
v
Command: %s
53*	vivadotcl2E
1synth_design -top stopwatch -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 948.480 ; gain = 233.781
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
	stopwatch2default:default2
 2default:default2e
OD:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/sources_1/new/stopwatch.v2default:default2
242default:default8@Z8-6157h px? 
?
default block is never used226*oasys2e
OD:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/sources_1/new/stopwatch.v2default:default2
462default:default8@Z8-226h px? 
?
synthesizing module '%s'%s4497*oasys2
downcounter2default:default2
 2default:default2g
QD:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/sources_1/new/downcounter.v2default:default2
252default:default8@Z8-6157h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
	value_reg2default:default2
downcounter2default:default2g
QD:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/sources_1/new/downcounter.v2default:default2
742default:default8@Z8-5788h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
downcounter2default:default2
 2default:default2
12default:default2
12default:default2g
QD:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/sources_1/new/downcounter.v2default:default2
252default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	stopwatch2default:default2
 2default:default2
22default:default2
12default:default2e
OD:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/sources_1/new/stopwatch.v2default:default2
242default:default8@Z8-6155h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1021.215 ; gain = 306.516
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1021.215 ; gain = 306.516
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1021.215 ; gain = 306.516
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1021.2152default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
D_OUT[7]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
12default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
12default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[6]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
22default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
22default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[5]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
32default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
32default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[4]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
42default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
42default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[3]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
52default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
52default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[2]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
62default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
62default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[1]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
72default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
72default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[0]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
82default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
82default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[7]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
92default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
92default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[6]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
102default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
102default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[5]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
112default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
112default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[4]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
122default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
122default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[3]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
132default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
132default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[2]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
142default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
142default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[1]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
152default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
152default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[0]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
162default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
162default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_SEL[3]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
172default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
172default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_SEL[2]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
182default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
182default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_SEL[1]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
192default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
192default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_SEL[0]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
202default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
202default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[2]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
252default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
252default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[1]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
262default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
262default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[0]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
272default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
272default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_SEL[0]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
282default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
282default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_SEL[1]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
292default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
292default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_SEL[2]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
302default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
302default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_SEL[3]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
312default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
312default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[0]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
322default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
322default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[1]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
332default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
332default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[2]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
342default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
342default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[3]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
352default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
352default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[4]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
362default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
362default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[5]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
372default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
372default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[6]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
382default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
382default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
q[7]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
392default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
392default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[3]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
412default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
412default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[4]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
422default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
422default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[5]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
432default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
432default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[6]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
442default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
442default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
D_OUT[7]2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
452default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2
452default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2d
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2b
ND:/data/logic_design_lab/labs/lab5/prelab/prelab.srcs/constrs_1/new/prelab.xdc2default:default2/
.Xil/stopwatch_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1105.5162default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1105.5162default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1105.516 ; gain = 390.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1105.516 ; gain = 390.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1105.516 ; gain = 390.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1105.516 ; gain = 390.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
>
%s
*synth2&
Module stopwatch 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
@
%s
*synth2(
Module downcounter 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1105.516 ; gain = 390.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1105.516 ; gain = 390.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1105.516 ; gain = 390.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1105.582 ; gain = 390.883
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1121.383 ; gain = 406.684
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1121.383 ; gain = 406.684
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1121.383 ; gain = 406.684
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1121.383 ; gain = 406.684
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1121.383 ; gain = 406.684
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1121.383 ; gain = 406.684
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|1     |BUFG |     1|
2default:defaulth px? 
B
%s*synth2*
|2     |LUT2 |     2|
2default:defaulth px? 
B
%s*synth2*
|3     |LUT3 |     3|
2default:defaulth px? 
B
%s*synth2*
|4     |LUT4 |     4|
2default:defaulth px? 
B
%s*synth2*
|5     |LUT5 |     1|
2default:defaulth px? 
B
%s*synth2*
|6     |LUT6 |    13|
2default:defaulth px? 
B
%s*synth2*
|7     |FDCE |     7|
2default:defaulth px? 
B
%s*synth2*
|8     |FDPE |     4|
2default:defaulth px? 
B
%s*synth2*
|9     |LDC  |     2|
2default:defaulth px? 
B
%s*synth2*
|10    |IBUF |     4|
2default:defaulth px? 
B
%s*synth2*
|11    |OBUF |     8|
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
U
%s
*synth2=
)+------+---------+--------------+------+
2default:defaulth p
x
? 
U
%s
*synth2=
)|      |Instance |Module        |Cells |
2default:defaulth p
x
? 
U
%s
*synth2=
)+------+---------+--------------+------+
2default:defaulth p
x
? 
U
%s
*synth2=
)|1     |top      |              |    49|
2default:defaulth p
x
? 
U
%s
*synth2=
)|2     |  Udc0   |downcounter   |    20|
2default:defaulth p
x
? 
U
%s
*synth2=
)|3     |  Udc1   |downcounter_0 |    16|
2default:defaulth p
x
? 
U
%s
*synth2=
)+------+---------+--------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1121.383 ; gain = 406.684
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:20 ; elapsed = 00:00:26 . Memory (MB): peak = 1121.383 ; gain = 322.383
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1121.383 ; gain = 406.684
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1133.4062default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
22default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1138.2582default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2Z
F  A total of 2 instances were transformed.
  LDC => LDCE: 2 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
172default:default2
412default:default2
402default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:332default:default2
00:00:352default:default2
1138.2582default:default2
711.9182default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1138.2582default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2_
KD:/data/logic_design_lab/labs/lab5/prelab/prelab.runs/synth_1/stopwatch.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file stopwatch_utilization_synth.rpt -pb stopwatch_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Mar 24 20:48:05 20222default:defaultZ17-206h px? 


End Record