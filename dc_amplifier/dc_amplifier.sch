EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pspice:R R2
U 1 1 5DE0025D
P 4800 6750
F 0 "R2" H 4732 6704 50  0000 R CNN
F 1 "2K" H 4732 6795 50  0000 R CNN
F 2 "" H 4800 6750 50  0001 C CNN
F 3 "~" H 4800 6750 50  0001 C CNN
	1    4800 6750
	-1   0    0    1   
$EndComp
$Comp
L pspice:R R1
U 1 1 5DE005F7
P 4800 6150
F 0 "R1" H 4732 6104 50  0000 R CNN
F 1 "31K" H 4732 6195 50  0000 R CNN
F 2 "" H 4800 6150 50  0001 C CNN
F 3 "~" H 4800 6150 50  0001 C CNN
	1    4800 6150
	-1   0    0    1   
$EndComp
$Comp
L pspice:0 #GND0101
U 1 1 5DE008E2
P 4800 7000
F 0 "#GND0101" H 4800 6900 50  0001 C CNN
F 1 "0" H 4800 7089 50  0000 C CNN
F 2 "" H 4800 7000 50  0001 C CNN
F 3 "~" H 4800 7000 50  0001 C CNN
	1    4800 7000
	1    0    0    -1  
$EndComp
Text GLabel 4200 5550 1    50   Input ~ 0
VCC
Wire Wire Line
	4200 5550 4200 5600
$Comp
L Connector_Generic:Conn_01x02 v2
U 1 1 5DE0107A
P 3100 5800
F 0 "v2" H 3100 5900 50  0000 C CNN
F 1 "DC 0V" H 3018 5566 50  0000 C CNN
F 2 "" H 3100 5800 50  0001 C CNN
F 3 "~" H 3100 5800 50  0001 C CNN
	1    3100 5800
	-1   0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0102
U 1 1 5DE01433
P 3350 6000
F 0 "#GND0102" H 3350 5900 50  0001 C CNN
F 1 "0" H 3350 6089 50  0000 C CNN
F 2 "" H 3350 6000 50  0001 C CNN
F 3 "~" H 3350 6000 50  0001 C CNN
	1    3350 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6000 3350 5900
Wire Wire Line
	3350 5900 3300 5900
Wire Wire Line
	3300 5800 4000 5800
$Comp
L pspice:0 #GND0103
U 1 1 5DE01A3F
P 4200 6200
F 0 "#GND0103" H 4200 6100 50  0001 C CNN
F 1 "0" H 4200 6289 50  0000 C CNN
F 2 "" H 4200 6200 50  0001 C CNN
F 3 "~" H 4200 6200 50  0001 C CNN
	1    4200 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6400 4800 6450
Wire Wire Line
	4800 5900 4600 5900
Wire Wire Line
	4800 6450 3900 6450
Wire Wire Line
	3900 6450 3900 6000
Wire Wire Line
	3900 6000 4000 6000
Connection ~ 4800 6450
Wire Wire Line
	4800 6450 4800 6500
Text GLabel 5000 5900 2    50   Input ~ 0
vout
Wire Wire Line
	5000 5900 4800 5900
Connection ~ 4800 5900
Text GLabel 3700 5800 1    50   Input ~ 0
vin
$Comp
L Connector_Generic:Conn_01x02 v1
U 1 1 5DE05999
P 3100 6500
F 0 "v1" H 3100 6600 50  0000 C CNN
F 1 "DC 5V" H 3018 6266 50  0000 C CNN
F 2 "" H 3100 6500 50  0001 C CNN
F 3 "~" H 3100 6500 50  0001 C CNN
	1    3100 6500
	-1   0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0104
U 1 1 5DE06104
P 3350 6700
F 0 "#GND0104" H 3350 6600 50  0001 C CNN
F 1 "0" H 3350 6789 50  0000 C CNN
F 2 "" H 3350 6700 50  0001 C CNN
F 3 "~" H 3350 6700 50  0001 C CNN
	1    3350 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6700 3350 6600
Wire Wire Line
	3350 6600 3300 6600
Text GLabel 3400 6500 2    50   Input ~ 0
VCC
Wire Wire Line
	3400 6500 3300 6500
Text Notes 5450 6300 0    50   ~ 0
+PSPICE\n*.op\n.dc v2 0 0.2 0.01\n.control\nrun\nprint vin vout\n.endc
Text Notes 4450 5450 0    50   ~ 0
*PINOUT ORDER  +IN -IN +V -V OUT NSD\n*PINOUT ORDER   1   3   6   2   4   5\n*.SUBCKT LMV981 1 3 6 2 4 5\n\nGain = 1 + R1/R2
Text GLabel 3900 6200 0    50   Input ~ 0
feedbk
$Comp
L myRF:OPAMP U1
U 1 1 5DE0D966
P 4300 5900
F 0 "U1" H 4644 5946 50  0000 L CNN
F 1 "OPAMP" H 4644 5855 50  0000 L CNN
F 2 "" H 4300 5900 50  0001 C CNN
F 3 "~" H 4300 5900 50  0001 C CNN
F 4 "X" H 4300 5900 50  0001 C CNN "Spice_Primitive"
F 5 "LMV981" H 4300 5900 50  0001 C CNN "Spice_Model"
F 6 "Y" H 4300 5900 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "1 2 4 5 3 6" H 4300 5900 50  0001 C CNN "Spice_Node_Sequence"
F 8 "LMV981.MOD" H 4300 5900 50  0001 C CNN "Spice_Lib_File"
	1    4300 5900
	1    0    0    -1  
$EndComp
$EndSCHEMATC