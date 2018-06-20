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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.hashset_elem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hashset_elem*, align 8
  %7 = alloca %struct.hashset_elem*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hashset_elem*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.hashset_elem*, align 8
  %15 = alloca %struct.hashset_elem*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.hashset_elem*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.hashset_elem*, align 8
  %23 = alloca %struct.hashset_elem*, align 8
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.hashset_elem*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca %struct.hashset_elem*, align 8
  %31 = alloca %struct.hashset_elem*, align 8
  %32 = alloca i8, align 1
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.hashset_elem*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca %struct.hashset_elem*, align 8
  %39 = alloca %struct.hashset_elem*, align 8
  %40 = alloca i8, align 1
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.hashset_elem*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32*, align 8
  %46 = alloca %struct.hashset_elem*, align 8
  %47 = alloca %struct.hashset_elem*, align 8
  %48 = alloca i8, align 1
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca %struct.hashset_elem*, align 8
  %52 = alloca i32, align 4
  %53 = alloca i32*, align 8
  %54 = alloca %struct.hashset_elem*, align 8
  %55 = alloca %struct.hashset_elem*, align 8
  %56 = alloca i8, align 1
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca %struct.hashset_elem*, align 8
  %60 = alloca i32, align 4
  %61 = alloca i32*, align 8
  %62 = alloca %struct.hashset_elem*, align 8
  %63 = alloca %struct.hashset_elem*, align 8
  %64 = alloca i8, align 1
  %65 = alloca i32, align 4
  %66 = alloca i8*, align 8
  %67 = alloca %struct.BLOWFISH_context*, align 8
  %68 = alloca i32, align 4
  %69 = alloca [1020 x %struct.hashset_elem], align 16
  %70 = alloca [4 x [256 x %struct.hashset_elem]], align 16
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca %struct.BLOWFISH_context, align 4
  store i32 0, i32* %79, align 4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @in_key, i32 0, i32 0), i8** %66, align 8
  store %struct.BLOWFISH_context* %80, %struct.BLOWFISH_context** %67, align 8
  store i32 16, i32* %68, align 4
  store i32 0, i32* %71, align 4
  store i32 0, i32* %72, align 4
  %81 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %70, i32 0, i32 0
  %82 = bitcast [256 x %struct.hashset_elem]* %81 to i8*
  call void @llvm.memset.p0i8.i64(i8* %82, i8 0, i64 8192, i32 16, i1 false) #2
  store i32 0, i32* %73, align 4
  br label %83

; <label>:83:                                     ; preds = %86, %0
  %84 = load i32, i32* %73, align 4
  %85 = icmp slt i32 %84, 18
  br i1 %85, label %86, label %98

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %73, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [18 x i32], [18 x i32]* @ps, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %73, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %94 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %93, i32 0, i32 4
  %95 = getelementptr inbounds [18 x i32], [18 x i32]* %94, i64 0, i64 %92
  store i32 %90, i32* %95, align 4
  %96 = load i32, i32* %73, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %73, align 4
  br label %83

; <label>:98:                                     ; preds = %83
  store i32 0, i32* %73, align 4
  br label %99

; <label>:99:                                     ; preds = %102, %98
  %100 = load i32, i32* %73, align 4
  %101 = icmp slt i32 %100, 256
  br i1 %101, label %102, label %141

; <label>:102:                                    ; preds = %99
  %103 = load i32, i32* %73, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [256 x i32], [256 x i32]* @ks0, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %73, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %110 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %109, i32 0, i32 0
  %111 = getelementptr inbounds [256 x i32], [256 x i32]* %110, i64 0, i64 %108
  store i32 %106, i32* %111, align 4
  %112 = load i32, i32* %73, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [256 x i32], [256 x i32]* @ks1, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %73, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %119 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %118, i32 0, i32 1
  %120 = getelementptr inbounds [256 x i32], [256 x i32]* %119, i64 0, i64 %117
  store i32 %115, i32* %120, align 4
  %121 = load i32, i32* %73, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [256 x i32], [256 x i32]* @ks2, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %73, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %128 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %127, i32 0, i32 2
  %129 = getelementptr inbounds [256 x i32], [256 x i32]* %128, i64 0, i64 %126
  store i32 %124, i32* %129, align 4
  %130 = load i32, i32* %73, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [256 x i32], [256 x i32]* @ks3, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %73, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %137 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %136, i32 0, i32 3
  %138 = getelementptr inbounds [256 x i32], [256 x i32]* %137, i64 0, i64 %135
  store i32 %133, i32* %138, align 4
  %139 = load i32, i32* %73, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %73, align 4
  br label %99

; <label>:141:                                    ; preds = %99
  store i32 0, i32* %74, align 4
  store i32 0, i32* %73, align 4
  br label %142

; <label>:142:                                    ; preds = %145, %141
  %143 = load i32, i32* %73, align 4
  %144 = icmp slt i32 %143, 18
  br i1 %144, label %145, label %199

; <label>:145:                                    ; preds = %142
  %146 = load i32, i32* %74, align 4
  %147 = sext i32 %146 to i64
  %148 = load i8*, i8** %66, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = shl i32 %151, 24
  %153 = load i32, i32* %74, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* %68, align 4
  %156 = urem i32 %154, %155
  %157 = zext i32 %156 to i64
  %158 = load i8*, i8** %66, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 %157
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = shl i32 %161, 16
  %163 = or i32 %152, %162
  %164 = load i32, i32* %74, align 4
  %165 = add nsw i32 %164, 2
  %166 = load i32, i32* %68, align 4
  %167 = urem i32 %165, %166
  %168 = zext i32 %167 to i64
  %169 = load i8*, i8** %66, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 %168
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = shl i32 %172, 8
  %174 = or i32 %163, %173
  %175 = load i32, i32* %74, align 4
  %176 = add nsw i32 %175, 3
  %177 = load i32, i32* %68, align 4
  %178 = urem i32 %176, %177
  %179 = zext i32 %178 to i64
  %180 = load i8*, i8** %66, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 %179
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = or i32 %174, %183
  store i32 %184, i32* %76, align 4
  %185 = load i32, i32* %76, align 4
  %186 = load i32, i32* %73, align 4
  %187 = sext i32 %186 to i64
  %188 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %189 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %188, i32 0, i32 4
  %190 = getelementptr inbounds [18 x i32], [18 x i32]* %189, i64 0, i64 %187
  %191 = load i32, i32* %190, align 4
  %192 = xor i32 %191, %185
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* %74, align 4
  %194 = add nsw i32 %193, 4
  %195 = load i32, i32* %68, align 4
  %196 = urem i32 %194, %195
  store i32 %196, i32* %74, align 4
  %197 = load i32, i32* %73, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %73, align 4
  br label %142

; <label>:199:                                    ; preds = %142
  store i32 0, i32* %78, align 4
  store i32 0, i32* %77, align 4
  store i32 0, i32* %73, align 4
  br label %200

; <label>:200:                                    ; preds = %203, %199
  %201 = load i32, i32* %73, align 4
  %202 = icmp slt i32 %201, 18
  br i1 %202, label %203, label %220

; <label>:203:                                    ; preds = %200
  %204 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %204, i32* %77, i32* %78) #2
  %205 = load i32, i32* %77, align 4
  %206 = load i32, i32* %73, align 4
  %207 = sext i32 %206 to i64
  %208 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %209 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %208, i32 0, i32 4
  %210 = getelementptr inbounds [18 x i32], [18 x i32]* %209, i64 0, i64 %207
  store i32 %205, i32* %210, align 4
  %211 = load i32, i32* %78, align 4
  %212 = load i32, i32* %73, align 4
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %216 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %215, i32 0, i32 4
  %217 = getelementptr inbounds [18 x i32], [18 x i32]* %216, i64 0, i64 %214
  store i32 %211, i32* %217, align 4
  %218 = load i32, i32* %73, align 4
  %219 = add nsw i32 %218, 2
  store i32 %219, i32* %73, align 4
  br label %200

; <label>:220:                                    ; preds = %200
  store i32 0, i32* %73, align 4
  br label %221

; <label>:221:                                    ; preds = %417, %220
  %222 = load i32, i32* %73, align 4
  %223 = icmp slt i32 %222, 256
  br i1 %223, label %224, label %421

; <label>:224:                                    ; preds = %221
  %225 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %225, i32* %77, i32* %78) #2
  %226 = load i32, i32* %77, align 4
  %227 = load i32, i32* %73, align 4
  %228 = sext i32 %227 to i64
  %229 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %230 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %229, i32 0, i32 0
  %231 = getelementptr inbounds [256 x i32], [256 x i32]* %230, i64 0, i64 %228
  store i32 %226, i32* %231, align 4
  %232 = load i32, i32* %78, align 4
  %233 = load i32, i32* %73, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %237 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %236, i32 0, i32 0
  %238 = getelementptr inbounds [256 x i32], [256 x i32]* %237, i64 0, i64 %235
  store i32 %232, i32* %238, align 4
  %239 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %70, i64 0, i64 0
  %240 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %239, i32 0, i32 0
  %241 = load i32, i32* %77, align 4
  %242 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %69, i32 0, i32 0
  store %struct.hashset_elem* %240, %struct.hashset_elem** %59, align 8
  store i32 %241, i32* %60, align 4
  store i32* %71, i32** %61, align 8
  store %struct.hashset_elem* %242, %struct.hashset_elem** %62, align 8
  %243 = load i32, i32* %60, align 4
  store i32 %243, i32* %57, align 4
  %244 = load i32, i32* %57, align 4
  %245 = lshr i32 %244, 24
  %246 = load i32, i32* %57, align 4
  %247 = lshr i32 %246, 16
  %248 = xor i32 %245, %247
  %249 = load i32, i32* %57, align 4
  %250 = lshr i32 %249, 8
  %251 = xor i32 %248, %250
  %252 = load i32, i32* %57, align 4
  %253 = xor i32 %251, %252
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %64, align 1
  %255 = load i8, i8* %64, align 1
  %256 = zext i8 %255 to i64
  %257 = load %struct.hashset_elem*, %struct.hashset_elem** %59, align 8
  %258 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %257, i64 %256
  store %struct.hashset_elem* %258, %struct.hashset_elem** %63, align 8
  %259 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %260 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %259, i32 0, i32 2
  %261 = load i8, i8* %260, align 2
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %272

