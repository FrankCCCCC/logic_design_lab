
T
Command: %s
53*	vivadotcl2#
phys_opt_design2default:defaultZ4-113h px? 
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
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px? 
?
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
22default:defaultZ32-721h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.0902default:default2
	-1271.0472default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 2046f9368
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.0902default:default2
	-1271.0472default:defaultZ32-619h px? 
z

Phase %s%s
101*constraints2
2 2default:default2-
DSP Register Optimization2default:defaultZ18-101h px? 
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
M
8Phase 2 DSP Register Optimization | Checksum: 2046f9368
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
3 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.0902default:default2
	-1271.0472default:defaultZ32-619h px? 
?
\Property '%s' on BRAM cell '%s' Port '%s' is 0. Skip BRAM Register Optimization on the port
328*physynth2 
READ_WIDTH_B2default:default2J
cloud_bg/address_reg_1_10	cloud_bg/address_reg_1_102default:default2
B2default:default8Z32-614h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
cloud_bg/out[10]cloud_bg/out[10]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2<
vga_sync_unit/x[3]vga_sync_unit/x[3]2default:default2X
 vga_sync_unit/h_count_reg_reg[3]	 vga_sync_unit/h_count_reg_reg[3]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
vga_sync_unit/x[3]vga_sync_unit/x[3]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-7.0642default:default2
	-1266.0552default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2<
vga_sync_unit/x[0]vga_sync_unit/x[0]2default:default2X
 vga_sync_unit/h_count_reg_reg[0]	 vga_sync_unit/h_count_reg_reg[0]2default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2<
vga_sync_unit/x[0]vga_sync_unit/x[0]2default:default8Z32-572h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
vga_sync_unit/x[0]vga_sync_unit/x[0]2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_23_n_0!cloud_bg/address_reg_0_0_i_23_n_02default:default2R
cloud_bg/address_reg_0_0_i_23	cloud_bg/address_reg_0_0_i_232default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2Z
!cloud_bg/address_reg_0_0_i_14_n_0!cloud_bg/address_reg_0_0_i_14_n_02default:default2\
"cloud_bg/address_reg_0_0_i_14_comp	"cloud_bg/address_reg_0_0_i_14_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_23_n_0!cloud_bg/address_reg_0_0_i_23_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.9362default:default2
	-1260.6072default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_23_n_0!cloud_bg/address_reg_0_0_i_23_n_02default:default2R
cloud_bg/address_reg_0_0_i_23	cloud_bg/address_reg_0_0_i_232default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2Z
!cloud_bg/address_reg_0_0_i_13_n_0!cloud_bg/address_reg_0_0_i_13_n_02default:default2\
"cloud_bg/address_reg_0_0_i_13_comp	"cloud_bg/address_reg_0_0_i_13_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_23_n_0!cloud_bg/address_reg_0_0_i_23_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.8912default:default2
	-1254.1272default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_23_n_0!cloud_bg/address_reg_0_0_i_23_n_02default:default2R
cloud_bg/address_reg_0_0_i_23	cloud_bg/address_reg_0_0_i_232default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!cloud_bg/address_reg_0_0_i_23_n_0!cloud_bg/address_reg_0_0_i_23_n_02default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_20_n_0!cloud_bg/address_reg_0_0_i_20_n_02default:default2R
cloud_bg/address_reg_0_0_i_20	cloud_bg/address_reg_0_0_i_202default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_20_n_0!cloud_bg/address_reg_0_0_i_20_n_02default:default8Z32-572h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_20_n_0!cloud_bg/address_reg_0_0_i_20_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.8272default:default2
	-1235.6472default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_21_n_7address_reg_0_0_i_21_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_19_n_0address_reg_0_0_i_19_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_31_n_0address_reg_0_0_i_31_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_46_n_7address_reg_0_0_i_46_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_47_n_0address_reg_0_0_i_47_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_73_n_0address_reg_0_0_i_73_n_02default:default8Z32-702h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default8Z32-572h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default2@
