# Region index

These are the 14 certified Cayley boxes intersected with `0 < R <= 1`.
The rational angular hull below is proved to be contained in each Cayley box.
The JSON files specify the exact rational anchors, Cayley radii, polynomial margin,
and both Taylor and Bernstein coefficient traces.

| Region | Original roots | Covered source leaves | Witnesses |
|---:|---:|---:|---|
| 269 | 8 | 803 | H+/pair1/minor2/pencil-1, V+/pair1/minor2/pencil-1 |
| 400 | 18 | 3969 | H+/pair1/minor2/pencil-1, V+/pair1/minor2/pencil-1 |
| 816 | 1 | 5 | H+/pair1/minor1/pencil-1, H-/pair1/minor1/pencil-1 |
| 975 | 3 | 78 | V-/pair1/minor2/pencil-1, V+/pair1/minor2/pencil-1 |
| 979 | 2 | 80 | H+/pair1/minor2/pencil-1, V+/pair1/minor2/pencil-1 |
| 1004 | 1 | 11 | H+/pair1/minor2/pencil-1, V+/pair1/minor2/pencil-1 |
| 1020 | 1 | 32 | V-/pair1/minor2/pencil-1, V+/pair1/minor2/pencil-1 |
| 1025 | 3 | 27 | H+/pair1/minor2/pencil-1, V+/pair1/minor2/pencil-1 |
| 1036 | 1 | 10 | V-/pair1/minor2/pencil-1, V+/pair1/minor2/pencil-1 |
| 1100 | 1 | 7 | V-/pair1/minor2/pencil-1, V+/pair0/minor2/pencil-1 |
| 1143 | 2 | 408 | H+/pair0/minor2/pencil-1, V+/pair0/minor2/pencil-1 |
| 1154 | 31 | 1891 | H+/pair0/minor2/pencil-1, V+/pair0/minor2/pencil-1 |
| 1347 | 4 | 218 | H+/pair0/minor2/pencil-1, V+/pair0/minor2/pencil-1 |
| 1388 | 3 | 14 | H+/pair0/minor2/pencil-1, V+/pair0/minor2/pencil-1 |

## Region 269

Source root IDs: `[269, 273, 289, 261, 236, 244, 249, 253]`.

Angular center (radians): `-32327/32768, 36039/32768, 18179/16384, -32455/32768`.
Angular halfwidths: `199/32768, 71/32768, 67/16384, 71/32768`.
Cayley halfwidths: `53419149295/17592186044416, 9529469983/8796093022208, 17985250963/8796093022208, 19058940105/17592186044416`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| H+, pair=1, minor=2, pencil=-1 | 554384149/1024 | 307341784662454201/8388608 |
| V+, pair=1, minor=2, pencil=-1 | 554244653/1024 | 307187135379090409/8388608 |

Full certificate: `certificates/region_269.json`.

## Region 400

Source root IDs: `[400, 404, 414, 475, 535, 539, 478, 485, 542, 489, 499, 548, 552, 562, 592, 601, 585, 589]`.

Angular center (radians): `-31155/32768, 36793/32768, 37301/32768, -31987/32768`.
Angular halfwidths: `205/32768, 199/32768, 75/32768, 141/32768`.
Cayley halfwidths: `13757451735/4398046511104, 26709575085/8796093022208, 20132686375/17592186044416, 37849574763/17592186044416`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| H+, pair=1, minor=2, pencil=-1 | 66335345/128 | 4400377996269025/131072 |
| V+, pair=1, minor=2, pencil=-1 | 530034485/1024 | 280936555289215225/8388608 |

Full certificate: `certificates/region_400.json`.

## Region 816

Source root IDs: `[816]`.

Angular center (radians): `15683/16384, -16909/16384, -18181/16384, 17857/16384`.
Angular halfwidths: `1/16384, 1/16384, 1/16384, 1/16384`.
Cayley halfwidths: `134217891/4398046511104, 268436303/8796093022208, 268435473/8796093022208, 134217793/4398046511104`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| H+, pair=1, minor=1, pencil=-1 | 585020145/1024 | 342248570055821025/8388608 |
| H-, pair=1, minor=1, pencil=-1 | 585020145/1024 | 342248570055821025/8388608 |