; <label>:264:                                    ; preds = %224
  %265 = load i32, i32* %60, align 4
  %266 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %267 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 4
  %268 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %269 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %268, i32 0, i32 1
  store i16 -1, i16* %269, align 4
  %270 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %271 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %270, i32 0, i32 2
  store i8 1, i8* %271, align 2
  store i32 0, i32* %58, align 4
  br label %320

; <label>:272:                                    ; preds = %224
  %273 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %274 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %60, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %279

; <label>:278:                                    ; preds = %272
  store i32 1, i32* %58, align 4
  br label %320

; <label>:279:                                    ; preds = %272
  br label %280

; <label>:280:                                    ; preds = %293, %279
  %281 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %282 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %281, i32 0, i32 1
  %283 = load i16, i16* %282, align 4
  %284 = sext i16 %283 to i32
  %285 = icmp sge i32 %284, 0
  br i1 %285, label %286, label %300

; <label>:286:                                    ; preds = %280
  %287 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %288 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %60, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %293

; <label>:292:                                    ; preds = %286
  store i32 1, i32* %58, align 4
  br label %320

; <label>:293:                                    ; preds = %286
  %294 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %295 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %294, i32 0, i32 1
  %296 = load i16, i16* %295, align 4
  %297 = sext i16 %296 to i64
  %298 = load %struct.hashset_elem*, %struct.hashset_elem** %62, align 8
  %299 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %298, i64 %297
  store %struct.hashset_elem* %299, %struct.hashset_elem** %63, align 8
  br label %280

; <label>:300:                                    ; preds = %280
  %301 = load i32*, i32** %61, align 8
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %301, align 4
  %304 = trunc i32 %302 to i16
  %305 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %306 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %305, i32 0, i32 1
  store i16 %304, i16* %306, align 4
  %307 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %308 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %307, i32 0, i32 1
  %309 = load i16, i16* %308, align 4
  %310 = sext i16 %309 to i64
  %311 = load %struct.hashset_elem*, %struct.hashset_elem** %62, align 8
  %312 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %311, i64 %310
  store %struct.hashset_elem* %312, %struct.hashset_elem** %63, align 8
  %313 = load i32, i32* %60, align 4
  %314 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %315 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 4
  %316 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %317 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %316, i32 0, i32 1
  store i16 -1, i16* %317, align 4
  %318 = load %struct.hashset_elem*, %struct.hashset_elem** %63, align 8
  %319 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %318, i32 0, i32 2
  store i8 1, i8* %319, align 2
  store i32 0, i32* %58, align 4
  br label %320

; <label>:320:                                    ; preds = %300, %292, %278, %264
  %321 = load i32, i32* %58, align 4
  store i32 %321, i32* %75, align 4
  %322 = load i32, i32* %75, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %325

; <label>:324:                                    ; preds = %320
  br label %327

; <label>:325:                                    ; preds = %320
  %326 = load i32, i32* %72, align 4
  br label %327

; <label>:327:                                    ; preds = %325, %324
  %328 = phi i32 [ 1, %324 ], [ %326, %325 ]
  store i32 %328, i32* %72, align 4
  %329 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %70, i64 0, i64 0
  %330 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %329, i32 0, i32 0
  %331 = load i32, i32* %78, align 4
  %332 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %69, i32 0, i32 0
  store %struct.hashset_elem* %330, %struct.hashset_elem** %35, align 8
  store i32 %331, i32* %36, align 4
  store i32* %71, i32** %37, align 8
  store %struct.hashset_elem* %332, %struct.hashset_elem** %38, align 8
  %333 = load i32, i32* %36, align 4
  store i32 %333, i32* %33, align 4
  %334 = load i32, i32* %33, align 4
  %335 = lshr i32 %334, 24
  %336 = load i32, i32* %33, align 4
  %337 = lshr i32 %336, 16
  %338 = xor i32 %335, %337
  %339 = load i32, i32* %33, align 4
  %340 = lshr i32 %339, 8
  %341 = xor i32 %338, %340
  %342 = load i32, i32* %33, align 4
  %343 = xor i32 %341, %342
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %40, align 1
  %345 = load i8, i8* %40, align 1
  %346 = zext i8 %345 to i64
  %347 = load %struct.hashset_elem*, %struct.hashset_elem** %35, align 8
  %348 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %347, i64 %346
  store %struct.hashset_elem* %348, %struct.hashset_elem** %39, align 8
  %349 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %350 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %349, i32 0, i32 2
  %351 = load i8, i8* %350, align 2
  %352 = sext i8 %351 to i32
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %362

; <label>:354:                                    ; preds = %327
  %355 = load i32, i32* %36, align 4
  %356 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %357 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %356, i32 0, i32 0
  store i32 %355, i32* %357, align 4
  %358 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %359 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %358, i32 0, i32 1
  store i16 -1, i16* %359, align 4
  %360 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %361 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %360, i32 0, i32 2
  store i8 1, i8* %361, align 2
  store i32 0, i32* %34, align 4
  br label %410

; <label>:362:                                    ; preds = %327
  %363 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %364 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %36, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %369

; <label>:368:                                    ; preds = %362
  store i32 1, i32* %34, align 4
  br label %410

; <label>:369:                                    ; preds = %362
  br label %370

; <label>:370:                                    ; preds = %383, %369
  %371 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %372 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %371, i32 0, i32 1
  %373 = load i16, i16* %372, align 4
  %374 = sext i16 %373 to i32
  %375 = icmp sge i32 %374, 0
  br i1 %375, label %376, label %390

; <label>:376:                                    ; preds = %370
  %377 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %378 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %36, align 4
  %381 = icmp eq i32 %379, %380
  br i1 %381, label %382, label %383

; <label>:382:                                    ; preds = %376
  store i32 1, i32* %34, align 4
  br label %410

; <label>:383:                                    ; preds = %376
  %384 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %385 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %384, i32 0, i32 1
  %386 = load i16, i16* %385, align 4
  %387 = sext i16 %386 to i64
  %388 = load %struct.hashset_elem*, %struct.hashset_elem** %38, align 8
  %389 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %388, i64 %387
  store %struct.hashset_elem* %389, %struct.hashset_elem** %39, align 8
  br label %370

; <label>:390:                                    ; preds = %370
  %391 = load i32*, i32** %37, align 8
  %392 = load i32, i32* %391, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %391, align 4
  %394 = trunc i32 %392 to i16
  %395 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %396 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %395, i32 0, i32 1
  store i16 %394, i16* %396, align 4
  %397 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %398 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %397, i32 0, i32 1
  %399 = load i16, i16* %398, align 4
  %400 = sext i16 %399 to i64
  %401 = load %struct.hashset_elem*, %struct.hashset_elem** %38, align 8
  %402 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %401, i64 %400
  store %struct.hashset_elem* %402, %struct.hashset_elem** %39, align 8
  %403 = load i32, i32* %36, align 4
  %404 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %405 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %404, i32 0, i32 0
  store i32 %403, i32* %405, align 4
  %406 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %407 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %406, i32 0, i32 1
  store i16 -1, i16* %407, align 4
  %408 = load %struct.hashset_elem*, %struct.hashset_elem** %39, align 8
  %409 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %408, i32 0, i32 2
  store i8 1, i8* %409, align 2
  store i32 0, i32* %34, align 4
  br label %410

; <label>:410:                                    ; preds = %390, %382, %368, %354
  %411 = load i32, i32* %34, align 4
  store i32 %411, i32* %75, align 4
  %412 = load i32, i32* %75, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %415

; <label>:414:                                    ; preds = %410
  br label %417

; <label>:415:                                    ; preds = %410
  %416 = load i32, i32* %72, align 4
  br label %417

; <label>:417:                                    ; preds = %415, %414
  %418 = phi i32 [ 1, %414 ], [ %416, %415 ]
  store i32 %418, i32* %72, align 4
  %419 = load i32, i32* %73, align 4
  %420 = add nsw i32 %419, 2
  store i32 %420, i32* %73, align 4
  br label %221

; <label>:421:                                    ; preds = %221
  store i32 0, i32* %73, align 4
  br label %422

; <label>:422:                                    ; preds = %618, %421
  %423 = load i32, i32* %73, align 4
  %424 = icmp slt i32 %423, 256
  br i1 %424, label %425, label %622

; <label>:425:                                    ; preds = %422
  %426 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %426, i32* %77, i32* %78) #2
  %427 = load i32, i32* %77, align 4
  %428 = load i32, i32* %73, align 4
  %429 = sext i32 %428 to i64
  %430 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %431 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %430, i32 0, i32 1
  %432 = getelementptr inbounds [256 x i32], [256 x i32]* %431, i64 0, i64 %429
  store i32 %427, i32* %432, align 4
  %433 = load i32, i32* %78, align 4
  %434 = load i32, i32* %73, align 4
  %435 = add nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %438 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %437, i32 0, i32 1
  %439 = getelementptr inbounds [256 x i32], [256 x i32]* %438, i64 0, i64 %436
  store i32 %433, i32* %439, align 4
  %440 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %70, i64 0, i64 1
  %441 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %440, i32 0, i32 0
  %442 = load i32, i32* %77, align 4
  %443 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %69, i32 0, i32 0
  store %struct.hashset_elem* %441, %struct.hashset_elem** %11, align 8
  store i32 %442, i32* %12, align 4
  store i32* %71, i32** %13, align 8
  store %struct.hashset_elem* %443, %struct.hashset_elem** %14, align 8
  %444 = load i32, i32* %12, align 4
  store i32 %444, i32* %9, align 4
  %445 = load i32, i32* %9, align 4
  %446 = lshr i32 %445, 24
  %447 = load i32, i32* %9, align 4
  %448 = lshr i32 %447, 16
  %449 = xor i32 %446, %448
  %450 = load i32, i32* %9, align 4
  %451 = lshr i32 %450, 8
  %452 = xor i32 %449, %451
  %453 = load i32, i32* %9, align 4
  %454 = xor i32 %452, %453
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %16, align 1
  %456 = load i8, i8* %16, align 1
  %457 = zext i8 %456 to i64
  %458 = load %struct.hashset_elem*, %struct.hashset_elem** %11, align 8
  %459 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %458, i64 %457
  store %struct.hashset_elem* %459, %struct.hashset_elem** %15, align 8
  %460 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %461 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %460, i32 0, i32 2
  %462 = load i8, i8* %461, align 2
  %463 = sext i8 %462 to i32
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %473

