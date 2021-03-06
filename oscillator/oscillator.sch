EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
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
L Crystal Y1
U 1 1 57F0C2EB
P 3800 3050
F 0 "Y1" H 3800 3200 50  0000 C CNN
F 1 "Crystal" H 3800 2900 50  0001 C CNN
F 2 "Crystals:Crystal_FOX-FE_SMD" H 3800 3050 50  0001 C CNN
F 3 "" H 3800 3050 50  0000 C CNN
	1    3800 3050
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 57F0C30A
P 4100 3050
F 0 "R1" V 4180 3050 50  0000 C CNN
F 1 "R" V 4100 3050 50  0001 C CNN
F 2 "Resistors_SMD:R_1206" V 4030 3050 50  0001 C CNN
F 3 "" H 4100 3050 50  0000 C CNN
	1    4100 3050
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 57F0C337
P 4400 2850
F 0 "C1" H 4425 2950 50  0000 L CNN
F 1 "CP1" H 4425 2750 50  0001 L CNN
F 2 "Capacitors_SMD:C_1206" H 4400 2850 50  0001 C CNN
F 3 "" H 4400 2850 50  0000 C CNN
	1    4400 2850
	0    1    1    0   
$EndComp
$Comp
L CP1 C2
U 1 1 57F0C369
P 4400 3250
F 0 "C2" H 4425 3350 50  0000 L CNN
F 1 "CP1" H 4425 3150 50  0001 L CNN
F 2 "Capacitors_SMD:C_1206" H 4400 3250 50  0001 C CNN
F 3 "" H 4400 3250 50  0000 C CNN
	1    4400 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 2850 4250 2850
Wire Wire Line
	4100 2850 4100 2900
Wire Wire Line
	3800 2900 3800 2850
Connection ~ 4100 2850
Wire Wire Line
	3800 3200 3800 3250
Wire Wire Line
	3500 3250 4250 3250
Wire Wire Line
	4100 3200 4100 3250
Connection ~ 4100 3250
Wire Wire Line
	4550 2850 4600 2850
Wire Wire Line
	4600 3250 4550 3250
$Comp
L CONN_01X03 P1
U 1 1 57F0C40B
P 3200 3050
F 0 "P1" H 3200 3250 50  0000 C CNN
F 1 "CONN_01X03" V 3300 3050 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03" H 3200 3050 50  0001 C CNN
F 3 "" H 3200 3050 50  0000 C CNN
	1    3200 3050
	-1   0    0    1   
$EndComp
$Comp
L TEST_1P W1
U 1 1 57F0C449
P 3300 3450
F 0 "W1" H 3300 3720 50  0000 C CNN
F 1 "TEST_1P" H 3300 3650 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 3500 3450 50  0001 C CNN
F 3 "" H 3500 3450 50  0000 C CNN
	1    3300 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 2950 3500 2950
Wire Wire Line
	3500 2950 3500 2850
Connection ~ 3800 2850
Wire Wire Line
	3400 3050 3500 3050
Wire Wire Line
	3500 3050 3500 3250
Connection ~ 3800 3250
Wire Wire Line
	3400 3150 3400 3450
Wire Wire Line
	4600 3450 3300 3450
Wire Wire Line
	4600 2850 4600 3450
Connection ~ 4600 3250
Connection ~ 3400 3450
$EndSCHEMATC
