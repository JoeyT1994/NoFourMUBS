import D0GraphStates
import D0GraphNodes014
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors450 (v : Fin 120) : Nat := if (166153499473114484113547903459393536 : Nat).testBit v.val then 0 else if (302231454903657293676544 : Nat).testBit v.val then 1 else if (2417851639229258349412352 : Nat).testBit v.val then 2 else 0
def cert450 : CliqueCertificate (Fin 120) := .color 3 colors450
theorem checked450 : checkClique O c453 4 cert450 = true := by
  decide +kernel
#print axioms checked450
def colors451 (v : Fin 120) : Nat := if (41539011169458818325391287210999808 : Nat).testBit v.val then 0 else 0
def cert451 : CliqueCertificate (Fin 120) := .color 1 colors451
theorem checked451 : checkClique O c455 4 cert451 = true := by
  decide +kernel
#print axioms checked451
def colors452 (v : Fin 120) : Nat := if (503652795278029400307159215839903744 : Nat).testBit v.val then 0 else if (302231454903657293676544 : Nat).testBit v.val then 1 else 0
def cert452 : CliqueCertificate (Fin 120) := .color 2 colors452
theorem checked452 : checkClique O c457 4 cert452 = true := by
  decide +kernel
#print axioms checked452
def colors453 (v : Fin 120) : Nat := if (332327286307895008492800486391414784 : Nat).testBit v.val then 0 else 0
def cert453 : CliqueCertificate (Fin 120) := .color 1 colors453
theorem checked453 : checkClique O c459 4 cert453 = true := by
  decide +kernel
#print axioms checked453
def colors454 (v : Fin 120) : Nat := if (2538087472834195747517231005696 : Nat).testBit v.val then 0 else if (249554812329398277654638363269922816 : Nat).testBit v.val then 1 else if (41538394682572804512016144067985408 : Nat).testBit v.val then 2 else if (337520212039667561639606957002194944 : Nat).testBit v.val then 3 else 0
def cert454 : CliqueCertificate (Fin 120) := .color 4 colors454
theorem checked454 : checkClique O c460 5 cert454 = true := by
  decide +kernel
#print axioms checked454
def cert455 : CliqueCertificate (Fin 120) := .split 32 cert453 cert454
theorem checked455 : checkClique O c458 5 cert455 = true := by
  apply checkClique_split_literal O c458 c459 c460 32 4 cert453 cert454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked453
  · exact checked454
#print axioms checked455
def cert456 : CliqueCertificate (Fin 120) := .split 17 cert452 cert455
theorem checked456 : checkClique O c456 5 cert456 = true := by
  apply checkClique_split_literal O c456 c457 c458 17 4 cert452 cert455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked452
  · exact checked455
#print axioms checked456
def cert457 : CliqueCertificate (Fin 120) := .split 11 cert451 cert456
theorem checked457 : checkClique O c454 5 cert457 = true := by
  apply checkClique_split_literal O c454 c455 c456 11 4 cert451 cert456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked451
  · exact checked456
#print axioms checked457
def cert458 : CliqueCertificate (Fin 120) := .split 7 cert450 cert457
theorem checked458 : checkClique O c452 5 cert458 = true := by
  apply checkClique_split_literal O c452 c453 c454 7 4 cert450 cert457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked450
  · exact checked457
#print axioms checked458
def cert459 : CliqueCertificate (Fin 120) := .split 4 cert449 cert458
theorem checked459 : checkClique O c450 5 cert459 = true := by
  apply checkClique_split_literal O c450 c451 c452 4 4 cert449 cert458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked449
  · exact checked458
#print axioms checked459
def cert460 : CliqueCertificate (Fin 120) := .split 1 cert448 cert459
theorem checked460 : checkClique O c448 5 cert460 = true := by
  apply checkClique_split_literal O c448 c449 c450 1 4 cert448 cert459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked448
  · exact checked459
#print axioms checked460
def cert461 : PairCertificate (Fin 120) := .cross cert460
theorem checked461 : checkPair O U c6 c448 0 cert461 = true := by
  exact checked460
#print axioms checked461
def cert462 : PairCertificate (Fin 120) := .first .size
theorem checked462 : checkPair O U c6 c447 1 cert462 = true := by
  decide +kernel
#print axioms checked462
def cert463 : PairCertificate (Fin 120) := .split 110 cert461 cert462
theorem checked463 : checkPair O U c423 c447 1 cert463 = true := by
  apply checkPair_split_literal O U c423 c447 c6 c448 c6 110 0 cert461 cert462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked461
  · exact checked462
