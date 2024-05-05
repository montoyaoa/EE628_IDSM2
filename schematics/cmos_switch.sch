v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 -400 570 -400 {
lab=vin}
N 540 -320 540 -230 {
lab=vin}
N 540 -230 570 -230 {
lab=vin}
N 600 -480 600 -440 {
lab=clk_on}
N 600 -190 600 -150 {
lab=clk_off}
N 630 -400 660 -400 {
lab=vout}
N 660 -320 660 -230 {
lab=vout}
N 630 -230 660 -230 {
lab=vout}
N 480 -320 540 -320 {
lab=vin}
N 540 -400 540 -320 {
lab=vin}
N 660 -320 720 -320 {
lab=vout}
N 660 -400 660 -320 {
lab=vout}
N 600 -290 600 -230 {
lab=vdd}
N 600 -400 600 -340 {
lab=GND}
N 580 -290 600 -290 {
lab=vdd}
C {devices/title.sym} 170 0 0 0 {name=l1 author="Alex Montoya"}
C {sg13g2_pr/sg13_lv_nmos.sym} 600 -420 3 1 {name=M1
L=1.5u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 600 -210 3 0 {name=M2
L=1.5u
W=6u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/ipin.sym} 480 -320 0 0 {name=p1 lab=vin}
C {devices/ipin.sym} 600 -480 1 0 {name=p2 lab=clk_on}
C {devices/ipin.sym} 600 -150 3 0 {name=p3 lab=clk_off}
C {devices/opin.sym} 720 -320 0 0 {name=p4 lab=vout}
C {devices/gnd.sym} 600 -340 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 580 -290 1 0 {name=p5 lab=vdd}
