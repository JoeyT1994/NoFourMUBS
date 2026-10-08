import D0GraphStates
import D0GraphNodes017
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors540 (v : Fin 120) : Nat := if (20769188053184888020538037089861632 : Nat).testBit v.val then 0 else 0
def cert540 : PairCertificate (Fin 120) := .first (.color 1 colors540)
theorem checked540 : checkPair O U c538 c539 3 cert540 = true := by
  decide +kernel
#print axioms checked540
def colors541 (v : Fin 120) : Nat := if (325152378958559288230177104986112 : Nat).testBit v.val then 0 else 0
def cert541 : CliqueCertificate (Fin 120) := .color 1 colors541
theorem checked541 : checkClique O c545 4 cert541 = true := by
  decide +kernel
#print axioms checked541
def colors542 (v : Fin 120) : Nat := if (324518553663149237383412764934152 : Nat).testBit v.val then 0 else 0
def cert542 : CliqueCertificate (Fin 120) := .color 1 colors542
theorem checked542 : checkClique O c547 4 cert542 = true := by
  decide +kernel
#print axioms checked542
def colors543 (v : Fin 120) : Nat := if (1267650601409397500833481883648 : Nat).testBit v.val then 0 else 0
def cert543 : CliqueCertificate (Fin 120) := .color 1 colors543
theorem checked543 : checkClique O c549 4 cert543 = true := by
  decide +kernel
#print axioms checked543
def colors544 (v : Fin 120) : Nat := if (2535301200456458805192433864704 : Nat).testBit v.val then 0 else if (162259276980329090843406657126400 : Nat).testBit v.val then 1 else 0
def cert544 : CliqueCertificate (Fin 120) := .color 2 colors544
theorem checked544 : checkClique O c551 4 cert544 = true := by
  decide +kernel
#print axioms checked544
def colors545 (v : Fin 120) : Nat := if (41620138370678986499052715290656768 : Nat).testBit v.val then 0 else 0
def cert545 : CliqueCertificate (Fin 120) := .color 1 colors545
theorem checked545 : checkClique O c553 4 cert545 = true := by
  decide +kernel
#print axioms checked545
def colors546 (v : Fin 120) : Nat := if (162259276829213363972120158142464 : Nat).testBit v.val then 0 else 0
def cert546 : CliqueCertificate (Fin 120) := .color 1 colors546
theorem checked546 : checkClique O c555 4 cert546 = true := by
  decide +kernel
#print axioms checked546
def colors547 (v : Fin 120) : Nat := if (633883630858698082900877770752 : Nat).testBit v.val then 0 else if (288230376151711744 : Nat).testBit v.val then 1 else 0
def cert547 : CliqueCertificate (Fin 120) := .color 2 colors547
theorem checked547 : checkClique O c557 4 cert547 = true := by
  decide +kernel
#print axioms checked547
def colors548 (v : Fin 120) : Nat := if (316951335683717364071993966592 : Nat).testBit v.val then 0 else if (41538374868580870929891701636988928 : Nat).testBit v.val then 1 else 0
def cert548 : CliqueCertificate (Fin 120) := .color 2 colors548
theorem checked548 : checkClique O c559 4 cert548 = true := by
  decide +kernel
#print axioms checked548
def colors549 (v : Fin 120) : Nat := if (316951488053391648165684314112 : Nat).testBit v.val then 0 else if (84932590227115732853725968990208 : Nat).testBit v.val then 1 else if (41539087950755469510378976949829632 : Nat).testBit v.val then 2 else if (486777830794594488022013273178112 : Nat).testBit v.val then 3 else 0
def cert549 : CliqueCertificate (Fin 120) := .color 4 colors549
theorem checked549 : checkClique O c560 5 cert549 = true := by
  decide +kernel
#print axioms checked549
def cert550 : CliqueCertificate (Fin 120) := .split 18 cert548 cert549
theorem checked550 : checkClique O c558 5 cert550 = true := by
  apply checkClique_split_literal O c558 c559 c560 18 4 cert548 cert549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked548
  · exact checked549
#print axioms checked550
def cert551 : CliqueCertificate (Fin 120) := .split 15 cert547 cert550
theorem checked551 : checkClique O c556 5 cert551 = true := by
  apply checkClique_split_literal O c556 c557 c558 15 4 cert547 cert550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked547
  · exact checked550
#print axioms checked551
def cert552 : CliqueCertificate (Fin 120) := .split 12 cert546 cert551
theorem checked552 : checkClique O c554 5 cert552 = true := by
  apply checkClique_split_literal O c554 c555 c556 12 4 cert546 cert551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked546
  · exact checked551
#print axioms checked552
def cert553 : CliqueCertificate (Fin 120) := .split 11 cert545 cert552
theorem checked553 : checkClique O c552 5 cert553 = true := by
  apply checkClique_split_literal O c552 c553 c554 11 4 cert545 cert552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked545
  · exact checked552
