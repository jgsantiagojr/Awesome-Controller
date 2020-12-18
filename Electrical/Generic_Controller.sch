EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "The Cube"
Date ""
Rev ""
Comp "Jamie Santiago & Co."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x06 J6
U 1 1 5FA154AF
P 6115 5395
F 0 "J6" H 6195 5387 50  0001 L CNN
F 1 "i2c" H 6195 5296 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-06A_1x06_P2.54mm_Vertical" H 6115 5395 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022232041_sd.pdf" H 6115 5395 50  0001 C CNN
	1    6115 5395
	1    0    0    -1  
$EndComp
Text Label 4270 6040 0    50   ~ 0
SDA
Text Label 3565 6540 0    50   ~ 0
SCK
Text Label 5915 5395 2    50   ~ 0
SDA
Text Label 5915 5495 2    50   ~ 0
SCL
$Comp
L power:GND #PWR01
U 1 1 5FA28C50
P 965 5240
F 0 "#PWR01" H 965 4990 50  0001 C CNN
F 1 "GND" H 970 5067 50  0000 C CNN
F 2 "" H 965 5240 50  0001 C CNN
F 3 "" H 965 5240 50  0001 C CNN
	1    965  5240
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5FA31330
P 5765 5045
F 0 "#PWR026" H 5765 4795 50  0001 C CNN
F 1 "GND" H 5765 4895 50  0000 C CNN
F 2 "" H 5765 5045 50  0001 C CNN
F 3 "" H 5765 5045 50  0001 C CNN
	1    5765 5045
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x14 J10
U 1 1 5FA5C197
P 8005 5675
F 0 "J10" H 8085 5667 50  0001 L CNN
F 1 "Display" H 8085 5576 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-14A_1x14_P2.54mm_Vertical" H 8005 5675 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/022232141_sd.pdf" H 8005 5675 50  0001 C CNN
	1    8005 5675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5FA61332
P 7505 5175
F 0 "#PWR040" H 7505 4925 50  0001 C CNN
F 1 "GND" H 7505 5025 50  0000 C CNN
F 2 "" H 7505 5175 50  0001 C CNN
F 3 "" H 7505 5175 50  0001 C CNN
	1    7505 5175
	1    0    0    -1  
$EndComp
Text Label 7805 5275 2    50   ~ 0
CS
Text Label 7805 5475 2    50   ~ 0
DC
Text Label 7805 5675 2    50   ~ 0
SCK
Text Label 7805 5975 2    50   ~ 0
SCK
Text Label 7805 6075 2    50   ~ 0
T_CS
Text Label 7805 6375 2    50   ~ 0
T_IRQ
Text Label 1165 6340 2    50   ~ 0
CS
Text Label 1165 6240 2    50   ~ 0
DC
Text Label 1165 6140 2    50   ~ 0
T_CS
Text Label 1165 6440 2    50   ~ 0
DOUT
Text Label 1165 6540 2    50   ~ 0
DIN
Text Label 7805 6175 2    50   ~ 0
DOUT
Text Label 7805 6275 2    50   ~ 0
DIN
Text Label 7805 5875 2    50   ~ 0
DIN
Text Label 7805 5575 2    50   ~ 0
DOUT
Wire Wire Line
	7805 5175 7505 5175
Wire Wire Line
	7805 5775 7605 5775
$Comp
L Device:R R8
U 1 1 5FA844DF
P 7455 5775
F 0 "R8" V 7662 5775 50  0000 C CNN
F 1 "100" V 7571 5775 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7385 5775 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/products/datasheet/lr/Yageo_LR_CFR_1.pdf" H 7455 5775 50  0001 C CNN
	1    7455 5775
	0    -1   -1   0   
$EndComp
Text Label 1165 5540 2    50   ~ 0
T_IRQ
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 5F93DEAE
P 1300 1155
F 0 "J1" H 1357 1472 50  0000 C CNN
F 1 "5V from Wall" H 1357 1381 50  0000 C CNN
F 2 "Generic_Controller:BarrelJack_Horizontal_3.1mmHole" H 1350 1115 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/resource/pj-202a.pdf" H 1350 1115 50  0001 C CNN
	1    1300 1155
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 5F943642
P 10740 760
F 0 "J14" H 10820 752 50  0001 L CNN
F 1 "Driver1" H 10820 706 50  0000 L CNN
F 2 "Generic_Controller:30A_WireToBoard_796739" H 10740 760 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796739&DocType=Customer+Drawing&DocLang=English" H 10740 760 50  0001 C CNN
	1    10740 760 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10540 760  10540 610 
Wire Wire Line
	10540 610  10340 610 
Wire Wire Line
	10340 1010 10440 1010
Wire Wire Line
	10540 1010 10540 860 
$Comp
L Device:Q_NMOS_GDS Q2
U 1 1 5F948895
P 10215 1675
F 0 "Q2" H 10015 1775 50  0000 L CNN
F 1 "FQP30N06L" H 9865 1875 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 10415 1775 50  0001 C CNN
F 3 "http://cdn.sparkfun.com/datasheets/Components/General/FQP30N06L.pdf" H 10215 1675 50  0001 C CNN
	1    10215 1675
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 5F94889B
P 10715 1625
F 0 "J12" H 10795 1617 50  0001 L CNN
F 1 "Driver2" H 10795 1571 50  0000 L CNN
F 2 "Generic_Controller:30A_WireToBoard_796739" H 10715 1625 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796739&DocType=Customer+Drawing&DocLang=English" H 10715 1625 50  0001 C CNN
	1    10715 1625
	1    0    0    -1  
$EndComp
Wire Wire Line
	10315 1875 10415 1875
Wire Wire Line
	10515 1875 10515 1725
$Comp
L Device:Q_NMOS_GDS Q3
U 1 1 5F949291
P 10215 2605
F 0 "Q3" H 10015 2705 50  0000 L CNN
F 1 "FQP30N06L" H 9865 2805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 10415 2705 50  0001 C CNN
F 3 "http://cdn.sparkfun.com/datasheets/Components/General/FQP30N06L.pdf" H 10215 2605 50  0001 C CNN
	1    10215 2605
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 5F949297
P 10715 2555
F 0 "J13" H 10795 2547 50  0001 L CNN
F 1 "Driver3" H 10795 2501 50  0000 L CNN
F 2 "Generic_Controller:30A_WireToBoard_796739" H 10715 2555 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796739&DocType=Customer+Drawing&DocLang=English" H 10715 2555 50  0001 C CNN
	1    10715 2555
	1    0    0    -1  
$EndComp
Wire Wire Line
	10515 2405 10315 2405
Wire Wire Line
	10315 2805 10415 2805