Full certificate: `certificates/region_816.json`.

## Region 975

Source root IDs: `[975, 982, 986]`.

Angular center (radians): `33357/32768, -31693/32768, -33613/32768, 38541/32768`.
Angular halfwidths: `77/32768, 77/32768, 77/32768, 13/32768`.
Cayley halfwidths: `10334779359/8796093022208, 20669559899/17592186044416, 2583694977/2199023255552, 436207689/2199023255552`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| V-, pair=1, minor=2, pencil=-1 | 279488257/512 | 78113685800898049/2097152 |
| V+, pair=1, minor=2, pencil=-1 | 279488257/512 | 78113685800898049/2097152 |

Full certificate: `certificates/region_975.json`.

## Region 979

Source root IDs: `[979, 997]`.

Angular center (radians): `33485/32768, -15879/16384, -16807/16384, 38413/32768`.
Angular halfwidths: `77/32768, 7/16384, 39/16384, 13/32768`.
Cayley halfwidths: `20669560441/17592186044416, 1879049151/8796093022208, 20937995591/17592186044416, 3489662227/17592186044416`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| H+, pair=1, minor=2, pencil=-1 | 70316075/128 | 4944350403405625/131072 |
| V+, pair=1, minor=2, pencil=-1 | 563999161/1024 | 318095053608703921/8388608 |

Full certificate: `certificates/region_979.json`.

## Region 1004

Source root IDs: `[1004]`.

Angular center (radians): `33545/32768, -31629/32768, -33677/32768, 38409/32768`.
Angular halfwidths: `9/32768, 13/32768, 13/32768, 9/32768`.
Cayley halfwidths: `603979793/4398046511104, 3489661777/17592186044416, 1744831045/8796093022208, 2415920979/17592186044416`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| H+, pair=1, minor=2, pencil=-1 | 577422429/1024 | 333416661512260041/8388608 |
| V+, pair=1, minor=2, pencil=-1 | 72450373/128 | 5249056547839129/131072 |

Full certificate: `certificates/region_1004.json`.

## Region 1020

Source root IDs: `[1020]`.

Angular center (radians): `33667/32768, -32139/32768, -32907/32768, 38535/32768`.
Angular halfwidths: `3/32768, 11/32768, 11/32768, 7/32768`.
Cayley halfwidths: `201326931/4398046511104, 1476395055/8796093022208, 2952791945/17592186044416, 1879048653/17592186044416`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| V-, pair=1, minor=2, pencil=-1 | 582648025/1024 | 339478721036400625/8388608 |
| V+, pair=1, minor=2, pencil=-1 | 582648025/1024 | 339478721036400625/8388608 |

Full certificate: `certificates/region_1020.json`.

## Region 1025

Source root IDs: `[1025, 993, 1029]`.

Angular center (radians): `33613/32768, -31757/32768, -33613/32768, 38217/32768`.
Angular halfwidths: `77/32768, 13/32768, 77/32768, 73/32768`.
Cayley halfwidths: `2583694977/2199023255552, 3489661437/17592186044416, 2583694977/2199023255552, 19595812989/17592186044416`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| H+, pair=1, minor=2, pencil=-1 | 562056905/1024 | 315907964458179025/8388608 |
| V+, pair=1, minor=2, pencil=-1 | 281653247/512 | 79328551545643009/2097152 |

Full certificate: `certificates/region_1025.json`.

## Region 1036

Source root IDs: `[1036]`.

Angular center (radians): `33677/32768, -31753/32768, -33289/32768, 38537/32768`.
Angular halfwidths: `9/32768, 9/32768, 9/32768, 9/32768`.
Cayley halfwidths: `2415920175/17592186044416, 603980195/4398046511104, 1207960435/8796093022208, 1207960005/8796093022208`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| V-, pair=1, minor=2, pencil=-1 | 581094133/1024 | 337670391407021689/8388608 |
| V+, pair=1, minor=2, pencil=-1 | 581094133/1024 | 337670391407021689/8388608 |

