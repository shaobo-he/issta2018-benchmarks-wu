; ModuleID = '<stdin>'
source_filename = "libg/blowfish.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashset_elem = type { i32, i16, i8 }
%struct.BLOWFISH_context = type { [256 x i32], [256 x i32], [256 x i32], [256 x i32], [18 x i32] }

@in_key = internal global [32 x i8] c"A\E1\03F\85\F7\E8\B8|aq\82\1D\DB8\83.\0FL*T,\07\F0KJ\07\95\D0\00\E8p", align 16
@ps = internal constant [18 x i32] [i32 608135816, i32 -2052912941, i32 320440878, i32 57701188, i32 -1542899678, i32 698298832, i32 137296536, i32 -330404727, i32 1160258022, i32 953160567, i32 -1101764913, i32 887688300, i32 -1062458953, i32 -914599715, i32 1065670069, i32 -1253635817, i32 -1843997223, i32 -1988494565], align 16
@ks0 = internal constant [256 x i32] [i32 -785314906, i32 -1730169428, i32 805139163, i32 -803545161, i32 -1193168915, i32 1780907670, i32 -1166241723, i32 -248741991, i32 614570311, i32 -1282315017, i32 134345442, i32 -2054226922, i32 1667834072, i32 1901547113, i32 -1537671517, i32 -191677058, i32 227898511, i32 1921955416, i32 1904987480, i32 -2112533778, i32 2069144605, i32 -1034266187, i32 -1674521287, i32 720527379, i32 -976113629, i32 677414384, i32 -901678824, i32 -1193592593, i32 -1904616272, i32 1614419982, i32 1822297739, i32 -1340175810, i32 -686458943, i32 -1120842969, i32 2024746970, i32 1432378464, i32 -430627341, i32 -1437226092, i32 1464375394, i32 1676153920, i32 1439316330, i32 715854006, i32 -1261675468, i32 289532110, i32 -1588296017, i32 2087905683, i32 -1276242927, i32 1668267050, i32 732546397, i32 1947742710, i32 -832815594, i32 -1685613794, i32 -1344882125, i32 1814351708, i32 2050118529, i32 680887927, i32 999245976, i32 1800124847, i32 -994056165, i32 1713906067, i32 1641548236, i32 -81679983, i32 1216130144, i32 1575780402, i32 -276538019, i32 -377129551, i32 -601480446, i32 -345695352, i32 596196993, i32 -745100091, i32 258830323, i32 -2081144263, i32 772490370, i32 -1534844924, i32 1774776394, i32 -1642095778, i32 566650946, i32 -152474470, i32 1728879713, i32 -1412200208, i32 1783734482, i32 -665571480, i32 -1777359064, i32 -1420741725, i32 1861159788, i32 326777828, i32 -1170476976, i32 2130389656, i32 -1578015459, i32 967770486, i32 1724537150, i32 -2109534584, i32 -1930525159, i32 1164943284, i32 2105845187, i32 998989502, i32 -529566248, i32 -2050940813, i32 1075463327, i32 1455516326, i32 1322494562, i32 910128902, i32 469688178, i32 1117454909, i32 936433444, i32 -804646328, i32 -619713837, i32 1240580251, i32 122909385, i32 -2137449605, i32 634681816, i32 -152510729, i32 -469872614, i32 -1233564613, i32 -1754472259, i32 79693498, i32 -1045868618, i32 1084186820, i32 1583128258, i32 426386531, i32 1761308591, i32 1047286709, i32 322548459, i32 995290223, i32 1845252383, i32 -1691314900, i32 -863943356, i32 -1352745719, i32 -1092366332, i32 -567063811, i32 1712269319, i32 422464435, i32 -1060394921, i32 1170764815, i32 -771006663, i32 -1177289765, i32 1434042557, i32 442511882, i32 -694091578, i32 1076654713, i32 1738483198, i32 -81812532, i32 -1901729288, i32 -617471240, i32 1014306527, i32 -43947243, i32 793779912, i32 -1392160085, i32 842905082, i32 -48003232, i32 1395751752, i32 1040244610, i32 -1638115397, i32 -898659168, i32 445077038, i32 -552113701, i32 -717051658, i32 679411651, i32 -1402522938, i32 -1940957837, i32 1767581616, i32 -1144366904, i32 -503340195, i32 -1192226400, i32 284835224, i32 -48135240, i32 1258075500, i32 768725851, i32 -1705778055, i32 -1225243291, i32 -762426948, i32 1274779536, i32 -505548070, i32 -1530167757, i32 1660621633, i32 -823867672, i32 -283063590, i32 913787905, i32 -797008130, i32 737222580, i32 -1780753843, i32 -1366257256, i32 -357724559, i32 1804850592, i32 -795946544, i32 -1345903136, i32 -1908647121, i32 -1904896841, i32 -1879645445, i32 -233690268, i32 -2004305902, i32 -1878134756, i32 1336762016, i32 1754252060, i32 -774901359, i32 -1280786003, i32 791618072, i32 -1106372745, i32 -361419266, i32 -1962795103, i32 -442446833, i32 -1250986776, i32 413987798, i32 -829824359, i32 -1264037920, i32 -49028937, i32 2093235073, i32 -760370983, i32 375366246, i32 -2137688315, i32 -1815317740, i32 555357303, i32 -424861595, i32 2008414854, i32 -950779147, i32 -73583153, i32 -338841844, i32 2067696032, i32 -700376109, i32 -1373733303, i32 2428461, i32 544322398, i32 577241275, i32 1471733935, i32 610547355, i32 -267798242, i32 1432588573, i32 1507829418, i32 2025931657, i32 -648391809, i32 545086370, i32 48609733, i32 -2094660746, i32 1653985193, i32 298326376, i32 1316178497, i32 -1287180854, i32 2064951626, i32 458293330, i32 -1705826027, i32 -703637697, i32 -1130641692, i32 727753846, i32 -2115603456, i32 146436021, i32 1461446943, i32 -224990101, i32 705550613, i32 -1235000031, i32 -407242314, i32 -13368018, i32 -981117340, i32 1404054877, i32 -1449160799, i32 146425753, i32 1854211946], align 16
@ks1 = internal constant [256 x i32] [i32 1266315497, i32 -1246549692, i32 -613086930, i32 -1004984797, i32 -1385257296, i32 1235738493, i32 -1662099272, i32 -1880247706, i32 -324367247, i32 1771706367, i32 1449415276, i32 -1028546847, i32 422970021, i32 1963543593, i32 -1604775104, i32 -468174274, i32 1062508698, i32 1531092325, i32 1804592342, i32 -1711849514, i32 -1580033017, i32 -269995787, i32 1294809318, i32 -265986623, i32 1289560198, i32 -2072974554, i32 1669523910, i32 35572830, i32 157838143, i32 1052438473, i32 1016535060, i32 1802137761, i32 1753167236, i32 1386275462, i32 -1214491899, i32 -1437595849, i32 1040679964, i32 2145300060, i32 -1904392980, i32 1461121720, i32 -1338320329, i32 -263189491, i32 -266592508, i32 33600511, i32 -1374882534, i32 1018524850, i32 629373528, i32 -603381315, i32 -779021319, i32 2091462646, i32 -1808644237, i32 586499841, i32 988145025, i32 935516892, i32 -927631820, i32 -1695294041, i32 -1455136442, i32 265290510, i32 -322386114, i32 -1535828415, i32 -499593831, i32 1005194799, i32 847297441, i32 406762289, i32 1314163512, i32 1332590856, i32 1866599683, i32 -167115585, i32 750260880, i32 613907577, i32 1450815602, i32 -1129346641, i32 -560302305, i32 -644675568, i32 -1282691566, i32 -590397650, i32 1427272223, i32 778793252, i32 1343938022, i32 -1618686585, i32 2052605720, i32 1946737175, i32 -1130390852, i32 -380928628, i32 -327488454, i32 -612033030, i32 1661551462, i32 -1000029230, i32 -283371449, i32 840292616, i32 -582796489, i32 616741398, i32 312560963, i32 711312465, i32 1351876610, i32 322626781, i32 1910503582, i32 271666773, i32 -2119403562, i32 1594956187, i32 70604529, i32 -677132437, i32 1007753275, i32 1495573769, i32 -225450259, i32 -1745748998, i32 -1631928532, i32 504708206, i32 -2031925904, i32 -353800271, i32 -2045878774, i32 1514023603, i32 1998579484, i32 1312622330, i32 694541497, i32 -1712906993, i32 -2143385130, i32 1382467621, i32 776784248, i32 -1676627094, i32 -971698502, i32 -1797068168, i32 -1510196141, i32 503983604, i32 -218673497, i32 907881277, i32 423175695, i32 432175456, i32 1378068232, i32 -149744970, i32 -340918674, i32 -356311194, i32 -474200683, i32 -1501837181, i32 -1317062703, i32 26017576, i32 -1020076561, i32 -1100195163, i32 1700274565, i32 1756076034, i32 -288447217, i32 -617638597, i32 720338349, i32 1533947780, i32 354530856, i32 688349552, i32 -321042571, i32 1637815568, i32 332179504, i32 -345916010, i32 53804574, i32 -1442618417, i32 -1250730864, i32 1282449977, i32 -711025141, i32 -877994476, i32 -288586052, i32 1617046695, i32 -1666491221, i32 -1292663698, i32 1686838959, i32 431878346, i32 -1608291911, i32 1700445008, i32 1080580658, i32 1009431731, i32 832498133, i32 -1071531785, i32 -1688990951, i32 -2023776103, i32 -1778935426, i32 1648197032, i32 -130578278, i32 -1746719369, i32 300782431, i32 375919233, i32 238389289, i32 -941219882, i32 -1763778655, i32 2019080857, i32 1475708069, i32 455242339, i32 -1685863425, i32 448939670, i32 -843904277, i32 1395535956, i32 -1881585436, i32 1841049896, i32 1491858159, i32 885456874, i32 -30872223, i32 -293847949, i32 1565136089, i32 -396052509, i32 1108368660, i32 540939232, i32 1173283510, i32 -1549095958, i32 -613658859, i32 -87339056, i32 -951913406, i32 -278217803, i32 1699691293, i32 1103962373, i32 -669091426, i32 -2038084153, i32 -464828566, i32 1031889488, i32 -815619598, i32 1535977030, i32 -58162272, i32 -1043876189, i32 2132092099, i32 1774941330, i32 1199868427, i32 1452454533, i32 157007616, i32 -1390851939, i32 342012276, i32 595725824, i32 1480756522, i32 206960106, i32 497939518, i32 591360097, i32 863170706, i32 -1919713727, i32 -698356495, i32 1814182875, i32 2094937945, i32 -873565088, i32 1082520231, i32 -831049106, i32 -1509457788, i32 435703966, i32 -386934699, i32 1641649973, i32 -1452693590, i32 -989067582, i32 1510255612, i32 -2146710820, i32 -1639679442, i32 -1018874748, i32 -36346107, i32 236887753, i32 -613164077, i32 274041037, i32 1734335097, i32 -479771840, i32 -976997275, i32 1899903192, i32 1026095262, i32 -244449504, i32 356393447, i32 -1884275382, i32 -421290197, i32 -612127241], align 16
@ks2 = internal constant [256 x i32] [i32 -381855128, i32 -1803468553, i32 -162781668, i32 -1805047500, i32 1091903735, i32 1979897079, i32 -1124832466, i32 -727580568, i32 -737663887, i32 857797738, i32 1136121015, i32 1342202287, i32 507115054, i32 -1759230650, i32 337727348, i32 -1081374656, i32 1301675037, i32 -1766485585, i32 1895095763, i32 1721773893, i32 -1078195732, i32 62756741, i32 2142006736, i32 835421444, i32 -1762973773, i32 1442658625, i32 -635090970, i32 -1412822374, i32 676362277, i32 1392781812, i32 170690266, i32 -373920261, i32 1759253602, i32 -683120384, i32 1745797284, i32 664899054, i32 1329594018, i32 -393761396, i32 -1249058810, i32 2062866102, i32 -1429332356, i32 -751345684, i32 -830954599, i32 1080764994, i32 553557557, i32 -638351943, i32 -298199125, i32 991055499, i32 499776247, i32 1265440854, i32 648242737, i32 -354183246, i32 980351604, i32 -581221582, i32 1749149687, i32 -898096901, i32 -83167922, i32 -654396521, i32 1161844396, i32 -1169648345, i32 1431517754, i32 545492359, i32 -26498633, i32 -795437749, i32 1437099964, i32 -1592419752, i32 -861329053, i32 -1713251533, i32 -1507177898, i32 1060185593, i32 1593081372, i32 -1876348548, i32 -34019326, i32 69676912, i32 -2135222948, i32 86519011, i32 -1782508216, i32 -456757982, i32 1220612927, i32 -955283748, i32 133810670, i32 1090789135, i32 1078426020, i32 1569222167, i32 845107691, i32 -711212847, i32 -222510705, i32 1091646820, i32 628848692, i32 1613405280, i32 -537335645, i32 526609435, i32 236106946, i32 48312990, i32 -1352249391, i32 -892239595, i32 1797494240, i32 859738849, i32 992217954, i32 -289490654, i32 -2051890674, i32 -424014439, i32 -562951028, i32 765654824, i32 -804095931, i32 -1783130883, i32 1685915746, i32 -405998096, i32 1414112111, i32 -2021832454, i32 -1013056217, i32 -214004450, i32 172450625, i32 -1724973196, i32 980381355, i32 -185008841, i32 -1475158944, i32 -1578377736, i32 -1726226100, i32 -613520627, i32 -964995824, i32 1835478071, i32 660984891, i32 -590288892, i32 -248967737, i32 -872349789, i32 -1254551662, i32 1762651403, i32 1719377915, i32 -824476260, i32 -1601057013, i32 -652910941, i32 -1156370552, i32 1364962596, i32 2073328063, i32 1983633131, i32 926494387, i32 -871278215, i32 -2144935273, i32 -198299347, i32 1749200295, i32 -966120645, i32 309677260, i32 2016342300, i32 1779581495, i32 -1215147545, i32 111262694, i32 1274766160, i32 443224088, i32 298511866, i32 1025883608, i32 -488520759, i32 1145181785, i32 168956806, i32 -653464466, i32 -710153686, i32 1689216846, i32 -628709281, i32 -1094719096, i32 1692713982, i32 -1648590761, i32 -252198778, i32 1618508792, i32 1610833997, i32 -771914938, i32 -164094032, i32 2001055236, i32 -684262196, i32 -2092799181, i32 -266425487, i32 -1333771897, i32 1006657119, i32 2006996926, i32 -1108824540, i32 1430667929, i32 -1084739999, i32 1314452623, i32 -220332638, i32 -193663176, i32 -2021016126, i32 1399257539, i32 -927756684, i32 -1267338667, i32 1190975929, i32 2062231137, i32 -1960976508, i32 -2073424263, i32 -1856006686, i32 1181637006, i32 548689776, i32 -1932175983, i32 -922558900, i32 -1190417183, i32 -1149106736, i32 296247880, i32 1970579870, i32 -1216407114, i32 -525738999, i32 1714227617, i32 -1003338189, i32 -396747006, i32 166772364, i32 1251581989, i32 493813264, i32 448347421, i32 195405023, i32 -1584991729, i32 677966185, i32 -591930749, i32 1463355134, i32 -1578971493, i32 1338867538, i32 1343315457, i32 -1492745222, i32 -1610435132, i32 233230375, i32 -1694987225, i32 2000651841, i32 -1017099258, i32 1638401717, i32 -266896856, i32 -1057650976, i32 6314154, i32 819756386, i32 300326615, i32 590932579, i32 1405279636, i32 -1027467724, i32 -1144263082, i32 -1866680610, i32 -335774303, i32 -833020554, i32 1862657033, i32 1266418056, i32 963775037, i32 2089974820, i32 -2031914401, i32 1917689273, i32 448879540, i32 -744572676, i32 -313240200, i32 150775221, i32 -667058989, i32 1303187396, i32 508620638, i32 -1318983944, i32 -1568336679, i32 1817252668, i32 1876281319, i32 1457606340, i32 908771278, i32 -574175177, i32 -677760460, i32 -1838972398, i32 1729034894, i32 1080033504], align 16
@ks3 = internal constant [256 x i32] [i32 976866871, i32 -738527793, i32 -1413318857, i32 1522871579, i32 1555064734, i32 1336096578, i32 -746444992, i32 -1715692610, i32 -720269667, i32 -1089506539, i32 -701686658, i32 -956251013, i32 -1215554709, i32 564236357, i32 -1301368386, i32 1781952180, i32 1464380207, i32 -1131123079, i32 -962365742, i32 1699332808, i32 1393555694, i32 1183702653, i32 -713881059, i32 1288719814, i32 691649499, i32 -1447410096, i32 -1399511320, i32 -1101077756, i32 -1577396752, i32 1781354906, i32 1676643554, i32 -1702433246, i32 -1064713544, i32 1126444790, i32 -1524759638, i32 -1661808476, i32 -2084544070, i32 -1679201715, i32 -1880812208, i32 -1167828010, i32 673620729, i32 -1489356063, i32 1269405062, i32 -279616791, i32 -953159725, i32 -145557542, i32 1057255273, i32 2012875353, i32 -2132498155, i32 -2018474495, i32 -1693849939, i32 993977747, i32 -376373926, i32 -1640704105, i32 753973209, i32 36408145, i32 -1764381638, i32 25011837, i32 -774947114, i32 2088578344, i32 530523599, i32 -1376601957, i32 1524020338, i32 1518925132, i32 -534139791, i32 -535190042, i32 1202760957, i32 -309069157, i32 -388774771, i32 674977740, i32 -120232407, i32 2031300136, i32 2019492241, i32 -311074731, i32 -141160892, i32 -472686964, i32 352677332, i32 -1997247046, i32 60907813, i32 90501309, i32 -1007968747, i32 1016092578, i32 -1759044884, i32 -1455814870, i32 457141659, i32 509813237, i32 -174299397, i32 652014361, i32 1966332200, i32 -1319764491, i32 55981186, i32 -1967506245, i32 676427537, i32 -1039476232, i32 -1412673177, i32 -861040033, i32 1307055953, i32 942726286, i32 933058658, i32 -1826555503, i32 -361066302, i32 -79791154, i32 1361170020, i32 2001714738, i32 -1464409218, i32 -1020707514, i32 1222529897, i32 1679025792, i32 -1565652976, i32 -580013532, i32 1770335741, i32 151462246, i32 -1281735158, i32 1682292957, i32 1483529935, i32 471910574, i32 1539241949, i32 458788160, i32 -858652289, i32 1807016891, i32 -576558466, i32 978976581, i32 1043663428, i32 -1129001515, i32 1927990952, i32 -94075717, i32 -1922690386, i32 -1086558393, i32 -761535389, i32 1412390302, i32 -1362987237, i32 -162634896, i32 1947078029, i32 -413461673, i32 -126740879, i32 -1353482915, i32 1077988104, i32 1320477388, i32 886195818, i32 18198404, i32 -508558296, i32 -1785185763, i32 112762804, i32 -831610808, i32 1866414978, i32 891333506, i32 18488651, i32 661792760, i32 1628790961, i32 -409780260, i32 -1153795797, i32 876946877, i32 -1601685023, i32 1372485963, i32 791857591, i32 -1608533303, i32 -534984578, i32 -1127755274, i32 -822013501, i32 -1578587449, i32 445679433, i32 -732971622, i32 -790962485, i32 -720709064, i32 54117162, i32 -963561881, i32 -1913048708, i32 -525259953, i32 -140617289, i32 1140177722, i32 -220915201, i32 668550556, i32 -1080614356, i32 367459370, i32 261225585, i32 -1684794075, i32 -85617823, i32 -826893077, i32 -1029151655, i32 314222801, i32 -1228863650, i32 -486184436, i32 282218597, i32 -888953790, i32 -521376242, i32 379116347, i32 1285071038, i32 846784868, i32 -1625320142, i32 -523005217, i32 -744475605, i32 -1989021154, i32 453669953, i32 1268987020, i32 -977374944, i32 -1015663912, i32 -550133875, i32 -1684459730, i32 -435458233, i32 266596637, i32 -447948204, i32 517658769, i32 -832407089, i32 -851542417, i32 370717030, i32 -47440635, i32 -2070949179, i32 -151313767, i32 -182193321, i32 -1506642397, i32 -1817692879, i32 1456262402, i32 -1393524382, i32 1517677493, i32 1846949527, i32 -1999473716, i32 -560569710, i32 -2118563376, i32 1280348187, i32 1908823572, i32 -423180355, i32 846861322, i32 1172426758, i32 -1007518822, i32 -911584259, i32 1655181056, i32 -1155153950, i32 901632758, i32 1897031941, i32 -1308360158, i32 -1228157060, i32 -847864789, i32 1393639104, i32 373351379, i32 950779232, i32 625454576, i32 -1170726756, i32 -146354570, i32 2007998917, i32 544563296, i32 -2050228658, i32 -1964470824, i32 2058025392, i32 1291430526, i32 424198748, i32 50039436, i32 29584100, i32 -689184263, i32 -1865090967, i32 -1503863136, i32 1057563949, i32 -1039604065, i32 -1219600078, i32 -831004069, i32 1469046755, i32 985887462], align 16

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca [1020 x %struct.hashset_elem], align 16
  %2 = alloca [4 x [256 x %struct.hashset_elem]], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.BLOWFISH_context, align 4
  %6 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %2, i32 0, i32 0
  %7 = bitcast [256 x %struct.hashset_elem]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 8192, i32 16, i1 false) #2
  br label %.preheader50102