address_reg_0_0_i_45	address_reg_0_0_i_452default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default8Z32-572h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2H
address_reg_0_0_i_44_n_0address_reg_0_0_i_44_n_02default:default2@
address_reg_0_0_i_44	address_reg_0_0_i_442default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default2J
address_reg_0_0_i_45_comp	address_reg_0_0_i_45_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2H
address_reg_0_0_i_44_n_0address_reg_0_0_i_44_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.3692default:default2
	-1147.7112default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_48_n_1address_reg_0_0_i_48_n_12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_80_n_0address_reg_0_0_i_80_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_50_n_6address_reg_0_0_i_50_n_62default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_85_n_0address_reg_0_0_i_85_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
address_reg_0_0_i_118_n_0address_reg_0_0_i_118_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_43_n_5address_reg_0_0_i_43_n_52default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2H
address_reg_0_0_i_58_n_0address_reg_0_0_i_58_n_02default:default2@
address_reg_0_0_i_58	address_reg_0_0_i_582default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_58_n_0address_reg_0_0_i_58_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_98_n_7address_reg_0_0_i_98_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_99_n_0address_reg_0_0_i_99_n_02default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2J
address_reg_0_0_i_128_n_0address_reg_0_0_i_128_n_02default:default2B
address_reg_0_0_i_128	address_reg_0_0_i_1282default:default8Z32-662h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2J
address_reg_0_0_i_128_n_0address_reg_0_0_i_128_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.3632default:default2
	-1146.5592default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2<
vga_sync_unit/x[7]vga_sync_unit/x[7]2default:default2X
 vga_sync_unit/h_count_reg_reg[7]	 vga_sync_unit/h_count_reg_reg[7]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
vga_sync_unit/x[7]vga_sync_unit/x[7]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.3482default:default2
	-1143.6792default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2<
vga_sync_unit/x[4]vga_sync_unit/x[4]2default:default2X
 vga_sync_unit/h_count_reg_reg[4]	 vga_sync_unit/h_count_reg_reg[4]2default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
vga_sync_unit/x[4]vga_sync_unit/x[4]2default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2J
address_reg_0_0_i_132_n_0address_reg_0_0_i_132_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.3352default:default2
	-1141.1822default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
address_reg_0_0_i_123_n_0address_reg_0_0_i_123_n_02default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2J
address_reg_0_0_i_155_n_0address_reg_0_0_i_155_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.2332default:default2
	-1121.5992default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2J
address_reg_0_0_i_128_n_0address_reg_0_0_i_128_n_02default:default2B
address_reg_0_0_i_128	address_reg_0_0_i_1282default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
address_reg_0_0_i_128_n_0address_reg_0_0_i_128_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
vga_sync_unit/x2[9]vga_sync_unit/x2[9]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2d
&vga_sync_unit/address_reg_0_0_i_82_n_0&vga_sync_unit/address_reg_0_0_i_82_n_02default:default8Z32-702h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2f
'vga_sync_unit/address_reg_0_0_i_114_n_0'vga_sync_unit/address_reg_0_0_i_114_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.2322default:default2
	-1121.4072default:defaultZ32-619h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2J
address_reg_0_0_i_153_n_0address_reg_0_0_i_153_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.2182default:default2
	-1118.7192default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
vga_sync_unit/x2[7]vga_sync_unit/x2[7]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
'vga_sync_unit/address_reg_0_0_i_110_n_0'vga_sync_unit/address_reg_0_0_i_110_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
'vga_sync_unit/address_reg_0_0_i_144_n_0'vga_sync_unit/address_reg_0_0_i_144_n_02default:default8Z32-702h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2Z
!cloud_bg/address_reg_0_0_i_14_n_0!cloud_bg/address_reg_0_0_i_14_n_02default:default2
12default:default8Z32-81h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_14_n_0!cloud_bg/address_reg_0_0_i_14_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.1952default:default2
	-1119.0062default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_19_n_4address_reg_0_0_i_19_n_42default:default8Z32-702h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-572h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default2R