Wire Wire Line
	10515 2805 10515 2655
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 5F949DA1
P 10140 3640
F 0 "Q1" H 9940 3740 50  0000 L CNN
F 1 "FQP30N06L" H 9790 3840 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 10340 3740 50  0001 C CNN
F 3 "http://cdn.sparkfun.com/datasheets/Components/General/FQP30N06L.pdf" H 10140 3640 50  0001 C CNN
	1    10140 3640
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 5F949DA7
P 10640 3590
F 0 "J11" H 10720 3582 50  0001 L CNN
F 1 "Driver4" H 10720 3536 50  0000 L CNN
F 2 "Generic_Controller:30A_WireToBoard_796739" H 10640 3590 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=796739&DocType=Customer+Drawing&DocLang=English" H 10640 3590 50  0001 C CNN
	1    10640 3590
	1    0    0    -1  
$EndComp
Wire Wire Line
	10440 3590 10440 3440
Wire Wire Line
	10440 3440 10240 3440
Wire Wire Line
	10240 3840 10340 3840
Wire Wire Line
	10440 3840 10440 3690
Text Label 9010 3640 2    50   ~ 0
5V_driver_4
Text Label 9090 2605 2    50   ~ 0
5V_driver_3
Text Label 9085 1675 2    50   ~ 0
5V_driver_2
Wire Wire Line
	1600 1255 1700 1255
Wire Wire Line
	1700 1255 1700 1355
$Comp
L power:GND #PWR04
U 1 1 5F954599
P 1700 1355
F 0 "#PWR04" H 1700 1105 50  0001 C CNN
F 1 "GND" H 1705 1182 50  0000 C CNN
F 2 "" H 1700 1355 50  0001 C CNN
F 3 "" H 1700 1355 50  0001 C CNN
	1    1700 1355
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F9557D0
P 2470 1205
F 0 "C2" H 2585 1251 50  0000 L CNN
F 1 ".1uf" H 2585 1160 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2508 1055 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/kemet/C320C104K5R5TA7303/3726160" H 2470 1205 50  0001 C CNN
	1    2470 1205
	1    0    0    -1  
$EndComp
Connection ~ 2470 1055
$Comp
L power:GND #PWR07
U 1 1 5F95927A
P 2470 1355
F 0 "#PWR07" H 2470 1105 50  0001 C CNN
F 1 "GND" H 2475 1182 50  0000 C CNN
F 2 "" H 2470 1355 50  0001 C CNN
F 3 "" H 2470 1355 50  0001 C CNN
	1    2470 1355
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F9594CC
P 2870 1355
F 0 "#PWR08" H 2870 1105 50  0001 C CNN
F 1 "GND" H 2875 1182 50  0000 C CNN
F 2 "" H 2870 1355 50  0001 C CNN
F 3 "" H 2870 1355 50  0001 C CNN
	1    2870 1355
	1    0    0    -1  
$EndComp
Text Label 9110 810  2    50   ~ 0
5V_driver_1
$Comp
L Device:Q_NMOS_GDS Q4
U 1 1 5F93F92D
P 10240 810
F 0 "Q4" H 10040 910 50  0000 L CNN
F 1 "FQP30N06L" H 9890 1010 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 10440 910 50  0001 C CNN
F 3 "http://cdn.sparkfun.com/datasheets/Components/General/FQP30N06L.pdf" H 10240 810 50  0001 C CNN
	1    10240 810 
	1    0    0    -1  
$EndComp
Text Label 1165 5940 2    50   ~ 0
3V_driver_4
Text Label 1165 5840 2    50   ~ 0
3V_driver_3
Text Label 1165 5740 2    50   ~ 0
3V_driver_2
Text Label 1165 5640 2    50   ~ 0
3V_driver_1
NoConn ~ 1600 1155
$Comp
L Device:CP C3
U 1 1 5F963A3D
P 2870 1205
F 0 "C3" H 2988 1251 50  0000 L CNN
F 1 "100uF" H 2988 1160 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2908 1055 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=JMK316ABJ107ML-T%20%20&u=M" H 2870 1205 50  0001 C CNN
	1    2870 1205
	1    0    0    -1  
$EndComp
Connection ~ 2870 1055
Wire Wire Line
	2870 1055 3120 1055
Wire Wire Line
	2470 1055 2870 1055
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J9
U 1 1 5F964A0E
P 6585 2075
F 0 "J9" H 6635 2392 50  0001 C CNN
F 1 "BTN7906B H-Bridge" H 6635 2300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 6585 2075 50  0001 C CNN
F 3 "http://www.adam-tech.com/downloader.php?p=PH2-XX-UA.pdf" H 6585 2075 50  0001 C CNN
	1    6585 2075
	1    0    0    -1  
$EndComp
Text Label 6335 1125 2    50   ~ 0
RPWM1
Text Label 6935 1125 0    50   ~ 0
LPWM1
$Comp
L power:GND #PWR033
U 1 1 5F96A22A
P 6885 1425
F 0 "#PWR033" H 6885 1175 50  0001 C CNN
F 1 "GND" H 6890 1252 50  0000 C CNN
F 2 "" H 6885 1425 50  0001 C CNN
F 3 "" H 6885 1425 50  0001 C CNN
	1    6885 1425
	1    0    0    -1  
$EndComp
Text Label 6335 1975 2    50   ~ 0
RPWM2
Text Label 6935 1975 0    50   ~ 0
LPWM2
$Comp
L power:GND #PWR034
U 1 1 5F96B4E3
P 6885 2275
F 0 "#PWR034" H 6885 2025 50  0001 C CNN
F 1 "GND" H 6890 2102 50  0000 C CNN
F 2 "" H 6885 2275 50  0001 C CNN
F 3 "" H 6885 2275 50  0001 C CNN
	1    6885 2275
	1    0    0    -1  
$EndComp
Text Label 1165 6740 2    50   ~ 0
PWM1
Text Label 1165 6840 2    50   ~ 0
DIR1
Text Label 1165 7140 2    50   ~ 0
PWM2
Text Label 1165 7240 2    50   ~ 0
DIR2
Text Label 10335 5910 0    50   ~ 0
5V_driver_3
Text Label 10335 5810 0    50   ~ 0
5V_driver_4
Text Label 9535 5910 2    50   ~ 0
5V_driver_2
Text Label 9535 5810 2    50   ~ 0
5V_driver_1
Text Label 10335 6010 0    50   ~ 0
3V_driver_3
Text Label 10335 5710 0    50   ~ 0
3V_driver_4
Text Label 9535 6010 2    50   ~ 0
3V_driver_2
Text Label 9535 5710 2    50   ~ 0
3V_driver_1
$Comp
L power:GND #PWR049
U 1 1 5F98624B
P 9885 6260
F 0 "#PWR049" H 9885 6010 50  0001 C CNN
F 1 "GND" H 9885 6110 50  0000 C CNN
F 2 "" H 9885 6260 50  0001 C CNN
F 3 "" H 9885 6260 50  0001 C CNN
	1    9885 6260
	1    0    0    -1  