.preheader50102:                                  ; preds = %0
  %8 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %9 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i64 0, i64 0
  store i32 608135816, i32* %9, align 4
  %10 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %11 = getelementptr inbounds [18 x i32], [18 x i32]* %10, i64 0, i64 1
  store i32 -2052912941, i32* %11, align 4
  %12 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %13 = getelementptr inbounds [18 x i32], [18 x i32]* %12, i64 0, i64 2
  store i32 320440878, i32* %13, align 4
  %14 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %15 = getelementptr inbounds [18 x i32], [18 x i32]* %14, i64 0, i64 3
  store i32 57701188, i32* %15, align 4
  %16 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %17 = getelementptr inbounds [18 x i32], [18 x i32]* %16, i64 0, i64 4
  store i32 -1542899678, i32* %17, align 4
  %18 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %19 = getelementptr inbounds [18 x i32], [18 x i32]* %18, i64 0, i64 5
  store i32 698298832, i32* %19, align 4
  %20 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %21 = getelementptr inbounds [18 x i32], [18 x i32]* %20, i64 0, i64 6
  store i32 137296536, i32* %21, align 4
  %22 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %23 = getelementptr inbounds [18 x i32], [18 x i32]* %22, i64 0, i64 7
  store i32 -330404727, i32* %23, align 4
  %24 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %25 = getelementptr inbounds [18 x i32], [18 x i32]* %24, i64 0, i64 8
  store i32 1160258022, i32* %25, align 4
  %26 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %27 = getelementptr inbounds [18 x i32], [18 x i32]* %26, i64 0, i64 9
  store i32 953160567, i32* %27, align 4
  %28 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %29 = getelementptr inbounds [18 x i32], [18 x i32]* %28, i64 0, i64 10
  store i32 -1101764913, i32* %29, align 4
  %30 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %31 = getelementptr inbounds [18 x i32], [18 x i32]* %30, i64 0, i64 11
  store i32 887688300, i32* %31, align 4
  %32 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %33 = getelementptr inbounds [18 x i32], [18 x i32]* %32, i64 0, i64 12
  store i32 -1062458953, i32* %33, align 4
  %34 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %35 = getelementptr inbounds [18 x i32], [18 x i32]* %34, i64 0, i64 13
  store i32 -914599715, i32* %35, align 4
  %36 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %37 = getelementptr inbounds [18 x i32], [18 x i32]* %36, i64 0, i64 14
  store i32 1065670069, i32* %37, align 4
  %38 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %39 = getelementptr inbounds [18 x i32], [18 x i32]* %38, i64 0, i64 15
  store i32 -1253635817, i32* %39, align 4
  %40 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %41 = getelementptr inbounds [18 x i32], [18 x i32]* %40, i64 0, i64 16
  store i32 -1843997223, i32* %41, align 4
  %42 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %43 = getelementptr inbounds [18 x i32], [18 x i32]* %42, i64 0, i64 17
  store i32 -1988494565, i32* %43, align 4
  br label %44

