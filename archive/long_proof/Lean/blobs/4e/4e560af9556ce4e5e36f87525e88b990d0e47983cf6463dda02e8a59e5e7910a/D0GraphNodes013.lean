import D0GraphStates
import D0GraphNodes012
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors390 (v : Fin 120) : Nat := if (9709185778140733383901504 : Nat).testBit v.val then 0 else if (20282448289277898092080841883648 : Nat).testBit v.val then 1 else 0
def cert390 : CliqueCertificate (Fin 120) := .color 2 colors390
theorem checked390 : checkClique O c404 4 cert390 = true := by
  decide +kernel
#print axioms checked390
def colors391 (v : Fin 120) : Nat := if (79228162514336544721163255808 : Nat).testBit v.val then 0 else 0
def cert391 : CliqueCertificate (Fin 120) := .color 1 colors391
theorem checked391 : checkClique O c406 4 cert391 = true := by
  decide +kernel
#print axioms checked391
def colors392 (v : Fin 120) : Nat := if (166153578856020683879756261434064896 : Nat).testBit v.val then 0 else 0
def cert392 : CliqueCertificate (Fin 120) := .color 1 colors392
theorem checked392 : checkClique O c408 4 cert392 = true := by
  decide +kernel
#print axioms checked392
def colors393 (v : Fin 120) : Nat := if (87042659012675513043910656 : Nat).testBit v.val then 0 else 0
def cert393 : CliqueCertificate (Fin 120) := .color 1 colors393
theorem checked393 : checkClique O c410 4 cert393 = true := by
  decide +kernel
#print axioms checked393
def colors394 (v : Fin 120) : Nat := if (20282409622541569129868314148864 : Nat).testBit v.val then 0 else if (58180740849856488052621312 : Nat).testBit v.val then 1 else if (79462694141788377321184428032 : Nat).testBit v.val then 2 else if (166802576204221780187490981907529728 : Nat).testBit v.val then 3 else 0
def cert394 : CliqueCertificate (Fin 120) := .color 4 colors394
theorem checked394 : checkClique O c411 5 cert394 = true := by
  decide +kernel
#print axioms checked394
def cert395 : CliqueCertificate (Fin 120) := .split 10 cert393 cert394
theorem checked395 : checkClique O c409 5 cert395 = true := by
  apply checkClique_split_literal O c409 c410 c411 10 4 cert393 cert394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked393
  · exact checked394
#print axioms checked395
def cert396 : CliqueCertificate (Fin 120) := .split 8 cert392 cert395
theorem checked396 : checkClique O c407 5 cert396 = true := by
  apply checkClique_split_literal O c407 c408 c409 8 4 cert392 cert395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked392
  · exact checked395
#print axioms checked396
def cert397 : CliqueCertificate (Fin 120) := .split 6 cert391 cert396
theorem checked397 : checkClique O c405 5 cert397 = true := by
  apply checkClique_split_literal O c405 c406 c407 6 4 cert391 cert396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked391
  · exact checked396
#print axioms checked397
def cert398 : CliqueCertificate (Fin 120) := .split 5 cert390 cert397
theorem checked398 : checkClique O c403 5 cert398 = true := by
  apply checkClique_split_literal O c403 c404 c405 5 4 cert390 cert397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked390
  · exact checked397
#print axioms checked398
def cert399 : CliqueCertificate (Fin 120) := .split 4 cert389 cert398
theorem checked399 : checkClique O c401 5 cert399 = true := by
  apply checkClique_split_literal O c401 c402 c403 4 4 cert389 cert398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked389
  · exact checked398
#print axioms checked399
def cert400 : CliqueCertificate (Fin 120) := .split 2 cert388 cert399
theorem checked400 : checkClique O c399 5 cert400 = true := by
  apply checkClique_split_literal O c399 c400 c401 2 4 cert388 cert399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked388
  · exact checked399
#print axioms checked400
def cert401 : CliqueCertificate (Fin 120) := .split 0 cert387 cert400
theorem checked401 : checkClique O c397 5 cert401 = true := by
  apply checkClique_split_literal O c397 c398 c399 0 4 cert387 cert400
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked387
  · exact checked400
#print axioms checked401
def cert402 : PairCertificate (Fin 120) := .cross cert401
theorem checked402 : checkPair O U c6 c397 0 cert402 = true := by
  exact checked401
#print axioms checked402
def cert403 : PairCertificate (Fin 120) := .first .size
theorem checked403 : checkPair O U c6 c396 1 cert403 = true := by
  decide +kernel
#print axioms checked403
def cert404 : PairCertificate (Fin 120) := .split 60 cert402 cert403
theorem checked404 : checkPair O U c296 c396 1 cert404 = true := by
  apply checkPair_split_literal O U c296 c396 c6 c397 c6 60 0 cert402 cert403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked402
  · exact checked403
#print axioms checked404
def cert405 : PairCertificate (Fin 120) := .first .size
theorem checked405 : checkPair O U c296 c395 2 cert405 = true := by
  decide +kernel
