import D0GraphStates
import D0GraphNodes016
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors510 (v : Fin 120) : Nat := if (636301784655595268612737204224 : Nat).testBit v.val then 0 else if (324518553658426726783156020576256 : Nat).testBit v.val then 1 else 0
def cert510 : CliqueCertificate (Fin 120) := .color 2 colors510
theorem checked510 : checkClique O c426 4 cert510 = true := by
  decide +kernel
#print axioms checked510
def colors511 (v : Fin 120) : Nat := if (19807191744293536235756982784 : Nat).testBit v.val then 0 else if (22817710804108129226940657696768 : Nat).testBit v.val then 1 else if (162259276829213363391578010288128 : Nat).testBit v.val then 2 else 0
def cert511 : CliqueCertificate (Fin 120) := .color 3 colors511
theorem checked511 : checkClique O c518 4 cert511 = true := by
  decide +kernel
#print axioms checked511
def colors512 (v : Fin 120) : Nat := if (254422546068207734389615312420995072 : Nat).testBit v.val then 0 else if (302231454903657293676544 : Nat).testBit v.val then 1 else 0
def cert512 : CliqueCertificate (Fin 120) := .color 2 colors512
theorem checked512 : checkClique O c520 4 cert512 = true := by
  decide +kernel
#print axioms checked512
def colors513 (v : Fin 120) : Nat := if (581719794794093716570752214267592704 : Nat).testBit v.val then 0 else 0
def cert513 : CliqueCertificate (Fin 120) := .color 1 colors513
theorem checked513 : checkClique O c522 4 cert513 = true := by
  decide +kernel
#print axioms checked513
def colors514 (v : Fin 120) : Nat := if (162341302446369363895057941266432 : Nat).testBit v.val then 0 else if (503652800385213259121265035584733184 : Nat).testBit v.val then 1 else if (41866082355780478349659661580369920 : Nat).testBit v.val then 2 else if (83097071765077854137539201989607424 : Nat).testBit v.val then 3 else 0
def cert514 : CliqueCertificate (Fin 120) := .color 4 colors514
theorem checked514 : checkClique O c523 5 cert514 = true := by
  decide +kernel
#print axioms checked514
def cert515 : CliqueCertificate (Fin 120) := .split 12 cert513 cert514
theorem checked515 : checkClique O c521 5 cert515 = true := by
  apply checkClique_split_literal O c521 c522 c523 12 4 cert513 cert514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked513
  · exact checked514
#print axioms checked515
def cert516 : CliqueCertificate (Fin 120) := .split 9 cert512 cert515
theorem checked516 : checkClique O c519 5 cert516 = true := by
  apply checkClique_split_literal O c519 c520 c521 9 4 cert512 cert515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked512
  · exact checked515
#print axioms checked516
def cert517 : CliqueCertificate (Fin 120) := .split 4 cert511 cert516
theorem checked517 : checkClique O c517 5 cert517 = true := by
  apply checkClique_split_literal O c517 c518 c519 4 4 cert511 cert516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked511
  · exact checked516
#print axioms checked517
def cert518 : CliqueCertificate (Fin 120) := .split 1 cert510 cert517
theorem checked518 : checkClique O c516 5 cert518 = true := by
  apply checkClique_split_literal O c516 c426 c517 1 4 cert510 cert517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked510
  · exact checked517
#print axioms checked518
def cert519 : PairCertificate (Fin 120) := .cross cert518
theorem checked519 : checkPair O U c6 c516 0 cert519 = true := by
  exact checked518
#print axioms checked519
def cert520 : PairCertificate (Fin 120) := .first .size
theorem checked520 : checkPair O U c6 c515 1 cert520 = true := by
  decide +kernel
#print axioms checked520
def cert521 : PairCertificate (Fin 120) := .split 110 cert519 cert520
theorem checked521 : checkPair O U c423 c515 1 cert521 = true := by
  apply checkPair_split_literal O U c423 c515 c6 c516 c6 110 0 cert519 cert520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked519
  · exact checked520
#print axioms checked521
def cert522 : PairCertificate (Fin 120) := .first .size
theorem checked522 : checkPair O U c423 c514 2 cert522 = true := by
  decide +kernel
#print axioms checked522
def cert523 : PairCertificate (Fin 120) := .split 102 cert521 cert522
theorem checked523 : checkPair O U c421 c514 2 cert523 = true := by
  apply checkPair_split_literal O U c421 c514 c423 c515 c423 102 1 cert521 cert522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked521
  · exact checked522
#print axioms checked523
def cert524 : PairCertificate (Fin 120) := .first .size
theorem checked524 : checkPair O U c421 c513 3 cert524 = true := by
  decide +kernel