Full certificate: `certificates/region_1036.json`.

## Region 1100

Source root IDs: `[1100]`.

Angular center (radians): `35345/32768, -29337/32768, -31377/32768, 41105/32768`.
Angular halfwidths: `17/32768, 25/32768, 17/32768, 17/32768`.
Cayley halfwidths: `4563404703/17592186044416, 1677721967/4398046511104, 4563403511/17592186044416, 570425523/2199023255552`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| V-, pair=1, minor=2, pencil=-1 | 561693017/1024 | 315499045346562289/8388608 |
| V+, pair=0, minor=2, pencil=-1 | 561693017/1024 | 315499045346562289/8388608 |

Full certificate: `certificates/region_1100.json`.

## Region 1143

Source root IDs: `[1143, 1151]`.

Angular center (radians): `4489/4096, -4065/4096, -4065/4096, 4537/4096`.
Angular halfwidths: `9/4096, 1/4096, 1/4096, 9/4096`.
Cayley halfwidths: `19327377455/17592186044416, 2147484031/17592186044416, 2147484031/17592186044416, 19327377087/17592186044416`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| H+, pair=0, minor=2, pencil=-1 | 291799529/512 | 85146965124621841/2097152 |
| V+, pair=0, minor=2, pencil=-1 | 291799529/512 | 85146965124621841/2097152 |

Full certificate: `certificates/region_1143.json`.

## Region 1154

Source root IDs: `[1154, 1177, 1186, 1190, 1163, 1158, 1172, 1223, 1207, 1218, 1203, 1248, 1258, 1263, 1272, 1196, 1232, 1236, 1282, 1276, 1285, 1242, 1181, 1216, 1212, 1252, 1256, 1267, 1227, 1270, 1279]`.

Angular center (radians): `37203/32768, -29909/32768, -30677/32768, 39125/32768`.
Angular halfwidths: `211/32768, 213/32768, 213/32768, 213/32768`.
Cayley halfwidths: `14160117277/4398046511104, 28588678505/8796093022208, 28588678137/8796093022208, 7147169701/2199023255552`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| H+, pair=0, minor=2, pencil=-1 | 509668801/1024 | 259762286712777601/8388608 |
| V+, pair=0, minor=2, pencil=-1 | 508785869/1024 | 258863060494085161/8388608 |

Full certificate: `certificates/region_1154.json`.

## Region 1347

Source root IDs: `[1347, 1353, 1356, 1358]`.

Angular center (radians): `38473/32768, -30025/32768, -30025/32768, 38473/32768`.
Angular halfwidths: `73/32768, 73/32768, 73/32768, 73/32768`.
Cayley halfwidths: `19595813047/17592186044416, 19595813325/17592186044416, 19595813325/17592186044416, 19595813047/17592186044416`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| H+, pair=0, minor=2, pencil=-1 | 566075385/1024 | 320441341502898225/8388608 |
| V+, pair=0, minor=2, pencil=-1 | 566075385/1024 | 320441341502898225/8388608 |

Full certificate: `certificates/region_1347.json`.

## Region 1388

Source root IDs: `[1388, 1447, 1506]`.

Angular center (radians): `38661/32768, -27789/32768, -29385/32768, 41161/32768`.
Angular halfwidths: `133/32768, 13/32768, 73/32768, 73/32768`.
Cayley halfwidths: `35702064197/17592186044416, 1744831185/8796093022208, 19595813473/17592186044416, 19595812825/17592186044416`.

| Witness | Delta lower bound | Polynomial epsilon |
|---|---:|---:|
| H+, pair=0, minor=2, pencil=-1 | 543713345/1024 | 295624201531089025/8388608 |
| V+, pair=0, minor=2, pencil=-1 | 271827593/512 | 73890240316173649/2097152 |

Full certificate: `certificates/region_1388.json`.
