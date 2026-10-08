import D0GraphStates
import D0GraphNodes043
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors1320 (v : Fin 120) : Nat := if (1269206487758073429244550053888 : Nat).testBit v.val then 0 else if (10546852993898868620452570668728320 : Nat).testBit v.val then 1 else 0
def cert1320 : PairCertificate (Fin 120) := .first (.color 2 colors1320)
theorem checked1320 : checkPair O U c1377 c1378 4 cert1320 = true := by
  decide +kernel
#print axioms checked1320
def colors1321 (v : Fin 120) : Nat := if (10220755747533936655556816142336 : Nat).testBit v.val then 0 else if (649037107316853453566312041152512 : Nat).testBit v.val then 1 else 0
def cert1321 : PairCertificate (Fin 120) := .first (.color 2 colors1321)
theorem checked1321 : checkPair O U c1380 c1381 4 cert1321 = true := by
  decide +kernel
#print axioms checked1321
def colors1322 (v : Fin 120) : Nat := if (120097108772156491473660936192 : Nat).testBit v.val then 0 else if (665263034999774789905469842181324800 : Nat).testBit v.val then 1 else 0
def cert1322 : PairCertificate (Fin 120) := .first (.color 2 colors1322)
theorem checked1322 : checkPair O U c1383 c1384 4 cert1322 = true := by
  decide +kernel
#print axioms checked1322
def colors1323 (v : Fin 120) : Nat := if (41625312576209233214212956951150592 : Nat).testBit v.val then 0 else if (83727069694298653754188363592630272 : Nat).testBit v.val then 1 else if (842622763849313107588520564911767552 : Nat).testBit v.val then 2 else if (361252849664490415437077860237443072 : Nat).testBit v.val then 3 else 0
def cert1323 : PairCertificate (Fin 120) := .first (.color 4 colors1323)
theorem checked1323 : checkPair O U c1385 c0 5 cert1323 = true := by
  decide +kernel
#print axioms checked1323
def cert1324 : PairCertificate (Fin 120) := .split 78 cert1322 cert1323
theorem checked1324 : checkPair O U c1382 c0 5 cert1324 = true := by
  apply checkPair_split_literal O U c1382 c0 c1383 c1384 c1385 78 4 cert1322 cert1323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1322
  · exact checked1323
#print axioms checked1324
def cert1325 : PairCertificate (Fin 120) := .split 77 cert1321 cert1324
theorem checked1325 : checkPair O U c1379 c0 5 cert1325 = true := by
  apply checkPair_split_literal O U c1379 c0 c1380 c1381 c1382 77 4 cert1321 cert1324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1321
  · exact checked1324
#print axioms checked1325
def cert1326 : PairCertificate (Fin 120) := .split 76 cert1320 cert1325
theorem checked1326 : checkPair O U c1376 c0 5 cert1326 = true := by
  apply checkPair_split_literal O U c1376 c0 c1377 c1378 c1379 76 4 cert1320 cert1325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1320
  · exact checked1325
#print axioms checked1326
def cert1327 : PairCertificate (Fin 120) := .split 75 cert1319 cert1326
theorem checked1327 : checkPair O U c1373 c0 5 cert1327 = true := by
  apply checkPair_split_literal O U c1373 c0 c1374 c1375 c1376 75 4 cert1319 cert1326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1319
  · exact checked1326
#print axioms checked1327
def cert1328 : PairCertificate (Fin 120) := .split 74 cert1318 cert1327
theorem checked1328 : checkPair O U c1370 c0 5 cert1328 = true := by
  apply checkPair_split_literal O U c1370 c0 c1371 c1372 c1373 74 4 cert1318 cert1327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1318
  · exact checked1327
#print axioms checked1328
def cert1329 : PairCertificate (Fin 120) := .split 73 cert1317 cert1328
theorem checked1329 : checkPair O U c1367 c0 5 cert1329 = true := by
  apply checkPair_split_literal O U c1367 c0 c1368 c1369 c1370 73 4 cert1317 cert1328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1317
  · exact checked1328
#print axioms checked1329
def cert1330 : PairCertificate (Fin 120) := .split 72 cert1316 cert1329
theorem checked1330 : checkPair O U c1364 c0 5 cert1330 = true := by
  apply checkPair_split_literal O U c1364 c0 c1365 c1366 c1367 72 4 cert1316 cert1329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1316
  · exact checked1329
#print axioms checked1330
def cert1331 : PairCertificate (Fin 120) := .split 71 cert1315 cert1330
theorem checked1331 : checkPair O U c1361 c0 5 cert1331 = true := by
  apply checkPair_split_literal O U c1361 c0 c1362 c1363 c1364 71 4 cert1315 cert1330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1315
  · exact checked1330
#print axioms checked1331
def cert1332 : PairCertificate (Fin 120) := .split 70 cert1314 cert1331
theorem checked1332 : checkPair O U c1358 c0 5 cert1332 = true := by
  apply checkPair_split_literal O U c1358 c0 c1359 c1360 c1361 70 4 cert1314 cert1331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1314
  · exact checked1331
#print axioms checked1332
def cert1333 : PairCertificate (Fin 120) := .split 69 cert1313 cert1332
theorem checked1333 : checkPair O U c1355 c0 5 cert1333 = true := by
  apply checkPair_split_literal O U c1355 c0 c1356 c1357 c1358 69 4 cert1313 cert1332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1313
  · exact checked1332