; <label>:465:                                    ; preds = %425
  %466 = load i32, i32* %12, align 4
  %467 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %468 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %467, i32 0, i32 0
  store i32 %466, i32* %468, align 4
  %469 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %470 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %469, i32 0, i32 1
  store i16 -1, i16* %470, align 4
  %471 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %472 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %471, i32 0, i32 2
  store i8 1, i8* %472, align 2
  store i32 0, i32* %10, align 4
  br label %521

; <label>:473:                                    ; preds = %425
  %474 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %475 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* %12, align 4
  %478 = icmp eq i32 %476, %477
  br i1 %478, label %479, label %480

; <label>:479:                                    ; preds = %473
  store i32 1, i32* %10, align 4
  br label %521

; <label>:480:                                    ; preds = %473
  br label %481

; <label>:481:                                    ; preds = %494, %480
  %482 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %483 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %482, i32 0, i32 1
  %484 = load i16, i16* %483, align 4
  %485 = sext i16 %484 to i32
  %486 = icmp sge i32 %485, 0
  br i1 %486, label %487, label %501

; <label>:487:                                    ; preds = %481
  %488 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %489 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = load i32, i32* %12, align 4
  %492 = icmp eq i32 %490, %491
  br i1 %492, label %493, label %494

; <label>:493:                                    ; preds = %487
  store i32 1, i32* %10, align 4
  br label %521

; <label>:494:                                    ; preds = %487
  %495 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %496 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %495, i32 0, i32 1
  %497 = load i16, i16* %496, align 4
  %498 = sext i16 %497 to i64
  %499 = load %struct.hashset_elem*, %struct.hashset_elem** %14, align 8
  %500 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %499, i64 %498
  store %struct.hashset_elem* %500, %struct.hashset_elem** %15, align 8
  br label %481

; <label>:501:                                    ; preds = %481
  %502 = load i32*, i32** %13, align 8
  %503 = load i32, i32* %502, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %502, align 4
  %505 = trunc i32 %503 to i16
  %506 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %507 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %506, i32 0, i32 1
  store i16 %505, i16* %507, align 4
  %508 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %509 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %508, i32 0, i32 1
  %510 = load i16, i16* %509, align 4
  %511 = sext i16 %510 to i64
  %512 = load %struct.hashset_elem*, %struct.hashset_elem** %14, align 8
  %513 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %512, i64 %511
  store %struct.hashset_elem* %513, %struct.hashset_elem** %15, align 8
  %514 = load i32, i32* %12, align 4
  %515 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %516 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %515, i32 0, i32 0
  store i32 %514, i32* %516, align 4
  %517 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %518 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %517, i32 0, i32 1
  store i16 -1, i16* %518, align 4
  %519 = load %struct.hashset_elem*, %struct.hashset_elem** %15, align 8
  %520 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %519, i32 0, i32 2
  store i8 1, i8* %520, align 2
  store i32 0, i32* %10, align 4
  br label %521

; <label>:521:                                    ; preds = %501, %493, %479, %465
  %522 = load i32, i32* %10, align 4
  store i32 %522, i32* %75, align 4
  %523 = load i32, i32* %75, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %526

; <label>:525:                                    ; preds = %521
  br label %528

; <label>:526:                                    ; preds = %521
  %527 = load i32, i32* %72, align 4
  br label %528

; <label>:528:                                    ; preds = %526, %525
  %529 = phi i32 [ 1, %525 ], [ %527, %526 ]
  store i32 %529, i32* %72, align 4
  %530 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %70, i64 0, i64 1
  %531 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %530, i32 0, i32 0
  %532 = load i32, i32* %78, align 4
  %533 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %69, i32 0, i32 0
  store %struct.hashset_elem* %531, %struct.hashset_elem** %3, align 8
  store i32 %532, i32* %4, align 4
  store i32* %71, i32** %5, align 8
  store %struct.hashset_elem* %533, %struct.hashset_elem** %6, align 8
  %534 = load i32, i32* %4, align 4
  store i32 %534, i32* %1, align 4
  %535 = load i32, i32* %1, align 4
  %536 = lshr i32 %535, 24
  %537 = load i32, i32* %1, align 4
  %538 = lshr i32 %537, 16
  %539 = xor i32 %536, %538
  %540 = load i32, i32* %1, align 4
  %541 = lshr i32 %540, 8
  %542 = xor i32 %539, %541
  %543 = load i32, i32* %1, align 4
  %544 = xor i32 %542, %543
  %545 = trunc i32 %544 to i8
  store i8 %545, i8* %8, align 1
  %546 = load i8, i8* %8, align 1
  %547 = zext i8 %546 to i64
  %548 = load %struct.hashset_elem*, %struct.hashset_elem** %3, align 8
  %549 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %548, i64 %547
  store %struct.hashset_elem* %549, %struct.hashset_elem** %7, align 8
  %550 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %551 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %550, i32 0, i32 2
  %552 = load i8, i8* %551, align 2
  %553 = sext i8 %552 to i32
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %563

; <label>:555:                                    ; preds = %528
  %556 = load i32, i32* %4, align 4
  %557 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %558 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %557, i32 0, i32 0
  store i32 %556, i32* %558, align 4
  %559 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %560 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %559, i32 0, i32 1
  store i16 -1, i16* %560, align 4
  %561 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %562 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %561, i32 0, i32 2
  store i8 1, i8* %562, align 2
  store i32 0, i32* %2, align 4
  br label %611

; <label>:563:                                    ; preds = %528
  %564 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %565 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = load i32, i32* %4, align 4
  %568 = icmp eq i32 %566, %567
  br i1 %568, label %569, label %570

; <label>:569:                                    ; preds = %563
  store i32 1, i32* %2, align 4
  br label %611

; <label>:570:                                    ; preds = %563
  br label %571

; <label>:571:                                    ; preds = %584, %570
  %572 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %573 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %572, i32 0, i32 1
  %574 = load i16, i16* %573, align 4
  %575 = sext i16 %574 to i32
  %576 = icmp sge i32 %575, 0
  br i1 %576, label %577, label %591

; <label>:577:                                    ; preds = %571
  %578 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %579 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 4
  %581 = load i32, i32* %4, align 4
  %582 = icmp eq i32 %580, %581
  br i1 %582, label %583, label %584

; <label>:583:                                    ; preds = %577
  store i32 1, i32* %2, align 4
  br label %611

; <label>:584:                                    ; preds = %577
  %585 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %586 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %585, i32 0, i32 1
  %587 = load i16, i16* %586, align 4
  %588 = sext i16 %587 to i64
  %589 = load %struct.hashset_elem*, %struct.hashset_elem** %6, align 8
  %590 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %589, i64 %588
  store %struct.hashset_elem* %590, %struct.hashset_elem** %7, align 8
  br label %571

; <label>:591:                                    ; preds = %571
  %592 = load i32*, i32** %5, align 8
  %593 = load i32, i32* %592, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %592, align 4
  %595 = trunc i32 %593 to i16
  %596 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %597 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %596, i32 0, i32 1
  store i16 %595, i16* %597, align 4
  %598 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %599 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %598, i32 0, i32 1
  %600 = load i16, i16* %599, align 4
  %601 = sext i16 %600 to i64
  %602 = load %struct.hashset_elem*, %struct.hashset_elem** %6, align 8
  %603 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %602, i64 %601
  store %struct.hashset_elem* %603, %struct.hashset_elem** %7, align 8
  %604 = load i32, i32* %4, align 4
  %605 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %606 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %605, i32 0, i32 0
  store i32 %604, i32* %606, align 4
  %607 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %608 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %607, i32 0, i32 1
  store i16 -1, i16* %608, align 4
  %609 = load %struct.hashset_elem*, %struct.hashset_elem** %7, align 8
  %610 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %609, i32 0, i32 2
  store i8 1, i8* %610, align 2
  store i32 0, i32* %2, align 4
  br label %611

; <label>:611:                                    ; preds = %591, %583, %569, %555
  %612 = load i32, i32* %2, align 4
  store i32 %612, i32* %75, align 4
  %613 = load i32, i32* %75, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %616

; <label>:615:                                    ; preds = %611
  br label %618

; <label>:616:                                    ; preds = %611
  %617 = load i32, i32* %72, align 4
  br label %618

; <label>:618:                                    ; preds = %616, %615
  %619 = phi i32 [ 1, %615 ], [ %617, %616 ]
  store i32 %619, i32* %72, align 4
  %620 = load i32, i32* %73, align 4
  %621 = add nsw i32 %620, 2
  store i32 %621, i32* %73, align 4
  br label %422

; <label>:622:                                    ; preds = %422
  store i32 0, i32* %73, align 4
  br label %623

; <label>:623:                                    ; preds = %819, %622
  %624 = load i32, i32* %73, align 4
  %625 = icmp slt i32 %624, 256
  br i1 %625, label %626, label %823

