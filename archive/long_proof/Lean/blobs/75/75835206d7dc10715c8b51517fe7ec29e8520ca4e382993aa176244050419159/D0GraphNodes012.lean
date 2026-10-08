import D0GraphStates
import D0GraphNodes011
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert360 : CliqueCertificate (Fin 120) := .split 16 cert356 cert359
theorem checked360 : checkClique O c372 5 cert360 = true := by
  apply checkClique_split_literal O c372 c373 c374 16 4 cert356 cert359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked356
  · exact checked359
#print axioms checked360
def cert361 : CliqueCertificate (Fin 120) := .split 11 cert355 cert360
theorem checked361 : checkClique O c370 5 cert361 = true := by
  apply checkClique_split_literal O c370 c371 c372 11 4 cert355 cert360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked355
  · exact checked360
#print axioms checked361
def cert362 : CliqueCertificate (Fin 120) := .split 9 cert354 cert361
theorem checked362 : checkClique O c368 5 cert362 = true := by
  apply checkClique_split_literal O c368 c369 c370 9 4 cert354 cert361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked354
  · exact checked361
#print axioms checked362
def cert363 : CliqueCertificate (Fin 120) := .split 7 cert353 cert362
theorem checked363 : checkClique O c366 5 cert363 = true := by
  apply checkClique_split_literal O c366 c367 c368 7 4 cert353 cert362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked353
  · exact checked362
#print axioms checked363
def cert364 : CliqueCertificate (Fin 120) := .split 5 cert352 cert363
theorem checked364 : checkClique O c364 5 cert364 = true := by
  apply checkClique_split_literal O c364 c365 c366 5 4 cert352 cert363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked352
  · exact checked363
#print axioms checked364
def cert365 : CliqueCertificate (Fin 120) := .split 3 cert351 cert364
theorem checked365 : checkClique O c362 5 cert365 = true := by
  apply checkClique_split_literal O c362 c363 c364 3 4 cert351 cert364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked351
  · exact checked364
#print axioms checked365
def cert366 : CliqueCertificate (Fin 120) := .split 2 cert350 cert365
theorem checked366 : checkClique O c360 5 cert366 = true := by
  apply checkClique_split_literal O c360 c361 c362 2 4 cert350 cert365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked350
  · exact checked365
#print axioms checked366
def cert367 : CliqueCertificate (Fin 120) := .split 1 cert349 cert366
theorem checked367 : checkClique O c358 5 cert367 = true := by
  apply checkClique_split_literal O c358 c359 c360 1 4 cert349 cert366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked349
  · exact checked366
#print axioms checked367
def cert368 : PairCertificate (Fin 120) := .cross cert367
theorem checked368 : checkPair O U c6 c358 0 cert368 = true := by
  exact checked367
#print axioms checked368
def cert369 : PairCertificate (Fin 120) := .first .size
theorem checked369 : checkPair O U c6 c357 1 cert369 = true := by
  decide +kernel
#print axioms checked369
def cert370 : PairCertificate (Fin 120) := .split 61 cert368 cert369
theorem checked370 : checkPair O U c231 c357 1 cert370 = true := by
  apply checkPair_split_literal O U c231 c357 c6 c358 c6 61 0 cert368 cert369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked368
  · exact checked369
#print axioms checked370
def cert371 : PairCertificate (Fin 120) := .first .size
theorem checked371 : checkPair O U c231 c356 2 cert371 = true := by
  decide +kernel
#print axioms checked371
def cert372 : PairCertificate (Fin 120) := .split 55 cert370 cert371
theorem checked372 : checkPair O U c229 c356 2 cert372 = true := by
  apply checkPair_split_literal O U c229 c356 c231 c357 c231 55 1 cert370 cert371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked370
  · exact checked371
#print axioms checked372
def cert373 : PairCertificate (Fin 120) := .first .size
theorem checked373 : checkPair O U c229 c355 3 cert373 = true := by
  decide +kernel
#print axioms checked373
def cert374 : PairCertificate (Fin 120) := .split 32 cert372 cert373
theorem checked374 : checkPair O U c227 c355 3 cert374 = true := by
  apply checkPair_split_literal O U c227 c355 c229 c356 c229 32 2 cert372 cert373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked372
  · exact checked373
