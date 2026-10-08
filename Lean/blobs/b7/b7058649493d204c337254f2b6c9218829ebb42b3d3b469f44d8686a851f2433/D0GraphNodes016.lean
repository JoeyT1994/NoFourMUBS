import D0GraphStates
import D0GraphNodes015
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors480 (v : Fin 120) : Nat := if (5517469064103557532872253441572864 : Nat).testBit v.val then 0 else if (41538377654552764968310793027190784 : Nat).testBit v.val then 1 else if (83727099068778218750448050603294720 : Nat).testBit v.val then 2 else if (498483316130147560468154588262825984 : Nat).testBit v.val then 3 else 0
def cert480 : CliqueCertificate (Fin 120) := .color 4 colors480
theorem checked480 : checkClique O c490 5 cert480 = true := by
  decide +kernel
#print axioms checked480
def cert481 : CliqueCertificate (Fin 120) := .split 26 cert479 cert480
theorem checked481 : checkClique O c488 5 cert481 = true := by
  apply checkClique_split_literal O c488 c489 c490 26 4 cert479 cert480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked479
  · exact checked480
#print axioms checked481
def cert482 : CliqueCertificate (Fin 120) := .split 13 cert478 cert481
theorem checked482 : checkClique O c486 5 cert482 = true := by
  apply checkClique_split_literal O c486 c487 c488 13 4 cert478 cert481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked478
  · exact checked481
#print axioms checked482
def cert483 : CliqueCertificate (Fin 120) := .split 8 cert477 cert482
theorem checked483 : checkClique O c484 5 cert483 = true := by
  apply checkClique_split_literal O c484 c485 c486 8 4 cert477 cert482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked477
  · exact checked482
#print axioms checked483
def cert484 : CliqueCertificate (Fin 120) := .split 4 cert476 cert483
theorem checked484 : checkClique O c483 5 cert484 = true := by
  apply checkClique_split_literal O c483 c428 c484 4 4 cert476 cert483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked476
  · exact checked483
#print axioms checked484
def cert485 : CliqueCertificate (Fin 120) := .split 1 cert475 cert484
theorem checked485 : checkClique O c481 5 cert485 = true := by
  apply checkClique_split_literal O c481 c482 c483 1 4 cert475 cert484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked475
  · exact checked484
#print axioms checked485
def cert486 : PairCertificate (Fin 120) := .cross cert485
theorem checked486 : checkPair O U c6 c481 0 cert486 = true := by
  exact checked485
#print axioms checked486
def cert487 : PairCertificate (Fin 120) := .first .size
theorem checked487 : checkPair O U c6 c480 1 cert487 = true := by
  decide +kernel
#print axioms checked487
def cert488 : PairCertificate (Fin 120) := .split 110 cert486 cert487
theorem checked488 : checkPair O U c423 c480 1 cert488 = true := by
  apply checkPair_split_literal O U c423 c480 c6 c481 c6 110 0 cert486 cert487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked486
  · exact checked487
#print axioms checked488
def cert489 : PairCertificate (Fin 120) := .first .size
theorem checked489 : checkPair O U c423 c479 2 cert489 = true := by
  decide +kernel
#print axioms checked489
def cert490 : PairCertificate (Fin 120) := .split 102 cert488 cert489
theorem checked490 : checkPair O U c421 c479 2 cert490 = true := by
  apply checkPair_split_literal O U c421 c479 c423 c480 c423 102 1 cert488 cert489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked488
  · exact checked489
#print axioms checked490
def cert491 : PairCertificate (Fin 120) := .first .size
theorem checked491 : checkPair O U c423 c492 2 cert491 = true := by
  decide +kernel
#print axioms checked491
def colors492 (v : Fin 120) : Nat := if (1298074214638429273615493727518720 : Nat).testBit v.val then 0 else if (5070679772165372942253994016768 : Nat).testBit v.val then 1 else 0
def cert492 : PairCertificate (Fin 120) := .first (.color 2 colors492)
theorem checked492 : checkPair O U c493 c478 3 cert492 = true := by
  decide +kernel
#print axioms checked492
def cert493 : PairCertificate (Fin 120) := .split 57 cert491 cert492
theorem checked493 : checkPair O U c491 c478 3 cert493 = true := by
  apply checkPair_split_literal O U c491 c478 c423 c492 c493 57 2 cert491 cert492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked491
  · exact checked492
#print axioms checked493
def cert494 : PairCertificate (Fin 120) := .split 51 cert490 cert493
theorem checked494 : checkPair O U c477 c478 3 cert494 = true := by
  apply checkPair_split_literal O U c477 c478 c421 c479 c491 51 2 cert490 cert493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked490
  · exact checked493
