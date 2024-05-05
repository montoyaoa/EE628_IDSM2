v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -250 440 -250 {
lab=vout}
N 440 -250 440 -230 {
lab=vout}
N 440 -250 500 -250 {
lab=vout}
N 330 -340 330 -290 {
lab=clk}
N 330 -250 330 -140 {
lab=GND}
N 440 -170 440 -140 {
lab=GND}
N 250 -250 300 -250 {
lab=vin}
C {devices/title.sym} 160 0 0 0 {name=l1 author="Alex Montoya"}
C {sg13g2_pr/sg13_lv_nmos.sym} 330 -270 3 1 {name=M1
L=1.5u
W=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/capa.sym} 440 -200 0 0 {name=C1
m=1
value=150f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 440 -140 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 330 -140 0 0 {name=l3 lab=GND}
C {devices/ipin.sym} 250 -250 0 0 {name=p1 lab=vin}
C {devices/ipin.sym} 330 -340 1 0 {name=p2 lab=clk}
C {devices/opin.sym} 500 -250 0 0 {name=p3 lab=vout}