$EndComp
NoConn ~ 9985 6260
$Comp
L Generic_Controller:CD40109BE U5
U 1 1 5F986251
P 9935 5510
F 0 "U5" H 9935 5160 50  0000 C CNN
F 1 "CD40109BE" H 10235 4760 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9735 5510 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/cd40109b.pdf?HQS=TI-null-null-digikeymode-df-pf-null-wwe&ts=1603291724922" H 9735 5510 50  0001 C CNN
	1    9935 5510
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5F9D7B09
P 9350 4090
F 0 "R9" H 9280 4044 50  0000 R CNN
F 1 "10K" H 9280 4135 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9280 4090 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/quarter_1percent.pdf" H 9350 4090 50  0001 C CNN
	1    9350 4090
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5F9D854D
P 9350 4240
F 0 "#PWR043" H 9350 3990 50  0001 C CNN
F 1 "GND" H 9355 4067 50  0000 C CNN
F 2 "" H 9350 4240 50  0001 C CNN
F 3 "" H 9350 4240 50  0001 C CNN
	1    9350 4240
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5F9DE15A
P 9365 3055
F 0 "R11" H 9295 3009 50  0000 R CNN
F 1 "10K" H 9295 3100 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9295 3055 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/quarter_1percent.pdf" H 9365 3055 50  0001 C CNN
	1    9365 3055
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5F9DE160
P 9365 3205
F 0 "#PWR045" H 9365 2955 50  0001 C CNN
F 1 "GND" H 9370 3032 50  0000 C CNN
F 2 "" H 9365 3205 50  0001 C CNN
F 3 "" H 9365 3205 50  0001 C CNN
	1    9365 3205
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F9DF266
P 9365 2125
F 0 "R10" H 9295 2079 50  0000 R CNN
F 1 "10K" H 9295 2170 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9295 2125 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/quarter_1percent.pdf" H 9365 2125 50  0001 C CNN
	1    9365 2125
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5F9DF26C
P 9365 2275
F 0 "#PWR044" H 9365 2025 50  0001 C CNN
F 1 "GND" H 9370 2102 50  0000 C CNN
F 2 "" H 9365 2275 50  0001 C CNN
F 3 "" H 9365 2275 50  0001 C CNN
	1    9365 2275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5F9E04FA
P 9385 1260
F 0 "R12" H 9315 1214 50  0000 R CNN
F 1 "10K" H 9315 1305 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9315 1260 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/quarter_1percent.pdf" H 9385 1260 50  0001 C CNN
	1    9385 1260
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR046
U 1 1 5F9E0500
P 9385 1410
F 0 "#PWR046" H 9385 1160 50  0001 C CNN
F 1 "GND" H 9385 1260 50  0000 C CNN
F 2 "" H 9385 1410 50  0001 C CNN
F 3 "" H 9385 1410 50  0001 C CNN
	1    9385 1410
	1    0    0    -1  
$EndComp
Wire Wire Line
	10515 2405 10515 2555
Text Notes 8465 4775 2    50   ~ 0
Connecting to a Color 320x240 TFT \nTouchscreen, ILI9341 Controller Chip
Text Notes 5435 625  0    50   ~ 0
Connecting to 2 BTN7960 43A High Power Motor Driver Modules
NoConn ~ 3365 5740
NoConn ~ 3365 5840
NoConn ~ 3365 6140
NoConn ~ 3365 6240
NoConn ~ 3365 7340
NoConn ~ 3365 7440
NoConn ~ 1165 7540
NoConn ~ 1165 7440
NoConn ~ 1165 7340
NoConn ~ 1165 7040
NoConn ~ 1165 6940
NoConn ~ 1165 6040
NoConn ~ 1165 5440
NoConn ~ 1165 5340
Wire Wire Line
	6335 1125 6385 1125
Wire Wire Line
	6885 1125 6935 1125
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J8
U 1 1 5F96589F
P 6585 1225
F 0 "J8" H 6635 1542 50  0001 C CNN
F 1 "BTN7960B H-Bridge" H 6635 1450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 6585 1225 50  0001 C CNN
F 3 "http://www.adam-tech.com/downloader.php?p=PH2-XX-UA.pdf" H 6585 1225 50  0001 C CNN
	1    6585 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	10515 1625 10515 1475
Wire Wire Line
	10515 1475 10315 1475
Wire Wire Line
	965  5240 1165 5240
Text Notes 9135 615  0    50   ~ 0
Mosfet Switches\n
Text Notes 9385 4960 0    50   ~ 0
3V3 -> 5V Logic Converters
$Comp
L power:+5V #PWR050
U 1 1 5F97B9FC
P 10085 5460
F 0 "#PWR050" H 10085 5310 50  0001 C CNN
F 1 "+5V" H 10100 5633 50  0000 C CNN
F 2 "" H 10085 5460 50  0001 C CNN
F 3 "" H 10085 5460 50  0001 C CNN
	1    10085 5460
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR054
U 1 1 5F97C452
P 10435 5610
F 0 "#PWR054" H 10435 5460 50  0001 C CNN
F 1 "+5V" H 10450 5783 50  0000 C CNN
F 2 "" H 10435 5610 50  0001 C CNN
F 3 "" H 10435 5610 50  0001 C CNN
	1    10435 5610
	1    0    0    -1  
$EndComp
Wire Wire Line
	10335 5610 10435 5610
$Comp
L power:+5V #PWR056
U 1 1 5F97EFE8
P 10935 6110
F 0 "#PWR056" H 10935 5960 50  0001 C CNN
F 1 "+5V" H 10950 6283 50  0000 C CNN
F 2 "" H 10935 6110 50  0001 C CNN
F 3 "" H 10935 6110 50  0001 C CNN
	1    10935 6110
	1    0    0    -1  
$EndComp
Wire Wire Line
	10935 6110 10335 6110
$Comp
L power:+5V #PWR042
U 1 1 5F9842CE
P 8935 6110
F 0 "#PWR042" H 8935 5960 50  0001 C CNN
F 1 "+5V" H 8950 6283 50  0000 C CNN
F 2 "" H 8935 6110 50  0001 C CNN
F 3 "" H 8935 6110 50  0001 C CNN
	1    8935 6110
	1    0    0    -1  
$EndComp
Wire Wire Line
	9535 5610 9385 5610
$Comp
L power:+5V #PWR047
U 1 1 5F9875BD
P 9385 5610
F 0 "#PWR047" H 9385 5460 50  0001 C CNN
F 1 "+5V" H 9400 5783 50  0000 C CNN
F 2 "" H 9385 5610 50  0001 C CNN
F 3 "" H 9385 5610 50  0001 C CNN
	1    9385 5610
	1    0    0    -1  
