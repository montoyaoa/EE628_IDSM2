v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -260 120 -240 {
lab=GND}
N 30 -260 30 -240 {
lab=GND}
N 30 -340 30 -320 {
lab=VSS}
N 120 -340 120 -320 {
lab=VDD}
N 210 -260 210 -240 {
lab=GND}
N 210 -340 210 -320 {
lab=res}
N 30 -90 30 -70 {
lab=GND}
N 120 -90 120 -70 {
lab=GND}
N 120 -170 120 -150 {
lab=vdda}
N 30 -170 30 -150 {
lab=vssa}
N 210 -90 210 -70 {
lab=GND}
N 300 -90 300 -70 {
lab=GND}
N 300 -170 300 -150 {
lab=vhi}
N 210 -170 210 -150 {
lab=vlo}
N 390 -90 390 -70 {
lab=GND}
N 480 -90 480 -70 {
lab=GND}
N 480 -170 480 -150 {
lab=clkin}
N 390 -170 390 -150 {
lab=vin}
N 590 -280 610 -280 {
lab=vhi}
N 590 -260 610 -260 {
lab=vlo}
N 590 -240 610 -240 {
lab=vdda}
N 590 -220 610 -220 {
lab=vssa}
N 590 -200 610 -200 {
lab=vin}
N 590 -180 610 -180 {
lab=res}
N 590 -160 610 -160 {
lab=clkin}
N 910 -280 950 -280 {
lab=dout}
N 950 -280 950 -260 {
lab=dout}
N 950 -200 950 -180 {
lab=GND}
C {devices/title.sym} 160 0 0 0 {name=l1 author="Alex Montoya"}
C {devices/vdd.sym} 120 -340 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 120 -290 0 0 {name=Vddd value="dc \{vdd\}" savecurrent=false}
C {devices/vsource.sym} 30 -290 0 0 {name=Vssd value="dc 0" savecurrent=false}
C {devices/gnd.sym} 120 -240 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 30 -240 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 30 -340 0 0 {name=l10 lab=VSS}
C {devices/vsource.sym} 210 -290 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/4\}, \{vdd\}, \{per/4+50p\}, 0)" savecurrent=false}
C {devices/gnd.sym} 210 -240 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 30 -120 0 0 {name=Vssa value="dc 0" savecurrent=false}
C {devices/vsource.sym} 120 -120 0 0 {name=Vdda value="dc \{vdd\}" savecurrent=false}
C {devices/gnd.sym} 30 -70 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 120 -70 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 210 -120 0 0 {name=Vlo value="dc \{vlo\}" savecurrent=false}
C {devices/vsource.sym} 300 -120 0 0 {name=Vhi value="dc \{vhi\}" savecurrent=false}
C {devices/gnd.sym} 210 -70 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 300 -70 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 210 -340 0 1 {name=p11 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} 300 -170 0 1 {name=p13 sig_type=std_logic lab=vhi}
C {devices/lab_wire.sym} 210 -170 0 1 {name=p14 sig_type=std_logic lab=vlo}
C {devices/lab_wire.sym} 120 -170 0 1 {name=p15 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 30 -170 0 1 {name=p16 sig_type=std_logic lab=vssa}
C {devices/vsource.sym} 390 -120 0 0 {name=Vin value="dc \{vin\}" savecurrent=false}
C {devices/vsource.sym} 480 -120 0 0 {name=Vclk value="pulse(\{vdd\}, 0, \{per/2\}, 100p, 100p, \{0.5*per\}, \{per\})" savecurrent=false}
C {devices/gnd.sym} 390 -70 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 480 -70 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 480 -170 0 1 {name=p1 sig_type=std_logic lab=clkin}
C {devices/lab_wire.sym} 390 -170 0 1 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 590 -280 0 0 {name=p3 sig_type=std_logic lab=vhi}
C {devices/lab_wire.sym} 590 -260 0 0 {name=p4 sig_type=std_logic lab=vlo}
C {devices/lab_wire.sym} 590 -240 0 0 {name=p5 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 590 -220 0 0 {name=p6 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 590 -200 0 0 {name=p7 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 590 -180 0 0 {name=p8 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} 590 -160 0 0 {name=p9 sig_type=std_logic lab=clkin}
C {devices/lab_wire.sym} 930 -280 0 1 {name=p10 sig_type=std_logic lab=dout}
C {devices/code_shown.sym} 980 -620 0 0 {name=COMMANDS only_toplevel=false value="
.param temp=27 per=20n N=110
.param vlo=0.3 vhi=0.9 vdd=1.2 vin=0.6
.option method=gear2 reltol=1e-5
.ic v(x1.x1.out1p)=0
.tran 100p \{per*N\} uic
.meas tran iavg_ana AVG i(Vdda)
.meas tran iavg_dig AVG i(Vddd)

.control
tran 100p 1u
set color0 = white
plot x1.vout1 x1.vout2
.endc
"}
C {devices/code_shown.sym} 970 -120 0 0 {name=MODEL only_toplevel=true 
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/capa.sym} 950 -230 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 950 -180 0 0 {name=l8 lab=GND}
C {/foss/designs/layout/EE628_IDSM2/schematics/IDSM2_t1.sym} 760 -220 0 0 {name=x1}
