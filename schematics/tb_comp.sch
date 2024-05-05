v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -570 140 -550 {
lab=GND}
N 50 -570 50 -550 {
lab=GND}
N 60 -120 60 -100 {
lab=GND}
N 310 -230 780 -230 {
lab=p2}
N 310 -250 760 -250 {
lab=p1}
N 60 -270 130 -270 {
lab=clkin}
N 60 -270 60 -180 {
lab=clkin}
N 50 -650 50 -630 {
lab=VSS}
N 140 -650 140 -630 {
lab=VDD}
N 760 -350 760 -250 {
lab=p1}
N 780 -350 780 -230 {
lab=p2}
N 740 -350 740 -330 {
lab=res}
N 860 -410 880 -410 {
lab=dd}
N 860 -430 880 -430 {
lab=d}
N 770 -510 770 -490 {
lab=vdda}
N 750 -510 750 -490 {
lab=vssa}
N 580 -410 580 -390 {
lab=vinp}
N 580 -410 650 -410 {
lab=vinp}
N 580 -330 580 -310 {
lab=GND}
N 230 -570 230 -550 {
lab=GND}
N 230 -650 230 -630 {
lab=res}
N 50 -410 50 -390 {
lab=GND}
N 140 -410 140 -390 {
lab=GND}
N 140 -490 140 -470 {
lab=vdda}
N 50 -490 50 -470 {
lab=vssa}
N 270 -330 270 -310 {
lab=GND}
N 270 -430 270 -390 {
lab=vinm}
N 270 -430 650 -430 {
lab=vinm}
C {devices/title.sym} 180 0 0 0 {name=l1 author="Alex Montoya"}
C {devices/code_shown.sym} 900 -360 0 0 {name=COMMANDS only_toplevel=false value="
.param temp=27 per=20n vdd=1.2
.param vmid=0.6 v1=\{vmid-100m\} v2=\{vmid+100m\}
.option method=gear2 reltol=1e-4
.ic v(out1p=0)

.control
tran 100p 200n
set color0 = white
plot vinm x2.vinm_samp d dd
.endc
"}
C {devices/code_shown.sym} 900 -120 0 0 {name=MODEL only_toplevel=true 
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/vdd.sym} 140 -650 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 140 -600 0 0 {name=Vddd value="dc \{vdd\}" savecurrent=false}
C {devices/vsource.sym} 50 -600 0 0 {name=Vssd value="dc 0" savecurrent=false}
C {devices/vsource.sym} 60 -150 0 0 {name=Vp1 value="pulse(\{vdd\}, \{0\}, \{per/2\}, 100p, 100p, \{per/2\}, \{per\})" savecurrent=false}
C {devices/gnd.sym} 140 -550 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 50 -550 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 60 -100 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 50 -650 0 0 {name=l10 lab=VSS}
C {devices/lab_wire.sym} 530 -230 0 0 {name=p2 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 530 -250 0 0 {name=p3 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 90 -270 0 1 {name=p5 sig_type=std_logic lab=clkin}
C {/foss/designs/week8/clk_generator.sym} 220 -240 0 0 {name=x1}
C {devices/lab_wire.sym} 740 -330 2 1 {name=p1 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} 750 -510 1 0 {name=p10 sig_type=std_logic lab=vssa}
C {devices/vsource.sym} 580 -360 0 0 {name=Vmid value="dc \{vmid\}" savecurrent=false}
C {devices/gnd.sym} 580 -310 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 230 -600 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/4\}, \{vdd\}, \{per/4+50p\}, 0)" savecurrent=false}
C {devices/gnd.sym} 230 -550 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 50 -440 0 0 {name=Vssa value="dc 0" savecurrent=false}
C {devices/vsource.sym} 140 -440 0 0 {name=Vdda value="dc \{vdd\}" savecurrent=false}
C {devices/gnd.sym} 50 -390 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 140 -390 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 270 -360 0 0 {name=Vd value="dc \{vdd\} pwl(0, \{v1\}, 105n, \{v1\}, 105.1n), \{v2\}" savecurrent=false}
C {devices/gnd.sym} 270 -310 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 230 -650 0 1 {name=p11 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} 620 -430 0 0 {name=p13 sig_type=std_logic lab=vinm}
C {devices/lab_wire.sym} 140 -490 0 1 {name=p15 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 50 -490 0 1 {name=p16 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 770 -510 1 0 {name=p7 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 880 -430 2 0 {name=p8 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 880 -410 2 0 {name=p9 sig_type=std_logic lab=dd}
C {devices/lab_wire.sym} 620 -410 0 0 {name=p12 sig_type=std_logic lab=vinp}
C {/foss/designs/week8/comp.sym} 800 -420 0 0 {name=x2}