$EndComp
Wire Wire Line
	8935 6110 9535 6110
$Comp
L Device:R R15
U 1 1 5F9EB88C
P 9790 810
F 0 "R15" H 9720 764 50  0000 R CNN
F 1 "330" H 9720 855 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9720 810 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/eighth.pdf" H 9790 810 50  0001 C CNN
	1    9790 810 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9940 810  10040 810 
Wire Wire Line
	9890 3640 9940 3640
Wire Wire Line
	9965 2605 10015 2605
Wire Wire Line
	9915 1675 10015 1675
$Comp
L power:GND #PWR055
U 1 1 5FA040BB
P 10440 1010
F 0 "#PWR055" H 10440 760 50  0001 C CNN
F 1 "GND" H 10445 837 50  0000 C CNN
F 2 "" H 10440 1010 50  0001 C CNN
F 3 "" H 10440 1010 50  0001 C CNN
	1    10440 1010
	1    0    0    -1  
$EndComp
Connection ~ 10340 3840
Wire Wire Line
	10340 3840 10440 3840
Connection ~ 10415 2805
Wire Wire Line
	10415 2805 10515 2805
Connection ~ 10415 1875
Wire Wire Line
	10415 1875 10515 1875
Connection ~ 10440 1010
Wire Wire Line
	10440 1010 10540 1010
Text Notes 10315 2405 0    50   ~ 0
Drain
Text Notes 10065 2855 0    50   ~ 0
Source
$Comp
L power:GND #PWR052
U 1 1 5FA2A6DC
P 10415 1875
F 0 "#PWR052" H 10415 1625 50  0001 C CNN
F 1 "GND" H 10420 1702 50  0000 C CNN
F 2 "" H 10415 1875 50  0001 C CNN
F 3 "" H 10415 1875 50  0001 C CNN
	1    10415 1875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR053
U 1 1 5FA2A9DA
P 10415 2805
F 0 "#PWR053" H 10415 2555 50  0001 C CNN
F 1 "GND" H 10420 2632 50  0000 C CNN
F 2 "" H 10415 2805 50  0001 C CNN
F 3 "" H 10415 2805 50  0001 C CNN
	1    10415 2805
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 5FA2ADB4
P 10340 3840
F 0 "#PWR051" H 10340 3590 50  0001 C CNN
F 1 "GND" H 10345 3667 50  0000 C CNN
F 2 "" H 10340 3840 50  0001 C CNN
F 3 "" H 10340 3840 50  0001 C CNN
	1    10340 3840
	1    0    0    -1  
$EndComp
Text Notes 10315 1475 0    50   ~ 0
Drain
Text Notes 10065 1925 0    50   ~ 0
Source
Text Notes 10340 610  0    50   ~ 0
Drain
Text Notes 10090 1060 0    50   ~ 0
Source
Text Notes 10240 3440 0    50   ~ 0
Drain
Text Notes 9990 3890 0    50   ~ 0
Source
Wire Wire Line
	6335 1325 6385 1325
Wire Wire Line
	6935 1325 6885 1325
Wire Wire Line
	6935 1975 6885 1975
Wire Wire Line
	6335 1975 6385 1975
$Comp
L power:+5V #PWR029
U 1 1 5FA597DC
P 5835 2275
F 0 "#PWR029" H 5835 2125 50  0001 C CNN
F 1 "+5V" H 5850 2448 50  0000 C CNN
F 2 "" H 5835 2275 50  0001 C CNN
F 3 "" H 5835 2275 50  0001 C CNN
	1    5835 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6385 2275 6185 2275
$Comp
L power:+5V #PWR028
U 1 1 5FA5C560
P 5835 1425
F 0 "#PWR028" H 5835 1275 50  0001 C CNN
F 1 "+5V" H 5850 1598 50  0000 C CNN
F 2 "" H 5835 1425 50  0001 C CNN
F 3 "" H 5835 1425 50  0001 C CNN
	1    5835 1425
	1    0    0    -1  
$EndComp
Wire Wire Line
	6385 1425 6185 1425
$Comp
L power:+5V #PWR011
U 1 1 5FA5F0CC
P 3120 805
F 0 "#PWR011" H 3120 655 50  0001 C CNN
F 1 "+5V" H 3135 978 50  0000 C CNN
F 2 "" H 3120 805 50  0001 C CNN
F 3 "" H 3120 805 50  0001 C CNN
	1    3120 805 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR041
U 1 1 5FA638D5
P 7705 5075
F 0 "#PWR041" H 7705 4925 50  0001 C CNN
F 1 "+5V" H 7720 5248 50  0000 C CNN
F 2 "" H 7705 5075 50  0001 C CNN
F 3 "" H 7705 5075 50  0001 C CNN
	1    7705 5075
	1    0    0    -1  
$EndComp
Wire Wire Line
	7705 5075 7805 5075
Text Notes 10590 3490 0    50   ~ 0
+
Text Notes 10665 2455 0    50   ~ 0
+
Text Notes 10665 1525 0    50   ~ 0
+
Text Notes 10690 660  0    50   ~ 0
+
Text Notes 10590 3840 0    50   ~ 0
-\n
Text Notes 10665 2805 0    50   ~ 0
-\n
Text Notes 10665 1875 0    50   ~ 0
-\n
Text Notes 10690 1010 0    50   ~ 0
-\n
Text Notes 5015 4995 0    50   ~ 0
Connecting to a SparkFun Qwiic Quad Relay
$Comp
L power:GND #PWR023
U 1 1 5FA082FE
P 5515 5695
F 0 "#PWR023" H 5515 5445 50  0001 C CNN
F 1 "GND" H 5520 5522 50  0000 C CNN
F 2 "" H 5515 5695 50  0001 C CNN
F 3 "" H 5515 5695 50  0001 C CNN
	1    5515 5695
	1    0    0    -1  
$EndComp
NoConn ~ 3365 5440
Wire Wire Line
	5515 5695 5915 5695
$Comp
L power:+5V #PWR021
U 1 1 5FA11695
P 5315 5595
F 0 "#PWR021" H 5315 5445 50  0001 C CNN
F 1 "+5V" H 5330 5768 50  0000 C CNN
F 2 "" H 5315 5595 50  0001 C CNN
F 3 "" H 5315 5595 50  0001 C CNN
	1    5315 5595
	1    0    0    -1  
$EndComp
Wire Wire Line
	5315 5595 5915 5595
