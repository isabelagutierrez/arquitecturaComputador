
x
Command: %s
53*	vivadotcl2G
3synth_design -top divisorFrec -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
^
#Helper process launched with PID %s4824*oasys2
9922default:defaultZ8-7075h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1172.156 ; gain = 18.277
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
divisorFrec2default:default2�
lC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/divisorFrec.vhd2default:default2
342default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

uniControl2default:default2
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
242default:default2
controlUnit2default:default2

uniControl2default:default2�
lC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/divisorFrec.vhd2default:default2
602default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

uniControl2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
432default:default8@Z8-638h px� 
�
default block is never used226*oasys2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
542default:default8@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

uniControl2default:default2
12default:default2
12default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
432default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
divisorFrec2default:default2
22default:default2
12default:default2�
lC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/divisorFrec.vhd2default:default2
342default:default8@Z8-256h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1225.219 ; gain = 71.340
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1225.219 ; gain = 71.340
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1225.219 ; gain = 71.340
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1225.2192default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2B
,C:/Users/isabelagutierrez/Documents/otro.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2B
,C:/Users/isabelagutierrez/Documents/otro.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2@
,C:/Users/isabelagutierrez/Documents/otro.xdc2default:default21
.Xil/divisorFrec_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1325.7342default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1325.7342default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 1325.734 ; gain = 171.855
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 1325.734 ; gain = 171.855
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 1325.734 ; gain = 171.855
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2$
currentState_reg2default:default2

uniControl2default:defaultZ8-802h px� 
�
!inferring latch for variable '%s'327*oasys2
IRwrite_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1122default:default8@Z8-327h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 fetchst |                             0000 |                             0000
2default:defaulth p
x
� 
�
%s
*synth2s
_                decodest |                             0001 |                             0001
2default:defaulth p
x
� 
�
%s
*synth2s
_               memaddrst |                             0010 |                             0010
2default:defaulth p
x
� 
�
%s
*synth2s
_               memreadst |                             0011 |                             0011
2default:defaulth p
x
� 
�
%s
*synth2s
_                 memwbst |                             0100 |                             0100
2default:defaulth p
x
� 
�
%s
*synth2s
_              memwritest |                             0101 |                             0101
2default:defaulth p
x
� 
�
%s
*synth2s
_               executest |                             0110 |                             0110
2default:defaulth p
x
� 
�
%s
*synth2s
_                branchst |                             0111 |                             1000
2default:defaulth p
x
� 
�
%s
*synth2s
_                  jumpst |                             1000 |                             1001
2default:defaulth p
x
� 
�
%s
*synth2s
_                addiexst |                             1001 |                             1010
2default:defaulth p
x
� 
�
%s
*synth2s
_                andiexst |                             1010 |                             1011
2default:defaulth p
x
� 
�
%s
*synth2s
_                 oriexst |                             1011 |                             1100
2default:defaulth p
x
� 
�
%s
*synth2s
_                sltiexst |                             1100 |                             1101
2default:defaulth p
x
� 
�
%s
*synth2s
_                 luiexst |                             1101 |                             1110
2default:defaulth p
x
� 
�
%s
*synth2s
_                   wbist |                             1110 |                             1111
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2$
currentState_reg2default:default2

sequential2default:default2

uniControl2default:defaultZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2

memToR_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1152default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2 
memWrite_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1132default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
memRead_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1122default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
IorD_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1152default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
pcWrite_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1122default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

branch_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1152default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
	pcSrc_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1152default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
	aluOp_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1142default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
aluSrcB_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1142default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
aluSrcA_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1132default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2 
regWrite_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1132default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

regDst_reg2default:default2�
kC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.srcs/sources_1/new/uniControl.vhd2default:default2
1142default:default8@Z8-327h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1325.734 ; gain = 171.855
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  10 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    2 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    1 Bit        Muxes := 17    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 1325.734 ; gain = 171.855
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 1325.734 ; gain = 171.855
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 1325.734 ; gain = 171.855
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1340.242 ; gain = 186.363
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 1346.074 ; gain = 192.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 1346.074 ; gain = 192.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 1346.074 ; gain = 192.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 1346.074 ; gain = 192.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 1346.074 ; gain = 192.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 1346.074 ; gain = 192.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |     7|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     1|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |     4|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |     4|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    14|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |     2|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |     8|
2default:defaulth px� 
D
%s*synth2,
|9     |FDCE   |    31|
2default:defaulth px� 
D
%s*synth2,
|10    |LD     |    15|
2default:defaulth px� 
D
%s*synth2,
|11    |IBUF   |     8|
2default:defaulth px� 
D
%s*synth2,
|12    |OBUF   |    20|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 1346.074 ; gain = 192.195
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 13 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:24 . Memory (MB): peak = 1346.074 ; gain = 91.680
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 1346.074 ; gain = 192.195
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1358.0942default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
222default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1358.0942default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2[
G  A total of 15 instances were transformed.
  LD => LDCE: 15 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
232default:default2
132default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:292default:default2
00:00:342default:default2
1358.0942default:default2
204.2152default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2z
fC:/Users/isabelagutierrez/Documents/computadorDos/proyectoDos/proyectoDos.runs/synth_1/divisorFrec.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
lExecuting : report_utilization -file divisorFrec_utilization_synth.rpt -pb divisorFrec_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Mar 29 10:44:45 20252default:defaultZ17-206h px� 


End Record