#print axioms checked405
def cert406 : PairCertificate (Fin 120) := .split 54 cert404 cert405
theorem checked406 : checkPair O U c294 c395 2 cert406 = true := by
  apply checkPair_split_literal O U c294 c395 c296 c396 c296 54 1 cert404 cert405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked404
  · exact checked405
#print axioms checked406
def colors407 (v : Fin 120) : Nat := if (4951769601892501237396406272 : Nat).testBit v.val then 0 else if (5516815412193255508235156956643328 : Nat).testBit v.val then 1 else 0
def cert407 : PairCertificate (Fin 120) := .first (.color 2 colors407)
theorem checked407 : checkPair O U c412 c394 3 cert407 = true := by
  decide +kernel
#print axioms checked407
def cert408 : PairCertificate (Fin 120) := .split 33 cert406 cert407
theorem checked408 : checkPair O U c393 c394 3 cert408 = true := by
  apply checkPair_split_literal O U c393 c394 c294 c395 c412 33 2 cert406 cert407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked406
  · exact checked407
#print axioms checked408
def colors409 (v : Fin 120) : Nat := if (250366069099245821588325053228908544 : Nat).testBit v.val then 0 else if (18049582881570816 : Nat).testBit v.val then 1 else if (5192296858534828781452000936067072 : Nat).testBit v.val then 2 else 0
def cert409 : PairCertificate (Fin 120) := .first (.color 3 colors409)
theorem checked409 : checkPair O U c413 c380 4 cert409 = true := by
  decide +kernel
#print axioms checked409
def cert410 : PairCertificate (Fin 120) := .split 31 cert408 cert409
theorem checked410 : checkPair O U c392 c380 4 cert410 = true := by
  apply checkPair_split_literal O U c392 c380 c393 c394 c413 31 3 cert408 cert409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked408
  · exact checked409
#print axioms checked410
def cert411 : PairCertificate (Fin 120) := .split 28 cert386 cert410
theorem checked411 : checkPair O U c389 c380 4 cert411 = true := by
  apply checkPair_split_literal O U c389 c380 c390 c391 c392 28 3 cert386 cert410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked386
  · exact checked410
#print axioms checked411
def cert412 : PairCertificate (Fin 120) := .split 27 cert385 cert411
theorem checked412 : checkPair O U c387 c380 4 cert412 = true := by
  apply checkPair_split_literal O U c387 c380 c6 c388 c389 27 3 cert385 cert411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked385
  · exact checked411
#print axioms checked412
def cert413 : PairCertificate (Fin 120) := .split 22 cert384 cert412
theorem checked413 : checkPair O U c384 c380 4 cert413 = true := by
  apply checkPair_split_literal O U c384 c380 c385 c386 c387 22 3 cert384 cert412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked384
  · exact checked412
#print axioms checked413
def cert414 : PairCertificate (Fin 120) := .split 18 cert383 cert413
theorem checked414 : checkPair O U c382 c380 4 cert414 = true := by
  apply checkPair_split_literal O U c382 c380 c6 c383 c384 18 3 cert383 cert413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked383
  · exact checked413
#print axioms checked414
def cert415 : PairCertificate (Fin 120) := .split 15 cert382 cert414
theorem checked415 : checkPair O U c379 c380 4 cert415 = true := by
  apply checkPair_split_literal O U c379 c380 c6 c381 c382 15 3 cert382 cert414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked382
  · exact checked414
#print axioms checked415
def colors416 (v : Fin 120) : Nat := if (83076754997802409019363180561825810 : Nat).testBit v.val then 0 else if (3518226725018195580279821697024 : Nat).testBit v.val then 1 else if (41538414489613433078100542453972992 : Nat).testBit v.val then 2 else if (503997596860110378007355384655773696 : Nat).testBit v.val then 3 else 0
def cert416 : CliqueCertificate (Fin 120) := .color 4 colors416
theorem checked416 : checkClique O c424 5 cert416 = true := by
  decide +kernel
#print axioms checked416
def cert417 : PairCertificate (Fin 120) := .cross cert416
theorem checked417 : checkPair O U c423 c424 0 cert417 = true := by
  exact checked416
#print axioms checked417
def colors418 (v : Fin 120) : Nat := if (636301784655595268612737204224 : Nat).testBit v.val then 0 else if (324518553658426726783156020576256 : Nat).testBit v.val then 1 else 0
def cert418 : CliqueCertificate (Fin 120) := .color 2 colors418
theorem checked418 : checkClique O c426 4 cert418 = true := by
  decide +kernel
#print axioms checked418
def colors419 (v : Fin 120) : Nat := if (2555108392200752339220439236608 : Nat).testBit v.val then 0 else if (20282409603651670423947251286016 : Nat).testBit v.val then 1 else 0
def cert419 : CliqueCertificate (Fin 120) := .color 2 colors419
theorem checked419 : checkClique O c428 4 cert419 = true := by
  decide +kernel
#print axioms checked419
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