NoConn ~ 1165 6640
$Comp
L Regulator_Linear:NCP1117-3.3_TO252 U4
U 1 1 5FA19CFF
P 3620 1055
F 0 "U4" H 3620 1297 50  0000 C CNN
F 1 "NCP1117-3.3_TO252" H 3620 1206 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 3620 1280 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 3620 1055 50  0001 C CNN
	1    3620 1055
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5FA1CC2C
P 3620 1355
F 0 "#PWR014" H 3620 1105 50  0001 C CNN
F 1 "GND" H 3625 1182 50  0000 C CNN
F 2 "" H 3620 1355 50  0001 C CNN
F 3 "" H 3620 1355 50  0001 C CNN
	1    3620 1355
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 5FA20794
P 4170 805
F 0 "#PWR016" H 4170 655 50  0001 C CNN
F 1 "+3.3V" H 4185 978 50  0000 C CNN
F 2 "" H 4170 805 50  0001 C CNN
F 3 "" H 4170 805 50  0001 C CNN
	1    4170 805 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 5FA20CB6
P 5515 5295
F 0 "#PWR022" H 5515 5145 50  0001 C CNN
F 1 "+3.3V" H 5530 5468 50  0000 C CNN
F 2 "" H 5515 5295 50  0001 C CNN
F 3 "" H 5515 5295 50  0001 C CNN
	1    5515 5295
	1    0    0    -1  
$EndComp
Wire Wire Line
	7255 5375 7255 5325
Wire Wire Line
	7255 5375 7805 5375
$Comp
L power:+3.3V #PWR037
U 1 1 5FA25165
P 7255 5325
F 0 "#PWR037" H 7255 5175 50  0001 C CNN
F 1 "+3.3V" H 7270 5498 50  0000 C CNN
F 2 "" H 7255 5325 50  0001 C CNN
F 3 "" H 7255 5325 50  0001 C CNN
	1    7255 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	5515 5295 5915 5295
Wire Wire Line
	5915 5045 5915 5195
Wire Wire Line
	5765 5045 5915 5045
$Comp
L power:+3.3V #PWR048
U 1 1 5FA30536
P 9785 5460
F 0 "#PWR048" H 9785 5310 50  0001 C CNN
F 1 "+3.3V" H 9800 5633 50  0000 C CNN
F 2 "" H 9785 5460 50  0001 C CNN
F 3 "" H 9785 5460 50  0001 C CNN
	1    9785 5460
	1    0    0    -1  
$EndComp
Wire Wire Line
	10085 5460 9985 5460
Wire Wire Line
	9885 5460 9785 5460
Wire Wire Line
	3120 805  3120 1055
Wire Wire Line
	7305 5775 7205 5775
Wire Wire Line
	7205 5775 7205 5725
$Comp
L power:+5V #PWR036
U 1 1 5FA54E5B
P 7205 5725
F 0 "#PWR036" H 7205 5575 50  0001 C CNN
F 1 "+5V" H 7220 5898 50  0000 C CNN
F 2 "" H 7205 5725 50  0001 C CNN
F 3 "" H 7205 5725 50  0001 C CNN
	1    7205 5725
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5FA69BBB
P 2955 2580
F 0 "#PWR09" H 2955 2430 50  0001 C CNN
F 1 "+5V" H 2970 2753 50  0000 C CNN
F 2 "" H 2955 2580 50  0001 C CNN
F 3 "" H 2955 2580 50  0001 C CNN
	1    2955 2580
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5FA6A227
P 1885 2395
F 0 "#PWR05" H 1885 2245 50  0001 C CNN
F 1 "+5V" H 1900 2568 50  0000 C CNN
F 2 "" H 1885 2395 50  0001 C CNN
F 3 "" H 1885 2395 50  0001 C CNN
	1    1885 2395
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5FA706C3
P 2955 4430
F 0 "#PWR010" H 2955 4180 50  0001 C CNN
F 1 "GND" H 2955 4280 50  0000 C CNN
F 2 "" H 2955 4430 50  0001 C CNN
F 3 "" H 2955 4430 50  0001 C CNN
	1    2955 4430
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FA73F08
P 1900 4630
F 0 "#PWR06" H 1900 4380 50  0001 C CNN
F 1 "GND" H 1900 4480 50  0000 C CNN
F 2 "" H 1900 4630 50  0001 C CNN
F 3 "" H 1900 4630 50  0001 C CNN
	1    1900 4630
	1    0    0    -1  
$EndComp
Connection ~ 3120 1055
Text Label 1670 3320 2    50   ~ 0
DIR1
Text Label 1670 3670 2    50   ~ 0
DIR2
Text Label 2655 2730 2    50   ~ 0
DIR1
Text Label 2655 3180 2    50   ~ 0
DIR2
Text Label 3355 2830 0    50   ~ 0
RPWM1
Text Label 3355 3280 0    50   ~ 0
RPWM2
Text Label 3355 3730 0    50   ~ 0
LPWM1
Text Label 3355 4180 0    50   ~ 0
LPWM2
Text Label 2655 2930 2    50   ~ 0
PWM1
Text Label 2655 3830 2    50   ~ 0
PWM1
Text Label 2655 3380 2    50   ~ 0
PWM2
Text Label 2655 4280 2    50   ~ 0
PWM2
NoConn ~ 6935 1325
NoConn ~ 6335 1325
NoConn ~ 6885 2175
NoConn ~ 6385 2175
Wire Wire Line
	6385 1225 6185 1225
Wire Wire Line
	6185 1225 6185 1425
Connection ~ 6185 1425
Wire Wire Line
	6185 1425 5835 1425
$Comp
L power:+5V #PWR038
U 1 1 5FB1986B
P 7335 1225
F 0 "#PWR038" H 7335 1075 50  0001 C CNN
F 1 "+5V" H 7350 1398 50  0000 C CNN
F 2 "" H 7335 1225 50  0001 C CNN
F 3 "" H 7335 1225 50  0001 C CNN
	1    7335 1225
	1    0    0    -1  
$EndComp
Wire Wire Line
	6885 1225 7335 1225
Wire Wire Line
	6385 2075 6185 2075
Wire Wire Line
	6185 2075 6185 2275
Connection ~ 6185 2275
Wire Wire Line
	6185 2275 5835 2275
Wire Wire Line
	6885 2075 7335 2075
$Comp
L power:+5V #PWR039
U 1 1 5FB25E05
P 7335 2075
F 0 "#PWR039" H 7335 1925 50  0001 C CNN
F 1 "+5V" H 7350 2248 50  0000 C CNN
F 2 "" H 7335 2075 50  0001 C CNN
F 3 "" H 7335 2075 50  0001 C CNN
	1    7335 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	3120 1055 3320 1055
$Comp
L Device:R R14
U 1 1 5FB80376
P 9765 1675
F 0 "R14" H 9695 1629 50  0000 R CNN
F 1 "330" H 9695 1720 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9695 1675 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/eighth.pdf" H 9765 1675 50  0001 C CNN
	1    9765 1675
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 5FB809EF
P 9815 2605
F 0 "R16" H 9745 2559 50  0000 R CNN
F 1 "330" H 9745 2650 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9745 2605 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/eighth.pdf" H 9815 2605 50  0001 C CNN
	1    9815 2605
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 5FB810B2
P 9740 3640
F 0 "R13" H 9670 3594 50  0000 R CNN
F 1 "330" H 9670 3685 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9670 3640 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/eighth.pdf" H 9740 3640 50  0001 C CNN
	1    9740 3640
	0    -1   -1   0   