.preheader49:                                     ; preds = %44
  %.2.ph = phi i32 [ 0, %44 ]
  %.01.ph = phi i32 [ 0, %44 ]
  br label %71

; <label>:44:                                     ; preds = %.preheader50102, %44
  %.1100 = phi i32 [ 0, %.preheader50102 ], [ %69, %44 ]
  %45 = sext i32 %.1100 to i64
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @ks0, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %.1100 to i64
  %49 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 0
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %49, i64 0, i64 %48
  store i32 %47, i32* %50, align 4
  %51 = sext i32 %.1100 to i64
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* @ks1, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %.1100 to i64
  %55 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 1
  %56 = getelementptr inbounds [256 x i32], [256 x i32]* %55, i64 0, i64 %54
  store i32 %53, i32* %56, align 4
  %57 = sext i32 %.1100 to i64
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* @ks2, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %.1100 to i64
  %61 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 2
  %62 = getelementptr inbounds [256 x i32], [256 x i32]* %61, i64 0, i64 %60
  store i32 %59, i32* %62, align 4
  %63 = sext i32 %.1100 to i64
  %64 = getelementptr inbounds [256 x i32], [256 x i32]* @ks3, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %.1100 to i64
  %67 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 3
  %68 = getelementptr inbounds [256 x i32], [256 x i32]* %67, i64 0, i64 %66
  store i32 %65, i32* %68, align 4
  %69 = add nsw i32 %.1100, 1
  %70 = icmp slt i32 %69, 256
  br i1 %70, label %44, label %.preheader49

; <label>:71:                                     ; preds = %.preheader49, %71
  %.0199 = phi i32 [ %.01.ph, %.preheader49 ], [ %106, %71 ]
  %.298 = phi i32 [ %.2.ph, %.preheader49 ], [ %107, %71 ]
  %72 = sext i32 %.0199 to i64
  %73 = getelementptr inbounds i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 0), i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 24
  %77 = add nsw i32 %.0199, 1
  %78 = urem i32 %77, 16
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 0), i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 16
  %84 = or i32 %76, %83
  %85 = add nsw i32 %.0199, 2
  %86 = urem i32 %85, 16
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 0), i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl i32 %90, 8
  %92 = or i32 %84, %91
  %93 = add nsw i32 %.0199, 3
  %94 = urem i32 %93, 16
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 0), i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %92, %98
  %100 = sext i32 %.298 to i64
  %101 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %102 = getelementptr inbounds [18 x i32], [18 x i32]* %101, i64 0, i64 %100
  %103 = load i32, i32* %102, align 4
  %104 = xor i32 %103, %99
  store i32 %104, i32* %102, align 4
  %105 = add nsw i32 %.0199, 4
  %106 = urem i32 %105, 16
  %107 = add nsw i32 %.298, 1
  %108 = icmp slt i32 %107, 18
  br i1 %108, label %71, label %109

; <label>:109:                                    ; preds = %71
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %.preheader4897

.preheader4897:                                   ; preds = %109
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %110 = load i32, i32* %3, align 4
  %111 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %112 = getelementptr inbounds [18 x i32], [18 x i32]* %111, i64 0, i64 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %4, align 4
  %114 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %115 = getelementptr inbounds [18 x i32], [18 x i32]* %114, i64 0, i64 1
  store i32 %113, i32* %115, align 4
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %116 = load i32, i32* %3, align 4
  %117 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %118 = getelementptr inbounds [18 x i32], [18 x i32]* %117, i64 0, i64 2
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %4, align 4
  %120 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %121 = getelementptr inbounds [18 x i32], [18 x i32]* %120, i64 0, i64 3
  store i32 %119, i32* %121, align 4
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %122 = load i32, i32* %3, align 4
  %123 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %124 = getelementptr inbounds [18 x i32], [18 x i32]* %123, i64 0, i64 4
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %4, align 4
  %126 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %127 = getelementptr inbounds [18 x i32], [18 x i32]* %126, i64 0, i64 5
  store i32 %125, i32* %127, align 4
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %128 = load i32, i32* %3, align 4
  %129 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %130 = getelementptr inbounds [18 x i32], [18 x i32]* %129, i64 0, i64 6
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %4, align 4
  %132 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %133 = getelementptr inbounds [18 x i32], [18 x i32]* %132, i64 0, i64 7
  store i32 %131, i32* %133, align 4
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %134 = load i32, i32* %3, align 4
  %135 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %136 = getelementptr inbounds [18 x i32], [18 x i32]* %135, i64 0, i64 8
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %4, align 4
  %138 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %139 = getelementptr inbounds [18 x i32], [18 x i32]* %138, i64 0, i64 9
  store i32 %137, i32* %139, align 4
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %140 = load i32, i32* %3, align 4
  %141 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %142 = getelementptr inbounds [18 x i32], [18 x i32]* %141, i64 0, i64 10
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %4, align 4
  %144 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %145 = getelementptr inbounds [18 x i32], [18 x i32]* %144, i64 0, i64 11
  store i32 %143, i32* %145, align 4
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %146 = load i32, i32* %3, align 4
  %147 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %148 = getelementptr inbounds [18 x i32], [18 x i32]* %147, i64 0, i64 12
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %4, align 4
  %150 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %151 = getelementptr inbounds [18 x i32], [18 x i32]* %150, i64 0, i64 13
  store i32 %149, i32* %151, align 4
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %152 = load i32, i32* %3, align 4
  %153 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %154 = getelementptr inbounds [18 x i32], [18 x i32]* %153, i64 0, i64 14
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %4, align 4
  %156 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %157 = getelementptr inbounds [18 x i32], [18 x i32]* %156, i64 0, i64 15
  store i32 %155, i32* %157, align 4
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %158 = load i32, i32* %3, align 4
  %159 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %160 = getelementptr inbounds [18 x i32], [18 x i32]* %159, i64 0, i64 16
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %4, align 4
  %162 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 4
  %163 = getelementptr inbounds [18 x i32], [18 x i32]* %162, i64 0, i64 17
  store i32 %161, i32* %163, align 4
  br label %164

.preheader43:                                     ; preds = %280
  %.326.ph = phi i32 [ %.225, %280 ]
  %.14.ph = phi i32 [ %...03, %280 ]
  %.5.ph = phi i32 [ 0, %280 ]
  br label %284

; <label>:164:                                    ; preds = %.preheader4897, %280
  %.495 = phi i32 [ 0, %.preheader4897 ], [ %282, %280 ]
  %.0394 = phi i32 [ 0, %.preheader4897 ], [ %...03, %280 ]
  %.02392 = phi i32 [ 0, %.preheader4897 ], [ %.225, %280 ]
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %.495 to i64
  %167 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 0
  %168 = getelementptr inbounds [256 x i32], [256 x i32]* %167, i64 0, i64 %166
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %.495, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 0
  %173 = getelementptr inbounds [256 x i32], [256 x i32]* %172, i64 0, i64 %171
  store i32 %169, i32* %173, align 4
  %174 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %2, i64 0, i64 0
  %175 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %174, i32 0, i32 0
  %176 = load i32, i32* %3, align 4
  %177 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %1, i32 0, i32 0
  %178 = lshr i32 %176, 24
  %179 = lshr i32 %176, 16
  %180 = xor i32 %178, %179
  %181 = lshr i32 %176, 8
  %182 = xor i32 %180, %181
  %183 = xor i32 %182, %176
  %184 = trunc i32 %183 to i8
  %185 = zext i8 %184 to i64
  %186 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %175, i64 %185
  %187 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %186, i32 0, i32 2
  %188 = load i8, i8* %187, align 2
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 0
  %191 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %186, i32 0, i32 0
  br i1 %190, label %192, label %195

; <label>:192:                                    ; preds = %164
  store i32 %176, i32* %191, align 4
  %193 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %186, i32 0, i32 1
  store i16 -1, i16* %193, align 4
  %194 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %186, i32 0, i32 2
  store i8 1, i8* %194, align 2
  br label %226

; <label>:195:                                    ; preds = %164
  %196 = load i32, i32* %191, align 4
  %197 = icmp eq i32 %196, %176
  br i1 %197, label %226, label %.preheader46