cloud_bg/address_reg_0_0_i_15	cloud_bg/address_reg_0_0_i_152default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-572h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
cloud_bg/out[10]cloud_bg/out[10]2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2<
vga_sync_unit/x[0]vga_sync_unit/x[0]2default:default2X
 vga_sync_unit/h_count_reg_reg[0]	 vga_sync_unit/h_count_reg_reg[0]2default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
vga_sync_unit/x[0]vga_sync_unit/x[0]2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_23_n_0!cloud_bg/address_reg_0_0_i_23_n_02default:default2R
cloud_bg/address_reg_0_0_i_23	cloud_bg/address_reg_0_0_i_232default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!cloud_bg/address_reg_0_0_i_23_n_0!cloud_bg/address_reg_0_0_i_23_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_19_n_4address_reg_0_0_i_19_n_42default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_31_n_0address_reg_0_0_i_31_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_46_n_7address_reg_0_0_i_46_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_73_n_0address_reg_0_0_i_73_n_02default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default2J
address_reg_0_0_i_45_comp	address_reg_0_0_i_45_comp2default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_48_n_1address_reg_0_0_i_48_n_12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_80_n_0address_reg_0_0_i_80_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_50_n_6address_reg_0_0_i_50_n_62default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
address_reg_0_0_i_118_n_0address_reg_0_0_i_118_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_43_n_5address_reg_0_0_i_43_n_52default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2H
address_reg_0_0_i_58_n_0address_reg_0_0_i_58_n_02default:default2@
address_reg_0_0_i_58	address_reg_0_0_i_582default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_58_n_0address_reg_0_0_i_58_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_98_n_7address_reg_0_0_i_98_n_72default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2J
address_reg_0_0_i_128_n_0address_reg_0_0_i_128_n_02default:default2B
address_reg_0_0_i_128	address_reg_0_0_i_1282default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
address_reg_0_0_i_128_n_0address_reg_0_0_i_128_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
vga_sync_unit/x2[7]vga_sync_unit/x2[7]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
'vga_sync_unit/address_reg_0_0_i_144_n_0'vga_sync_unit/address_reg_0_0_i_144_n_02default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default2R
cloud_bg/address_reg_0_0_i_15	cloud_bg/address_reg_0_0_i_152default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.1952default:default2
	-1119.0062default:defaultZ32-619h px? 
N
9Phase 3 Critical Path Optimization | Checksum: 2046f9368
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:17 ; elapsed = 00:00:11 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
4 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.1952default:default2
	-1119.0062default:defaultZ32-619h px? 
?
\Property '%s' on BRAM cell '%s' Port '%s' is 0. Skip BRAM Register Optimization on the port
328*physynth2 
READ_WIDTH_B2default:default2J
cloud_bg/address_reg_1_10	cloud_bg/address_reg_1_102default:default2
B2default:default8Z32-614h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
cloud_bg/out[10]cloud_bg/out[10]2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2<
vga_sync_unit/x[0]vga_sync_unit/x[0]2default:default2X
 vga_sync_unit/h_count_reg_reg[0]	 vga_sync_unit/h_count_reg_reg[0]2default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2<
vga_sync_unit/x[0]vga_sync_unit/x[0]2default:default8Z32-572h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
vga_sync_unit/x[0]vga_sync_unit/x[0]2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_23_n_0!cloud_bg/address_reg_0_0_i_23_n_02default:default2R
cloud_bg/address_reg_0_0_i_23	cloud_bg/address_reg_0_0_i_232default:default8Z32-662h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default2\
"cloud_bg/address_reg_0_0_i_15_comp	"cloud_bg/address_reg_0_0_i_15_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_23_n_0!cloud_bg/address_reg_0_0_i_23_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.1942default:default2
	-1118.6712default:defaultZ32-619h px? 
