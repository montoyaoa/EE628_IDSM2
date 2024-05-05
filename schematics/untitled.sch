v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -140 -50 -110 {
lab=vmid}
N 210 -240 250 -240 {
lab=#net1}
N 140 -160 170 -160 {
lab=p2}
N 310 -240 350 -240 {
lab=#net2}
N 280 -160 310 -160 {
lab=p1e}
N 110 -330 110 -290 {
lab=p1}
N 280 -320 310 -320 {
lab=p2e}
N 350 -240 390 -240 {
lab=#net2}
N 490 -240 530 -240 {
lab=#net3}
N 490 -400 530 -400 {
lab=#net4}
N 590 -400 660 -400 {
lab=vo2}
N 420 -320 450 -320 {
lab=p1}
N 350 -400 490 -400 {
lab=#net4}
N 50 -690 50 -660 {
lab=#net5}
N 570 -240 570 -230 {
lab=vo2}
N 660 -240 700 -240 {
lab=vo2}
N 570 -250 570 -240 {
lab=vo2}
N 530 -240 530 -200 {
lab=#net3}
N 530 -280 530 -240 {
lab=#net3}
N 570 -240 660 -240 {
lab=vo2}
N 660 -400 660 -240 {
lab=vo2}
N 570 -200 570 -170 {
lab=GND}
N 80 -460 80 -450 {
lab=#net6}
N 40 -460 40 -420 {
lab=#net6}
N 80 -530 80 -500 {
lab=vdd}
N 80 -420 80 -390 {
lab=GND}
N 80 -460 190 -460 {
lab=#net6}
N 80 -470 80 -460 {
lab=#net6}
N 40 -460 80 -460 {
lab=#net6}
N 40 -500 40 -460 {
lab=#net6}
N 190 -410 230 -410 {
lab=GND}
N 190 -420 190 -410 {
lab=GND}
N 230 -500 230 -470 {
lab=vmid}
N 230 -500 280 -500 {
lab=vmid}
N 690 -710 690 -680 {
lab=vdd}
N 780 -710 780 -680 {
lab=res}
N 490 -490 490 -400 {
lab=#net4}
N 660 -490 660 -400 {
lab=vo2}
N 570 -340 570 -280 {
lab=vdd}
N 350 -240 350 -220 {
lab=#net2}
N 350 -100 350 -90 {
lab=vmid}
N 350 -260 350 -240 {
lab=#net2}
N 350 -400 350 -380 {
lab=#net4}
N 490 -400 490 -380 {
lab=#net4}
N 490 -260 490 -240 {
lab=#net3}
N 450 -240 490 -240 {
lab=#net3}
N 490 -490 500 -490 {
lab=#net4}
N 620 -490 660 -490 {
lab=vo2}
N 210 -100 210 -90 {
lab=vmid}
N 210 -240 210 -220 {
lab=#net1}
N 130 -330 130 -290 {
lab=p2}
N 200 -240 210 -240 {
lab=#net1}
N 150 -300 150 -290 {
lab=vdd}
N 50 -690 300 -690 {
lab=#net5}
N 270 -730 300 -730 {
lab=vdd}
N 270 -740 270 -730 {
lab=vdd}
N 20 -600 50 -600 {
lab=GND}
N 20 -710 20 -600 {
lab=GND}
N 20 -710 300 -710 {
lab=GND}
N 10 -240 50 -240 {
lab=vin}
N 560 -560 560 -530 {
lab=res}
C {devices/title.sym} 180 0 0 0 {name=l1 author="Alex Montoya"}
C {devices/vsource.sym} -50 -170 0 0 {name=V1 value="dc 0.01" savecurrent=false}
C {devices/lab_wire.sym} 140 -160 0 0 {name=p8 sig_type=std_logic lab=p2}
C {devices/capa.sym} 280 -240 3 0 {name=C4
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 280 -160 0 0 {name=p9 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 110 -330 1 0 {name=p10 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 280 -320 0 0 {name=p11 sig_type=std_logic lab=p2e}
C {devices/gnd.sym} 570 -170 0 0 {name=l18 lab=GND}
C {devices/capa.sym} 560 -400 3 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 700 -240 0 0 {name=p12 sig_type=std_logic lab=vo2}
C {devices/capa.sym} 420 -240 3 0 {name=C6
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 420 -320 0 0 {name=p13 sig_type=std_logic lab=p1}
C {devices/code_shown.sym} 750 -530 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.2
.param Wn=2.5u Wp=10u
.inc /foss/pdks/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice


.control
save all 
tran 1n 50u
set color0 = white
plot tran1.vo2
set wr_singlescale
set wr_vecnames
wrdata tb_chae_integ_inv.txt tran1.vo2
.endc
"}
C {devices/vsource.sym} 50 -630 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 5n, 500p, 500p, 495n, 1u)" savecurrent=false}
C {devices/gnd.sym} 50 -600 0 0 {name=l20 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 550 -200 2 1 {name=M1
L=1.5u
W=\{Wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 550 -280 0 0 {name=M2
L=1.5u
W=\{Wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/code_shown.sym} 740 -100 0 0 {name=MODEL only_toplevel=true 
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
"}
C {devices/lab_wire.sym} 280 -500 0 0 {name=p14 sig_type=std_logic lab=vmid}
C {devices/gnd.sym} 80 -390 0 0 {name=l22 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 60 -420 2 1 {name=M3
L=1.5u
W=\{Wn\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 60 -500 0 0 {name=M4
L=1.5u
W=\{Wp\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/vdd.sym} 80 -530 0 0 {name=l23 lab=vdd}
C {devices/vcvs.sym} 230 -440 0 0 {name=E2 value=1}
C {devices/gnd.sym} 230 -410 0 0 {name=l24 lab=GND}
C {devices/lab_wire.sym} 210 -90 0 1 {name=p15 sig_type=std_logic lab=vmid}
C {devices/lab_wire.sym} 350 -90 0 1 {name=p16 sig_type=std_logic lab=vmid}
C {devices/lab_wire.sym} -50 -110 0 1 {name=p21 sig_type=std_logic lab=vmid}
C {devices/vsource.sym} 690 -650 0 0 {name=vdd value="dc \{vdd\}" savecurrent=false}
C {devices/gnd.sym} 690 -620 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 690 -710 1 0 {name=p22 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 780 -650 0 0 {name=Vres1 value="dc \{vdd\} pwl(0, \{vdd\}, 400n, \{vdd\}, \{400n+100p\} 0" savecurrent=false}
C {devices/gnd.sym} 780 -620 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 780 -710 1 0 {name=Vres sig_type=std_logic lab=res}
C {devices/lab_wire.sym} 560 -530 1 0 {name=p23 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} 570 -340 1 0 {name=p24 sig_type=std_logic lab=vdd}
C {/foss/designs/week7/nmos_switch.sym} 350 -250 3 0 {name=x1}
C {/foss/designs/week7/nmos_switch.sym} 350 -410 3 0 {name=x2}
C {/foss/designs/week7/nmos_switch.sym} 490 -410 3 0 {name=x3}
C {/foss/designs/week7/nmos_switch.sym} 650 -490 0 0 {name=x4}
C {/foss/designs/week7/nmos_switch.sym} 210 -250 3 0 {name=x5}
C {devices/lab_wire.sym} 130 -330 1 0 {name=p3 sig_type=std_logic lab=p2}
C {devices/vdd.sym} 150 -300 0 0 {name=l3 lab=vdd}
C {/foss/designs/week7/cmos_switch.sym} 200 -230 0 0 {name=x6}
C {devices/vdd.sym} 270 -740 0 0 {name=l5 lab=vdd}
C {devices/ipin.sym} 10 -240 0 0 {name=p6 lab=vin}