; <label>:626:                                    ; preds = %623
  %627 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %627, i32* %77, i32* %78) #2
  %628 = load i32, i32* %77, align 4
  %629 = load i32, i32* %73, align 4
  %630 = sext i32 %629 to i64
  %631 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %632 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %631, i32 0, i32 2
  %633 = getelementptr inbounds [256 x i32], [256 x i32]* %632, i64 0, i64 %630
  store i32 %628, i32* %633, align 4
  %634 = load i32, i32* %78, align 4
  %635 = load i32, i32* %73, align 4
  %636 = add nsw i32 %635, 1
  %637 = sext i32 %636 to i64
  %638 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %639 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %638, i32 0, i32 2
  %640 = getelementptr inbounds [256 x i32], [256 x i32]* %639, i64 0, i64 %637
  store i32 %634, i32* %640, align 4
  %641 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %70, i64 0, i64 2
  %642 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %641, i32 0, i32 0
  %643 = load i32, i32* %77, align 4
  %644 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %69, i32 0, i32 0
  store %struct.hashset_elem* %642, %struct.hashset_elem** %19, align 8
  store i32 %643, i32* %20, align 4
  store i32* %71, i32** %21, align 8
  store %struct.hashset_elem* %644, %struct.hashset_elem** %22, align 8
  %645 = load i32, i32* %20, align 4
  store i32 %645, i32* %17, align 4
  %646 = load i32, i32* %17, align 4
  %647 = lshr i32 %646, 24
  %648 = load i32, i32* %17, align 4
  %649 = lshr i32 %648, 16
  %650 = xor i32 %647, %649
  %651 = load i32, i32* %17, align 4
  %652 = lshr i32 %651, 8
  %653 = xor i32 %650, %652
  %654 = load i32, i32* %17, align 4
  %655 = xor i32 %653, %654
  %656 = trunc i32 %655 to i8
  store i8 %656, i8* %24, align 1
  %657 = load i8, i8* %24, align 1
  %658 = zext i8 %657 to i64
  %659 = load %struct.hashset_elem*, %struct.hashset_elem** %19, align 8
  %660 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %659, i64 %658
  store %struct.hashset_elem* %660, %struct.hashset_elem** %23, align 8
  %661 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %662 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %661, i32 0, i32 2
  %663 = load i8, i8* %662, align 2
  %664 = sext i8 %663 to i32
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %674

; <label>:666:                                    ; preds = %626
  %667 = load i32, i32* %20, align 4
  %668 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %669 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %668, i32 0, i32 0
  store i32 %667, i32* %669, align 4
  %670 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %671 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %670, i32 0, i32 1
  store i16 -1, i16* %671, align 4
  %672 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %673 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %672, i32 0, i32 2
  store i8 1, i8* %673, align 2
  store i32 0, i32* %18, align 4
  br label %722

; <label>:674:                                    ; preds = %626
  %675 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %676 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %675, i32 0, i32 0
  %677 = load i32, i32* %676, align 4
  %678 = load i32, i32* %20, align 4
  %679 = icmp eq i32 %677, %678
  br i1 %679, label %680, label %681

; <label>:680:                                    ; preds = %674
  store i32 1, i32* %18, align 4
  br label %722

; <label>:681:                                    ; preds = %674
  br label %682

; <label>:682:                                    ; preds = %695, %681
  %683 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %684 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %683, i32 0, i32 1
  %685 = load i16, i16* %684, align 4
  %686 = sext i16 %685 to i32
  %687 = icmp sge i32 %686, 0
  br i1 %687, label %688, label %702

; <label>:688:                                    ; preds = %682
  %689 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %690 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 4
  %692 = load i32, i32* %20, align 4
  %693 = icmp eq i32 %691, %692
  br i1 %693, label %694, label %695

; <label>:694:                                    ; preds = %688
  store i32 1, i32* %18, align 4
  br label %722

; <label>:695:                                    ; preds = %688
  %696 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %697 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %696, i32 0, i32 1
  %698 = load i16, i16* %697, align 4
  %699 = sext i16 %698 to i64
  %700 = load %struct.hashset_elem*, %struct.hashset_elem** %22, align 8
  %701 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %700, i64 %699
  store %struct.hashset_elem* %701, %struct.hashset_elem** %23, align 8
  br label %682

; <label>:702:                                    ; preds = %682
  %703 = load i32*, i32** %21, align 8
  %704 = load i32, i32* %703, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %703, align 4
  %706 = trunc i32 %704 to i16
  %707 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %708 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %707, i32 0, i32 1
  store i16 %706, i16* %708, align 4
  %709 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %710 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %709, i32 0, i32 1
  %711 = load i16, i16* %710, align 4
  %712 = sext i16 %711 to i64
  %713 = load %struct.hashset_elem*, %struct.hashset_elem** %22, align 8
  %714 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %713, i64 %712
  store %struct.hashset_elem* %714, %struct.hashset_elem** %23, align 8
  %715 = load i32, i32* %20, align 4
  %716 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %717 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %716, i32 0, i32 0
  store i32 %715, i32* %717, align 4
  %718 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %719 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %718, i32 0, i32 1
  store i16 -1, i16* %719, align 4
  %720 = load %struct.hashset_elem*, %struct.hashset_elem** %23, align 8
  %721 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %720, i32 0, i32 2
  store i8 1, i8* %721, align 2
  store i32 0, i32* %18, align 4
  br label %722

; <label>:722:                                    ; preds = %702, %694, %680, %666
  %723 = load i32, i32* %18, align 4
  store i32 %723, i32* %75, align 4
  %724 = load i32, i32* %75, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %727

; <label>:726:                                    ; preds = %722
  br label %729

; <label>:727:                                    ; preds = %722
  %728 = load i32, i32* %72, align 4
  br label %729

; <label>:729:                                    ; preds = %727, %726
  %730 = phi i32 [ 1, %726 ], [ %728, %727 ]
  store i32 %730, i32* %72, align 4
  %731 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %70, i64 0, i64 2
  %732 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %731, i32 0, i32 0
  %733 = load i32, i32* %78, align 4
  %734 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %69, i32 0, i32 0
  store %struct.hashset_elem* %732, %struct.hashset_elem** %27, align 8
  store i32 %733, i32* %28, align 4
  store i32* %71, i32** %29, align 8
  store %struct.hashset_elem* %734, %struct.hashset_elem** %30, align 8
  %735 = load i32, i32* %28, align 4
  store i32 %735, i32* %25, align 4
  %736 = load i32, i32* %25, align 4
  %737 = lshr i32 %736, 24
  %738 = load i32, i32* %25, align 4
  %739 = lshr i32 %738, 16
  %740 = xor i32 %737, %739
  %741 = load i32, i32* %25, align 4
  %742 = lshr i32 %741, 8
  %743 = xor i32 %740, %742
  %744 = load i32, i32* %25, align 4
  %745 = xor i32 %743, %744
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %32, align 1
  %747 = load i8, i8* %32, align 1
  %748 = zext i8 %747 to i64
  %749 = load %struct.hashset_elem*, %struct.hashset_elem** %27, align 8
  %750 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %749, i64 %748
  store %struct.hashset_elem* %750, %struct.hashset_elem** %31, align 8
  %751 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %752 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %751, i32 0, i32 2
  %753 = load i8, i8* %752, align 2
  %754 = sext i8 %753 to i32
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %764

; <label>:756:                                    ; preds = %729
  %757 = load i32, i32* %28, align 4
  %758 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %759 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %758, i32 0, i32 0
  store i32 %757, i32* %759, align 4
  %760 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %761 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %760, i32 0, i32 1
  store i16 -1, i16* %761, align 4
  %762 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %763 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %762, i32 0, i32 2
  store i8 1, i8* %763, align 2
  store i32 0, i32* %26, align 4
  br label %812

; <label>:764:                                    ; preds = %729
  %765 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %766 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %765, i32 0, i32 0
  %767 = load i32, i32* %766, align 4
  %768 = load i32, i32* %28, align 4
  %769 = icmp eq i32 %767, %768
  br i1 %769, label %770, label %771

; <label>:770:                                    ; preds = %764
  store i32 1, i32* %26, align 4
  br label %812

; <label>:771:                                    ; preds = %764
  br label %772

; <label>:772:                                    ; preds = %785, %771
  %773 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %774 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %773, i32 0, i32 1
  %775 = load i16, i16* %774, align 4
  %776 = sext i16 %775 to i32
  %777 = icmp sge i32 %776, 0
  br i1 %777, label %778, label %792

; <label>:778:                                    ; preds = %772
  %779 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %780 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %779, i32 0, i32 0
  %781 = load i32, i32* %780, align 4
  %782 = load i32, i32* %28, align 4
  %783 = icmp eq i32 %781, %782
  br i1 %783, label %784, label %785

; <label>:784:                                    ; preds = %778
  store i32 1, i32* %26, align 4
  br label %812

; <label>:785:                                    ; preds = %778
  %786 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %787 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %786, i32 0, i32 1
  %788 = load i16, i16* %787, align 4
  %789 = sext i16 %788 to i64
  %790 = load %struct.hashset_elem*, %struct.hashset_elem** %30, align 8
  %791 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %790, i64 %789
  store %struct.hashset_elem* %791, %struct.hashset_elem** %31, align 8
  br label %772

; <label>:792:                                    ; preds = %772
  %793 = load i32*, i32** %29, align 8
  %794 = load i32, i32* %793, align 4
  %795 = add nsw i32 %794, 1
  store i32 %795, i32* %793, align 4
  %796 = trunc i32 %794 to i16
  %797 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %798 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %797, i32 0, i32 1
  store i16 %796, i16* %798, align 4
  %799 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %800 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %799, i32 0, i32 1
  %801 = load i16, i16* %800, align 4
  %802 = sext i16 %801 to i64
  %803 = load %struct.hashset_elem*, %struct.hashset_elem** %30, align 8
  %804 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %803, i64 %802
  store %struct.hashset_elem* %804, %struct.hashset_elem** %31, align 8
  %805 = load i32, i32* %28, align 4
  %806 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %807 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %806, i32 0, i32 0
  store i32 %805, i32* %807, align 4
  %808 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %809 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %808, i32 0, i32 1
  store i16 -1, i16* %809, align 4
  %810 = load %struct.hashset_elem*, %struct.hashset_elem** %31, align 8
  %811 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %810, i32 0, i32 2
  store i8 1, i8* %811, align 2
  store i32 0, i32* %26, align 4
  br label %812

; <label>:812:                                    ; preds = %792, %784, %770, %756
  %813 = load i32, i32* %26, align 4
  store i32 %813, i32* %75, align 4
  %814 = load i32, i32* %75, align 4
  %815 = icmp ne i32 %814, 0
  br i1 %815, label %816, label %817

; <label>:816:                                    ; preds = %812
  br label %819

; <label>:817:                                    ; preds = %812
  %818 = load i32, i32* %72, align 4
  br label %819

; <label>:819:                                    ; preds = %817, %816
  %820 = phi i32 [ 1, %816 ], [ %818, %817 ]
  store i32 %820, i32* %72, align 4
  %821 = load i32, i32* %73, align 4
  %822 = add nsw i32 %821, 2
  store i32 %822, i32* %73, align 4
  br label %623