?
\Property '%s' on BRAM cell '%s' Port '%s' is 0. Skip BRAM Register Optimization on the port
328*physynth2 
READ_WIDTH_B2default:default2H
cloud_bg/address_reg_0_1	cloud_bg/address_reg_0_12default:default2
B2default:default8Z32-614h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
cloud_bg/address_reg_0_1_n_0cloud_bg/address_reg_0_1_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_21_n_7address_reg_0_0_i_21_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_19_n_0address_reg_0_0_i_19_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_31_n_0address_reg_0_0_i_31_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_46_n_7address_reg_0_0_i_46_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_47_n_0address_reg_0_0_i_47_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_73_n_0address_reg_0_0_i_73_n_02default:default8Z32-702h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default8Z32-572h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default2J
address_reg_0_0_i_45_comp	address_reg_0_0_i_45_comp2default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default8Z32-572h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_48_n_1address_reg_0_0_i_48_n_12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_80_n_0address_reg_0_0_i_80_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_50_n_6address_reg_0_0_i_50_n_62default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_85_n_0address_reg_0_0_i_85_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
address_reg_0_0_i_118_n_0address_reg_0_0_i_118_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_43_n_5address_reg_0_0_i_43_n_52default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2H
address_reg_0_0_i_58_n_0address_reg_0_0_i_58_n_02default:default2@
address_reg_0_0_i_58	address_reg_0_0_i_582default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_58_n_0address_reg_0_0_i_58_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_98_n_7address_reg_0_0_i_98_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_99_n_0address_reg_0_0_i_99_n_02default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2J
address_reg_0_0_i_128_n_0address_reg_0_0_i_128_n_02default:default2B
address_reg_0_0_i_128	address_reg_0_0_i_1282default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
address_reg_0_0_i_128_n_0address_reg_0_0_i_128_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
vga_sync_unit/x2[7]vga_sync_unit/x2[7]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
'vga_sync_unit/address_reg_0_0_i_110_n_0'vga_sync_unit/address_reg_0_0_i_110_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
'vga_sync_unit/address_reg_0_0_i_144_n_0'vga_sync_unit/address_reg_0_0_i_144_n_02default:default8Z32-702h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2Z
!cloud_bg/address_reg_0_0_i_14_n_0!cloud_bg/address_reg_0_0_i_14_n_02default:default2
12default:default8Z32-81h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_14_n_0!cloud_bg/address_reg_0_0_i_14_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.1842default:default2
	-1118.6492default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_20_n_0!cloud_bg/address_reg_0_0_i_20_n_02default:default2R
cloud_bg/address_reg_0_0_i_20	cloud_bg/address_reg_0_0_i_202default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_20_n_0!cloud_bg/address_reg_0_0_i_20_n_02default:default8Z32-572h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!cloud_bg/address_reg_0_0_i_20_n_0!cloud_bg/address_reg_0_0_i_20_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_19_n_7address_reg_0_0_i_19_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_24_n_0address_reg_0_0_i_24_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_38_n_0address_reg_0_0_i_38_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_47_n_5address_reg_0_0_i_47_n_52default:default8Z32-702h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-572h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default2\
"cloud_bg/address_reg_0_0_i_15_comp	"cloud_bg/address_reg_0_0_i_15_comp2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.1752default:default2
	-1118.4022default:defaultZ32-619h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-572h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default2\
"cloud_bg/address_reg_0_0_i_15_comp	"cloud_bg/address_reg_0_0_i_15_comp2default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-572h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.1472default:default2
	-1116.0012default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2d
&cloud_bg/address_reg_0_0_i_14_n_0_repN&cloud_bg/address_reg_0_0_i_14_n_0_repN2default:default2l
*cloud_bg/address_reg_0_0_i_14_comp_replica	*cloud_bg/address_reg_0_0_i_14_comp_replica2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2d
&cloud_bg/address_reg_0_0_i_14_n_0_repN&cloud_bg/address_reg_0_0_i_14_n_0_repN2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.0752default:default2
	-1115.8602default:defaultZ32-619h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-572h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default2\
"cloud_bg/address_reg_0_0_i_15_comp	"cloud_bg/address_reg_0_0_i_15_comp2default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-572h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.0712default:default2
	-1114.7792default:defaultZ32-619h px? 