#print axioms checked553
def cert554 : CliqueCertificate (Fin 120) := .split 4 cert544 cert553
theorem checked554 : checkClique O c550 5 cert554 = true := by
  apply checkClique_split_literal O c550 c551 c552 4 4 cert544 cert553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked544
  · exact checked553
#print axioms checked554
def cert555 : CliqueCertificate (Fin 120) := .split 3 cert543 cert554
theorem checked555 : checkClique O c548 5 cert555 = true := by
  apply checkClique_split_literal O c548 c549 c550 3 4 cert543 cert554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked543
  · exact checked554
#print axioms checked555
def cert556 : CliqueCertificate (Fin 120) := .split 2 cert542 cert555
theorem checked556 : checkClique O c546 5 cert556 = true := by
  apply checkClique_split_literal O c546 c547 c548 2 4 cert542 cert555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked542
  · exact checked555
#print axioms checked556
def cert557 : CliqueCertificate (Fin 120) := .split 1 cert541 cert556
theorem checked557 : checkClique O c544 5 cert557 = true := by
  apply checkClique_split_literal O c544 c545 c546 1 4 cert541 cert556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked541
  · exact checked556
#print axioms checked557
def cert558 : PairCertificate (Fin 120) := .cross cert557
theorem checked558 : checkPair O U c6 c544 0 cert558 = true := by
  exact checked557
#print axioms checked558
def cert559 : PairCertificate (Fin 120) := .first .size
theorem checked559 : checkPair O U c6 c543 1 cert559 = true := by
  decide +kernel
#print axioms checked559
def cert560 : PairCertificate (Fin 120) := .split 113 cert558 cert559
theorem checked560 : checkPair O U c78 c543 1 cert560 = true := by
  apply checkPair_split_literal O U c78 c543 c6 c544 c6 113 0 cert558 cert559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked558
  · exact checked559
#print axioms checked560
def cert561 : PairCertificate (Fin 120) := .first .size
theorem checked561 : checkPair O U c78 c542 2 cert561 = true := by
  decide +kernel
#print axioms checked561
def cert562 : PairCertificate (Fin 120) := .split 89 cert560 cert561
theorem checked562 : checkPair O U c76 c542 2 cert562 = true := by
  apply checkPair_split_literal O U c76 c542 c78 c543 c78 89 1 cert560 cert561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked560
  · exact checked561
#print axioms checked562
def cert563 : PairCertificate (Fin 120) := .first .size
theorem checked563 : checkPair O U c76 c541 3 cert563 = true := by
  decide +kernel
#print axioms checked563
def cert564 : PairCertificate (Fin 120) := .split 53 cert562 cert563
theorem checked564 : checkPair O U c74 c541 3 cert564 = true := by
  apply checkPair_split_literal O U c74 c541 c76 c542 c76 53 2 cert562 cert563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked562
  · exact checked563
#print axioms checked564
def colors565 (v : Fin 120) : Nat := if (441345233053511630890914888556740608 : Nat).testBit v.val then 0 else if (773712824315205669405851648 : Nat).testBit v.val then 1 else if (10384593717069655257060992658440192 : Nat).testBit v.val then 2 else 0
def cert565 : PairCertificate (Fin 120) := .first (.color 3 colors565)
theorem checked565 : checkPair O U c561 c532 4 cert565 = true := by
  decide +kernel
#print axioms checked565
def cert566 : PairCertificate (Fin 120) := .split 45 cert564 cert565
theorem checked566 : checkPair O U c540 c532 4 cert566 = true := by
  apply checkPair_split_literal O U c540 c532 c74 c541 c561 45 3 cert564 cert565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked564
  · exact checked565
#print axioms checked566
def cert567 : PairCertificate (Fin 120) := .split 43 cert540 cert566
theorem checked567 : checkPair O U c537 c532 4 cert567 = true := by
  apply checkPair_split_literal O U c537 c532 c538 c539 c540 43 3 cert540 cert566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked540
  · exact checked566
#print axioms checked567
def cert568 : PairCertificate (Fin 120) := .split 37 cert539 cert567
theorem checked568 : checkPair O U c535 c532 4 cert568 = true := by
  apply checkPair_split_literal O U c535 c532 c68 c536 c537 37 3 cert539 cert567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked539
  · exact checked567
#print axioms checked568
def cert569 : PairCertificate (Fin 120) := .split 33 cert538 cert568
theorem checked569 : checkPair O U c531 c532 4 cert569 = true := by
  apply checkPair_split_literal O U c531 c532 c533 c534 c535 33 3 cert538 cert568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked538
  · exact checked568
#print axioms checked569
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