#print axioms checked463
def cert464 : PairCertificate (Fin 120) := .first .size
theorem checked464 : checkPair O U c423 c446 2 cert464 = true := by
  decide +kernel
#print axioms checked464
def cert465 : PairCertificate (Fin 120) := .split 102 cert463 cert464
theorem checked465 : checkPair O U c421 c446 2 cert465 = true := by
  apply checkPair_split_literal O U c421 c446 c423 c447 c423 102 1 cert463 cert464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked463
  · exact checked464
#print axioms checked465
def cert466 : PairCertificate (Fin 120) := .first .size
theorem checked466 : checkPair O U c421 c418 3 cert466 = true := by
  decide +kernel
#print axioms checked466
def cert467 : PairCertificate (Fin 120) := .split 51 cert465 cert466
theorem checked467 : checkPair O U c419 c418 3 cert467 = true := by
  apply checkPair_split_literal O U c419 c418 c421 c446 c421 51 2 cert465 cert466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked465
  · exact checked466
#print axioms checked467
def cert468 : PairCertificate (Fin 120) := .split 50 cert447 cert467
theorem checked468 : checkPair O U c417 c418 3 cert468 = true := by
  apply checkPair_split_literal O U c417 c418 c419 c420 c419 50 2 cert447 cert467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked447
  · exact checked467
#print axioms checked468
def colors469 (v : Fin 120) : Nat := if (1125899906842624 : Nat).testBit v.val then 0 else if (5070602400913061721174888677376 : Nat).testBit v.val then 1 else 0
def cert469 : PairCertificate (Fin 120) := .first (.color 2 colors469)
theorem checked469 : checkPair O U c462 c463 3 cert469 = true := by
  decide +kernel
#print axioms checked469
def cert470 : PairCertificate (Fin 120) := .first .size
theorem checked470 : checkPair O U c6 c465 3 cert470 = true := by
  decide +kernel
#print axioms checked470
def colors471 (v : Fin 120) : Nat := if (295292161104917037056 : Nat).testBit v.val then 0 else 0
def cert471 : PairCertificate (Fin 120) := .first (.color 1 colors471)
theorem checked471 : checkPair O U c467 c468 3 cert471 = true := by
  decide +kernel
#print axioms checked471
def cert472 : PairCertificate (Fin 120) := .first .size
theorem checked472 : checkPair O U c6 c470 3 cert472 = true := by
  decide +kernel
#print axioms checked472
def cert473 : PairCertificate (Fin 120) := .first .size
theorem checked473 : checkPair O U c472 c473 3 cert473 = true := by
  decide +kernel
#print axioms checked473
def cert474 : PairCertificate (Fin 120) := .first .size
theorem checked474 : checkPair O U c6 c475 3 cert474 = true := by
  decide +kernel
#print axioms checked474
def colors475 (v : Fin 120) : Nat := if (2476484541480567865526460672 : Nat).testBit v.val then 0 else if (325152378958540841483904372178944 : Nat).testBit v.val then 1 else if (649037107316853453566312041152512 : Nat).testBit v.val then 2 else 0
def cert475 : CliqueCertificate (Fin 120) := .color 3 colors475
theorem checked475 : checkClique O c482 4 cert475 = true := by
  decide +kernel
#print axioms checked475
def colors476 (v : Fin 120) : Nat := if (2555108392200752339220439236608 : Nat).testBit v.val then 0 else if (20282409603651670423947251286016 : Nat).testBit v.val then 1 else 0
def cert476 : CliqueCertificate (Fin 120) := .color 2 colors476
theorem checked476 : checkClique O c428 4 cert476 = true := by
  decide +kernel
#print axioms checked476
def colors477 (v : Fin 120) : Nat := if (581537248155903055578665819788279808 : Nat).testBit v.val then 0 else if (75557863725914323419136 : Nat).testBit v.val then 1 else 0
def cert477 : CliqueCertificate (Fin 120) := .color 2 colors477
theorem checked477 : checkClique O c485 4 cert477 = true := by
  decide +kernel
#print axioms checked477
def colors478 (v : Fin 120) : Nat := if (255396106680941991119864888058445824 : Nat).testBit v.val then 0 else 0
def cert478 : CliqueCertificate (Fin 120) := .color 1 colors478
theorem checked478 : checkClique O c487 4 cert478 = true := by
  decide +kernel
#print axioms checked478
def colors479 (v : Fin 120) : Nat := if (3169146070057283300626127650816 : Nat).testBit v.val then 0 else 0
def cert479 : CliqueCertificate (Fin 120) := .color 1 colors479
theorem checked479 : checkClique O c489 4 cert479 = true := by
  decide +kernel
#print axioms checked479
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