.preheader46:                                     ; preds = %195
  %198 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %186, i32 0, i32 1
  %199 = load i16, i16* %198, align 4
  %200 = sext i16 %199 to i32
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %.lr.ph85, label %215

.lr.ph85:                                         ; preds = %.preheader46
  br label %202

; <label>:202:                                    ; preds = %.lr.ph85, %206
  %.0984 = phi %struct.hashset_elem* [ %186, %.lr.ph85 ], [ %210, %206 ]
  %203 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.0984, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, %176
  br i1 %205, label %.loopexit47, label %206

; <label>:206:                                    ; preds = %202
  %207 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.0984, i32 0, i32 1
  %208 = load i16, i16* %207, align 4
  %209 = sext i16 %208 to i64
  %210 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %177, i64 %209
  %211 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %210, i32 0, i32 1
  %212 = load i16, i16* %211, align 4
  %213 = sext i16 %212 to i32
  %214 = icmp sge i32 %213, 0
  br i1 %214, label %202, label %._crit_edge86

._crit_edge86:                                    ; preds = %206
  %split87 = phi %struct.hashset_elem* [ %210, %206 ]
  br label %215

; <label>:215:                                    ; preds = %._crit_edge86, %.preheader46
  %.02393 = phi i32 [ %.02392, %._crit_edge86 ], [ %.02392, %.preheader46 ]
  %.09.lcssa = phi %struct.hashset_elem* [ %split87, %._crit_edge86 ], [ %186, %.preheader46 ]
  %216 = add nsw i32 %.02393, 1
  %217 = trunc i32 %.02392 to i16
  %218 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.09.lcssa, i32 0, i32 1
  store i16 %217, i16* %218, align 4
  %219 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.09.lcssa, i32 0, i32 1
  %220 = load i16, i16* %219, align 4
  %221 = sext i16 %220 to i64
  %222 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %177, i64 %221
  %223 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %222, i32 0, i32 0
  store i32 %176, i32* %223, align 4
  %224 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %222, i32 0, i32 1
  store i16 -1, i16* %224, align 4
  %225 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %222, i32 0, i32 2
  store i8 1, i8* %225, align 2
  br label %226

.loopexit47:                                      ; preds = %202
  %.124.ph = phi i32 [ %.02392, %202 ]
  %.010.ph = phi i32 [ 1, %202 ]
  br label %226

; <label>:226:                                    ; preds = %.loopexit47, %195, %215, %192
  %.124 = phi i32 [ %.02392, %192 ], [ %216, %215 ], [ %.02392, %195 ], [ %.124.ph, %.loopexit47 ]
  %.010 = phi i32 [ 0, %192 ], [ 0, %215 ], [ 1, %195 ], [ %.010.ph, %.loopexit47 ]
  %227 = icmp ne i32 %.010, 0
  %..03 = select i1 %227, i32 1, i32 %.0394
  %228 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %2, i64 0, i64 0
  %229 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %228, i32 0, i32 0
  %230 = load i32, i32* %4, align 4
  %231 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %1, i32 0, i32 0
  %232 = lshr i32 %230, 24
  %233 = lshr i32 %230, 16
  %234 = xor i32 %232, %233
  %235 = lshr i32 %230, 8
  %236 = xor i32 %234, %235
  %237 = xor i32 %236, %230
  %238 = trunc i32 %237 to i8
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %229, i64 %239
  %241 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %240, i32 0, i32 2
  %242 = load i8, i8* %241, align 2
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 0
  %245 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %240, i32 0, i32 0
  br i1 %244, label %246, label %249

; <label>:246:                                    ; preds = %226
  store i32 %230, i32* %245, align 4
  %247 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %240, i32 0, i32 1
  store i16 -1, i16* %247, align 4
  %248 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %240, i32 0, i32 2
  store i8 1, i8* %248, align 2
  br label %280

; <label>:249:                                    ; preds = %226
  %250 = load i32, i32* %245, align 4
  %251 = icmp eq i32 %250, %230
  br i1 %251, label %280, label %.preheader44

.preheader44:                                     ; preds = %249
  %252 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %240, i32 0, i32 1
  %253 = load i16, i16* %252, align 4
  %254 = sext i16 %253 to i32
  %255 = icmp sge i32 %254, 0
  br i1 %255, label %.lr.ph89, label %269

.lr.ph89:                                         ; preds = %.preheader44
  br label %256

; <label>:256:                                    ; preds = %.lr.ph89, %260
  %.01788 = phi %struct.hashset_elem* [ %240, %.lr.ph89 ], [ %264, %260 ]
  %257 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.01788, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, %230
  br i1 %259, label %.loopexit45, label %260

; <label>:260:                                    ; preds = %256
  %261 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.01788, i32 0, i32 1
  %262 = load i16, i16* %261, align 4
  %263 = sext i16 %262 to i64
  %264 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %231, i64 %263
  %265 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %264, i32 0, i32 1
  %266 = load i16, i16* %265, align 4
  %267 = sext i16 %266 to i32
  %268 = icmp sge i32 %267, 0
  br i1 %268, label %256, label %._crit_edge90

._crit_edge90:                                    ; preds = %260
  %split91 = phi %struct.hashset_elem* [ %264, %260 ]
  br label %269

; <label>:269:                                    ; preds = %._crit_edge90, %.preheader44
  %.017.lcssa = phi %struct.hashset_elem* [ %split91, %._crit_edge90 ], [ %240, %.preheader44 ]
  %270 = add nsw i32 %.124, 1
  %271 = trunc i32 %.124 to i16
  %272 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.017.lcssa, i32 0, i32 1
  store i16 %271, i16* %272, align 4
  %273 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.017.lcssa, i32 0, i32 1
  %274 = load i16, i16* %273, align 4
  %275 = sext i16 %274 to i64
  %276 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %231, i64 %275
  %277 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %276, i32 0, i32 0
  store i32 %230, i32* %277, align 4
  %278 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %276, i32 0, i32 1
  store i16 -1, i16* %278, align 4
  %279 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %276, i32 0, i32 2
  store i8 1, i8* %279, align 2
  br label %280

.loopexit45:                                      ; preds = %256
  %.225.ph = phi i32 [ %.124, %256 ]
  %.018.ph = phi i32 [ 1, %256 ]
  br label %280

; <label>:280:                                    ; preds = %.loopexit45, %249, %269, %246
  %.225 = phi i32 [ %.124, %246 ], [ %270, %269 ], [ %.124, %249 ], [ %.225.ph, %.loopexit45 ]
  %.018 = phi i32 [ 0, %246 ], [ 0, %269 ], [ 1, %249 ], [ %.018.ph, %.loopexit45 ]
  %281 = icmp ne i32 %.018, 0
  %...03 = select i1 %281, i32 1, i32 %..03
  %282 = add nsw i32 %.495, 2
  %283 = icmp slt i32 %282, 256
  br i1 %283, label %164, label %.preheader43

.preheader38:                                     ; preds = %400
  %.629.ph = phi i32 [ %.528, %400 ]
  %.25.ph = phi i32 [ %...14, %400 ]
  %.6.ph = phi i32 [ 0, %400 ]
  br label %404

; <label>:284:                                    ; preds = %.preheader43, %400
  %.583 = phi i32 [ %.5.ph, %.preheader43 ], [ %402, %400 ]
  %.1482 = phi i32 [ %.14.ph, %.preheader43 ], [ %...14, %400 ]
  %.32680 = phi i32 [ %.326.ph, %.preheader43 ], [ %.528, %400 ]
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %285 = load i32, i32* %3, align 4
  %286 = sext i32 %.583 to i64
  %287 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 1
  %288 = getelementptr inbounds [256 x i32], [256 x i32]* %287, i64 0, i64 %286
  store i32 %285, i32* %288, align 4
  %289 = load i32, i32* %4, align 4
  %290 = add nsw i32 %.583, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 1
  %293 = getelementptr inbounds [256 x i32], [256 x i32]* %292, i64 0, i64 %291
  store i32 %289, i32* %293, align 4
  %294 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %2, i64 0, i64 1
  %295 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %294, i32 0, i32 0
  %296 = load i32, i32* %3, align 4
  %297 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %1, i32 0, i32 0
  %298 = lshr i32 %296, 24
  %299 = lshr i32 %296, 16
  %300 = xor i32 %298, %299
  %301 = lshr i32 %296, 8
  %302 = xor i32 %300, %301
  %303 = xor i32 %302, %296
  %304 = trunc i32 %303 to i8
  %305 = zext i8 %304 to i64
  %306 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %295, i64 %305
  %307 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %306, i32 0, i32 2
  %308 = load i8, i8* %307, align 2
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 0
  %311 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %306, i32 0, i32 0
  br i1 %310, label %312, label %315

; <label>:312:                                    ; preds = %284
  store i32 %296, i32* %311, align 4
  %313 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %306, i32 0, i32 1
  store i16 -1, i16* %313, align 4
  %314 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %306, i32 0, i32 2
  store i8 1, i8* %314, align 2
  br label %346

; <label>:315:                                    ; preds = %284
  %316 = load i32, i32* %311, align 4
  %317 = icmp eq i32 %316, %296
  br i1 %317, label %346, label %.preheader41

.preheader41:                                     ; preds = %315
  %318 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %306, i32 0, i32 1
  %319 = load i16, i16* %318, align 4
  %320 = sext i16 %319 to i32
  %321 = icmp sge i32 %320, 0
  br i1 %321, label %.lr.ph73, label %335

.lr.ph73:                                         ; preds = %.preheader41
  br label %322

; <label>:322:                                    ; preds = %.lr.ph73, %326
  %.01672 = phi %struct.hashset_elem* [ %306, %.lr.ph73 ], [ %330, %326 ]
  %323 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.01672, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, %296
  br i1 %325, label %.loopexit42, label %326

; <label>:326:                                    ; preds = %322
  %327 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.01672, i32 0, i32 1
  %328 = load i16, i16* %327, align 4
  %329 = sext i16 %328 to i64
  %330 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %297, i64 %329
  %331 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %330, i32 0, i32 1
  %332 = load i16, i16* %331, align 4
  %333 = sext i16 %332 to i32
  %334 = icmp sge i32 %333, 0
  br i1 %334, label %322, label %._crit_edge74

._crit_edge74:                                    ; preds = %326
  %split75 = phi %struct.hashset_elem* [ %330, %326 ]
  br label %335

; <label>:335:                                    ; preds = %._crit_edge74, %.preheader41
  %.32681 = phi i32 [ %.32680, %._crit_edge74 ], [ %.32680, %.preheader41 ]
  %.016.lcssa = phi %struct.hashset_elem* [ %split75, %._crit_edge74 ], [ %306, %.preheader41 ]
  %336 = add nsw i32 %.32681, 1
  %337 = trunc i32 %.32680 to i16
  %338 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.016.lcssa, i32 0, i32 1
  store i16 %337, i16* %338, align 4
  %339 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.016.lcssa, i32 0, i32 1
  %340 = load i16, i16* %339, align 4
  %341 = sext i16 %340 to i64
  %342 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %297, i64 %341
  %343 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %342, i32 0, i32 0
  store i32 %296, i32* %343, align 4
  %344 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %342, i32 0, i32 1
  store i16 -1, i16* %344, align 4
  %345 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %342, i32 0, i32 2
  store i8 1, i8* %345, align 2
  br label %346