$EndComp
NoConn ~ 3365 7540
NoConn ~ 3365 7240
NoConn ~ 3365 7140
NoConn ~ 3365 7040
NoConn ~ 3365 6940
NoConn ~ 3365 6840
NoConn ~ 3365 6740
Wire Wire Line
	3365 6540 3565 6540
$Comp
L teensy:Teensy4.1 U2
U 1 1 5F8C5154
P 2265 7390
F 0 "U2" H 2250 9785 50  0000 C CNN
F 1 "Teensy4.1" H 2255 9705 50  0000 C CNN
F 2 "teensy:Teensy41" H 1865 7790 50  0001 C CNN
F 3 "https://www.pjrc.com/teensy/index.html" H 1865 7790 50  0001 C CNN
	1    2265 7390
	1    0    0    -1  
$EndComp
$Comp
L Generic_Controller:mu_CD74HCT08E U3
U 1 1 5FA4A1EE
P 3005 3530
F 0 "U3" H 3320 4550 50  0000 C CNN
F 1 "CD74HCT08E" H 3355 4450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 3005 3530 50  0001 C CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fcd74hct08" H 3005 3530 50  0001 C CNN
	1    3005 3530
	1    0    0    -1  
$EndComp
NoConn ~ 1670 4020
NoConn ~ 1670 4370
NoConn ~ 1670 2970
NoConn ~ 1670 2620
NoConn ~ 2120 2620
NoConn ~ 2120 2970
NoConn ~ 2120 4020
NoConn ~ 2120 4370
$Comp
L Device:C C1
U 1 1 5FC07BEB
P 1315 3375
F 0 "C1" H 1215 3475 50  0000 L CNN
F 1 ".1uf" H 1315 3275 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1353 3225 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/kemet/C320C104K5R5TA7303/3726160" H 1315 3375 50  0001 C CNN
	1    1315 3375
	1    0    0    -1  
$EndComp
Text Notes 2130 2235 0    50   ~ 0
DIR & PWM -> Left PWM & Right PWM\n
$Comp
L Generic_Controller:mu_CD74HCT04E U1
U 1 1 5FA48EE1
P 2020 3720
F 0 "U1" H 2300 3055 50  0000 C CNN
F 1 "CD74HCT04E" H 2210 2920 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2020 3720 50  0001 C CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fcd74hct04" H 2020 3720 50  0001 C CNN
	1    2020 3720
	1    0    0    -1  
$EndComp
Wire Wire Line
	2120 3670 2195 3670
Wire Wire Line
	2195 3670 2195 4080
Wire Wire Line
	2195 4080 2655 4080
Wire Wire Line
	2260 3630 2260 3320
Wire Wire Line
	2260 3320 2120 3320
Wire Wire Line
	2260 3630 2655 3630
$Comp
L power:+5V #PWR013
U 1 1 5FA5F510
P 3560 5210
F 0 "#PWR013" H 3560 5060 50  0001 C CNN
F 1 "+5V" H 3575 5383 50  0000 C CNN
F 2 "" H 3560 5210 50  0001 C CNN
F 3 "" H 3560 5210 50  0001 C CNN
	1    3560 5210
	1    0    0    -1  
$EndComp
Wire Wire Line
	3560 5240 3560 5210
Wire Wire Line
	3365 5240 3560 5240
Wire Wire Line
	3555 6640 3555 6690
Wire Wire Line
	3365 6640 3555 6640
$Comp
L Connector_Generic:Conn_01x01 J7
U 1 1 5FD73BEE
P 6490 6980
F 0 "J7" V 6454 6892 50  0000 R CNN
F 1 "GND_pin" V 6363 6892 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6490 6980 50  0001 C CNN
F 3 "~" H 6490 6980 50  0001 C CNN
	1    6490 6980
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FD6719B
P 3555 6690
F 0 "#PWR012" H 3555 6440 50  0001 C CNN
F 1 "GND" H 3560 6517 50  0000 C CNN
F 2 "" H 3555 6690 50  0001 C CNN
F 3 "" H 3555 6690 50  0001 C CNN
	1    3555 6690
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5FD824C2
P 6490 7180
F 0 "#PWR031" H 6490 6930 50  0001 C CNN
F 1 "GND" H 6495 7007 50  0000 C CNN
F 2 "" H 6490 7180 50  0001 C CNN
F 3 "" H 6490 7180 50  0001 C CNN
	1    6490 7180
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5FD90557
P 5895 6970
F 0 "J4" H 5975 6962 50  0000 L CNN
F 1 "Pin 23" H 5975 6871 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5895 6970 50  0001 C CNN
F 3 "~" H 5895 6970 50  0001 C CNN
	1    5895 6970
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5FD90ABC
P 5080 6960
F 0 "J2" H 5160 6952 50  0000 L CNN
F 1 "Pin 15" H 5160 6861 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5080 6960 50  0001 C CNN
F 3 "~" H 5080 6960 50  0001 C CNN
	1    5080 6960
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5FD90EC3
P 5905 7390
F 0 "J5" H 5985 7382 50  0000 L CNN
F 1 "Pin 22" H 5985 7291 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5905 7390 50  0001 C CNN
F 3 "~" H 5905 7390 50  0001 C CNN
	1    5905 7390
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5FD91E65
P 5090 7355
F 0 "J3" H 5170 7347 50  0000 L CNN
F 1 "Pin 14" H 5170 7256 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5090 7355 50  0001 C CNN
F 3 "~" H 5090 7355 50  0001 C CNN
	1    5090 7355
	1    0    0    -1  
$EndComp
Wire Wire Line
	3365 5540 3570 5540
Wire Wire Line
	3365 5640 3570 5640
Wire Wire Line
	3365 6340 3565 6340
Wire Wire Line
	3365 6440 3565 6440
Text Label 3565 6440 0    50   ~ 0
14
Text Label 3565 6340 0    50   ~ 0
15
Text Label 3890 5940 0    50   ~ 0
SCL
Text Label 3570 5640 0    50   ~ 0
22
Text Label 3570 5540 0    50   ~ 0
23
Text Label 4795 7355 2    50   ~ 0
14
Text Label 4795 6960 2    50   ~ 0
15
Text Label 5575 7390 2    50   ~ 0
22
Text Label 5555 6965 2    50   ~ 0
23
Wire Wire Line
	4795 7355 4890 7355
Wire Wire Line
	4880 6960 4795 6960
Wire Wire Line
	5695 6970 5555 6970