?
\Property '%s' on BRAM cell '%s' Port '%s' is 0. Skip BRAM Register Optimization on the port
328*physynth2 
READ_WIDTH_B2default:default2H
cloud_bg/address_reg_0_5	cloud_bg/address_reg_0_52default:default2
B2default:default8Z32-614h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2P
cloud_bg/address_reg_0_5_n_0cloud_bg/address_reg_0_5_n_02default:default8Z32-702h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_14_n_0!cloud_bg/address_reg_0_0_i_14_n_02default:default8Z32-572h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2Z
!cloud_bg/address_reg_0_0_i_14_n_0!cloud_bg/address_reg_0_0_i_14_n_02default:default2\
"cloud_bg/address_reg_0_0_i_14_comp	"cloud_bg/address_reg_0_0_i_14_comp2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_14_n_0!cloud_bg/address_reg_0_0_i_14_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.0712default:default2
	-1113.5882default:defaultZ32-619h px? 
?
\Property '%s' on BRAM cell '%s' Port '%s' is 0. Skip BRAM Register Optimization on the port
328*physynth2 
READ_WIDTH_B2default:default2H
cloud_bg/address_reg_1_1	cloud_bg/address_reg_1_12default:default2
B2default:default8Z32-614h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth26
cloud_bg/out[1]cloud_bg/out[1]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_19_n_4address_reg_0_0_i_19_n_42default:default8Z32-702h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2Z
!cloud_bg/address_reg_0_0_i_16_n_0!cloud_bg/address_reg_0_0_i_16_n_02default:default2
12default:default8Z32-81h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_16_n_0!cloud_bg/address_reg_0_0_i_16_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.0672default:default2
	-1114.0432default:defaultZ32-619h px? 
?
\Property '%s' on BRAM cell '%s' Port '%s' is 0. Skip BRAM Register Optimization on the port
328*physynth2 
READ_WIDTH_B2default:default2J
cloud_bg/address_reg_0_10	cloud_bg/address_reg_0_102default:default2
B2default:default8Z32-614h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2R
cloud_bg/address_reg_0_10_n_0cloud_bg/address_reg_0_10_n_02default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2d
&cloud_bg/address_reg_0_0_i_14_n_0_repN&cloud_bg/address_reg_0_0_i_14_n_0_repN2default:default2l
*cloud_bg/address_reg_0_0_i_14_comp_replica	*cloud_bg/address_reg_0_0_i_14_comp_replica2default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2d
&cloud_bg/address_reg_0_0_i_14_n_0_repN&cloud_bg/address_reg_0_0_i_14_n_0_repN2default:default8Z32-572h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2d
&cloud_bg/address_reg_0_0_i_14_n_0_repN&cloud_bg/address_reg_0_0_i_14_n_0_repN2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.0552default:default2
	-1113.8812default:defaultZ32-619h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2d
&cloud_bg/address_reg_0_0_i_16_n_0_repN&cloud_bg/address_reg_0_0_i_16_n_0_repN2default:default2b
%cloud_bg/address_reg_0_0_i_16_replica	%cloud_bg/address_reg_0_0_i_16_replica2default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2d
&cloud_bg/address_reg_0_0_i_16_n_0_repN&cloud_bg/address_reg_0_0_i_16_n_0_repN2default:default8Z32-572h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2d
&cloud_bg/address_reg_0_0_i_16_n_0_repN&cloud_bg/address_reg_0_0_i_16_n_0_repN2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.0392default:default2
	-1113.5492default:defaultZ32-619h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_17_n_0!cloud_bg/address_reg_0_0_i_17_n_02default:default8Z32-572h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_17_n_0!cloud_bg/address_reg_0_0_i_17_n_02default:default2R
cloud_bg/address_reg_0_0_i_17	cloud_bg/address_reg_0_0_i_172default:default8Z32-662h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2Z
!cloud_bg/address_reg_0_0_i_17_n_0!cloud_bg/address_reg_0_0_i_17_n_02default:default2
12default:default8Z32-81h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2Z
!cloud_bg/address_reg_0_0_i_17_n_0!cloud_bg/address_reg_0_0_i_17_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.0352default:default2
	-1113.9432default:defaultZ32-619h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-572h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default2\
