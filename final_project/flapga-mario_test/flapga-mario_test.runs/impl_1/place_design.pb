
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 1cf910245
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.025 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 156b6d848
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 1657f7bff
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 1657f7bff
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 1657f7bff
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 161e5cba1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:08 ; elapsed = 00:00:06 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
2.2.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
t
7Found %s candidate LUT instances to create LUTNM shape
536*physynth2
882default:defaultZ32-1018h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
412default:default2!
nets or cells2default:default2
22default:default2
cells2default:default2
392default:default2
cells2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2Z
!cloud_bg/address_reg_0_0_i_14_n_0!cloud_bg/address_reg_0_0_i_14_n_02default:default2R
cloud_bg/address_reg_0_0_i_14	cloud_bg/address_reg_0_0_i_142default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2Z
!cloud_bg/address_reg_0_0_i_13_n_0!cloud_bg/address_reg_0_0_i_13_n_02default:default2R
cloud_bg/address_reg_0_0_i_13	cloud_bg/address_reg_0_0_i_132default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default2R
cloud_bg/address_reg_0_0_i_15	cloud_bg/address_reg_0_0_i_152default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2Z
!cloud_bg/address_reg_0_0_i_10_n_0!cloud_bg/address_reg_0_0_i_10_n_02default:default2R
cloud_bg/address_reg_0_0_i_10	cloud_bg/address_reg_0_0_i_102default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2Z
!cloud_bg/address_reg_0_0_i_11_n_0!cloud_bg/address_reg_0_0_i_11_n_02default:default2R
cloud_bg/address_reg_0_0_i_11	cloud_bg/address_reg_0_0_i_112default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2Z
!cloud_bg/address_reg_0_0_i_12_n_0!cloud_bg/address_reg_0_0_i_12_n_02default:default2R
cloud_bg/address_reg_0_0_i_12	cloud_bg/address_reg_0_0_i_122default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2Z
!cloud_bg/address_reg_0_0_i_16_n_0!cloud_bg/address_reg_0_0_i_16_n_02default:default2R
cloud_bg/address_reg_0_0_i_16	cloud_bg/address_reg_0_0_i_162default:default8Z32-117h px? 
?
DNet %s could not be optimized because driver %s could not be cloned
117*physynth2Z
!cloud_bg/address_reg_0_0_i_17_n_0!cloud_bg/address_reg_0_0_i_17_n_02default:default2R
cloud_bg/address_reg_0_0_i_17	cloud_bg/address_reg_0_0_i_172default:default8Z32-117h px? 
P
.No nets found for critical-cell optimization.
68*physynthZ32-68h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  LUT Combining                                    |            2  |             39  |                    41  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Cell                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            2  |             39  |                    41  |           0  |           8  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
T
?Phase 2.2.1 Physical Synthesis In Placer | Checksum: 230c2e22d
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:27 ; elapsed = 00:00:19 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
K
6Phase 2.2 Global Placement Core | Checksum: 1cab3eed3
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:28 ; elapsed = 00:00:19 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 1cab3eed3
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:28 ; elapsed = 00:00:19 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1af768799
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:29 ; elapsed = 00:00:20 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1fcd27b66
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:32 ; elapsed = 00:00:22 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1d0c3a8bd
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:32 ; elapsed = 00:00:22 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 23b71f492
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:32 ; elapsed = 00:00:22 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.5 Fast Optimization | Checksum: 24d4c7651
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:39 ; elapsed = 00:00:29 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 288fbb966
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:42 ; elapsed = 00:00:31 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 2b30a1ff2
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:43 ; elapsed = 00:00:32 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 2385fd3e5
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:43 ; elapsed = 00:00:32 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.9 Fast Optimization | Checksum: 1cf4f9d9b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:48 ; elapsed = 00:00:37 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 1cf4f9d9b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:48 ; elapsed = 00:00:37 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
V
APost Placement Optimization Initialization | Checksum: 23d28415b
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-56h px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 23d28415b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:50 ; elapsed = 00:00:38 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-7.0902default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 20d8fbadf
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:19 ; elapsed = 00:01:13 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 20d8fbadf
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:19 ; elapsed = 00:01:13 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 20d8fbadf
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:19 ; elapsed = 00:01:13 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 20d8fbadf
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:19 ; elapsed = 00:01:13 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 14d63779f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:20 ; elapsed = 00:01:13 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 14d63779f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:20 ; elapsed = 00:01:13 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
=
(Ending Placer Task | Checksum: 6742cc29
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:20 ; elapsed = 00:01:13 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
832default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:01:242default:default2
00:01:152default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2 
00:00:00.7032default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2^
JD:/flapga-mario_test/flapga-mario_test.runs/impl_1/flapga_mario_placed.dcp2default:defaultZ17-1381h px? 
g
%s4*runtcl2K
7Executing : report_io -file flapga_mario_io_placed.rpt
2default:defaulth px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.112 . Memory (MB): peak = 1763.469 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2?
pExecuting : report_utilization -file flapga_mario_utilization_placed.rpt -pb flapga_mario_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2h
TExecuting : report_control_sets -verbose -file flapga_mario_control_sets_placed.rpt
2default:defaulth px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.018 . Memory (MB): peak = 1763.469 ; gain = 0.000
*commonh px? 


End Record