v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {comparator + flipflop} 920 -480 0 0 0.4 0.4 {}
T {vref scaling} 320 -150 0 0 0.4 0.4 {}
N 320 -640 320 -620 {
lab=GND}
N 20 -390 20 -330 {
lab=vi}
N 20 -270 20 -250 {
lab=GND}
N 240 -450 240 -420 {
lab=p2}
N 300 -450 300 -420 {
lab=p1}
N 920 -420 920 -400 {
lab=vcmp}
N 920 -370 920 -310 {
lab=GND}
N 710 -640 710 -620 {
lab=GND}
N 800 -640 800 -620 {
lab=GND}
N 800 -740 800 -700 {p1
lab=resb}
N 920 -420 1000 -420 {
lab=vcmp}
N 970 -400 1000 -400 {
lab=resb}
N 970 -440 1000 -440 {
lab=p2}
N 1180 -440 1190 -440 {
lab=q}
N 1190 -440 1190 -260 {
lab=q}
N 440 -200 580 -200 {
lab=q}
N 440 -220 480 -220 {
lab=p1}
N 440 -180 490 -180 {
lab=resb}
N 650 -640 650 -620 {
lab=GND}
N 30 -730 90 -730 {
lab=p1}
N 30 -670 90 -670 {
lab=p2}
N 710 -770 710 -700 {p1
lab=VDD}
N 650 -750 650 -700 {p1
lab=VSS}
N 270 -770 710 -770 {
lab=VDD}
N 710 -780 710 -770 {p1
lab=VDD}
N 270 -750 650 -750 {
lab=VSS}
N 650 -780 650 -750 {p1
lab=VSS}
N 270 -730 320 -730 {
lab=#net1}
N 320 -730 320 -700 {
lab=#net1}
N 270 -450 270 -420 {
lab=p1e}
N 330 -450 330 -420 {
lab=resb}
N 210 -450 210 -420 {
lab=p2e}
N 20 -390 150 -390 {
lab=vi}
N 30 -770 90 -770 {
lab=p1e}
N 30 -630 90 -630 {
lab=p2e}
N 580 -260 1190 -260 {
lab=q}
N 420 -390 540 -390 {
lab=vo1}
N 810 -390 870 -390 {
lab=vo2}
N 630 -450 630 -420 {
lab=p2}
N 660 -450 660 -420 {
lab=p1e}
N 690 -450 690 -420 {
lab=p1}
N 720 -450 720 -420 {
lab=resb}
N 600 -450 600 -420 {
lab=p2e}
N 190 -300 190 -220 {
lab=#net2}
N 190 -220 260 -220 {
lab=#net2}
N 580 -300 580 -260 {
lab=q}
N 580 -260 580 -200 {
lab=q}
C {devices/code_shown.sym} 1200 -160 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/code_shown.sym} 1200 -530 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2 per=1u
.model mysw SW vt=\{vdd/2\} ron=10k roff=10gig
.option method=gear reltol=1e-4

.control
save all 
tran 10n 64u
plot vi vo1 vo2 q
set wr_singlescale
set wr_vecnames
wrdata tb_ideal_idsm1.txt vi vo1 vo2 q
.endc
"}
C {devices/gnd.sym} 320 -620 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 320 -670 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 5n, 100p, 100p, \{per/2-5n\}, \{per\}) "}
C {devices/title.sym} 170 0 0 0 {name=l5 author="Boris Murmann"}
C {devices/lab_wire.sym} 30 -730 0 0 {name=p2 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 30 -670 0 0 {name=p1 sig_type=std_logic lab=p2}
C {devices/gnd.sym} 20 -250 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 20 -300 0 0 {name=Vin value="dc 0.075"}
C {devices/lab_wire.sym} 100 -390 0 0 {name=p4 sig_type=std_logic lab=vi}
C {devices/lab_wire.sym} 870 -390 0 0 {name=p6 sig_type=std_logic lab=vo2}
C {devices/lab_wire.sym} 240 -450 0 1 {name=p8 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 300 -450 0 1 {name=p7 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 920 -310 0 0 {name=l13 lab=GND}
C {devices/vsource.sym} 920 -370 0 0 {name=E2 value="TABLE \{V(vo2,0)\} = (-0.1mV, 0V) (0.1mV, \{vdd\})"}
C {devices/lab_wire.sym} 980 -420 0 0 {name=p10 sig_type=std_logic lab=vcmp}
C {devices/gnd.sym} 710 -620 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 710 -670 0 0 {name=Vsup value="dc \{vdd\}"}
C {devices/vdd.sym} 710 -780 0 0 {name=l15 lab=VDD}
C {devices/gnd.sym} 800 -620 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} 800 -670 0 0 {name=Vresb value="dc 0 pwl(0, 0, \{per/2\}, 0, \{per/2+100p\} \{vdd\}"}
C {devices/lab_wire.sym} 800 -740 0 0 {name=p12 sig_type=std_logic lab=resb}
C {devices/capa.sym} 870 -360 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 870 -330 0 0 {name=l1 lab=GND}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 1090 -420 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 970 -400 0 0 {name=p9 sig_type=std_logic lab=resb}
C {devices/lab_wire.sym} 970 -440 0 0 {name=p13 sig_type=std_logic lab=p2}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} 350 -200 0 1 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 480 -220 0 1 {name=p14 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 490 -180 0 1 {name=p15 sig_type=std_logic lab=resb}
C {devices/lab_wire.sym} 760 -260 0 1 {name=p11 sig_type=std_logic lab=q}
C {devices/lab_wire.sym} 480 -390 0 0 {name=p16 sig_type=std_logic lab=vo1}
C {devices/gnd.sym} 650 -620 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 650 -670 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} 650 -780 0 0 {name=l6 lab=VSS}
C {/foss/designs/week8/clk_generator.sym} 120 -700 0 1 {name=x5}
C {devices/lab_wire.sym} 270 -450 0 1 {name=p17 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 330 -450 0 1 {name=p18 sig_type=std_logic lab=resb}
C {devices/vdd.sym} 360 -420 0 0 {name=l3 lab=VDD}
C {devices/lab_wire.sym} 210 -450 0 1 {name=p19 sig_type=std_logic lab=p2e}
C {devices/lab_wire.sym} 30 -770 0 0 {name=p20 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 30 -630 0 0 {name=p21 sig_type=std_logic lab=p2e}
C {devices/lab_wire.sym} 660 -450 0 1 {name=p22 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 600 -450 0 1 {name=p23 sig_type=std_logic lab=p2e}
C {devices/lab_wire.sym} 630 -450 0 1 {name=p24 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 720 -450 0 1 {name=p25 sig_type=std_logic lab=resb}
C {devices/vdd.sym} 750 -420 0 0 {name=l7 lab=VDD}
C {devices/lab_wire.sym} 690 -450 0 1 {name=p26 sig_type=std_logic lab=p1}
C {/foss/designs/week8/stage1.sym} 280 -370 0 0 {name=x1}
C {/foss/designs/week8/stage2.sym} 670 -360 0 0 {name=x2}