#print axioms checked1333
def cert1334 : PairCertificate (Fin 120) := .split 68 cert1312 cert1333
theorem checked1334 : checkPair O U c1352 c0 5 cert1334 = true := by
  apply checkPair_split_literal O U c1352 c0 c1353 c1354 c1355 68 4 cert1312 cert1333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1312
  · exact checked1333
#print axioms checked1334
def cert1335 : PairCertificate (Fin 120) := .split 67 cert1311 cert1334
theorem checked1335 : checkPair O U c1349 c0 5 cert1335 = true := by
  apply checkPair_split_literal O U c1349 c0 c1350 c1351 c1352 67 4 cert1311 cert1334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1311
  · exact checked1334
#print axioms checked1335
def cert1336 : PairCertificate (Fin 120) := .split 66 cert1310 cert1335
theorem checked1336 : checkPair O U c1346 c0 5 cert1336 = true := by
  apply checkPair_split_literal O U c1346 c0 c1347 c1348 c1349 66 4 cert1310 cert1335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1310
  · exact checked1335
#print axioms checked1336
def cert1337 : PairCertificate (Fin 120) := .split 65 cert1309 cert1336
theorem checked1337 : checkPair O U c1343 c0 5 cert1337 = true := by
  apply checkPair_split_literal O U c1343 c0 c1344 c1345 c1346 65 4 cert1309 cert1336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1309
  · exact checked1336
#print axioms checked1337
def cert1338 : PairCertificate (Fin 120) := .split 64 cert1308 cert1337
theorem checked1338 : checkPair O U c1340 c0 5 cert1338 = true := by
  apply checkPair_split_literal O U c1340 c0 c1341 c1342 c1343 64 4 cert1308 cert1337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1308
  · exact checked1337
#print axioms checked1338
def cert1339 : PairCertificate (Fin 120) := .split 63 cert1307 cert1338
theorem checked1339 : checkPair O U c1337 c0 5 cert1339 = true := by
  apply checkPair_split_literal O U c1337 c0 c1338 c1339 c1340 63 4 cert1307 cert1338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1307
  · exact checked1338
#print axioms checked1339
def cert1340 : PairCertificate (Fin 120) := .split 62 cert1306 cert1339
theorem checked1340 : checkPair O U c1334 c0 5 cert1340 = true := by
  apply checkPair_split_literal O U c1334 c0 c1335 c1336 c1337 62 4 cert1306 cert1339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1306
  · exact checked1339
#print axioms checked1340
def cert1341 : PairCertificate (Fin 120) := .split 61 cert1305 cert1340
theorem checked1341 : checkPair O U c1331 c0 5 cert1341 = true := by
  apply checkPair_split_literal O U c1331 c0 c1332 c1333 c1334 61 4 cert1305 cert1340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1305
  · exact checked1340
#print axioms checked1341
def cert1342 : PairCertificate (Fin 120) := .split 60 cert1304 cert1341
theorem checked1342 : checkPair O U c1328 c0 5 cert1342 = true := by
  apply checkPair_split_literal O U c1328 c0 c1329 c1330 c1331 60 4 cert1304 cert1341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1304
  · exact checked1341
#print axioms checked1342
def cert1343 : PairCertificate (Fin 120) := .split 59 cert1303 cert1342
theorem checked1343 : checkPair O U c1325 c0 5 cert1343 = true := by
  apply checkPair_split_literal O U c1325 c0 c1326 c1327 c1328 59 4 cert1303 cert1342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1303
  · exact checked1342
#print axioms checked1343
def cert1344 : PairCertificate (Fin 120) := .split 58 cert1302 cert1343
theorem checked1344 : checkPair O U c1322 c0 5 cert1344 = true := by
  apply checkPair_split_literal O U c1322 c0 c1323 c1324 c1325 58 4 cert1302 cert1343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1302
  · exact checked1343
#print axioms checked1344
def cert1345 : PairCertificate (Fin 120) := .split 57 cert1301 cert1344
theorem checked1345 : checkPair O U c1319 c0 5 cert1345 = true := by
  apply checkPair_split_literal O U c1319 c0 c1320 c1321 c1322 57 4 cert1301 cert1344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1301
  · exact checked1344
#print axioms checked1345
def cert1346 : PairCertificate (Fin 120) := .split 56 cert1300 cert1345
theorem checked1346 : checkPair O U c1316 c0 5 cert1346 = true := by
  apply checkPair_split_literal O U c1316 c0 c1317 c1318 c1319 56 4 cert1300 cert1345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1300
  · exact checked1345
#print axioms checked1346
def cert1347 : PairCertificate (Fin 120) := .split 55 cert1299 cert1346
theorem checked1347 : checkPair O U c1313 c0 5 cert1347 = true := by
  apply checkPair_split_literal O U c1313 c0 c1314 c1315 c1316 55 4 cert1299 cert1346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1299
  · exact checked1346
#print axioms checked1347
def cert1348 : PairCertificate (Fin 120) := .split 54 cert1298 cert1347
theorem checked1348 : checkPair O U c1310 c0 5 cert1348 = true := by
  apply checkPair_split_literal O U c1310 c0 c1311 c1312 c1313 54 4 cert1298 cert1347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1298
  · exact checked1347
#print axioms checked1348
def cert1349 : PairCertificate (Fin 120) := .split 53 cert1297 cert1348
theorem checked1349 : checkPair O U c1307 c0 5 cert1349 = true := by
  apply checkPair_split_literal O U c1307 c0 c1308 c1309 c1310 53 4 cert1297 cert1348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1297
  · exact checked1348
#print axioms checked1349
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
