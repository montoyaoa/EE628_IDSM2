v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -290 330 -290 {
lab=#net1}
N 220 -210 250 -210 {
lab=p2}
N 390 -290 430 -290 {
lab=#net2}
N 360 -210 390 -210 {
lab=p1e}
N 190 -380 190 -340 {
lab=p1}
N 360 -370 390 -370 {
lab=p2e}
N 430 -290 470 -290 {
lab=#net2}
N 570 -290 610 -290 {
lab=#net3}
N 570 -450 610 -450 {
lab=#net4}
N 670 -450 740 -450 {
lab=vout}
N 500 -370 530 -370 {
lab=p1}
N 430 -450 570 -450 {
lab=#net4}
N 650 -290 650 -280 {
lab=vout}
N 740 -290 780 -290 {
lab=vout}
N 650 -300 650 -290 {
lab=vout}
N 610 -290 610 -250 {
lab=#net3}
N 610 -330 610 -290 {
lab=#net3}
N 650 -290 740 -290 {
lab=vout}
N 740 -450 740 -290 {
lab=vout}
N 650 -250 650 -220 {
lab=GND}
N 570 -540 570 -450 {
lab=#net4}
N 740 -540 740 -450 {
lab=vout}
N 650 -390 650 -330 {
lab=vdd}
N 430 -290 430 -270 {
lab=#net2}
N 430 -310 430 -290 {
lab=#net2}
N 430 -450 430 -430 {
lab=#net4}
N 570 -450 570 -430 {
lab=#net4}
N 570 -310 570 -290 {
lab=#net3}
N 530 -290 570 -290 {
lab=#net3}
N 570 -540 580 -540 {
lab=#net4}
N 700 -540 740 -540 {
lab=vout}
N 290 -290 290 -270 {
lab=#net1}
N 210 -380 210 -340 {
lab=p2}
N 280 -290 290 -290 {
lab=#net1}
N 90 -290 130 -290 {
lab=vin}
N 640 -610 640 -580 {
lab=reset}
N 230 -380 230 -340 {
lab=vdd}
N 140 -610 180 -610 {
lab=vdd}
N 140 -570 180 -570 {
lab=p1}
N 140 -530 180 -530 {
lab=p1e}
N 140 -490 180 -490 {
lab=p2}
N 140 -450 180 -450 {
lab=p2e}
N 290 -150 290 -120 {
lab=feedbk}
C {devices/title.sym} 180 0 0 0 {name=l1 author="Alex Montoya"}
C {devices/lab_wire.sym} 220 -210 0 0 {name=p8 sig_type=std_logic lab=p2}
C {devices/capa.sym} 360 -290 3 0 {name=C4
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 360 -210 0 0 {name=p9 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 190 -380 1 0 {name=p10 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 360 -370 0 0 {name=p11 sig_type=std_logic lab=p2e}
C {devices/gnd.sym} 650 -220 0 0 {name=l18 lab=GND}
C {devices/capa.sym} 640 -450 3 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 500 -290 3 0 {name=C6
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 500 -370 0 0 {name=p13 sig_type=std_logic lab=p1}
C {sg13g2_pr/sg13_lv_nmos.sym} 630 -250 2 1 {name=M1
L=1.5u
W=1.75u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 630 -330 0 0 {name=M2
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
C {devices/lab_wire.sym} 650 -390 1 0 {name=p24 sig_type=std_logic lab=vdd}
C {/foss/designs/week7/nmos_switch.sym} 430 -300 3 0 {name=x1}
C {/foss/designs/week7/nmos_switch.sym} 430 -460 3 0 {name=x2}
C {/foss/designs/week7/nmos_switch.sym} 570 -460 3 0 {name=x3}
C {/foss/designs/week7/nmos_switch.sym} 730 -540 0 0 {name=x4}
C {/foss/designs/week7/nmos_switch.sym} 290 -300 3 0 {name=x5}
C {devices/lab_wire.sym} 210 -380 1 0 {name=p3 sig_type=std_logic lab=p2}
C {/foss/designs/week7/cmos_switch.sym} 280 -280 0 0 {name=x6}
C {devices/ipin.sym} 90 -290 0 0 {name=p6 lab=vin}
C {devices/ipin.sym} 640 -610 1 0 {name=p1 lab=reset}
C {devices/opin.sym} 780 -290 0 0 {name=p2 lab=vout}
C {devices/ipin.sym} 140 -610 0 0 {name=p4 lab=vdd}
C {devices/lab_wire.sym} 230 -380 1 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 180 -610 2 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 430 -150 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 140 -570 0 0 {name=p12 lab=p1}
C {devices/lab_wire.sym} 180 -570 2 0 {name=p14 sig_type=std_logic lab=p1}
C {devices/ipin.sym} 140 -530 0 0 {name=p16 lab=p1e}
C {devices/lab_wire.sym} 180 -530 2 0 {name=p17 sig_type=std_logic lab=p1e}
C {devices/ipin.sym} 140 -490 0 0 {name=p18 lab=p2}
C {devices/lab_wire.sym} 180 -490 2 0 {name=p19 sig_type=std_logic lab=p2}
C {devices/ipin.sym} 140 -450 0 0 {name=p20 lab=p2e}
C {devices/lab_wire.sym} 180 -450 2 0 {name=p21 sig_type=std_logic lab=p2e}
C {devices/ipin.sym} 290 -120 3 0 {name=p15 lab=feedbk}