.loopexit42:                                      ; preds = %322
  %.427.ph = phi i32 [ %.32680, %322 ]
  %.011.ph = phi i32 [ 1, %322 ]
  br label %346

; <label>:346:                                    ; preds = %.loopexit42, %315, %335, %312
  %.427 = phi i32 [ %.32680, %312 ], [ %336, %335 ], [ %.32680, %315 ], [ %.427.ph, %.loopexit42 ]
  %.011 = phi i32 [ 0, %312 ], [ 0, %335 ], [ 1, %315 ], [ %.011.ph, %.loopexit42 ]
  %347 = icmp ne i32 %.011, 0
  %..14 = select i1 %347, i32 1, i32 %.1482
  %348 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %2, i64 0, i64 1
  %349 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %348, i32 0, i32 0
  %350 = load i32, i32* %4, align 4
  %351 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %1, i32 0, i32 0
  %352 = lshr i32 %350, 24
  %353 = lshr i32 %350, 16
  %354 = xor i32 %352, %353
  %355 = lshr i32 %350, 8
  %356 = xor i32 %354, %355
  %357 = xor i32 %356, %350
  %358 = trunc i32 %357 to i8
  %359 = zext i8 %358 to i64
  %360 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %349, i64 %359
  %361 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %360, i32 0, i32 2
  %362 = load i8, i8* %361, align 2
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 0
  %365 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %360, i32 0, i32 0
  br i1 %364, label %366, label %369

; <label>:366:                                    ; preds = %346
  store i32 %350, i32* %365, align 4
  %367 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %360, i32 0, i32 1
  store i16 -1, i16* %367, align 4
  %368 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %360, i32 0, i32 2
  store i8 1, i8* %368, align 2
  br label %400

; <label>:369:                                    ; preds = %346
  %370 = load i32, i32* %365, align 4
  %371 = icmp eq i32 %370, %350
  br i1 %371, label %400, label %.preheader39

.preheader39:                                     ; preds = %369
  %372 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %360, i32 0, i32 1
  %373 = load i16, i16* %372, align 4
  %374 = sext i16 %373 to i32
  %375 = icmp sge i32 %374, 0
  br i1 %375, label %.lr.ph77, label %389

.lr.ph77:                                         ; preds = %.preheader39
  br label %376

; <label>:376:                                    ; preds = %.lr.ph77, %380
  %.0876 = phi %struct.hashset_elem* [ %360, %.lr.ph77 ], [ %384, %380 ]
  %377 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.0876, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %378, %350
  br i1 %379, label %.loopexit40, label %380

; <label>:380:                                    ; preds = %376
  %381 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.0876, i32 0, i32 1
  %382 = load i16, i16* %381, align 4
  %383 = sext i16 %382 to i64
  %384 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %351, i64 %383
  %385 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %384, i32 0, i32 1
  %386 = load i16, i16* %385, align 4
  %387 = sext i16 %386 to i32
  %388 = icmp sge i32 %387, 0
  br i1 %388, label %376, label %._crit_edge78

._crit_edge78:                                    ; preds = %380
  %split79 = phi %struct.hashset_elem* [ %384, %380 ]
  br label %389

; <label>:389:                                    ; preds = %._crit_edge78, %.preheader39
  %.08.lcssa = phi %struct.hashset_elem* [ %split79, %._crit_edge78 ], [ %360, %.preheader39 ]
  %390 = add nsw i32 %.427, 1
  %391 = trunc i32 %.427 to i16
  %392 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.08.lcssa, i32 0, i32 1
  store i16 %391, i16* %392, align 4
  %393 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.08.lcssa, i32 0, i32 1
  %394 = load i16, i16* %393, align 4
  %395 = sext i16 %394 to i64
  %396 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %351, i64 %395
  %397 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %396, i32 0, i32 0
  store i32 %350, i32* %397, align 4
  %398 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %396, i32 0, i32 1
  store i16 -1, i16* %398, align 4
  %399 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %396, i32 0, i32 2
  store i8 1, i8* %399, align 2
  br label %400

.loopexit40:                                      ; preds = %376
  %.528.ph = phi i32 [ %.427, %376 ]
  %.0.ph = phi i32 [ 1, %376 ]
  br label %400

; <label>:400:                                    ; preds = %.loopexit40, %369, %389, %366
  %.528 = phi i32 [ %.427, %366 ], [ %390, %389 ], [ %.427, %369 ], [ %.528.ph, %.loopexit40 ]
  %.0 = phi i32 [ 0, %366 ], [ 0, %389 ], [ 1, %369 ], [ %.0.ph, %.loopexit40 ]
  %401 = icmp ne i32 %.0, 0
  %...14 = select i1 %401, i32 1, i32 %..14
  %402 = add nsw i32 %.583, 2
  %403 = icmp slt i32 %402, 256
  br i1 %403, label %284, label %.preheader38

.preheader33:                                     ; preds = %520
  %.9.ph = phi i32 [ %.8, %520 ]
  %.36.ph = phi i32 [ %...25, %520 ]
  %.7.ph = phi i32 [ 0, %520 ]
  br label %524

; <label>:404:                                    ; preds = %.preheader38, %520
  %.671 = phi i32 [ %.6.ph, %.preheader38 ], [ %522, %520 ]
  %.2570 = phi i32 [ %.25.ph, %.preheader38 ], [ %...25, %520 ]
  %.62968 = phi i32 [ %.629.ph, %.preheader38 ], [ %.8, %520 ]
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %405 = load i32, i32* %3, align 4
  %406 = sext i32 %.671 to i64
  %407 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 2
  %408 = getelementptr inbounds [256 x i32], [256 x i32]* %407, i64 0, i64 %406
  store i32 %405, i32* %408, align 4
  %409 = load i32, i32* %4, align 4
  %410 = add nsw i32 %.671, 1
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 2
  %413 = getelementptr inbounds [256 x i32], [256 x i32]* %412, i64 0, i64 %411
  store i32 %409, i32* %413, align 4
  %414 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %2, i64 0, i64 2
  %415 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %414, i32 0, i32 0
  %416 = load i32, i32* %3, align 4
  %417 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %1, i32 0, i32 0
  %418 = lshr i32 %416, 24
  %419 = lshr i32 %416, 16
  %420 = xor i32 %418, %419
  %421 = lshr i32 %416, 8
  %422 = xor i32 %420, %421
  %423 = xor i32 %422, %416
  %424 = trunc i32 %423 to i8
  %425 = zext i8 %424 to i64
  %426 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %415, i64 %425
  %427 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %426, i32 0, i32 2
  %428 = load i8, i8* %427, align 2
  %429 = sext i8 %428 to i32
  %430 = icmp eq i32 %429, 0
  %431 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %426, i32 0, i32 0
  br i1 %430, label %432, label %435

; <label>:432:                                    ; preds = %404
  store i32 %416, i32* %431, align 4
  %433 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %426, i32 0, i32 1
  store i16 -1, i16* %433, align 4
  %434 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %426, i32 0, i32 2
  store i8 1, i8* %434, align 2
  br label %466

; <label>:435:                                    ; preds = %404
  %436 = load i32, i32* %431, align 4
  %437 = icmp eq i32 %436, %416
  br i1 %437, label %466, label %.preheader36

.preheader36:                                     ; preds = %435
  %438 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %426, i32 0, i32 1
  %439 = load i16, i16* %438, align 4
  %440 = sext i16 %439 to i32
  %441 = icmp sge i32 %440, 0
  br i1 %441, label %.lr.ph61, label %455

.lr.ph61:                                         ; preds = %.preheader36
  br label %442

; <label>:442:                                    ; preds = %.lr.ph61, %446
  %.02260 = phi %struct.hashset_elem* [ %426, %.lr.ph61 ], [ %450, %446 ]
  %443 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.02260, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = icmp eq i32 %444, %416
  br i1 %445, label %.loopexit37, label %446

; <label>:446:                                    ; preds = %442
  %447 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.02260, i32 0, i32 1
  %448 = load i16, i16* %447, align 4
  %449 = sext i16 %448 to i64
  %450 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %417, i64 %449
  %451 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %450, i32 0, i32 1
  %452 = load i16, i16* %451, align 4
  %453 = sext i16 %452 to i32
  %454 = icmp sge i32 %453, 0
  br i1 %454, label %442, label %._crit_edge62

._crit_edge62:                                    ; preds = %446
  %split63 = phi %struct.hashset_elem* [ %450, %446 ]
  br label %455

; <label>:455:                                    ; preds = %._crit_edge62, %.preheader36
  %.62969 = phi i32 [ %.62968, %._crit_edge62 ], [ %.62968, %.preheader36 ]
  %.022.lcssa = phi %struct.hashset_elem* [ %split63, %._crit_edge62 ], [ %426, %.preheader36 ]
  %456 = add nsw i32 %.62969, 1
  %457 = trunc i32 %.62968 to i16
  %458 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.022.lcssa, i32 0, i32 1
  store i16 %457, i16* %458, align 4
  %459 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.022.lcssa, i32 0, i32 1
  %460 = load i16, i16* %459, align 4
  %461 = sext i16 %460 to i64
  %462 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %417, i64 %461
  %463 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %462, i32 0, i32 0
  store i32 %416, i32* %463, align 4
  %464 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %462, i32 0, i32 1
  store i16 -1, i16* %464, align 4
  %465 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %462, i32 0, i32 2
  store i8 1, i8* %465, align 2
  br label %466

.loopexit37:                                      ; preds = %442
  %.730.ph = phi i32 [ %.62968, %442 ]
  %.019.ph = phi i32 [ 1, %442 ]
  br label %466

; <label>:466:                                    ; preds = %.loopexit37, %435, %455, %432
  %.730 = phi i32 [ %.62968, %432 ], [ %456, %455 ], [ %.62968, %435 ], [ %.730.ph, %.loopexit37 ]
  %.019 = phi i32 [ 0, %432 ], [ 0, %455 ], [ 1, %435 ], [ %.019.ph, %.loopexit37 ]
  %467 = icmp ne i32 %.019, 0
  %..25 = select i1 %467, i32 1, i32 %.2570
  %468 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %2, i64 0, i64 2
  %469 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %468, i32 0, i32 0
  %470 = load i32, i32* %4, align 4
  %471 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %1, i32 0, i32 0
  %472 = lshr i32 %470, 24
  %473 = lshr i32 %470, 16
  %474 = xor i32 %472, %473
  %475 = lshr i32 %470, 8
  %476 = xor i32 %474, %475
  %477 = xor i32 %476, %470
  %478 = trunc i32 %477 to i8
  %479 = zext i8 %478 to i64
  %480 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %469, i64 %479
  %481 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %480, i32 0, i32 2
  %482 = load i8, i8* %481, align 2
  %483 = sext i8 %482 to i32
  %484 = icmp eq i32 %483, 0
  %485 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %480, i32 0, i32 0
  br i1 %484, label %486, label %489

