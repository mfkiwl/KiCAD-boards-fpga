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
L rc-rescue:CONN_01X02 v1
U 1 1 58207F0B
P 2250 3900
F 0 "v1" H 2250 4050 50  0000 C CNN
F 1 "DC 0 AC 1" V 2350 3900 50  0000 C CNN
F 2 "" H 2250 3900 50  0000 C CNN
F 3 "" H 2250 3900 50  0000 C CNN
	1    2250 3900
	-1   0    0    1   
$EndComp
$Comp
L rc-rescue:R R1
U 1 1 58207F7B
P 2800 3550
F 0 "R1" V 2880 3550 50  0000 C CNN
F 1 "1K" V 2800 3550 50  0000 C CNN
F 2 "" V 2730 3550 50  0000 C CNN
F 3 "" H 2800 3550 50  0000 C CNN
	1    2800 3550
	0    1    1    0   
$EndComp
$Comp
L rc-rescue:C C1
U 1 1 58207FBA
P 3300 3900
F 0 "C1" H 3325 4000 50  0000 L CNN
F 1 "1.59uF" H 3325 3800 50  0000 L CNN
F 2 "" H 3338 3750 50  0000 C CNN
F 3 "" H 3300 3900 50  0000 C CNN
	1    3300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3950 2450 4150
Wire Wire Line
	3300 4150 3300 4050
Wire Wire Line
	2650 3550 2450 3550
Wire Wire Line
	2450 3250 2450 3550
Wire Wire Line
	2950 3550 3300 3550
Wire Wire Line
	3300 3250 3300 3550
Text GLabel 2450 3250 0    60   Input ~ 0
vin
Text GLabel 3200 3250 0    60   Input ~ 0
vout
Wire Wire Line
	3200 3250 3300 3250
Connection ~ 3300 3550
Connection ~ 2450 3550
Text GLabel 2800 4150 3    60   Input ~ 0
0
Text Notes 3650 4100 0    60   ~ 0
+PSPICE\n.ac dec 10 1 1Meg\n.control\nrun\n*Magnitude dB plot for vout on log scale\nplot vdb(vout) xlog\n*Phase degrees plot for vout on log scale\nplot {57.29*vp(vout)} xlog\n.endc
Wire Wire Line
	3300 3550 3300 3750
Wire Wire Line
	2450 3550 2450 3850
Wire Wire Line
	2450 4150 3300 4150
$EndSCHEMATC