"cloud_bg/address_reg_0_0_i_15_comp	"cloud_bg/address_reg_0_0_i_15_comp2default:default8Z32-662h px? 
?
BNet %s was not replicated - recommend -force_replication_on_nets.
315*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-572h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth28
cloud_bg/out[10]cloud_bg/out[10]2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2<
vga_sync_unit/x[0]vga_sync_unit/x[0]2default:default2X
 vga_sync_unit/h_count_reg_reg[0]	 vga_sync_unit/h_count_reg_reg[0]2default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
vga_sync_unit/x[0]vga_sync_unit/x[0]2default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_20_n_0!cloud_bg/address_reg_0_0_i_20_n_02default:default2R
cloud_bg/address_reg_0_0_i_20	cloud_bg/address_reg_0_0_i_202default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!cloud_bg/address_reg_0_0_i_20_n_0!cloud_bg/address_reg_0_0_i_20_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_19_n_7address_reg_0_0_i_19_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_38_n_0address_reg_0_0_i_38_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_47_n_5address_reg_0_0_i_47_n_52default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_73_n_0address_reg_0_0_i_73_n_02default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default2J
address_reg_0_0_i_45_comp	address_reg_0_0_i_45_comp2default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_45_n_0address_reg_0_0_i_45_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_48_n_1address_reg_0_0_i_48_n_12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_80_n_0address_reg_0_0_i_80_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_50_n_6address_reg_0_0_i_50_n_62default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
address_reg_0_0_i_118_n_0address_reg_0_0_i_118_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_43_n_5address_reg_0_0_i_43_n_52default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2H
address_reg_0_0_i_58_n_0address_reg_0_0_i_58_n_02default:default2@
address_reg_0_0_i_58	address_reg_0_0_i_582default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_58_n_0address_reg_0_0_i_58_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
address_reg_0_0_i_98_n_7address_reg_0_0_i_98_n_72default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2J
address_reg_0_0_i_128_n_0address_reg_0_0_i_128_n_02default:default2B
address_reg_0_0_i_128	address_reg_0_0_i_1282default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
address_reg_0_0_i_128_n_0address_reg_0_0_i_128_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
vga_sync_unit/x2[7]vga_sync_unit/x2[7]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
'vga_sync_unit/address_reg_0_0_i_144_n_0'vga_sync_unit/address_reg_0_0_i_144_n_02default:default8Z32-702h px? 
?
/Processed net %s.  Did not re-place instance %s336*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default2\
"cloud_bg/address_reg_0_0_i_15_comp	"cloud_bg/address_reg_0_0_i_15_comp2default:default8Z32-662h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2Z
!cloud_bg/address_reg_0_0_i_15_n_0!cloud_bg/address_reg_0_0_i_15_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-6.0352default:default2
	-1113.9432default:defaultZ32-619h px? 
N
9Phase 4 Critical Path Optimization | Checksum: 2046f9368
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:55 ; elapsed = 00:00:37 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0162default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
?
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
-6.0352default:default2
	-1113.9432default:defaultZ32-603h px? 
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
?-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          1.055  |        157.104  |            4  |              0  |                    23  |           0  |           2  |  00:00:34  |
|  Total          |          1.055  |        157.104  |            4  |              0  |                    23  |           0  |           3  |  00:00:34  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
J
5Ending Physical Synthesis Task | Checksum: 2046f9368
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:55 ; elapsed = 00:00:37 . Memory (MB): peak = 1763.469 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
3302default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
phys_opt_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
phys_opt_design: 2default:default2
00:00:582default:default2
00:00:382default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
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
00:00:00.8012default:default2
1763.4692default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2_
KD:/flapga-mario_test/flapga-mario_test.runs/impl_1/flapga_mario_physopt.dcp2default:defaultZ17-1381h px? 


End Record