Wire Wire Line
	5555 6970 5555 6965
Wire Wire Line
	5705 7390 5575 7390
$Comp
L power:GND #PWR020
U 1 1 5FDE130A
P 4890 7455
F 0 "#PWR020" H 4890 7205 50  0001 C CNN
F 1 "GND" H 4895 7282 50  0000 C CNN
F 2 "" H 4890 7455 50  0001 C CNN
F 3 "" H 4890 7455 50  0001 C CNN
	1    4890 7455
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5FDE16DC
P 4880 7060
F 0 "#PWR019" H 4880 6810 50  0001 C CNN
F 1 "GND" H 4885 6887 50  0000 C CNN
F 2 "" H 4880 7060 50  0001 C CNN
F 3 "" H 4880 7060 50  0001 C CNN
	1    4880 7060
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5FDE20DE
P 5695 7070
F 0 "#PWR024" H 5695 6820 50  0001 C CNN
F 1 "GND" H 5700 6897 50  0000 C CNN
F 2 "" H 5695 7070 50  0001 C CNN
F 3 "" H 5695 7070 50  0001 C CNN
	1    5695 7070
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5FDE2675
P 5705 7490
F 0 "#PWR025" H 5705 7240 50  0001 C CNN
F 1 "GND" H 5710 7317 50  0000 C CNN
F 2 "" H 5705 7490 50  0001 C CNN
F 3 "" H 5705 7490 50  0001 C CNN
	1    5705 7490
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FE1C1CF
P 4170 1745
F 0 "#PWR017" H 4170 1495 50  0001 C CNN
F 1 "GND" H 4175 1572 50  0000 C CNN
F 2 "" H 4170 1745 50  0001 C CNN
F 3 "" H 4170 1745 50  0001 C CNN
	1    4170 1745
	1    0    0    -1  
$EndComp
Wire Wire Line
	4170 1445 4170 1395
Wire Wire Line
	3920 1055 4170 1055
Wire Wire Line
	4170 805  4170 1055
Wire Wire Line
	4170 1095 4170 1055
Connection ~ 4170 1055
Wire Wire Line
	6170 3240 6170 3035
Wire Wire Line
	5780 3230 5780 3015
Wire Wire Line
	5780 3605 5780 3530
Wire Wire Line
	6170 3600 6170 3540
Wire Wire Line
	5780 4035 5780 3905
Wire Wire Line
	6170 4030 6170 3900
$Comp
L power:GND #PWR030
U 1 1 5FE3FBA7
P 6170 4030
F 0 "#PWR030" H 6170 3780 50  0001 C CNN
F 1 "GND" H 6175 3857 50  0000 C CNN
F 2 "" H 6170 4030 50  0001 C CNN
F 3 "" H 6170 4030 50  0001 C CNN
	1    6170 4030
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5FE3F573
P 5780 4035
F 0 "#PWR027" H 5780 3785 50  0001 C CNN
F 1 "GND" H 5785 3862 50  0000 C CNN
F 2 "" H 5780 4035 50  0001 C CNN
F 3 "" H 5780 4035 50  0001 C CNN
	1    5780 4035
	1    0    0    -1  
$EndComp
Text Label 6170 3035 2    50   ~ 0
PWM2
Text Label 5780 3015 2    50   ~ 0
PWM1
$Comp
L Device:LED D2
U 1 1 5FE089D5
P 5780 3380
F 0 "D2" V 5819 3262 50  0000 R CNN
F 1 "LED" V 5728 3262 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5780 3380 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS22-2000-230/LTST-C191TBKT.pdf" H 5780 3380 50  0001 C CNN
	1    5780 3380
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1885 2395 1885 2435
Wire Wire Line
	1900 4540 1900 4630
$Comp
L power:+5V #PWR02
U 1 1 5FC689E8
P 1315 3070
F 0 "#PWR02" H 1315 2920 50  0001 C CNN
F 1 "+5V" H 1330 3243 50  0000 C CNN
F 2 "" H 1315 3070 50  0001 C CNN
F 3 "" H 1315 3070 50  0001 C CNN
	1    1315 3070
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FC690CE
P 1315 3645
F 0 "#PWR03" H 1315 3395 50  0001 C CNN
F 1 "GND" H 1315 3495 50  0000 C CNN
F 2 "" H 1315 3645 50  0001 C CNN
F 3 "" H 1315 3645 50  0001 C CNN
	1    1315 3645
	1    0    0    -1  
$EndComp
Wire Wire Line
	1315 3070 1315 3225
Wire Wire Line
	1315 3645 1315 3525
$Comp
L Switch:SW_SPST SW1
U 1 1 5FC9EB56
P 1865 1055
F 0 "SW1" H 1865 1290 50  0000 C CNN
F 1 "SW_SPST" H 1865 1199 50  0000 C CNN
F 2 "Generic_Controller:rockerSPST" H 1865 1055 50  0001 C CNN
F 3 "https://www.citrelay.com/Catalog%20Pages/SwitchCatalog/RA.pdf" H 1865 1055 50  0001 C CNN
	1    1865 1055
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1055 1665 1055
Wire Wire Line
	2065 1055 2470 1055
Wire Wire Line
	6940 3245 6940 3040
Wire Wire Line
	6550 3235 6550 3020
Wire Wire Line
	6550 3610 6550 3535
Wire Wire Line
	6940 3605 6940 3545
Wire Wire Line
	6550 4040 6550 3910
Wire Wire Line
	6940 4035 6940 3905
$Comp
L power:GND #PWR035
U 1 1 5FCBD93F
P 6940 4035
F 0 "#PWR035" H 6940 3785 50  0001 C CNN
F 1 "GND" H 6945 3862 50  0000 C CNN
F 2 "" H 6940 4035 50  0001 C CNN
F 3 "" H 6940 4035 50  0001 C CNN
	1    6940 4035
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5FCBD945
P 6550 4040
F 0 "#PWR032" H 6550 3790 50  0001 C CNN
F 1 "GND" H 6555 3867 50  0000 C CNN
F 2 "" H 6550 4040 50  0001 C CNN
F 3 "" H 6550 4040 50  0001 C CNN
	1    6550 4040
	1    0    0    -1  
$EndComp
Text Label 6940 3040 2    50   ~ 0
DIR2
Text Label 6550 3020 2    50   ~ 0
DIR1
$Comp
L Device:R R1
U 1 1 5FC42670
P 3760 5790
F 0 "R1" H 3920 5750 50  0000 R CNN
F 1 "2.2K" H 3955 5830 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3690 5790 50  0001 C CNN
F 3 "" H 3760 5790 50  0001 C CNN
	1    3760 5790
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5FC4EEA4
P 3775 5340
F 0 "#PWR015" H 3775 5090 50  0001 C CNN
F 1 "GND" H 3780 5167 50  0000 C CNN
F 2 "" H 3775 5340 50  0001 C CNN
F 3 "" H 3775 5340 50  0001 C CNN
	1    3775 5340
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 5340 3365 5340
Wire Wire Line
	3365 5940 3760 5940