; <label>:486:                                    ; preds = %466
  store i32 %470, i32* %485, align 4
  %487 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %480, i32 0, i32 1
  store i16 -1, i16* %487, align 4
  %488 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %480, i32 0, i32 2
  store i8 1, i8* %488, align 2
  br label %520

; <label>:489:                                    ; preds = %466
  %490 = load i32, i32* %485, align 4
  %491 = icmp eq i32 %490, %470
  br i1 %491, label %520, label %.preheader34

.preheader34:                                     ; preds = %489
  %492 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %480, i32 0, i32 1
  %493 = load i16, i16* %492, align 4
  %494 = sext i16 %493 to i32
  %495 = icmp sge i32 %494, 0
  br i1 %495, label %.lr.ph65, label %509

.lr.ph65:                                         ; preds = %.preheader34
  br label %496

; <label>:496:                                    ; preds = %.lr.ph65, %500
  %.02064 = phi %struct.hashset_elem* [ %480, %.lr.ph65 ], [ %504, %500 ]
  %497 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.02064, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = icmp eq i32 %498, %470
  br i1 %499, label %.loopexit35, label %500

; <label>:500:                                    ; preds = %496
  %501 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.02064, i32 0, i32 1
  %502 = load i16, i16* %501, align 4
  %503 = sext i16 %502 to i64
  %504 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %471, i64 %503
  %505 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %504, i32 0, i32 1
  %506 = load i16, i16* %505, align 4
  %507 = sext i16 %506 to i32
  %508 = icmp sge i32 %507, 0
  br i1 %508, label %496, label %._crit_edge66

._crit_edge66:                                    ; preds = %500
  %split67 = phi %struct.hashset_elem* [ %504, %500 ]
  br label %509

; <label>:509:                                    ; preds = %._crit_edge66, %.preheader34
  %.020.lcssa = phi %struct.hashset_elem* [ %split67, %._crit_edge66 ], [ %480, %.preheader34 ]
  %510 = add nsw i32 %.730, 1
  %511 = trunc i32 %.730 to i16
  %512 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.020.lcssa, i32 0, i32 1
  store i16 %511, i16* %512, align 4
  %513 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.020.lcssa, i32 0, i32 1
  %514 = load i16, i16* %513, align 4
  %515 = sext i16 %514 to i64
  %516 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %471, i64 %515
  %517 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %516, i32 0, i32 0
  store i32 %470, i32* %517, align 4
  %518 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %516, i32 0, i32 1
  store i16 -1, i16* %518, align 4
  %519 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %516, i32 0, i32 2
  store i8 1, i8* %519, align 2
  br label %520

.loopexit35:                                      ; preds = %496
  %.8.ph = phi i32 [ %.730, %496 ]
  %.021.ph = phi i32 [ 1, %496 ]
  br label %520

; <label>:520:                                    ; preds = %.loopexit35, %489, %509, %486
  %.8 = phi i32 [ %.730, %486 ], [ %510, %509 ], [ %.730, %489 ], [ %.8.ph, %.loopexit35 ]
  %.021 = phi i32 [ 0, %486 ], [ 0, %509 ], [ 1, %489 ], [ %.021.ph, %.loopexit35 ]
  %521 = icmp ne i32 %.021, 0
  %...25 = select i1 %521, i32 1, i32 %..25
  %522 = add nsw i32 %.671, 2
  %523 = icmp slt i32 %522, 256
  br i1 %523, label %404, label %.preheader33

; <label>:524:                                    ; preds = %.preheader33, %640
  %.759 = phi i32 [ %.7.ph, %.preheader33 ], [ %642, %640 ]
  %.3658 = phi i32 [ %.36.ph, %.preheader33 ], [ %...36, %640 ]
  %.956 = phi i32 [ %.9.ph, %.preheader33 ], [ %.11, %640 ]
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %5, i32* %3, i32* %4) #2
  %525 = load i32, i32* %3, align 4
  %526 = sext i32 %.759 to i64
  %527 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 3
  %528 = getelementptr inbounds [256 x i32], [256 x i32]* %527, i64 0, i64 %526
  store i32 %525, i32* %528, align 4
  %529 = load i32, i32* %4, align 4
  %530 = add nsw i32 %.759, 1
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %5, i32 0, i32 3
  %533 = getelementptr inbounds [256 x i32], [256 x i32]* %532, i64 0, i64 %531
  store i32 %529, i32* %533, align 4
  %534 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %2, i64 0, i64 3
  %535 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %534, i32 0, i32 0
  %536 = load i32, i32* %3, align 4
  %537 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %1, i32 0, i32 0
  %538 = lshr i32 %536, 24
  %539 = lshr i32 %536, 16
  %540 = xor i32 %538, %539
  %541 = lshr i32 %536, 8
  %542 = xor i32 %540, %541
  %543 = xor i32 %542, %536
  %544 = trunc i32 %543 to i8
  %545 = zext i8 %544 to i64
  %546 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %535, i64 %545
  %547 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %546, i32 0, i32 2
  %548 = load i8, i8* %547, align 2
  %549 = sext i8 %548 to i32
  %550 = icmp eq i32 %549, 0
  %551 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %546, i32 0, i32 0
  br i1 %550, label %552, label %555

; <label>:552:                                    ; preds = %524
  store i32 %536, i32* %551, align 4
  %553 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %546, i32 0, i32 1
  store i16 -1, i16* %553, align 4
  %554 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %546, i32 0, i32 2
  store i8 1, i8* %554, align 2
  br label %586

; <label>:555:                                    ; preds = %524
  %556 = load i32, i32* %551, align 4
  %557 = icmp eq i32 %556, %536
  br i1 %557, label %586, label %.preheader31

.preheader31:                                     ; preds = %555
  %558 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %546, i32 0, i32 1
  %559 = load i16, i16* %558, align 4
  %560 = sext i16 %559 to i32
  %561 = icmp sge i32 %560, 0
  br i1 %561, label %.lr.ph, label %575

.lr.ph:                                           ; preds = %.preheader31
  br label %562

; <label>:562:                                    ; preds = %.lr.ph, %566
  %.01451 = phi %struct.hashset_elem* [ %546, %.lr.ph ], [ %570, %566 ]
  %563 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.01451, i32 0, i32 0
  %564 = load i32, i32* %563, align 4
  %565 = icmp eq i32 %564, %536
  br i1 %565, label %.loopexit32, label %566

; <label>:566:                                    ; preds = %562
  %567 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.01451, i32 0, i32 1
  %568 = load i16, i16* %567, align 4
  %569 = sext i16 %568 to i64
  %570 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %537, i64 %569
  %571 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %570, i32 0, i32 1
  %572 = load i16, i16* %571, align 4
  %573 = sext i16 %572 to i32
  %574 = icmp sge i32 %573, 0
  br i1 %574, label %562, label %._crit_edge

._crit_edge:                                      ; preds = %566
  %split = phi %struct.hashset_elem* [ %570, %566 ]
  br label %575

; <label>:575:                                    ; preds = %._crit_edge, %.preheader31
  %.957 = phi i32 [ %.956, %._crit_edge ], [ %.956, %.preheader31 ]
  %.014.lcssa = phi %struct.hashset_elem* [ %split, %._crit_edge ], [ %546, %.preheader31 ]
  %576 = add nsw i32 %.957, 1
  %577 = trunc i32 %.956 to i16
  %578 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.014.lcssa, i32 0, i32 1
  store i16 %577, i16* %578, align 4
  %579 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.014.lcssa, i32 0, i32 1
  %580 = load i16, i16* %579, align 4
  %581 = sext i16 %580 to i64
  %582 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %537, i64 %581
  %583 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %582, i32 0, i32 0
  store i32 %536, i32* %583, align 4
  %584 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %582, i32 0, i32 1
  store i16 -1, i16* %584, align 4
  %585 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %582, i32 0, i32 2
  store i8 1, i8* %585, align 2
  br label %586

.loopexit32:                                      ; preds = %562
  %.10.ph = phi i32 [ %.956, %562 ]
  %.015.ph = phi i32 [ 1, %562 ]
  br label %586

; <label>:586:                                    ; preds = %.loopexit32, %555, %575, %552
  %.10 = phi i32 [ %.956, %552 ], [ %576, %575 ], [ %.956, %555 ], [ %.10.ph, %.loopexit32 ]
  %.015 = phi i32 [ 0, %552 ], [ 0, %575 ], [ 1, %555 ], [ %.015.ph, %.loopexit32 ]
  %587 = icmp ne i32 %.015, 0
  %..36 = select i1 %587, i32 1, i32 %.3658
  %588 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %2, i64 0, i64 3
  %589 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %588, i32 0, i32 0
  %590 = load i32, i32* %4, align 4
  %591 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %1, i32 0, i32 0
  %592 = lshr i32 %590, 24
  %593 = lshr i32 %590, 16
  %594 = xor i32 %592, %593
  %595 = lshr i32 %590, 8
  %596 = xor i32 %594, %595
  %597 = xor i32 %596, %590
  %598 = trunc i32 %597 to i8
  %599 = zext i8 %598 to i64
  %600 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %589, i64 %599
  %601 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %600, i32 0, i32 2
  %602 = load i8, i8* %601, align 2
  %603 = sext i8 %602 to i32
  %604 = icmp eq i32 %603, 0
  %605 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %600, i32 0, i32 0
  br i1 %604, label %606, label %609

; <label>:606:                                    ; preds = %586
  store i32 %590, i32* %605, align 4
  %607 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %600, i32 0, i32 1
  store i16 -1, i16* %607, align 4
  %608 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %600, i32 0, i32 2
  store i8 1, i8* %608, align 2
  br label %640

; <label>:609:                                    ; preds = %586
  %610 = load i32, i32* %605, align 4
  %611 = icmp eq i32 %610, %590
  br i1 %611, label %640, label %.preheader

.preheader:                                       ; preds = %609
  %612 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %600, i32 0, i32 1
  %613 = load i16, i16* %612, align 4
  %614 = sext i16 %613 to i32
  %615 = icmp sge i32 %614, 0
  br i1 %615, label %.lr.ph53, label %629

.lr.ph53:                                         ; preds = %.preheader
  br label %616

; <label>:616:                                    ; preds = %.lr.ph53, %620
  %.01252 = phi %struct.hashset_elem* [ %600, %.lr.ph53 ], [ %624, %620 ]
  %617 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.01252, i32 0, i32 0
  %618 = load i32, i32* %617, align 4
  %619 = icmp eq i32 %618, %590
  br i1 %619, label %.loopexit, label %620

; <label>:620:                                    ; preds = %616
  %621 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.01252, i32 0, i32 1
  %622 = load i16, i16* %621, align 4
  %623 = sext i16 %622 to i64
  %624 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %591, i64 %623
  %625 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %624, i32 0, i32 1
  %626 = load i16, i16* %625, align 4
  %627 = sext i16 %626 to i32
  %628 = icmp sge i32 %627, 0
  br i1 %628, label %616, label %._crit_edge54