#print axioms checked494
def colors495 (v : Fin 120) : Nat := if (2535455947979039237763911122944 : Nat).testBit v.val then 0 else if (5070679847723236668168317435904 : Nat).testBit v.val then 1 else if (1298074214633706907132624082305024 : Nat).testBit v.val then 2 else 0
def cert495 : PairCertificate (Fin 120) := .first (.color 3 colors495)
theorem checked495 : checkPair O U c494 c416 4 cert495 = true := by
  decide +kernel
#print axioms checked495
def cert496 : PairCertificate (Fin 120) := .split 50 cert494 cert495
theorem checked496 : checkPair O U c476 c416 4 cert496 = true := by
  apply checkPair_split_literal O U c476 c416 c477 c478 c494 50 3 cert494 cert495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked494
  · exact checked495
#print axioms checked496
def cert497 : PairCertificate (Fin 120) := .split 47 cert474 cert496
theorem checked497 : checkPair O U c474 c416 4 cert497 = true := by
  apply checkPair_split_literal O U c474 c416 c6 c475 c476 47 3 cert474 cert496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked474
  · exact checked496
#print axioms checked497
def cert498 : PairCertificate (Fin 120) := .split 39 cert473 cert497
theorem checked498 : checkPair O U c471 c416 4 cert498 = true := by
  apply checkPair_split_literal O U c471 c416 c472 c473 c474 39 3 cert473 cert497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked473
  · exact checked497
#print axioms checked498
def cert499 : PairCertificate (Fin 120) := .split 33 cert472 cert498
theorem checked499 : checkPair O U c469 c416 4 cert499 = true := by
  apply checkPair_split_literal O U c469 c416 c6 c470 c471 33 3 cert472 cert498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked472
  · exact checked498
#print axioms checked499
def cert500 : PairCertificate (Fin 120) := .split 28 cert471 cert499
theorem checked500 : checkPair O U c466 c416 4 cert500 = true := by
  apply checkPair_split_literal O U c466 c416 c467 c468 c469 28 3 cert471 cert499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked471
  · exact checked499
#print axioms checked500
def cert501 : PairCertificate (Fin 120) := .split 22 cert470 cert500
theorem checked501 : checkPair O U c464 c416 4 cert501 = true := by
  apply checkPair_split_literal O U c464 c416 c6 c465 c466 22 3 cert470 cert500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked470
  · exact checked500
#print axioms checked501
def cert502 : PairCertificate (Fin 120) := .split 18 cert469 cert501
theorem checked502 : checkPair O U c461 c416 4 cert502 = true := by
  apply checkPair_split_literal O U c461 c416 c462 c463 c464 18 3 cert469 cert501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked469
  · exact checked501
#print axioms checked502
def cert503 : PairCertificate (Fin 120) := .split 15 cert468 cert502
theorem checked503 : checkPair O U c415 c416 4 cert503 = true := by
  apply checkPair_split_literal O U c415 c416 c417 c418 c461 15 3 cert468 cert502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked468
  · exact checked502
#print axioms checked503
def cert504 : PairCertificate (Fin 120) := .first .size
theorem checked504 : checkPair O U c6 c498 3 cert504 = true := by
  decide +kernel
#print axioms checked504
def colors505 (v : Fin 120) : Nat := if (2251799813685248 : Nat).testBit v.val then 0 else if (5070602400913205836362964533248 : Nat).testBit v.val then 1 else 0
def cert505 : PairCertificate (Fin 120) := .first (.color 2 colors505)
theorem checked505 : checkPair O U c500 c501 3 cert505 = true := by
  decide +kernel
#print axioms checked505
def colors506 (v : Fin 120) : Nat := if (74075488145966628864 : Nat).testBit v.val then 0 else 0
def cert506 : PairCertificate (Fin 120) := .first (.color 1 colors506)
theorem checked506 : checkPair O U c503 c504 3 cert506 = true := by
  decide +kernel
#print axioms checked506
def cert507 : PairCertificate (Fin 120) := .first .size
theorem checked507 : checkPair O U c6 c506 3 cert507 = true := by
  decide +kernel
#print axioms checked507
def cert508 : PairCertificate (Fin 120) := .first .size
theorem checked508 : checkPair O U c508 c509 3 cert508 = true := by
  decide +kernel
#print axioms checked508
def cert509 : PairCertificate (Fin 120) := .first .size
theorem checked509 : checkPair O U c6 c511 3 cert509 = true := by
  decide +kernel
#print axioms checked509
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
