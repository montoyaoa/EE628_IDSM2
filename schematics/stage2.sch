v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -300 300 -300 {
lab=#net1}
N 190 -220 220 -220 {
lab=p1}
N 360 -300 400 -300 {
lab=#net2}
N 330 -220 360 -220 {
lab=p2e}
N 330 -380 360 -380 {
lab=p1e}
N 400 -300 440 -300 {
lab=#net2}
N 540 -300 580 -300 {
lab=#net3}
N 540 -460 580 -460 {
lab=#net4}
N 640 -460 710 -460 {
lab=#net5}
N 470 -380 500 -380 {
lab=p2}
N 400 -460 540 -460 {
lab=#net4}
N 620 -300 620 -290 {
lab=#net5}
N 710 -300 750 -300 {
lab=#net5}
N 620 -310 620 -300 {
lab=#net5}
N 580 -300 580 -260 {
lab=#net3}
N 580 -340 580 -300 {
lab=#net3}
N 620 -300 710 -300 {
lab=#net5}
N 710 -460 710 -300 {
lab=#net5}
N 620 -260 620 -230 {
lab=GND}
N 540 -550 540 -460 {
lab=#net4}
N 710 -550 710 -460 {
lab=#net5}
N 620 -400 620 -340 {
lab=vdd}
N 400 -300 400 -280 {
lab=#net2}
N 400 -320 400 -300 {
lab=#net2}
N 400 -460 400 -440 {
lab=#net4}
N 540 -460 540 -440 {
lab=#net4}
N 540 -320 540 -300 {
lab=#net3}
N 500 -300 540 -300 {
lab=#net3}
N 540 -550 550 -550 {
lab=#net4}
N 670 -550 710 -550 {
lab=#net5}
N 260 -300 260 -280 {
lab=#net1}
N 60 -300 100 -300 {
lab=vin}
N 610 -620 610 -590 {
lab=reset}
N 160 -380 160 -340 {
lab=p2}
N 110 -620 150 -620 {
lab=vdd}
N 110 -580 150 -580 {
lab=p1}
N 110 -540 150 -540 {
lab=p1e}
N 110 -500 150 -500 {
lab=p2}
N 110 -460 150 -460 {
lab=p2e}
N 260 -160 260 -130 {
lab=feedbk}
N 220 -300 260 -300 {
lab=#net1}
N 810 -370 810 -340 {
lab=p1e}
C {devices/title.sym} 180 0 0 0 {name=l1 author="Alex Montoya"}
C {devices/lab_wire.sym} 470 -380 0 0 {name=p8 sig_type=std_logic lab=p2}
C {devices/capa.sym} 330 -300 3 0 {name=C4
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 330 -380 0 0 {name=p9 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 330 -220 0 0 {name=p11 sig_type=std_logic lab=p2e}
C {devices/gnd.sym} 620 -230 0 0 {name=l18 lab=GND}
C {devices/capa.sym} 610 -460 3 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 470 -300 3 0 {name=C6
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 190 -220 0 0 {name=p13 sig_type=std_logic lab=p1}
C {sg13g2_pr/sg13_lv_nmos.sym} 600 -260 2 1 {name=M1
L=1.5u
W=1.75u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 600 -340 0 0 {name=M2
L=1.5u
W=5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/code_shown.sym} 750 -90 0 0 {name=MODEL only_toplevel=true 
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {devices/lab_wire.sym} 620 -400 1 0 {name=p24 sig_type=std_logic lab=vdd}
C {/foss/designs/week7/nmos_switch.sym} 400 -310 3 0 {name=x1}
C {/foss/designs/week7/nmos_switch.sym} 400 -470 3 0 {name=x2}
C {/foss/designs/week7/nmos_switch.sym} 540 -470 3 0 {name=x3}
C {/foss/designs/week7/nmos_switch.sym} 700 -550 0 0 {name=x4}
C {/foss/designs/week7/nmos_switch.sym} 260 -310 3 0 {name=x5}
C {devices/lab_wire.sym} 160 -380 1 0 {name=p3 sig_type=std_logic lab=p2}
C {devices/ipin.sym} 60 -300 0 0 {name=p6 lab=vin}
C {devices/ipin.sym} 610 -620 1 0 {name=p1 lab=reset}
C {devices/opin.sym} 870 -300 0 0 {name=p2 lab=vout}
C {devices/ipin.sym} 110 -620 0 0 {name=p4 lab=vdd}
C {devices/lab_wire.sym} 150 -620 2 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 400 -160 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 110 -580 0 0 {name=p12 lab=p1}
C {devices/lab_wire.sym} 150 -580 2 0 {name=p14 sig_type=std_logic lab=p1}
C {devices/ipin.sym} 110 -540 0 0 {name=p16 lab=p1e}
C {devices/lab_wire.sym} 150 -540 2 0 {name=p17 sig_type=std_logic lab=p1e}
C {devices/ipin.sym} 110 -500 0 0 {name=p18 lab=p2}
C {devices/lab_wire.sym} 150 -500 2 0 {name=p19 sig_type=std_logic lab=p2}
C {devices/ipin.sym} 110 -460 0 0 {name=p20 lab=p2e}
C {devices/lab_wire.sym} 150 -460 2 0 {name=p21 sig_type=std_logic lab=p2e}
C {devices/ipin.sym} 260 -130 3 0 {name=p15 lab=feedbk}
C {/foss/designs/week7/nmos_switch.sym} 250 -300 0 0 {name=x6}
C {/foss/designs/week7/nmos_switch.sym} 900 -300 0 0 {name=x7}
C {devices/lab_wire.sym} 810 -370 1 0 {name=p5 sig_type=std_logic lab=p1e}