; <label>:823:                                    ; preds = %623
  store i32 0, i32* %73, align 4
  br label %824

; <label>:824:                                    ; preds = %1020, %823
  %825 = load i32, i32* %73, align 4
  %826 = icmp slt i32 %825, 256
  br i1 %826, label %827, label %1024

; <label>:827:                                    ; preds = %824
  %828 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  call void @blowfish_do_encrypt(%struct.BLOWFISH_context* %828, i32* %77, i32* %78) #2
  %829 = load i32, i32* %77, align 4
  %830 = load i32, i32* %73, align 4
  %831 = sext i32 %830 to i64
  %832 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %833 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %832, i32 0, i32 3
  %834 = getelementptr inbounds [256 x i32], [256 x i32]* %833, i64 0, i64 %831
  store i32 %829, i32* %834, align 4
  %835 = load i32, i32* %78, align 4
  %836 = load i32, i32* %73, align 4
  %837 = add nsw i32 %836, 1
  %838 = sext i32 %837 to i64
  %839 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %67, align 8
  %840 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %839, i32 0, i32 3
  %841 = getelementptr inbounds [256 x i32], [256 x i32]* %840, i64 0, i64 %838
  store i32 %835, i32* %841, align 4
  %842 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %70, i64 0, i64 3
  %843 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %842, i32 0, i32 0
  %844 = load i32, i32* %77, align 4
  %845 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %69, i32 0, i32 0
  store %struct.hashset_elem* %843, %struct.hashset_elem** %43, align 8
  store i32 %844, i32* %44, align 4
  store i32* %71, i32** %45, align 8
  store %struct.hashset_elem* %845, %struct.hashset_elem** %46, align 8
  %846 = load i32, i32* %44, align 4
  store i32 %846, i32* %41, align 4
  %847 = load i32, i32* %41, align 4
  %848 = lshr i32 %847, 24
  %849 = load i32, i32* %41, align 4
  %850 = lshr i32 %849, 16
  %851 = xor i32 %848, %850
  %852 = load i32, i32* %41, align 4
  %853 = lshr i32 %852, 8
  %854 = xor i32 %851, %853
  %855 = load i32, i32* %41, align 4
  %856 = xor i32 %854, %855
  %857 = trunc i32 %856 to i8
  store i8 %857, i8* %48, align 1
  %858 = load i8, i8* %48, align 1
  %859 = zext i8 %858 to i64
  %860 = load %struct.hashset_elem*, %struct.hashset_elem** %43, align 8
  %861 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %860, i64 %859
  store %struct.hashset_elem* %861, %struct.hashset_elem** %47, align 8
  %862 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %863 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %862, i32 0, i32 2
  %864 = load i8, i8* %863, align 2
  %865 = sext i8 %864 to i32
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %867, label %875

; <label>:867:                                    ; preds = %827
  %868 = load i32, i32* %44, align 4
  %869 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %870 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %869, i32 0, i32 0
  store i32 %868, i32* %870, align 4
  %871 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %872 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %871, i32 0, i32 1
  store i16 -1, i16* %872, align 4
  %873 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %874 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %873, i32 0, i32 2
  store i8 1, i8* %874, align 2
  store i32 0, i32* %42, align 4
  br label %923

; <label>:875:                                    ; preds = %827
  %876 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %877 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %876, i32 0, i32 0
  %878 = load i32, i32* %877, align 4
  %879 = load i32, i32* %44, align 4
  %880 = icmp eq i32 %878, %879
  br i1 %880, label %881, label %882

; <label>:881:                                    ; preds = %875
  store i32 1, i32* %42, align 4
  br label %923

; <label>:882:                                    ; preds = %875
  br label %883

; <label>:883:                                    ; preds = %896, %882
  %884 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %885 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %884, i32 0, i32 1
  %886 = load i16, i16* %885, align 4
  %887 = sext i16 %886 to i32
  %888 = icmp sge i32 %887, 0
  br i1 %888, label %889, label %903

; <label>:889:                                    ; preds = %883
  %890 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %891 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %890, i32 0, i32 0
  %892 = load i32, i32* %891, align 4
  %893 = load i32, i32* %44, align 4
  %894 = icmp eq i32 %892, %893
  br i1 %894, label %895, label %896

; <label>:895:                                    ; preds = %889
  store i32 1, i32* %42, align 4
  br label %923

; <label>:896:                                    ; preds = %889
  %897 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %898 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %897, i32 0, i32 1
  %899 = load i16, i16* %898, align 4
  %900 = sext i16 %899 to i64
  %901 = load %struct.hashset_elem*, %struct.hashset_elem** %46, align 8
  %902 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %901, i64 %900
  store %struct.hashset_elem* %902, %struct.hashset_elem** %47, align 8
  br label %883

; <label>:903:                                    ; preds = %883
  %904 = load i32*, i32** %45, align 8
  %905 = load i32, i32* %904, align 4
  %906 = add nsw i32 %905, 1
  store i32 %906, i32* %904, align 4
  %907 = trunc i32 %905 to i16
  %908 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %909 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %908, i32 0, i32 1
  store i16 %907, i16* %909, align 4
  %910 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %911 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %910, i32 0, i32 1
  %912 = load i16, i16* %911, align 4
  %913 = sext i16 %912 to i64
  %914 = load %struct.hashset_elem*, %struct.hashset_elem** %46, align 8
  %915 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %914, i64 %913
  store %struct.hashset_elem* %915, %struct.hashset_elem** %47, align 8
  %916 = load i32, i32* %44, align 4
  %917 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %918 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %917, i32 0, i32 0
  store i32 %916, i32* %918, align 4
  %919 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %920 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %919, i32 0, i32 1
  store i16 -1, i16* %920, align 4
  %921 = load %struct.hashset_elem*, %struct.hashset_elem** %47, align 8
  %922 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %921, i32 0, i32 2
  store i8 1, i8* %922, align 2
  store i32 0, i32* %42, align 4
  br label %923

; <label>:923:                                    ; preds = %903, %895, %881, %867
  %924 = load i32, i32* %42, align 4
  store i32 %924, i32* %75, align 4
  %925 = load i32, i32* %75, align 4
  %926 = icmp ne i32 %925, 0
  br i1 %926, label %927, label %928

; <label>:927:                                    ; preds = %923
  br label %930

; <label>:928:                                    ; preds = %923
  %929 = load i32, i32* %72, align 4
  br label %930

; <label>:930:                                    ; preds = %928, %927
  %931 = phi i32 [ 1, %927 ], [ %929, %928 ]
  store i32 %931, i32* %72, align 4
  %932 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %70, i64 0, i64 3
  %933 = getelementptr inbounds [256 x %struct.hashset_elem], [256 x %struct.hashset_elem]* %932, i32 0, i32 0
  %934 = load i32, i32* %78, align 4
  %935 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %69, i32 0, i32 0
  store %struct.hashset_elem* %933, %struct.hashset_elem** %51, align 8
  store i32 %934, i32* %52, align 4
  store i32* %71, i32** %53, align 8
  store %struct.hashset_elem* %935, %struct.hashset_elem** %54, align 8
  %936 = load i32, i32* %52, align 4
  store i32 %936, i32* %49, align 4
  %937 = load i32, i32* %49, align 4
  %938 = lshr i32 %937, 24
  %939 = load i32, i32* %49, align 4
  %940 = lshr i32 %939, 16
  %941 = xor i32 %938, %940
  %942 = load i32, i32* %49, align 4
  %943 = lshr i32 %942, 8
  %944 = xor i32 %941, %943
  %945 = load i32, i32* %49, align 4
  %946 = xor i32 %944, %945
  %947 = trunc i32 %946 to i8
  store i8 %947, i8* %56, align 1
  %948 = load i8, i8* %56, align 1
  %949 = zext i8 %948 to i64
  %950 = load %struct.hashset_elem*, %struct.hashset_elem** %51, align 8
  %951 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %950, i64 %949
  store %struct.hashset_elem* %951, %struct.hashset_elem** %55, align 8
  %952 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %953 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %952, i32 0, i32 2
  %954 = load i8, i8* %953, align 2
  %955 = sext i8 %954 to i32
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %957, label %965

; <label>:957:                                    ; preds = %930
  %958 = load i32, i32* %52, align 4
  %959 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %960 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %959, i32 0, i32 0
  store i32 %958, i32* %960, align 4
  %961 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %962 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %961, i32 0, i32 1
  store i16 -1, i16* %962, align 4
  %963 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %964 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %963, i32 0, i32 2
  store i8 1, i8* %964, align 2
  store i32 0, i32* %50, align 4
  br label %1013

; <label>:965:                                    ; preds = %930
  %966 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %967 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %966, i32 0, i32 0
  %968 = load i32, i32* %967, align 4
  %969 = load i32, i32* %52, align 4
  %970 = icmp eq i32 %968, %969
  br i1 %970, label %971, label %972

; <label>:971:                                    ; preds = %965
  store i32 1, i32* %50, align 4
  br label %1013

; <label>:972:                                    ; preds = %965
  br label %973

; <label>:973:                                    ; preds = %986, %972
  %974 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %975 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %974, i32 0, i32 1
  %976 = load i16, i16* %975, align 4
  %977 = sext i16 %976 to i32
  %978 = icmp sge i32 %977, 0
  br i1 %978, label %979, label %993

; <label>:979:                                    ; preds = %973
  %980 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %981 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %980, i32 0, i32 0
  %982 = load i32, i32* %981, align 4
  %983 = load i32, i32* %52, align 4
  %984 = icmp eq i32 %982, %983
  br i1 %984, label %985, label %986

; <label>:985:                                    ; preds = %979
  store i32 1, i32* %50, align 4
  br label %1013

; <label>:986:                                    ; preds = %979
  %987 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %988 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %987, i32 0, i32 1
  %989 = load i16, i16* %988, align 4
  %990 = sext i16 %989 to i64
  %991 = load %struct.hashset_elem*, %struct.hashset_elem** %54, align 8
  %992 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %991, i64 %990
  store %struct.hashset_elem* %992, %struct.hashset_elem** %55, align 8
  br label %973

