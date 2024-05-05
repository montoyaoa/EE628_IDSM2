v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -140 50 -120 {
lab=GND}
N 140 -140 140 -120 {
lab=GND}
N 220 -140 220 -120 {
lab=GND}
N 540 -140 540 -120 {
lab=GND}
N 600 -140 600 -120 {
lab=GND}
N 660 -140 660 -120 {
lab=GND}
N 720 -140 720 -120 {
lab=GND}
N 470 -230 540 -230 {
lab=p2e}
N 540 -230 540 -200 {
lab=p2e}
N 470 -250 600 -250 {
lab=p2}
N 600 -250 600 -200 {
lab=p2}
N 470 -270 660 -270 {
lab=p1}
N 660 -270 660 -200 {
lab=p1}
N 720 -290 720 -200 {
lab=p1e}
N 470 -290 720 -290 {
lab=p1e}
N 220 -290 290 -290 {
lab=clkin}
N 220 -290 220 -200 {
lab=clkin}
N 140 -220 140 -200 {
lab=VSS}
N 50 -220 50 -200 {
lab=VDD}
C {devices/title.sym} 170 0 0 0 {name=l1 author="Alex Montoya"}
C {devices/vdd.sym} 50 -220 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 50 -170 0 0 {name=Vsup value="dc \{vdd\}" savecurrent=false}
C {devices/vsource.sym} 140 -170 0 0 {name=Vss value="dc 0" savecurrent=false}
C {devices/vsource.sym} 220 -170 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100p, 100p, \{per/2\}, \{per\})" savecurrent=false}
C {devices/capa.sym} 540 -170 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 600 -170 0 0 {name=C2
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 660 -170 0 0 {name=C3
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 720 -170 0 0 {name=C4
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 50 -120 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 140 -120 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 220 -120 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 540 -120 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 600 -120 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 660 -120 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 720 -120 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} 140 -220 0 0 {name=l10 lab=VSS}
C {devices/lab_wire.sym} 510 -230 0 0 {name=p1 sig_type=std_logic lab=p2e}
C {devices/lab_wire.sym} 510 -250 0 0 {name=p2 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 510 -270 0 0 {name=p3 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 510 -290 0 0 {name=p4 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 250 -290 0 1 {name=p5 sig_type=std_logic lab=clkin}
C {devices/code_shown.sym} 810 -350 0 0 {name=COMMANDS only_toplevel=false value="
.param temp=27 vdd=1.2 per=20n cl=25f
.option method=gear2

.control
save all
tran 10p 15n
meas tran tp1e_p1 TRIG v(p1e) VAL=0.6 FALL=1 TARG v(p1) VAL=0.6 FALL=1
meas tran tp1_p2  TRIG v(p1)  VAL=0.6 FALL=1 TARG v(p2) VAL=0.6 RISE=1
write tb_clkgen.raw
.endc
"}
C {devices/code_shown.sym} 820 -90 0 0 {name=MODEL only_toplevel=true 
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {/foss/designs/week8/clk_generator.sym} 380 -260 0 0 {name=x1}
