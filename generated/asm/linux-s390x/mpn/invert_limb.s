















































	.text
	.align	16
	.text
	.align	8
	.globl	__gmpn_invert_limb 
	.type	__gmpn_invert_limb,@function
__gmpn_invert_limb:
	stg	%r9, 72(%r15)
	srlg	%r9, %r2, 55
	agr	%r9, %r9
	larl	%r4, approx_tab-512
	srlg	%r3, %r2, 24
	aghi	%r3, 1
	lghi	%r5, 1
	llgh	%r4, 0(%r9, %r4)
	sllg	%r9, %r4, 11
	msgr	%r4, %r4
	msgr	%r4, %r3
	srlg	%r4, %r4, 40
	aghi	%r9, -1
	sgr	%r9, %r4
	sllg	%r0, %r9, 60
	sllg	%r1, %r9, 13
	msgr	%r9, %r9
	msgr	%r9, %r3
	sgr	%r0, %r9
	ngr	%r5, %r2
	srlg	%r4, %r2, 1
	srlg	%r3, %r0, 47
	agr	%r3, %r1
	agr	%r4, %r5
	msgr	%r4, %r3
	srlg	%r1, %r3, 1
	lcgr	%r5, %r5
	ngr	%r1, %r5
	sgr	%r1, %r4
	mlgr	%r0, %r3
	srlg	%r9, %r0, 1
	sllg	%r4, %r3, 31
	agr	%r4, %r9
	lgr	%r1, %r4
	mlgr	%r0, %r2
	algr	%r1, %r2
	alcgr	%r0, %r2
	lgr	%r2, %r4
	sgr	%r2, %r0
	lg	%r9, 72(%r15)
	br	%r14
	.size	__gmpn_invert_limb,.-__gmpn_invert_limb
		.section	.rodata,"a",@progbits
	.align	2
approx_tab:
	.word	2045
	.word	2037
	.word	2029
	.word	2021
	.word	2013
	.word	2005
	.word	1998
	.word	1990
	.word	1983
	.word	1975
	.word	1968
	.word	1960
	.word	1953
	.word	1946
	.word	1938
	.word	1931
	.word	1924
	.word	1917
	.word	1910
	.word	1903
	.word	1896
	.word	1889
	.word	1883
	.word	1876
	.word	1869
	.word	1863
	.word	1856
	.word	1849
	.word	1843
	.word	1836
	.word	1830
	.word	1824
	.word	1817
	.word	1811
	.word	1805
	.word	1799
	.word	1792
	.word	1786
	.word	1780
	.word	1774
	.word	1768
	.word	1762
	.word	1756
	.word	1750
	.word	1745
	.word	1739
	.word	1733
	.word	1727
	.word	1722
	.word	1716
	.word	1710
	.word	1705
	.word	1699
	.word	1694
	.word	1688
	.word	1683
	.word	1677
	.word	1672
	.word	1667
	.word	1661
	.word	1656
	.word	1651
	.word	1646
	.word	1641
	.word	1636
	.word	1630
	.word	1625
	.word	1620
	.word	1615
	.word	1610
	.word	1605
	.word	1600
	.word	1596
	.word	1591
	.word	1586
	.word	1581
	.word	1576
	.word	1572
	.word	1567
	.word	1562
	.word	1558
	.word	1553
	.word	1548
	.word	1544
	.word	1539
	.word	1535
	.word	1530
	.word	1526
	.word	1521
	.word	1517
	.word	1513
	.word	1508
	.word	1504
	.word	1500
	.word	1495
	.word	1491
	.word	1487
	.word	1483
	.word	1478
	.word	1474
	.word	1470
	.word	1466
	.word	1462
	.word	1458
	.word	1454
	.word	1450
	.word	1446
	.word	1442
	.word	1438
	.word	1434
	.word	1430
	.word	1426
	.word	1422
	.word	1418
	.word	1414
	.word	1411
	.word	1407
	.word	1403
	.word	1399
	.word	1396
	.word	1392
	.word	1388
	.word	1384
	.word	1381
	.word	1377
	.word	1374
	.word	1370
	.word	1366
	.word	1363
	.word	1359
	.word	1356
	.word	1352
	.word	1349
	.word	1345
	.word	1342
	.word	1338
	.word	1335
	.word	1332
	.word	1328
	.word	1325
	.word	1322
	.word	1318
	.word	1315
	.word	1312
	.word	1308
	.word	1305
	.word	1302
	.word	1299
	.word	1295
	.word	1292
	.word	1289
	.word	1286
	.word	1283
	.word	1280
	.word	1276
	.word	1273
	.word	1270
	.word	1267
	.word	1264
	.word	1261
	.word	1258
	.word	1255
	.word	1252
	.word	1249
	.word	1246
	.word	1243
	.word	1240
	.word	1237
	.word	1234
	.word	1231
	.word	1228
	.word	1226
	.word	1223
	.word	1220
	.word	1217
	.word	1214
	.word	1211
	.word	1209
	.word	1206
	.word	1203
	.word	1200
	.word	1197
	.word	1195
	.word	1192
	.word	1189
	.word	1187
	.word	1184
	.word	1181
	.word	1179
	.word	1176
	.word	1173
	.word	1171
	.word	1168
	.word	1165
	.word	1163
	.word	1160
	.word	1158
	.word	1155
	.word	1153
	.word	1150
	.word	1148
	.word	1145
	.word	1143
	.word	1140
	.word	1138
	.word	1135
	.word	1133
	.word	1130
	.word	1128
	.word	1125
	.word	1123
	.word	1121
	.word	1118
	.word	1116
	.word	1113
	.word	1111
	.word	1109
	.word	1106
	.word	1104
	.word	1102
	.word	1099
	.word	1097
	.word	1095
	.word	1092
	.word	1090
	.word	1088
	.word	1086
	.word	1083
	.word	1081
	.word	1079
	.word	1077
	.word	1074
	.word	1072
	.word	1070
	.word	1068
	.word	1066
	.word	1064
	.word	1061
	.word	1059
	.word	1057
	.word	1055
	.word	1053
	.word	1051
	.word	1049
	.word	1047
	.word	1044
	.word	1042
	.word	1040
	.word	1038
	.word	1036
	.word	1034
	.word	1032
	.word	1030
	.word	1028
	.word	1026
	.word	1024

	.section .note.GNU-stack,"",@progbits