; <label>:993:                                    ; preds = %973
  %994 = load i32*, i32** %53, align 8
  %995 = load i32, i32* %994, align 4
  %996 = add nsw i32 %995, 1
  store i32 %996, i32* %994, align 4
  %997 = trunc i32 %995 to i16
  %998 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %999 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %998, i32 0, i32 1
  store i16 %997, i16* %999, align 4
  %1000 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %1001 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %1000, i32 0, i32 1
  %1002 = load i16, i16* %1001, align 4
  %1003 = sext i16 %1002 to i64
  %1004 = load %struct.hashset_elem*, %struct.hashset_elem** %54, align 8
  %1005 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %1004, i64 %1003
  store %struct.hashset_elem* %1005, %struct.hashset_elem** %55, align 8
  %1006 = load i32, i32* %52, align 4
  %1007 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %1008 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %1007, i32 0, i32 0
  store i32 %1006, i32* %1008, align 4
  %1009 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %1010 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %1009, i32 0, i32 1
  store i16 -1, i16* %1010, align 4
  %1011 = load %struct.hashset_elem*, %struct.hashset_elem** %55, align 8
  %1012 = getelementptr inbounds %struct.hashset_elem, %struct.hashset_elem* %1011, i32 0, i32 2
  store i8 1, i8* %1012, align 2
  store i32 0, i32* %50, align 4
  br label %1013

; <label>:1013:                                   ; preds = %993, %985, %971, %957
  %1014 = load i32, i32* %50, align 4
  store i32 %1014, i32* %75, align 4
  %1015 = load i32, i32* %75, align 4
  %1016 = icmp ne i32 %1015, 0
  br i1 %1016, label %1017, label %1018

; <label>:1017:                                   ; preds = %1013
  br label %1020

; <label>:1018:                                   ; preds = %1013
  %1019 = load i32, i32* %72, align 4
  br label %1020

; <label>:1020:                                   ; preds = %1018, %1017
  %1021 = phi i32 [ 1, %1017 ], [ %1019, %1018 ]
  store i32 %1021, i32* %72, align 4
  %1022 = load i32, i32* %73, align 4
  %1023 = add nsw i32 %1022, 2
  store i32 %1023, i32* %73, align 4
  br label %824

; <label>:1024:                                   ; preds = %824
  %1025 = getelementptr inbounds [4 x [256 x %struct.hashset_elem]], [4 x [256 x %struct.hashset_elem]]* %70, i32 0, i32 0
  %1026 = bitcast [256 x %struct.hashset_elem]* %1025 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1026, i8 0, i64 8192, i32 16, i1 false) #2
  %1027 = getelementptr inbounds [1020 x %struct.hashset_elem], [1020 x %struct.hashset_elem]* %69, i32 0, i32 0
  %1028 = bitcast %struct.hashset_elem* %1027 to i8*
  %1029 = load i32, i32* %71, align 4
  %1030 = sext i32 %1029 to i64
  %1031 = mul i64 8, %1030
  call void @llvm.memset.p0i8.i64(i8* %1028, i8 0, i64 %1031, i32 16, i1 false) #2
  %1032 = load i32, i32* %72, align 4
  %1033 = icmp ne i32 %1032, 0
  br i1 %1033, label %1034, label %1035

; <label>:1034:                                   ; preds = %1024
  store i32 1, i32* %65, align 4
  br label %1036

; <label>:1035:                                   ; preds = %1024
  store i32 0, i32* %65, align 4
  br label %1036

; <label>:1036:                                   ; preds = %1034, %1035
  %1037 = load i32, i32* %65, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @blowfish_do_encrypt(%struct.BLOWFISH_context*, i32*, i32*) #0 {
  %4 = alloca %struct.BLOWFISH_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.BLOWFISH_context* %0, %struct.BLOWFISH_context** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %4, align 8
  %19 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %18, i32 0, i32 4
  %20 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i32 0, i32 0
  store i32* %20, i32** %13, align 8
  %21 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %4, align 8
  %22 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %21, i32 0, i32 0
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i32 0, i32 0
  store i32* %23, i32** %9, align 8
  %24 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %4, align 8
  %25 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %24, i32 0, i32 1
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %25, i32 0, i32 0
  store i32* %26, i32** %10, align 8
  %27 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %4, align 8
  %28 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %27, i32 0, i32 2
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %28, i32 0, i32 0
  store i32* %29, i32** %11, align 8
  %30 = load %struct.BLOWFISH_context*, %struct.BLOWFISH_context** %4, align 8
  %31 = getelementptr inbounds %struct.BLOWFISH_context, %struct.BLOWFISH_context* %30, i32 0, i32 3
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* %31, i32 0, i32 0
  store i32* %32, i32** %12, align 8
  br label %33

; <label>:33:                                     ; preds = %3
  %34 = load i32*, i32** %13, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = bitcast i32* %7 to i8*
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 %42
  %45 = load i32, i32* %44, align 4
  %46 = bitcast i32* %7 to i8*
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 2
  %49 = zext i8 %48 to i64
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 %49
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %45, %52
  %54 = bitcast i32* %7 to i8*
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i64
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %57
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %53, %60
  %62 = bitcast i32* %7 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 4
  %65 = zext i8 %64 to i64
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 %65
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %61, %68
  %70 = load i32, i32* %8, align 4
  %71 = xor i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %72

; <label>:72:                                     ; preds = %33
  br label %73

; <label>:73:                                     ; preds = %72
  %74 = load i32*, i32** %13, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = xor i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = bitcast i32* %8 to i8*
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i64
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 %82
  %85 = load i32, i32* %84, align 4
  %86 = bitcast i32* %8 to i8*
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* %87, align 2
  %89 = zext i8 %88 to i64
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %89
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %85, %92
  %94 = bitcast i32* %8 to i8*
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 %97
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %93, %100
  %102 = bitcast i32* %8 to i8*
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 4
  %105 = zext i8 %104 to i64
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %101, %108
  %110 = load i32, i32* %7, align 4
  %111 = xor i32 %110, %109
  store i32 %111, i32* %7, align 4
  br label %112

; <label>:112:                                    ; preds = %73
  br label %113

; <label>:113:                                    ; preds = %112
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = xor i32 %117, %116
  store i32 %118, i32* %7, align 4
  %119 = bitcast i32* %7 to i8*
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i64
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 %122
  %125 = load i32, i32* %124, align 4
  %126 = bitcast i32* %7 to i8*
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  %128 = load i8, i8* %127, align 2
  %129 = zext i8 %128 to i64
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 %129
  %132 = load i32, i32* %131, align 4
  %133 = add i32 %125, %132
  %134 = bitcast i32* %7 to i8*
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i64
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 %137
  %140 = load i32, i32* %139, align 4
  %141 = xor i32 %133, %140
  %142 = bitcast i32* %7 to i8*
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 4
  %145 = zext i8 %144 to i64
  %146 = load i32*, i32** %12, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 %145
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %141, %148
  %150 = load i32, i32* %8, align 4
  %151 = xor i32 %150, %149
  store i32 %151, i32* %8, align 4
  br label %152

; <label>:152:                                    ; preds = %113
  br label %153

; <label>:153:                                    ; preds = %152
  %154 = load i32*, i32** %13, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %8, align 4
  %158 = xor i32 %157, %156
  store i32 %158, i32* %8, align 4
  %159 = bitcast i32* %8 to i8*
  %160 = getelementptr inbounds i8, i8* %159, i64 3
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i64
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 %162
  %165 = load i32, i32* %164, align 4
  %166 = bitcast i32* %8 to i8*
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  %168 = load i8, i8* %167, align 2
  %169 = zext i8 %168 to i64
  %170 = load i32*, i32** %10, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 %169
  %172 = load i32, i32* %171, align 4
  %173 = add i32 %165, %172
  %174 = bitcast i32* %8 to i8*
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i64
  %178 = load i32*, i32** %11, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 %177
  %180 = load i32, i32* %179, align 4
  %181 = xor i32 %173, %180
  %182 = bitcast i32* %8 to i8*
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 4
  %185 = zext i8 %184 to i64
  %186 = load i32*, i32** %12, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 %185
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %181, %188
  %190 = load i32, i32* %7, align 4
  %191 = xor i32 %190, %189
  store i32 %191, i32* %7, align 4
  br label %192

; <label>:192:                                    ; preds = %153
  br label %193

; <label>:193:                                    ; preds = %192
  %194 = load i32*, i32** %13, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 4
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %7, align 4
  %198 = xor i32 %197, %196
  store i32 %198, i32* %7, align 4
  %199 = bitcast i32* %7 to i8*
  %200 = getelementptr inbounds i8, i8* %199, i64 3
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i64
  %203 = load i32*, i32** %9, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 %202
  %205 = load i32, i32* %204, align 4
  %206 = bitcast i32* %7 to i8*
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  %208 = load i8, i8* %207, align 2
  %209 = zext i8 %208 to i64
  %210 = load i32*, i32** %10, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 %209
  %212 = load i32, i32* %211, align 4
  %213 = add i32 %205, %212
  %214 = bitcast i32* %7 to i8*
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i64
  %218 = load i32*, i32** %11, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 %217
  %220 = load i32, i32* %219, align 4
  %221 = xor i32 %213, %220
  %222 = bitcast i32* %7 to i8*
  %223 = getelementptr inbounds i8, i8* %222, i64 0
  %224 = load i8, i8* %223, align 4
  %225 = zext i8 %224 to i64
  %226 = load i32*, i32** %12, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 %225
  %228 = load i32, i32* %227, align 4
  %229 = add i32 %221, %228
  %230 = load i32, i32* %8, align 4
  %231 = xor i32 %230, %229
  store i32 %231, i32* %8, align 4
  br label %232

; <label>:232:                                    ; preds = %193
  br label %233