Connection ~ 3760 5940
Wire Wire Line
	3760 5940 3890 5940
$Comp
L Device:R R3
U 1 1 5FC4358C
P 4170 5790
F 0 "R3" H 4100 5744 50  0000 R CNN
F 1 "2.2K" H 4100 5835 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4100 5790 50  0001 C CNN
F 3 "" H 4170 5790 50  0001 C CNN
	1    4170 5790
	-1   0    0    1   
$EndComp
Wire Wire Line
	3365 6040 4170 6040
Wire Wire Line
	4170 5940 4170 6040
Connection ~ 4170 6040
Wire Wire Line
	4170 6040 4270 6040
Wire Wire Line
	3760 5640 4170 5640
Wire Wire Line
	4170 5640 4170 5580
Connection ~ 4170 5640
$Comp
L power:+3.3V #PWR018
U 1 1 5FC91252
P 4170 5580
F 0 "#PWR018" H 4170 5430 50  0001 C CNN
F 1 "+3.3V" H 4185 5753 50  0000 C CNN
F 2 "" H 4170 5580 50  0001 C CNN
F 3 "" H 4170 5580 50  0001 C CNN
	1    4170 5580
	1    0    0    -1  
$EndComp
Text Notes 4905 6780 0    50   ~ 0
General Purpose DIOs and Ground Pin for testing\n
$Comp
L Device:R R4
U 1 1 5FC37875
P 5780 3755
F 0 "R4" H 5710 3709 50  0000 R CNN
F 1 "330" H 5710 3800 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5710 3755 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/eighth.pdf" H 5780 3755 50  0001 C CNN
	1    5780 3755
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FC3860F
P 6170 3750
F 0 "R5" H 6100 3704 50  0000 R CNN
F 1 "330" H 6100 3795 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6100 3750 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/eighth.pdf" H 6170 3750 50  0001 C CNN
	1    6170 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5FC38B48
P 6550 3760
F 0 "R6" H 6480 3714 50  0000 R CNN
F 1 "330" H 6480 3805 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6480 3760 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/eighth.pdf" H 6550 3760 50  0001 C CNN
	1    6550 3760
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5FC390B7
P 6940 3755
F 0 "R7" H 6870 3709 50  0000 R CNN
F 1 "330" H 6870 3800 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6870 3755 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/eighth.pdf" H 6940 3755 50  0001 C CNN
	1    6940 3755
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FC39836
P 4170 1245
F 0 "R2" H 4100 1199 50  0000 R CNN
F 1 "330" H 4100 1290 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4100 1245 50  0001 C CNN
F 3 "https://www.nteinc.com/resistor_web/pdf/eighth.pdf" H 4170 1245 50  0001 C CNN
	1    4170 1245
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5FC5959A
P 6170 3390
F 0 "D3" V 6209 3272 50  0000 R CNN
F 1 "LED" V 6118 3272 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6170 3390 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS22-2000-230/LTST-C191TBKT.pdf" H 6170 3390 50  0001 C CNN
	1    6170 3390
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5FC59BB5
P 6550 3385
F 0 "D4" V 6589 3267 50  0000 R CNN
F 1 "LED" V 6498 3267 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6550 3385 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS22-2000-230/LTST-C191TBKT.pdf" H 6550 3385 50  0001 C CNN
	1    6550 3385
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5FC5A4D3
P 6940 3395
F 0 "D5" V 6979 3277 50  0000 R CNN
F 1 "LED" V 6888 3277 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6940 3395 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS22-2000-230/LTST-C191TBKT.pdf" H 6940 3395 50  0001 C CNN
	1    6940 3395
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5FC5ABFB
P 9350 3790
F 0 "D6" V 9389 3672 50  0000 R CNN
F 1 "LED" V 9298 3672 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9350 3790 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS22-2000-230/LTST-C191TBKT.pdf" H 9350 3790 50  0001 C CNN
	1    9350 3790
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9010 3640 9350 3640
Connection ~ 9350 3640
Wire Wire Line
	9350 3640 9590 3640
$Comp
L Device:LED D8
U 1 1 5FC5CC0A
P 9365 2755
F 0 "D8" V 9404 2637 50  0000 R CNN
F 1 "LED" V 9313 2637 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9365 2755 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS22-2000-230/LTST-C191TBKT.pdf" H 9365 2755 50  0001 C CNN
	1    9365 2755
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9090 2605 9365 2605
Wire Wire Line
	9085 1675 9365 1675
Wire Wire Line
	9110 810  9385 810 
Connection ~ 9365 2605
Wire Wire Line
	9365 2605 9665 2605
$Comp
L Device:LED D7
U 1 1 5FC5DFE1
P 9365 1825
F 0 "D7" V 9404 1707 50  0000 R CNN
F 1 "LED" V 9313 1707 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9365 1825 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS22-2000-230/LTST-C191TBKT.pdf" H 9365 1825 50  0001 C CNN
	1    9365 1825
	0    -1   -1   0   
$EndComp
Connection ~ 9365 1675
Wire Wire Line
	9365 1675 9615 1675
$Comp
L Device:LED D9
U 1 1 5FC5E840
P 9385 960
F 0 "D9" V 9424 842 50  0000 R CNN
F 1 "LED" V 9333 842 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9385 960 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS22-2000-230/LTST-C191TBKT.pdf" H 9385 960 50  0001 C CNN
	1    9385 960 
	0    -1   -1   0   
$EndComp
Connection ~ 9385 810 
Wire Wire Line
	9385 810  9640 810 
$Comp
L Device:LED D1
U 1 1 5FC5F79E
P 4170 1595
F 0 "D1" V 4209 1477 50  0000 R CNN
F 1 "LED" V 4118 1477 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4170 1595 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS22-2000-230/LTST-C191TBKT.pdf" H 4170 1595 50  0001 C CNN
	1    4170 1595
	0    -1   -1   0   
$EndComp
Wire Notes Line
	4620 7795 4620 470 
Wire Notes Line
	4615 2030 470  2030
Wire Notes Line
	4620 2540 8110 2540
Wire Notes Line
	8110 465  8105 465 
Wire Notes Line
	4620 4395 8110 4395
Wire Notes Line
	8110 4510 11220 4510
Wire Notes Line
	8110 465  8110 4510
Wire Notes Line
	8665 4510 8665 6535
Wire Notes Line
	6930 4395 6930 6535
Wire Notes Line
	4620 6535 6970 6535
Wire Notes Line
	475  4935 4620 4935
Text Notes 5650 2720 0    50   ~ 0
LED Indicator lights for H-Bridges\n
$EndSCHEMATC