._crit_edge54:                                    ; preds = %620
  %split55 = phi %struct.hashset_elem* [ %624, %620 ]
  br label %629

; <label>:629:                                    ; preds = %._crit_edge54, %.preheader
  %.012.lcssa = phi %struct.hashset_elem* [ %split55, %._crit_edge54 ], [ %600, %.preheader ]
  %630 = add nsw i32 %.10, 1
  %631 = trunc i32 %.10 to i16
  %632 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.012.lcssa, i32 0, i32 1
  store i16 %631, i16* %632, align 4
  %633 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %.012.lcssa, i32 0, i32 1
  %634 = load i16, i16* %633, align 4
  %635 = sext i16 %634 to i64
  %636 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %591, i64 %635
  %637 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %636, i32 0, i32 0
  store i32 %590, i32* %637, align 4
  %638 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %636, i32 0, i32 1
  store i16 -1, i16* %638, align 4
  %639 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %636, i32 0, i32 2
  store i8 1, i8* %639, align 2
  br label %640

.loopexit:                                        ; preds = %616
  %.11.ph = phi i32 [ %.10, %616 ]
  %.013.ph = phi i32 [ 1, %616 ]
  br label %640

; <label>:640:                                    ; preds = %.loopexit, %609, %629, %606
  %.11 = phi i32 [ %.10, %606 ], [ %630, %629 ], [ %.10, %609 ], [ %.11.ph, %.loopexit ]
  %.013 = phi i32 [ 0, %606 ], [ 0, %629 ], [ 1, %609 ], [ %.013.ph, %.loopexit ]
  %641 = icmp ne i32 %.013, 0
  %...36 = select i1 %641, i32 1, i32 %..36
  %642 = add nsw i32 %.759, 2
  %643 = icmp slt i32 %642, 256
  br i1 %643, label %524, label %644