#print axioms checked374
def colors375 (v : Fin 120) : Nat := if (250041545593817792987055071206309888 : Nat).testBit v.val then 0 else if (332327281355832619932422101526380544 : Nat).testBit v.val then 1 else if (4951779048913295587391045632 : Nat).testBit v.val then 2 else 0
def cert375 : PairCertificate (Fin 120) := .first (.color 3 colors375)
theorem checked375 : checkPair O U c377 c342 4 cert375 = true := by
  decide +kernel
#print axioms checked375
def cert376 : PairCertificate (Fin 120) := .split 30 cert374 cert375
theorem checked376 : checkPair O U c354 c342 4 cert376 = true := by
  apply checkPair_split_literal O U c354 c342 c227 c355 c377 30 3 cert374 cert375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked374
  · exact checked375
#print axioms checked376
def cert377 : PairCertificate (Fin 120) := .split 29 cert348 cert376
theorem checked377 : checkPair O U c351 c342 4 cert377 = true := by
  apply checkPair_split_literal O U c351 c342 c352 c353 c354 29 3 cert348 cert376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked348
  · exact checked376
#print axioms checked377
def cert378 : PairCertificate (Fin 120) := .split 26 cert347 cert377
theorem checked378 : checkPair O U c349 c342 4 cert378 = true := by
  apply checkPair_split_literal O U c349 c342 c6 c350 c351 26 3 cert347 cert377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked347
  · exact checked377
#print axioms checked378
def cert379 : PairCertificate (Fin 120) := .split 23 cert346 cert378
theorem checked379 : checkPair O U c347 c342 4 cert379 = true := by
  apply checkPair_split_literal O U c347 c342 c6 c348 c349 23 3 cert346 cert378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked346
  · exact checked378
#print axioms checked379
def cert380 : PairCertificate (Fin 120) := .split 19 cert345 cert379
theorem checked380 : checkPair O U c344 c342 4 cert380 = true := by
  apply checkPair_split_literal O U c344 c342 c345 c346 c347 19 3 cert345 cert379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked345
  · exact checked379
#print axioms checked380
def cert381 : PairCertificate (Fin 120) := .split 14 cert344 cert380
theorem checked381 : checkPair O U c341 c342 4 cert381 = true := by
  apply checkPair_split_literal O U c341 c342 c6 c343 c344 14 3 cert344 cert380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked344
  · exact checked380
#print axioms checked381
def cert382 : PairCertificate (Fin 120) := .first .size
theorem checked382 : checkPair O U c6 c381 3 cert382 = true := by
  decide +kernel
#print axioms checked382
def cert383 : PairCertificate (Fin 120) := .first .size
theorem checked383 : checkPair O U c6 c383 3 cert383 = true := by
  decide +kernel
#print axioms checked383
def colors384 (v : Fin 120) : Nat := if (2147483648 : Nat).testBit v.val then 0 else if (4951760157159535498105978880 : Nat).testBit v.val then 1 else 0
def cert384 : PairCertificate (Fin 120) := .first (.color 2 colors384)
theorem checked384 : checkPair O U c385 c386 3 cert384 = true := by
  decide +kernel
#print axioms checked384
def cert385 : PairCertificate (Fin 120) := .first .size
theorem checked385 : checkPair O U c6 c388 3 cert385 = true := by
  decide +kernel
#print axioms checked385
def cert386 : PairCertificate (Fin 120) := .first .size
theorem checked386 : checkPair O U c390 c391 3 cert386 = true := by
  decide +kernel
#print axioms checked386
def colors387 (v : Fin 120) : Nat := if (154743685502302322744623104 : Nat).testBit v.val then 0 else 0
def cert387 : CliqueCertificate (Fin 120) := .color 1 colors387
theorem checked387 : checkClique O c398 4 cert387 = true := by
  decide +kernel
#print axioms checked387
def colors388 (v : Fin 120) : Nat := if (144117455818588160 : Nat).testBit v.val then 0 else if (77371252455336267181195264 : Nat).testBit v.val then 1 else 0
def cert388 : CliqueCertificate (Fin 120) := .color 2 colors388
theorem checked388 : checkClique O c400 4 cert388 = true := by
  decide +kernel
#print axioms checked388
def colors389 (v : Fin 120) : Nat := if (20282409603651670430544321052672 : Nat).testBit v.val then 0 else if (151115727451828646838272 : Nat).testBit v.val then 1 else 0
def cert389 : CliqueCertificate (Fin 120) := .color 2 colors389
theorem checked389 : checkClique O c402 4 cert389 = true := by
  decide +kernel
#print axioms checked389
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
