
z
Command: %s
53*	vivadotcl2I
5synth_design -top downcounter30 -part xc7a35tcpg236-12default:defaultZ4-113h px? 
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
?
%s*synth2?
rStarting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 270.727 ; gain = 64.145
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2!
downcounter302default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
232default:default8@Z8-638h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
tmp_cnt_reg2default:default2
272default:default2
42default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1042default:default8@Z8-3936h px? 
?
?Register %s in module %s is has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4193*oasys2
tmp_clk_reg2default:default2!
downcounter302default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
512default:default8@Z8-5788h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
downcounter302default:default2
12default:default2
12default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
232default:default8@Z8-256h px? 
?
%s*synth2?
sFinished Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 307.246 ; gain = 100.664
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 307.246 ; gain = 100.664
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 307.246 ; gain = 100.664
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
B2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
tmp_clk2default:default2
262default:default2
252default:defaultZ8-5545h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
b2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
!inferring latch for variable '%s'327*oasys2
A_reg2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
682default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
	D_ssd_reg2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
772default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 323.906 ; gain = 117.324
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
.	   2 Input     26 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 1     
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
.	               26 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
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
.	   2 Input     26 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
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
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 2     
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
B
%s
*synth2*
Module downcounter30 
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
.	   2 Input     26 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit       Adders := 1     
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
.	               26 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
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
.	   2 Input     26 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
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
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 2     
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
?
%s*synth2?
?Start Parallel Synthesis Optimization  : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 422.125 ; gain = 215.543
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
N
%s
*synth26
"Start Cross Boundary Optimization
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
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
tmp_clk2default:default2
262default:default2
252default:defaultZ8-5545h px? 
?
+design %s has port %s driven by constant %s3447*oasys2!
downcounter302default:default2
d[3]2default:default2
12default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2!
downcounter302default:default2
d[2]2default:default2
12default:defaultZ8-3917h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary Optimization : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 422.820 ; gain = 216.238
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Parallel Reinference  : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 422.820 ; gain = 216.238
2default:defaulth px? 
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
D
%s
*synth2,
Start Area Optimization
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
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2

\A_reg[0] 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
d_reg[3]2default:default2!
downcounter302default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
d_reg[3]2default:default2
1st2default:default2

d_reg[3]/Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
d_reg[3]2default:default2
2nd2default:default2
VCC2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
d_reg[3]2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
d_reg[2]2default:default2!
downcounter302default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
d_reg[2]2default:default2
1st2default:default2

d_reg[2]/Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
d_reg[2]2default:default2
2nd2default:default2
VCC2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
d_reg[2]2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
d_reg[1]2default:default2!
downcounter302default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2

d_reg[1]/Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
VCC2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
d_reg[0]2default:default2!
downcounter302default:defaultZ8-3332h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default2

d_reg[0]/Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
VCC2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-3352h px? 
?
Lmulti-driven net %s is connected to constant driver, other driver is ignored4012*oasys2
Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
1142default:default8@Z8-5559h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
A_reg[0]2default:default2!
downcounter302default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	cnt_h_reg2default:default2!
downcounter302default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
clk_out_reg2default:default2!
downcounter302default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
zFinished Area Optimization : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Area Optimization  : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
2default:defaulth px? 
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
|Finished Timing Optimization : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
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
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
D_ssd_reg[0]2default:default2!
downcounter302default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Parallel Technology Mapping Optimization  : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
2default:defaulth px? 
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
?
%s*synth2?
?Finished Parallel Synthesis Optimization  : Time (s): cpu = 00:00:08 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
2default:defaulth px? 
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
uFinished IO Insertion : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[7]2default:default2
1st2default:default2
i_90/O2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
482default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[7]2default:default2
2nd2default:default2"
D_ssd_reg[7]/Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
772default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[6]2default:default2
1st2default:default2
i_54/O2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
482default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[6]2default:default2
2nd2default:default2"
D_ssd_reg[6]/Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
772default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[5]2default:default2
1st2default:default2
i_91/O2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
482default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[5]2default:default2
2nd2default:default2"
D_ssd_reg[5]/Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
772default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[4]2default:default2
1st2default:default2
i_92/O2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
482default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[4]2default:default2
2nd2default:default2"
D_ssd_reg[4]/Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
772default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[3]2default:default2
1st2default:default2
i_93/O2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
482default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[3]2default:default2
2nd2default:default2"
D_ssd_reg[3]/Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
772default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[2]2default:default2
1st2default:default2
i_89/O2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
482default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[2]2default:default2
2nd2default:default2"
D_ssd_reg[2]/Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
772default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[1]2default:default2
1st2default:default2
i_94/O2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
482default:default8@Z8-3352h px? 
?
+multi-driven net %s with %s driver pin '%s'3351*oasys2!
D_ssd_OBUF[1]2default:default2
2nd2default:default2"
D_ssd_reg[1]/Q2default:default2x
bC:/Users/HP 15/Desktop/digitaldesignnnn/Lab04/lab40401/lab40401.srcs/sources_1/new/downcounter30.v2default:default2
772default:default8@Z8-3352h px? 
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
I|1     |multi_driven_nets |      0|        7|Failed |Multi driven nets |
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
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
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |     7|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    30|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |     4|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    32|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    14|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |     3|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |     5|
2default:defaulth px? 
D
%s*synth2,
|9     |FDCE   |    35|
2default:defaulth px? 
D
%s*synth2,
|10    |FDPE   |     2|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |     1|
2default:defaulth px? 
D
%s*synth2,
|12    |LD     |    14|
2default:defaulth px? 
D
%s*synth2,
|13    |IBUF   |     2|
2default:defaulth px? 
D
%s*synth2,
|14    |OBUF   |    12|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|1     |top      |       |   162|
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 26 critical warnings and 14 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 443.637 ; gain = 237.055
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 443.637 ; gain = 237.055
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
232default:defaultZ29-17h px? 
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
?
!Unisim Transformation Summary:
%s111*project2[
G  A total of 14 instances were transformed.
  LD => LDCE: 14 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
162default:default2
142default:default2
262default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:102default:default2
00:00:102default:default2
506.7542default:default2
300.1722default:defaultZ17-268h px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.015 . Memory (MB): peak = 506.754 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Mar 17 21:59:00 20192default:defaultZ17-206h px? 


End Record