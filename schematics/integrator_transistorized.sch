v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -280 240 -280 {
lab=#net1}
N 130 -200 160 -200 {
lab=p2}
N 300 -280 340 -280 {
lab=#net2}
N 270 -200 300 -200 {
lab=p1e}
N 100 -370 100 -330 {
lab=p1}
N 270 -360 300 -360 {
lab=p2e}
N 340 -280 380 -280 {
lab=#net2}
N 480 -280 520 -280 {
lab=#net3}
N 480 -440 520 -440 {
lab=#net4}
N 580 -440 650 -440 {
lab=vout}
N 410 -360 440 -360 {
lab=p1}
N 340 -440 480 -440 {
lab=#net4}
N 560 -280 560 -270 {
lab=vout}
N 650 -280 690 -280 {
lab=vout}
N 560 -290 560 -280 {
lab=vout}
N 520 -280 520 -240 {
lab=#net3}
N 520 -320 520 -280 {
lab=#net3}
N 560 -280 650 -280 {
lab=vout}
N 650 -440 650 -280 {
lab=vout}
N 560 -240 560 -210 {
lab=GND}
N 480 -530 480 -440 {
lab=#net4}
N 650 -530 650 -440 {
lab=vout}
N 560 -380 560 -320 {
lab=vdd}
N 340 -280 340 -260 {
lab=#net2}
N 340 -300 340 -280 {
lab=#net2}
N 340 -440 340 -420 {
lab=#net4}
N 480 -440 480 -420 {
lab=#net4}
N 480 -300 480 -280 {
lab=#net3}
N 440 -280 480 -280 {
lab=#net3}
N 480 -530 490 -530 {
lab=#net4}
N 610 -530 650 -530 {
lab=vout}
N 200 -280 200 -260 {
lab=#net1}
N 120 -370 120 -330 {
lab=p2}
N 190 -280 200 -280 {
lab=#net1}
N 0 -280 40 -280 {
lab=vin}
N 550 -600 550 -570 {
lab=reset}
N 140 -370 140 -330 {
lab=vdd}
N 50 -600 90 -600 {
lab=vdd}
N 50 -560 90 -560 {
lab=p1}
N 50 -520 90 -520 {
lab=p1e}
N 50 -480 90 -480 {
lab=p2}
N 50 -440 90 -440 {
lab=p2e}
N 200 -140 200 -110 {
lab=feedbk}
C {devices/title.sym} 180 0 0 0 {name=l1 author="Alex Montoya"}
C {devices/lab_wire.sym} 130 -200 0 0 {name=p8 sig_type=std_logic lab=p2}
C {devices/capa.sym} 270 -280 3 0 {name=C4
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 270 -200 0 0 {name=p9 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 100 -370 1 0 {name=p10 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 270 -360 0 0 {name=p11 sig_type=std_logic lab=p2e}
C {devices/gnd.sym} 560 -210 0 0 {name=l18 lab=GND}
C {devices/capa.sym} 550 -440 3 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 410 -280 3 0 {name=C6
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 410 -360 0 0 {name=p13 sig_type=std_logic lab=p1}
C {sg13g2_pr/sg13_lv_nmos.sym} 540 -240 2 1 {name=M1
L=1.5u
W=1.75u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 540 -320 0 0 {name=M2
L=1.5u
W=5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/code_shown.sym} 740 -100 0 0 {name=MODEL only_toplevel=true 
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {devices/lab_wire.sym} 560 -380 1 0 {name=p24 sig_type=std_logic lab=vdd}
C {/foss/designs/week7/nmos_switch.sym} 340 -290 3 0 {name=x1}
C {/foss/designs/week7/nmos_switch.sym} 340 -450 3 0 {name=x2}
C {/foss/designs/week7/nmos_switch.sym} 480 -450 3 0 {name=x3}
C {/foss/designs/week7/nmos_switch.sym} 640 -530 0 0 {name=x4}
C {/foss/designs/week7/nmos_switch.sym} 200 -290 3 0 {name=x5}
C {devices/lab_wire.sym} 120 -370 1 0 {name=p3 sig_type=std_logic lab=p2}
C {/foss/designs/week7/cmos_switch.sym} 190 -270 0 0 {name=x6}
C {devices/ipin.sym} 0 -280 0 0 {name=p6 lab=vin}
C {devices/ipin.sym} 550 -600 1 0 {name=p1 lab=reset}
C {devices/opin.sym} 690 -280 0 0 {name=p2 lab=vout}
C {devices/ipin.sym} 50 -600 0 0 {name=p4 lab=vdd}
C {devices/lab_wire.sym} 140 -370 1 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 90 -600 2 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 340 -140 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 50 -560 0 0 {name=p12 lab=p1}
C {devices/lab_wire.sym} 90 -560 2 0 {name=p14 sig_type=std_logic lab=p1}
C {devices/ipin.sym} 50 -520 0 0 {name=p16 lab=p1e}
C {devices/lab_wire.sym} 90 -520 2 0 {name=p17 sig_type=std_logic lab=p1e}
C {devices/ipin.sym} 50 -480 0 0 {name=p18 lab=p2}
C {devices/lab_wire.sym} 90 -480 2 0 {name=p19 sig_type=std_logic lab=p2}
C {devices/ipin.sym} 50 -440 0 0 {name=p20 lab=p2e}
C {devices/lab_wire.sym} 90 -440 2 0 {name=p21 sig_type=std_logic lab=p2e}
C {devices/ipin.sym} 200 -110 3 0 {name=p15 lab=feedbk}