; <label>:233:                                    ; preds = %232
  %234 = load i32*, i32** %13, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 5
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %8, align 4
  %238 = xor i32 %237, %236
  store i32 %238, i32* %8, align 4
  %239 = bitcast i32* %8 to i8*
  %240 = getelementptr inbounds i8, i8* %239, i64 3
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i64
  %243 = load i32*, i32** %9, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 %242
  %245 = load i32, i32* %244, align 4
  %246 = bitcast i32* %8 to i8*
  %247 = getelementptr inbounds i8, i8* %246, i64 2
  %248 = load i8, i8* %247, align 2
  %249 = zext i8 %248 to i64
  %250 = load i32*, i32** %10, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 %249
  %252 = load i32, i32* %251, align 4
  %253 = add i32 %245, %252
  %254 = bitcast i32* %8 to i8*
  %255 = getelementptr inbounds i8, i8* %254, i64 1
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i64
  %258 = load i32*, i32** %11, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 %257
  %260 = load i32, i32* %259, align 4
  %261 = xor i32 %253, %260
  %262 = bitcast i32* %8 to i8*
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  %264 = load i8, i8* %263, align 4
  %265 = zext i8 %264 to i64
  %266 = load i32*, i32** %12, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 %265
  %268 = load i32, i32* %267, align 4
  %269 = add i32 %261, %268
  %270 = load i32, i32* %7, align 4
  %271 = xor i32 %270, %269
  store i32 %271, i32* %7, align 4
  br label %272

; <label>:272:                                    ; preds = %233
  br label %273

; <label>:273:                                    ; preds = %272
  %274 = load i32*, i32** %13, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 6
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %7, align 4
  %278 = xor i32 %277, %276
  store i32 %278, i32* %7, align 4
  %279 = bitcast i32* %7 to i8*
  %280 = getelementptr inbounds i8, i8* %279, i64 3
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i64
  %283 = load i32*, i32** %9, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 %282
  %285 = load i32, i32* %284, align 4
  %286 = bitcast i32* %7 to i8*
  %287 = getelementptr inbounds i8, i8* %286, i64 2
  %288 = load i8, i8* %287, align 2
  %289 = zext i8 %288 to i64
  %290 = load i32*, i32** %10, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 %289
  %292 = load i32, i32* %291, align 4
  %293 = add i32 %285, %292
  %294 = bitcast i32* %7 to i8*
  %295 = getelementptr inbounds i8, i8* %294, i64 1
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i64
  %298 = load i32*, i32** %11, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 %297
  %300 = load i32, i32* %299, align 4
  %301 = xor i32 %293, %300
  %302 = bitcast i32* %7 to i8*
  %303 = getelementptr inbounds i8, i8* %302, i64 0
  %304 = load i8, i8* %303, align 4
  %305 = zext i8 %304 to i64
  %306 = load i32*, i32** %12, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 %305
  %308 = load i32, i32* %307, align 4
  %309 = add i32 %301, %308
  %310 = load i32, i32* %8, align 4
  %311 = xor i32 %310, %309
  store i32 %311, i32* %8, align 4
  br label %312

; <label>:312:                                    ; preds = %273
  br label %313

; <label>:313:                                    ; preds = %312
  %314 = load i32*, i32** %13, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 7
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %8, align 4
  %318 = xor i32 %317, %316
  store i32 %318, i32* %8, align 4
  %319 = bitcast i32* %8 to i8*
  %320 = getelementptr inbounds i8, i8* %319, i64 3
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i64
  %323 = load i32*, i32** %9, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 %322
  %325 = load i32, i32* %324, align 4
  %326 = bitcast i32* %8 to i8*
  %327 = getelementptr inbounds i8, i8* %326, i64 2
  %328 = load i8, i8* %327, align 2
  %329 = zext i8 %328 to i64
  %330 = load i32*, i32** %10, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 %329
  %332 = load i32, i32* %331, align 4
  %333 = add i32 %325, %332
  %334 = bitcast i32* %8 to i8*
  %335 = getelementptr inbounds i8, i8* %334, i64 1
  %336 = load i8, i8* %335, align 1
  %337 = zext i8 %336 to i64
  %338 = load i32*, i32** %11, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 %337
  %340 = load i32, i32* %339, align 4
  %341 = xor i32 %333, %340
  %342 = bitcast i32* %8 to i8*
  %343 = getelementptr inbounds i8, i8* %342, i64 0
  %344 = load i8, i8* %343, align 4
  %345 = zext i8 %344 to i64
  %346 = load i32*, i32** %12, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 %345
  %348 = load i32, i32* %347, align 4
  %349 = add i32 %341, %348
  %350 = load i32, i32* %7, align 4
  %351 = xor i32 %350, %349
  store i32 %351, i32* %7, align 4
  br label %352

; <label>:352:                                    ; preds = %313
  br label %353

; <label>:353:                                    ; preds = %352
  %354 = load i32*, i32** %13, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 8
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %7, align 4
  %358 = xor i32 %357, %356
  store i32 %358, i32* %7, align 4
  %359 = bitcast i32* %7 to i8*
  %360 = getelementptr inbounds i8, i8* %359, i64 3
  %361 = load i8, i8* %360, align 1
  %362 = zext i8 %361 to i64
  %363 = load i32*, i32** %9, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 %362
  %365 = load i32, i32* %364, align 4
  %366 = bitcast i32* %7 to i8*
  %367 = getelementptr inbounds i8, i8* %366, i64 2
  %368 = load i8, i8* %367, align 2
  %369 = zext i8 %368 to i64
  %370 = load i32*, i32** %10, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 %369
  %372 = load i32, i32* %371, align 4
  %373 = add i32 %365, %372
  %374 = bitcast i32* %7 to i8*
  %375 = getelementptr inbounds i8, i8* %374, i64 1
  %376 = load i8, i8* %375, align 1
  %377 = zext i8 %376 to i64
  %378 = load i32*, i32** %11, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 %377
  %380 = load i32, i32* %379, align 4
  %381 = xor i32 %373, %380
  %382 = bitcast i32* %7 to i8*
  %383 = getelementptr inbounds i8, i8* %382, i64 0
  %384 = load i8, i8* %383, align 4
  %385 = zext i8 %384 to i64
  %386 = load i32*, i32** %12, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 %385
  %388 = load i32, i32* %387, align 4
  %389 = add i32 %381, %388
  %390 = load i32, i32* %8, align 4
  %391 = xor i32 %390, %389
  store i32 %391, i32* %8, align 4
  br label %392

; <label>:392:                                    ; preds = %353
  br label %393

; <label>:393:                                    ; preds = %392
  %394 = load i32*, i32** %13, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 9
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* %8, align 4
  %398 = xor i32 %397, %396
  store i32 %398, i32* %8, align 4
  %399 = bitcast i32* %8 to i8*
  %400 = getelementptr inbounds i8, i8* %399, i64 3
  %401 = load i8, i8* %400, align 1
  %402 = zext i8 %401 to i64
  %403 = load i32*, i32** %9, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 %402
  %405 = load i32, i32* %404, align 4
  %406 = bitcast i32* %8 to i8*
  %407 = getelementptr inbounds i8, i8* %406, i64 2
  %408 = load i8, i8* %407, align 2
  %409 = zext i8 %408 to i64
  %410 = load i32*, i32** %10, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 %409
  %412 = load i32, i32* %411, align 4
  %413 = add i32 %405, %412
  %414 = bitcast i32* %8 to i8*
  %415 = getelementptr inbounds i8, i8* %414, i64 1
  %416 = load i8, i8* %415, align 1
  %417 = zext i8 %416 to i64
  %418 = load i32*, i32** %11, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 %417
  %420 = load i32, i32* %419, align 4
  %421 = xor i32 %413, %420
  %422 = bitcast i32* %8 to i8*
  %423 = getelementptr inbounds i8, i8* %422, i64 0
  %424 = load i8, i8* %423, align 4
  %425 = zext i8 %424 to i64
  %426 = load i32*, i32** %12, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 %425
  %428 = load i32, i32* %427, align 4
  %429 = add i32 %421, %428
  %430 = load i32, i32* %7, align 4
  %431 = xor i32 %430, %429
  store i32 %431, i32* %7, align 4
  br label %432

; <label>:432:                                    ; preds = %393
  br label %433

; <label>:433:                                    ; preds = %432
  %434 = load i32*, i32** %13, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 10
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %7, align 4
  %438 = xor i32 %437, %436
  store i32 %438, i32* %7, align 4
  %439 = bitcast i32* %7 to i8*
  %440 = getelementptr inbounds i8, i8* %439, i64 3
  %441 = load i8, i8* %440, align 1
  %442 = zext i8 %441 to i64
  %443 = load i32*, i32** %9, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 %442
  %445 = load i32, i32* %444, align 4
  %446 = bitcast i32* %7 to i8*
  %447 = getelementptr inbounds i8, i8* %446, i64 2
  %448 = load i8, i8* %447, align 2
  %449 = zext i8 %448 to i64
  %450 = load i32*, i32** %10, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 %449
  %452 = load i32, i32* %451, align 4
  %453 = add i32 %445, %452
  %454 = bitcast i32* %7 to i8*
  %455 = getelementptr inbounds i8, i8* %454, i64 1
  %456 = load i8, i8* %455, align 1
  %457 = zext i8 %456 to i64
  %458 = load i32*, i32** %11, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 %457
  %460 = load i32, i32* %459, align 4
  %461 = xor i32 %453, %460
  %462 = bitcast i32* %7 to i8*
  %463 = getelementptr inbounds i8, i8* %462, i64 0
  %464 = load i8, i8* %463, align 4
  %465 = zext i8 %464 to i64
  %466 = load i32*, i32** %12, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 %465
  %468 = load i32, i32* %467, align 4
  %469 = add i32 %461, %468
  %470 = load i32, i32* %8, align 4
  %471 = xor i32 %470, %469
  store i32 %471, i32* %8, align 4
  br label %472

; <label>:472:                                    ; preds = %433
  br label %473