#print axioms checked524
def cert525 : PairCertificate (Fin 120) := .split 51 cert523 cert524
theorem checked525 : checkPair O U c419 c513 3 cert525 = true := by
  apply checkPair_split_literal O U c419 c513 c421 c514 c421 51 2 cert523 cert524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked523
  · exact checked524
#print axioms checked525
def cert526 : PairCertificate (Fin 120) := .first .size
theorem checked526 : checkPair O U c423 c527 2 cert526 = true := by
  decide +kernel
#print axioms checked526
def colors527 (v : Fin 120) : Nat := if (1298074214671485838995581244014592 : Nat).testBit v.val then 0 else if (5070641086539145274120403419136 : Nat).testBit v.val then 1 else 0
def cert527 : PairCertificate (Fin 120) := .first (.color 2 colors527)
theorem checked527 : checkPair O U c528 c526 3 cert527 = true := by
  decide +kernel
#print axioms checked527
def cert528 : PairCertificate (Fin 120) := .split 58 cert526 cert527
theorem checked528 : checkPair O U c525 c526 3 cert528 = true := by
  apply checkPair_split_literal O U c525 c526 c423 c527 c528 58 2 cert526 cert527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked526
  · exact checked527
#print axioms checked528
def colors529 (v : Fin 120) : Nat := if (633844680780240108042925899776 : Nat).testBit v.val then 0 else if (5070641388770600177777697095680 : Nat).testBit v.val then 1 else if (1298074214633706907132624082305024 : Nat).testBit v.val then 2 else 0
def cert529 : PairCertificate (Fin 120) := .first (.color 3 colors529)
theorem checked529 : checkPair O U c529 c497 4 cert529 = true := by
  decide +kernel
#print axioms checked529
def cert530 : PairCertificate (Fin 120) := .split 51 cert528 cert529
theorem checked530 : checkPair O U c524 c497 4 cert530 = true := by
  apply checkPair_split_literal O U c524 c497 c525 c526 c529 51 3 cert528 cert529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked528
  · exact checked529
#print axioms checked530
def cert531 : PairCertificate (Fin 120) := .split 50 cert525 cert530
theorem checked531 : checkPair O U c512 c497 4 cert531 = true := by
  apply checkPair_split_literal O U c512 c497 c419 c513 c524 50 3 cert525 cert530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked525
  · exact checked530
#print axioms checked531
def cert532 : PairCertificate (Fin 120) := .split 48 cert509 cert531
theorem checked532 : checkPair O U c510 c497 4 cert532 = true := by
  apply checkPair_split_literal O U c510 c497 c6 c511 c512 48 3 cert509 cert531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked509
  · exact checked531
#print axioms checked532
def cert533 : PairCertificate (Fin 120) := .split 36 cert508 cert532
theorem checked533 : checkPair O U c507 c497 4 cert533 = true := by
  apply checkPair_split_literal O U c507 c497 c508 c509 c510 36 3 cert508 cert532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked508
  · exact checked532
#print axioms checked533
def cert534 : PairCertificate (Fin 120) := .split 30 cert507 cert533
theorem checked534 : checkPair O U c505 c497 4 cert534 = true := by
  apply checkPair_split_literal O U c505 c497 c6 c506 c507 30 3 cert507 cert533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked507
  · exact checked533
#print axioms checked534
def cert535 : PairCertificate (Fin 120) := .split 29 cert506 cert534
theorem checked535 : checkPair O U c502 c497 4 cert535 = true := by
  apply checkPair_split_literal O U c502 c497 c503 c504 c505 29 3 cert506 cert534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked506
  · exact checked534
#print axioms checked535
def cert536 : PairCertificate (Fin 120) := .split 23 cert505 cert535
theorem checked536 : checkPair O U c499 c497 4 cert536 = true := by
  apply checkPair_split_literal O U c499 c497 c500 c501 c502 23 3 cert505 cert535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked505
  · exact checked535
#print axioms checked536
def cert537 : PairCertificate (Fin 120) := .split 19 cert504 cert536
theorem checked537 : checkPair O U c496 c497 4 cert537 = true := by
  apply checkPair_split_literal O U c496 c497 c6 c498 c499 19 3 cert504 cert536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked504
  · exact checked536
#print axioms checked537
def cert538 : PairCertificate (Fin 120) := .first .size
theorem checked538 : checkPair O U c533 c534 3 cert538 = true := by
  decide +kernel
#print axioms checked538
def cert539 : PairCertificate (Fin 120) := .first .size
theorem checked539 : checkPair O U c68 c536 3 cert539 = true := by
  decide +kernel
#print axioms checked539
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