; <label>:644:                                    ; preds = %640
  %.9.lcssa = phi i32 [ %.11, %640 ]
  %.36.lcssa = phi i32 [ %...36, %640 ]
  %645 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %2, i32 0, i32 0
  %646 = bitcast [256 x %struct.hashset_elem]* %645 to i8*
  call void @llvm.memset.p0i8.i64(i8* %646, i8 0, i64 8192, i32 16, i1 false) #2
  %647 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %1, i32 0, i32 0
  %648 = bitcast %struct.hashset_elem* %647 to i8*
  %649 = sext i32 %.9.lcssa to i64
  %650 = mul i64 8, %649
  call void @llvm.memset.p0i8.i64(i8* %648, i8 0, i64 %650, i32 16, i1 false) #2
  %651 = icmp ne i32 %.36.lcssa, 0
  %. = select i1 %651, i32 1, i32 0
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @blowfish_do_encrypt(%struct.BLOWFISH_context*, i32*, i32*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* %1, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %5, align 4
  %8 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %0, i32 0, i32 4
  %9 = getelementptr inbounds [18 x i32], [18 x i32]* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %0, i32 0, i32 0
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %0, i32 0, i32 1
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %0, i32 0, i32 2
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %0, i32 0, i32 3
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i32 0, i32 0
  %18 = getelementptr inbounds i32, i32* %9, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = xor i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = bitcast i32* %4 to i8*
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i32, i32* %11, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = bitcast i32* %4 to i8*
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 2
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds i32, i32* %13, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %27, %33
  %35 = bitcast i32* %4 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds i32, i32* %15, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %34, %40
  %42 = bitcast i32* %4 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 4
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i32, i32* %17, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %41, %47
  %49 = load i32, i32* %5, align 4
  %50 = xor i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = getelementptr inbounds i32, i32* %9, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = xor i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = bitcast i32* %5 to i8*
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds i32, i32* %11, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = bitcast i32* %5 to i8*
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 2
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i32, i32* %13, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %60, %66
  %68 = bitcast i32* %5 to i8*
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds i32, i32* %15, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %67, %73
  %75 = bitcast i32* %5 to i8*
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 4
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds i32, i32* %17, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %74, %80
  %82 = load i32, i32* %4, align 4
  %83 = xor i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = getelementptr inbounds i32, i32* %9, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %4, align 4
  %87 = xor i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = bitcast i32* %4 to i8*
  %89 = getelementptr inbounds i8, i8* %88, i64 3
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds i32, i32* %11, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = bitcast i32* %4 to i8*
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = load i8, i8* %95, align 2
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds i32, i32* %13, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %93, %99
  %101 = bitcast i32* %4 to i8*
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds i32, i32* %15, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = xor i32 %100, %106
  %108 = bitcast i32* %4 to i8*
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 4
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds i32, i32* %17, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %107, %113
  %115 = load i32, i32* %5, align 4
  %116 = xor i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = getelementptr inbounds i32, i32* %9, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %5, align 4
  %120 = xor i32 %119, %118
  store i32 %120, i32* %5, align 4
  %121 = bitcast i32* %5 to i8*
  %122 = getelementptr inbounds i8, i8* %121, i64 3
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds i32, i32* %11, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = bitcast i32* %5 to i8*
  %128 = getelementptr inbounds i8, i8* %127, i64 2
  %129 = load i8, i8* %128, align 2
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds i32, i32* %13, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add i32 %126, %132
  %134 = bitcast i32* %5 to i8*
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds i32, i32* %15, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %133, %139
  %141 = bitcast i32* %5 to i8*
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 4
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds i32, i32* %17, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add i32 %140, %146
  %148 = load i32, i32* %4, align 4
  %149 = xor i32 %148, %147
  store i32 %149, i32* %4, align 4
  %150 = getelementptr inbounds i32, i32* %9, i64 4
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %4, align 4
  %153 = xor i32 %152, %151
  store i32 %153, i32* %4, align 4
  %154 = bitcast i32* %4 to i8*
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds i32, i32* %11, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = bitcast i32* %4 to i8*
  %161 = getelementptr inbounds i8, i8* %160, i64 2
  %162 = load i8, i8* %161, align 2
  %163 = zext i8 %162 to i64
  %164 = getelementptr inbounds i32, i32* %13, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %159, %165
  %167 = bitcast i32* %4 to i8*
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds i32, i32* %15, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %166, %172
  %174 = bitcast i32* %4 to i8*
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 4
  %177 = zext i8 %176 to i64
  %178 = getelementptr inbounds i32, i32* %17, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = add i32 %173, %179
  %181 = load i32, i32* %5, align 4
  %182 = xor i32 %181, %180
  store i32 %182, i32* %5, align 4
  %183 = getelementptr inbounds i32, i32* %9, i64 5
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %5, align 4
  %186 = xor i32 %185, %184
  store i32 %186, i32* %5, align 4
  %187 = bitcast i32* %5 to i8*
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds i32, i32* %11, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = bitcast i32* %5 to i8*
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  %195 = load i8, i8* %194, align 2
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds i32, i32* %13, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add i32 %192, %198
  %200 = bitcast i32* %5 to i8*
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i64
  %204 = getelementptr inbounds i32, i32* %15, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = xor i32 %199, %205
  %207 = bitcast i32* %5 to i8*
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 4
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds i32, i32* %17, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = add i32 %206, %212
  %214 = load i32, i32* %4, align 4
  %215 = xor i32 %214, %213
  store i32 %215, i32* %4, align 4
  %216 = getelementptr inbounds i32, i32* %9, i64 6
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %4, align 4
  %219 = xor i32 %218, %217
  store i32 %219, i32* %4, align 4
  %220 = bitcast i32* %4 to i8*
  %221 = getelementptr inbounds i8, i8* %220, i64 3
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds i32, i32* %11, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = bitcast i32* %4 to i8*
  %227 = getelementptr inbounds i8, i8* %226, i64 2
  %228 = load i8, i8* %227, align 2
  %229 = zext i8 %228 to i64
  %230 = getelementptr inbounds i32, i32* %13, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = add i32 %225, %231
  %233 = bitcast i32* %4 to i8*
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i64
  %237 = getelementptr inbounds i32, i32* %15, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = xor i32 %232, %238
  %240 = bitcast i32* %4 to i8*
  %241 = getelementptr inbounds i8, i8* %240, i64 0
  %242 = load i8, i8* %241, align 4
  %243 = zext i8 %242 to i64
  %244 = getelementptr inbounds i32, i32* %17, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = add i32 %239, %245
  %247 = load i32, i32* %5, align 4
  %248 = xor i32 %247, %246
  store i32 %248, i32* %5, align 4
  %249 = getelementptr inbounds i32, i32* %9, i64 7
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %5, align 4
  %252 = xor i32 %251, %250
  store i32 %252, i32* %5, align 4
  %253 = bitcast i32* %5 to i8*
  %254 = getelementptr inbounds i8, i8* %253, i64 3
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i64
  %257 = getelementptr inbounds i32, i32* %11, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = bitcast i32* %5 to i8*
  %260 = getelementptr inbounds i8, i8* %259, i64 2
  %261 = load i8, i8* %260, align 2
  %262 = zext i8 %261 to i64
  %263 = getelementptr inbounds i32, i32* %13, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = add i32 %258, %264
  %266 = bitcast i32* %5 to i8*
  %267 = getelementptr inbounds i8, i8* %266, i64 1
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i64
  %270 = getelementptr inbounds i32, i32* %15, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = xor i32 %265, %271
  %273 = bitcast i32* %5 to i8*
  %274 = getelementptr inbounds i8, i8* %273, i64 0
  %275 = load i8, i8* %274, align 4
  %276 = zext i8 %275 to i64
  %277 = getelementptr inbounds i32, i32* %17, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = add i32 %272, %278
  %280 = load i32, i32* %4, align 4
  %281 = xor i32 %280, %279
  store i32 %281, i32* %4, align 4
  %282 = getelementptr inbounds i32, i32* %9, i64 8
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %4, align 4
  %285 = xor i32 %284, %283
  store i32 %285, i32* %4, align 4
  %286 = bitcast i32* %4 to i8*
  %287 = getelementptr inbounds i8, i8* %286, i64 3
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i64
  %290 = getelementptr inbounds i32, i32* %11, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = bitcast i32* %4 to i8*
  %293 = getelementptr inbounds i8, i8* %292, i64 2
  %294 = load i8, i8* %293, align 2
  %295 = zext i8 %294 to i64
  %296 = getelementptr inbounds i32, i32* %13, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = add i32 %291, %297
  %299 = bitcast i32* %4 to i8*
  %300 = getelementptr inbounds i8, i8* %299, i64 1
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i64
  %303 = getelementptr inbounds i32, i32* %15, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = xor i32 %298, %304
  %306 = bitcast i32* %4 to i8*
  %307 = getelementptr inbounds i8, i8* %306, i64 0
  %308 = load i8, i8* %307, align 4
  %309 = zext i8 %308 to i64
  %310 = getelementptr inbounds i32, i32* %17, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = add i32 %305, %311
  %313 = load i32, i32* %5, align 4
  %314 = xor i32 %313, %312
  store i32 %314, i32* %5, align 4
  %315 = getelementptr inbounds i32, i32* %9, i64 9
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %5, align 4
  %318 = xor i32 %317, %316
  store i32 %318, i32* %5, align 4
  %319 = bitcast i32* %5 to i8*
  %320 = getelementptr inbounds i8, i8* %319, i64 3
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i64
  %323 = getelementptr inbounds i32, i32* %11, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = bitcast i32* %5 to i8*
  %326 = getelementptr inbounds i8, i8* %325, i64 2
  %327 = load i8, i8* %326, align 2
  %328 = zext i8 %327 to i64
  %329 = getelementptr inbounds i32, i32* %13, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = add i32 %324, %330
  %332 = bitcast i32* %5 to i8*
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  %334 = load i8, i8* %333, align 1
  %335 = zext i8 %334 to i64
  %336 = getelementptr inbounds i32, i32* %15, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = xor i32 %331, %337
  %339 = bitcast i32* %5 to i8*
  %340 = getelementptr inbounds i8, i8* %339, i64 0
  %341 = load i8, i8* %340, align 4
  %342 = zext i8 %341 to i64
  %343 = getelementptr inbounds i32, i32* %17, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = add i32 %338, %344
  %346 = load i32, i32* %4, align 4
  %347 = xor i32 %346, %345
  store i32 %347, i32* %4, align 4
  %348 = getelementptr inbounds i32, i32* %9, i64 10
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %4, align 4
  %351 = xor i32 %350, %349
  store i32 %351, i32* %4, align 4
  %352 = bitcast i32* %4 to i8*
  %353 = getelementptr inbounds i8, i8* %352, i64 3
  %354 = load i8, i8* %353, align 1
  %355 = zext i8 %354 to i64
  %356 = getelementptr inbounds i32, i32* %11, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = bitcast i32* %4 to i8*
  %359 = getelementptr inbounds i8, i8* %358, i64 2
  %360 = load i8, i8* %359, align 2
  %361 = zext i8 %360 to i64
  %362 = getelementptr inbounds i32, i32* %13, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = add i32 %357, %363
  %365 = bitcast i32* %4 to i8*
  %366 = getelementptr inbounds i8, i8* %365, i64 1
  %367 = load i8, i8* %366, align 1
  %368 = zext i8 %367 to i64
  %369 = getelementptr inbounds i32, i32* %15, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = xor i32 %364, %370
  %372 = bitcast i32* %4 to i8*
  %373 = getelementptr inbounds i8, i8* %372, i64 0
  %374 = load i8, i8* %373, align 4
  %375 = zext i8 %374 to i64
  %376 = getelementptr inbounds i32, i32* %17, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = add i32 %371, %377
  %379 = load i32, i32* %5, align 4
  %380 = xor i32 %379, %378
  store i32 %380, i32* %5, align 4
  %381 = getelementptr inbounds i32, i32* %9, i64 11
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %5, align 4
  %384 = xor i32 %383, %382
  store i32 %384, i32* %5, align 4
  %385 = bitcast i32* %5 to i8*
  %386 = getelementptr inbounds i8, i8* %385, i64 3
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i64
  %389 = getelementptr inbounds i32, i32* %11, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = bitcast i32* %5 to i8*
  %392 = getelementptr inbounds i8, i8* %391, i64 2
  %393 = load i8, i8* %392, align 2
  %394 = zext i8 %393 to i64
  %395 = getelementptr inbounds i32, i32* %13, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = add i32 %390, %396
  %398 = bitcast i32* %5 to i8*
  %399 = getelementptr inbounds i8, i8* %398, i64 1
  %400 = load i8, i8* %399, align 1
  %401 = zext i8 %400 to i64
  %402 = getelementptr inbounds i32, i32* %15, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = xor i32 %397, %403
  %405 = bitcast i32* %5 to i8*
  %406 = getelementptr inbounds i8, i8* %405, i64 0
  %407 = load i8, i8* %406, align 4
  %408 = zext i8 %407 to i64
  %409 = getelementptr inbounds i32, i32* %17, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = add i32 %404, %410
  %412 = load i32, i32* %4, align 4
  %413 = xor i32 %412, %411
  store i32 %413, i32* %4, align 4
  %414 = getelementptr inbounds i32, i32* %9, i64 12
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* %4, align 4
  %417 = xor i32 %416, %415
  store i32 %417, i32* %4, align 4
  %418 = bitcast i32* %4 to i8*
  %419 = getelementptr inbounds i8, i8* %418, i64 3
  %420 = load i8, i8* %419, align 1
  %421 = zext i8 %420 to i64
  %422 = getelementptr inbounds i32, i32* %11, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = bitcast i32* %4 to i8*
  %425 = getelementptr inbounds i8, i8* %424, i64 2
  %426 = load i8, i8* %425, align 2
  %427 = zext i8 %426 to i64
  %428 = getelementptr inbounds i32, i32* %13, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = add i32 %423, %429
  %431 = bitcast i32* %4 to i8*
  %432 = getelementptr inbounds i8, i8* %431, i64 1
  %433 = load i8, i8* %432, align 1
  %434 = zext i8 %433 to i64
  %435 = getelementptr inbounds i32, i32* %15, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = xor i32 %430, %436
  %438 = bitcast i32* %4 to i8*
  %439 = getelementptr inbounds i8, i8* %438, i64 0
  %440 = load i8, i8* %439, align 4
  %441 = zext i8 %440 to i64
  %442 = getelementptr inbounds i32, i32* %17, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = add i32 %437, %443
  %445 = load i32, i32* %5, align 4
  %446 = xor i32 %445, %444
  store i32 %446, i32* %5, align 4
  %447 = getelementptr inbounds i32, i32* %9, i64 13
  %448 = load i32, i32* %447, align 4
  %449 = load i32, i32* %5, align 4
  %450 = xor i32 %449, %448
  store i32 %450, i32* %5, align 4
  %451 = bitcast i32* %5 to i8*
  %452 = getelementptr inbounds i8, i8* %451, i64 3
  %453 = load i8, i8* %452, align 1
  %454 = zext i8 %453 to i64
  %455 = getelementptr inbounds i32, i32* %11, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = bitcast i32* %5 to i8*
  %458 = getelementptr inbounds i8, i8* %457, i64 2
  %459 = load i8, i8* %458, align 2
  %460 = zext i8 %459 to i64
  %461 = getelementptr inbounds i32, i32* %13, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = add i32 %456, %462
  %464 = bitcast i32* %5 to i8*
  %465 = getelementptr inbounds i8, i8* %464, i64 1
  %466 = load i8, i8* %465, align 1
  %467 = zext i8 %466 to i64
  %468 = getelementptr inbounds i32, i32* %15, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = xor i32 %463, %469
  %471 = bitcast i32* %5 to i8*
  %472 = getelementptr inbounds i8, i8* %471, i64 0
  %473 = load i8, i8* %472, align 4
  %474 = zext i8 %473 to i64
  %475 = getelementptr inbounds i32, i32* %17, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = add i32 %470, %476
  %478 = load i32, i32* %4, align 4
  %479 = xor i32 %478, %477
  store i32 %479, i32* %4, align 4
  %480 = getelementptr inbounds i32, i32* %9, i64 14
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* %4, align 4
  %483 = xor i32 %482, %481
  store i32 %483, i32* %4, align 4
  %484 = bitcast i32* %4 to i8*
  %485 = getelementptr inbounds i8, i8* %484, i64 3
  %486 = load i8, i8* %485, align 1
  %487 = zext i8 %486 to i64
  %488 = getelementptr inbounds i32, i32* %11, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = bitcast i32* %4 to i8*
  %491 = getelementptr inbounds i8, i8* %490, i64 2
  %492 = load i8, i8* %491, align 2
  %493 = zext i8 %492 to i64
  %494 = getelementptr inbounds i32, i32* %13, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %489, %495
  %497 = bitcast i32* %4 to i8*
  %498 = getelementptr inbounds i8, i8* %497, i64 1
  %499 = load i8, i8* %498, align 1
  %500 = zext i8 %499 to i64
  %501 = getelementptr inbounds i32, i32* %15, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = xor i32 %496, %502
  %504 = bitcast i32* %4 to i8*
  %505 = getelementptr inbounds i8, i8* %504, i64 0
  %506 = load i8, i8* %505, align 4
  %507 = zext i8 %506 to i64
  %508 = getelementptr inbounds i32, i32* %17, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = add i32 %503, %509
  %511 = load i32, i32* %5, align 4
  %512 = xor i32 %511, %510
  store i32 %512, i32* %5, align 4
  %513 = getelementptr inbounds i32, i32* %9, i64 15
  %514 = load i32, i32* %513, align 4
  %515 = load i32, i32* %5, align 4
  %516 = xor i32 %515, %514
  store i32 %516, i32* %5, align 4
  %517 = bitcast i32* %5 to i8*
  %518 = getelementptr inbounds i8, i8* %517, i64 3
  %519 = load i8, i8* %518, align 1
  %520 = zext i8 %519 to i64
  %521 = getelementptr inbounds i32, i32* %11, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = bitcast i32* %5 to i8*
  %524 = getelementptr inbounds i8, i8* %523, i64 2
  %525 = load i8, i8* %524, align 2
  %526 = zext i8 %525 to i64
  %527 = getelementptr inbounds i32, i32* %13, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = add i32 %522, %528
  %530 = bitcast i32* %5 to i8*
  %531 = getelementptr inbounds i8, i8* %530, i64 1
  %532 = load i8, i8* %531, align 1
  %533 = zext i8 %532 to i64
  %534 = getelementptr inbounds i32, i32* %15, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = xor i32 %529, %535
  %537 = bitcast i32* %5 to i8*
  %538 = getelementptr inbounds i8, i8* %537, i64 0
  %539 = load i8, i8* %538, align 4
  %540 = zext i8 %539 to i64
  %541 = getelementptr inbounds i32, i32* %17, i64 %540
  %542 = load i32, i32* %541, align 4
  %543 = add i32 %536, %542
  %544 = load i32, i32* %4, align 4
  %545 = xor i32 %544, %543
  store i32 %545, i32* %4, align 4
  %546 = getelementptr inbounds i32, i32* %9, i64 16
  %547 = load i32, i32* %546, align 4
  %548 = load i32, i32* %4, align 4
  %549 = xor i32 %548, %547
  store i32 %549, i32* %4, align 4
  %550 = getelementptr inbounds i32, i32* %9, i64 17
  %551 = load i32, i32* %550, align 4
  %552 = load i32, i32* %5, align 4
  %553 = xor i32 %552, %551
  store i32 %553, i32* %5, align 4
  %554 = load i32, i32* %5, align 4
  store i32 %554, i32* %1, align 4
  %555 = load i32, i32* %4, align 4
  store i32 %555, i32* %2, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1 (tags/RELEASE_391/final)"}