; <label>:473:                                    ; preds = %472
  %474 = load i32*, i32** %13, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 11
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* %8, align 4
  %478 = xor i32 %477, %476
  store i32 %478, i32* %8, align 4
  %479 = bitcast i32* %8 to i8*
  %480 = getelementptr inbounds i8, i8* %479, i64 3
  %481 = load i8, i8* %480, align 1
  %482 = zext i8 %481 to i64
  %483 = load i32*, i32** %9, align 8
  %484 = getelementptr inbounds i32, i32* %483, i64 %482
  %485 = load i32, i32* %484, align 4
  %486 = bitcast i32* %8 to i8*
  %487 = getelementptr inbounds i8, i8* %486, i64 2
  %488 = load i8, i8* %487, align 2
  %489 = zext i8 %488 to i64
  %490 = load i32*, i32** %10, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 %489
  %492 = load i32, i32* %491, align 4
  %493 = add i32 %485, %492
  %494 = bitcast i32* %8 to i8*
  %495 = getelementptr inbounds i8, i8* %494, i64 1
  %496 = load i8, i8* %495, align 1
  %497 = zext i8 %496 to i64
  %498 = load i32*, i32** %11, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 %497
  %500 = load i32, i32* %499, align 4
  %501 = xor i32 %493, %500
  %502 = bitcast i32* %8 to i8*
  %503 = getelementptr inbounds i8, i8* %502, i64 0
  %504 = load i8, i8* %503, align 4
  %505 = zext i8 %504 to i64
  %506 = load i32*, i32** %12, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 %505
  %508 = load i32, i32* %507, align 4
  %509 = add i32 %501, %508
  %510 = load i32, i32* %7, align 4
  %511 = xor i32 %510, %509
  store i32 %511, i32* %7, align 4
  br label %512

; <label>:512:                                    ; preds = %473
  br label %513

; <label>:513:                                    ; preds = %512
  %514 = load i32*, i32** %13, align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 12
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* %7, align 4
  %518 = xor i32 %517, %516
  store i32 %518, i32* %7, align 4
  %519 = bitcast i32* %7 to i8*
  %520 = getelementptr inbounds i8, i8* %519, i64 3
  %521 = load i8, i8* %520, align 1
  %522 = zext i8 %521 to i64
  %523 = load i32*, i32** %9, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 %522
  %525 = load i32, i32* %524, align 4
  %526 = bitcast i32* %7 to i8*
  %527 = getelementptr inbounds i8, i8* %526, i64 2
  %528 = load i8, i8* %527, align 2
  %529 = zext i8 %528 to i64
  %530 = load i32*, i32** %10, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 %529
  %532 = load i32, i32* %531, align 4
  %533 = add i32 %525, %532
  %534 = bitcast i32* %7 to i8*
  %535 = getelementptr inbounds i8, i8* %534, i64 1
  %536 = load i8, i8* %535, align 1
  %537 = zext i8 %536 to i64
  %538 = load i32*, i32** %11, align 8
  %539 = getelementptr inbounds i32, i32* %538, i64 %537
  %540 = load i32, i32* %539, align 4
  %541 = xor i32 %533, %540
  %542 = bitcast i32* %7 to i8*
  %543 = getelementptr inbounds i8, i8* %542, i64 0
  %544 = load i8, i8* %543, align 4
  %545 = zext i8 %544 to i64
  %546 = load i32*, i32** %12, align 8
  %547 = getelementptr inbounds i32, i32* %546, i64 %545
  %548 = load i32, i32* %547, align 4
  %549 = add i32 %541, %548
  %550 = load i32, i32* %8, align 4
  %551 = xor i32 %550, %549
  store i32 %551, i32* %8, align 4
  br label %552

; <label>:552:                                    ; preds = %513
  br label %553

; <label>:553:                                    ; preds = %552
  %554 = load i32*, i32** %13, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 13
  %556 = load i32, i32* %555, align 4
  %557 = load i32, i32* %8, align 4
  %558 = xor i32 %557, %556
  store i32 %558, i32* %8, align 4
  %559 = bitcast i32* %8 to i8*
  %560 = getelementptr inbounds i8, i8* %559, i64 3
  %561 = load i8, i8* %560, align 1
  %562 = zext i8 %561 to i64
  %563 = load i32*, i32** %9, align 8
  %564 = getelementptr inbounds i32, i32* %563, i64 %562
  %565 = load i32, i32* %564, align 4
  %566 = bitcast i32* %8 to i8*
  %567 = getelementptr inbounds i8, i8* %566, i64 2
  %568 = load i8, i8* %567, align 2
  %569 = zext i8 %568 to i64
  %570 = load i32*, i32** %10, align 8
  %571 = getelementptr inbounds i32, i32* %570, i64 %569
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %565, %572
  %574 = bitcast i32* %8 to i8*
  %575 = getelementptr inbounds i8, i8* %574, i64 1
  %576 = load i8, i8* %575, align 1
  %577 = zext i8 %576 to i64
  %578 = load i32*, i32** %11, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 %577
  %580 = load i32, i32* %579, align 4
  %581 = xor i32 %573, %580
  %582 = bitcast i32* %8 to i8*
  %583 = getelementptr inbounds i8, i8* %582, i64 0
  %584 = load i8, i8* %583, align 4
  %585 = zext i8 %584 to i64
  %586 = load i32*, i32** %12, align 8
  %587 = getelementptr inbounds i32, i32* %586, i64 %585
  %588 = load i32, i32* %587, align 4
  %589 = add i32 %581, %588
  %590 = load i32, i32* %7, align 4
  %591 = xor i32 %590, %589
  store i32 %591, i32* %7, align 4
  br label %592

; <label>:592:                                    ; preds = %553
  br label %593

; <label>:593:                                    ; preds = %592
  %594 = load i32*, i32** %13, align 8
  %595 = getelementptr inbounds i32, i32* %594, i64 14
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* %7, align 4
  %598 = xor i32 %597, %596
  store i32 %598, i32* %7, align 4
  %599 = bitcast i32* %7 to i8*
  %600 = getelementptr inbounds i8, i8* %599, i64 3
  %601 = load i8, i8* %600, align 1
  %602 = zext i8 %601 to i64
  %603 = load i32*, i32** %9, align 8
  %604 = getelementptr inbounds i32, i32* %603, i64 %602
  %605 = load i32, i32* %604, align 4
  %606 = bitcast i32* %7 to i8*
  %607 = getelementptr inbounds i8, i8* %606, i64 2
  %608 = load i8, i8* %607, align 2
  %609 = zext i8 %608 to i64
  %610 = load i32*, i32** %10, align 8
  %611 = getelementptr inbounds i32, i32* %610, i64 %609
  %612 = load i32, i32* %611, align 4
  %613 = add i32 %605, %612
  %614 = bitcast i32* %7 to i8*
  %615 = getelementptr inbounds i8, i8* %614, i64 1
  %616 = load i8, i8* %615, align 1
  %617 = zext i8 %616 to i64
  %618 = load i32*, i32** %11, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 %617
  %620 = load i32, i32* %619, align 4
  %621 = xor i32 %613, %620
  %622 = bitcast i32* %7 to i8*
  %623 = getelementptr inbounds i8, i8* %622, i64 0
  %624 = load i8, i8* %623, align 4
  %625 = zext i8 %624 to i64
  %626 = load i32*, i32** %12, align 8
  %627 = getelementptr inbounds i32, i32* %626, i64 %625
  %628 = load i32, i32* %627, align 4
  %629 = add i32 %621, %628
  %630 = load i32, i32* %8, align 4
  %631 = xor i32 %630, %629
  store i32 %631, i32* %8, align 4
  br label %632

; <label>:632:                                    ; preds = %593
  br label %633

; <label>:633:                                    ; preds = %632
  %634 = load i32*, i32** %13, align 8
  %635 = getelementptr inbounds i32, i32* %634, i64 15
  %636 = load i32, i32* %635, align 4
  %637 = load i32, i32* %8, align 4
  %638 = xor i32 %637, %636
  store i32 %638, i32* %8, align 4
  %639 = bitcast i32* %8 to i8*
  %640 = getelementptr inbounds i8, i8* %639, i64 3
  %641 = load i8, i8* %640, align 1
  %642 = zext i8 %641 to i64
  %643 = load i32*, i32** %9, align 8
  %644 = getelementptr inbounds i32, i32* %643, i64 %642
  %645 = load i32, i32* %644, align 4
  %646 = bitcast i32* %8 to i8*
  %647 = getelementptr inbounds i8, i8* %646, i64 2
  %648 = load i8, i8* %647, align 2
  %649 = zext i8 %648 to i64
  %650 = load i32*, i32** %10, align 8
  %651 = getelementptr inbounds i32, i32* %650, i64 %649
  %652 = load i32, i32* %651, align 4
  %653 = add i32 %645, %652
  %654 = bitcast i32* %8 to i8*
  %655 = getelementptr inbounds i8, i8* %654, i64 1
  %656 = load i8, i8* %655, align 1
  %657 = zext i8 %656 to i64
  %658 = load i32*, i32** %11, align 8
  %659 = getelementptr inbounds i32, i32* %658, i64 %657
  %660 = load i32, i32* %659, align 4
  %661 = xor i32 %653, %660
  %662 = bitcast i32* %8 to i8*
  %663 = getelementptr inbounds i8, i8* %662, i64 0
  %664 = load i8, i8* %663, align 4
  %665 = zext i8 %664 to i64
  %666 = load i32*, i32** %12, align 8
  %667 = getelementptr inbounds i32, i32* %666, i64 %665
  %668 = load i32, i32* %667, align 4
  %669 = add i32 %661, %668
  %670 = load i32, i32* %7, align 4
  %671 = xor i32 %670, %669
  store i32 %671, i32* %7, align 4
  br label %672

; <label>:672:                                    ; preds = %633
  %673 = load i32*, i32** %13, align 8
  %674 = getelementptr inbounds i32, i32* %673, i64 16
  %675 = load i32, i32* %674, align 4
  %676 = load i32, i32* %7, align 4
  %677 = xor i32 %676, %675
  store i32 %677, i32* %7, align 4
  %678 = load i32*, i32** %13, align 8
  %679 = getelementptr inbounds i32, i32* %678, i64 17
  %680 = load i32, i32* %679, align 4
  %681 = load i32, i32* %8, align 4
  %682 = xor i32 %681, %680
  store i32 %682, i32* %8, align 4
  %683 = load i32, i32* %8, align 4
  %684 = load i32*, i32** %5, align 8
  store i32 %683, i32* %684, align 4
  %685 = load i32, i32* %7, align 4
  %686 = load i32*, i32** %6, align 8
  store i32 %685, i32* %686, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1 (tags/RELEASE_391/final)"}
