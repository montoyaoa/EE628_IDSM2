v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 -560 120 -540 {
lab=GND}
N 30 -560 30 -540 {
lab=GND}
N 40 -110 40 -90 {
lab=GND}
N 790 -320 790 -300 {
lab=GND}
N 290 -220 540 -220 {
lab=p2}
N 290 -240 520 -240 {
lab=p1}
N 40 -260 110 -260 {
lab=clkin}
N 40 -260 40 -170 {
lab=clkin}
N 30 -640 30 -620 {
lab=VSS}
N 120 -640 120 -620 {
lab=VDD}
N 500 -320 500 -260 {
lab=p1e}
N 290 -260 500 -260 {
lab=p1e}
N 520 -320 520 -240 {
lab=p1}
N 540 -320 540 -220 {
lab=p2}
N 610 -240 610 -220 {
lab=GND}
N 480 -320 480 -300 {
lab=res}
N 610 -320 610 -300 {
lab=d}
N 790 -400 790 -380 {
lab=vout}
N 650 -400 790 -400 {
lab=vout}
N 560 -500 560 -480 {
lab=vhi}
N 540 -500 540 -480 {
lab=vlo}
N 520 -500 520 -480 {
lab=vdda}
N 500 -500 500 -480 {
lab=vssa}
N 380 -400 380 -380 {
lab=vin}
N 380 -400 450 -400 {
lab=vin}
N 380 -320 380 -300 {
lab=GND}
N 210 -560 210 -540 {
lab=GND}
N 210 -640 210 -620 {
lab=res}
N 30 -390 30 -370 {
lab=GND}
N 120 -390 120 -370 {
lab=GND}
N 120 -470 120 -450 {
lab=vdda}
N 30 -470 30 -450 {
lab=vssa}
N 210 -390 210 -370 {
lab=GND}
N 300 -390 300 -370 {
lab=GND}
N 300 -470 300 -450 {
lab=vhi}
N 210 -470 210 -450 {
lab=vlo}
C {devices/title.sym} 170 0 0 0 {name=l1 author="Alex Montoya"}
C {devices/code_shown.sym} 880 -350 0 0 {name=COMMANDS only_toplevel=false value="
.param temp=27 per=20n vdd=1.2
.param vin=0.6 vlo=0.3 vhi=0.9
.option method=gear2 reltol=1e-4

.control
tran 100p 200n
set color0 = white
plot d vout
.endc
"}
C {devices/code_shown.sym} 880 -110 0 0 {name=MODEL only_toplevel=true 
format="tcleval( @value )"
value=".lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.inc $::PDK_ROOT/sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/vdd.sym} 120 -640 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 120 -590 0 0 {name=Vddd value="dc \{vdd\}" savecurrent=false}
C {devices/vsource.sym} 30 -590 0 0 {name=Vssd value="dc 0" savecurrent=false}
C {devices/vsource.sym} 40 -140 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100p, 100p, \{per/2\}, \{per\})" savecurrent=false}
C {devices/capa.sym} 790 -350 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 120 -540 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 30 -540 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 40 -90 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 790 -300 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} 30 -640 0 0 {name=l10 lab=VSS}
C {devices/lab_wire.sym} 330 -220 0 0 {name=p2 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 330 -240 0 0 {name=p3 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 330 -260 0 0 {name=p4 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 70 -260 0 1 {name=p5 sig_type=std_logic lab=clkin}
C {/foss/designs/week8/clk_generator.sym} 200 -230 0 0 {name=x1}
C {/foss/designs/week8/stage.sym} 590 -400 0 0 {name=x2}
C {devices/vsource.sym} 610 -270 0 0 {name=Vp2 value="dc \{vdd\} pwl(0, 0, 105n, 0, 105.1n, \{vdd\})" savecurrent=false}
C {devices/gnd.sym} 610 -220 0 0 {name=l11 lab=GND}
C {devices/lab_wire.sym} 480 -300 2 1 {name=p1 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} 610 -310 0 1 {name=p6 sig_type=std_logic lab=d}
C {devices/lab_wire.sym} 500 -500 1 0 {name=p10 sig_type=std_logic lab=vssa}
C {devices/vsource.sym} 380 -350 0 0 {name=Vp3 value="dc \{vin\}" savecurrent=false}
C {devices/gnd.sym} 380 -300 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 210 -590 0 0 {name=Vres value="dc \{vdd\} pwl(0, \{vdd\}, \{per/4\}, \{vdd\}, \{per/4+50p\}, 0)" savecurrent=false}
C {devices/gnd.sym} 210 -540 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 30 -420 0 0 {name=Vssa value="dc 0" savecurrent=false}
C {devices/vsource.sym} 120 -420 0 0 {name=Vdda value="dc \{vdd\}" savecurrent=false}
C {devices/gnd.sym} 30 -370 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 120 -370 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} 210 -420 0 0 {name=Vlo value="dc \{vlo\}" savecurrent=false}
C {devices/vsource.sym} 300 -420 0 0 {name=Vhi value="dc \{vhi\}" savecurrent=false}
C {devices/gnd.sym} 210 -370 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 300 -370 0 0 {name=l17 lab=GND}
C {devices/lab_wire.sym} 210 -640 0 1 {name=p11 sig_type=std_logic lab=res}
C {devices/lab_wire.sym} 300 -470 0 1 {name=p13 sig_type=std_logic lab=vhi}
C {devices/lab_wire.sym} 210 -470 0 1 {name=p14 sig_type=std_logic lab=vlo}
C {devices/lab_wire.sym} 120 -470 0 1 {name=p15 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 30 -470 0 1 {name=p16 sig_type=std_logic lab=vssa}
C {devices/lab_wire.sym} 520 -500 1 0 {name=p7 sig_type=std_logic lab=vdda}
C {devices/lab_wire.sym} 540 -500 1 0 {name=p8 sig_type=std_logic lab=vlo}
C {devices/lab_wire.sym} 560 -500 1 0 {name=p9 sig_type=std_logic lab=vhi}
C {devices/lab_wire.sym} 420 -400 0 0 {name=p12 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 730 -400 0 0 {name=p17 sig_type=std_logic lab=vout}
