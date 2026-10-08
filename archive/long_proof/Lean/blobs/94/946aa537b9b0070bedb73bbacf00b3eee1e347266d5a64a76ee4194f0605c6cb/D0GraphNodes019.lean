import D0GraphStates
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert570 : PairCertificate (Fin 120) := .first .size
theorem checked570 : checkPair O U c565 c566 3 cert570 = true := by
  decide +kernel
#print axioms checked570
def colors571 (v : Fin 120) : Nat := if (20769197337961856252067841803550720 : Nat).testBit v.val then 0 else 0
def cert571 : PairCertificate (Fin 120) := .first (.color 1 colors571)
theorem checked571 : checkPair O U c568 c569 3 cert571 = true := by
  decide +kernel
#print axioms checked571
def cert572 : PairCertificate (Fin 120) := .first .size
theorem checked572 : checkPair O U c153 c571 3 cert572 = true := by
  decide +kernel
#print axioms checked572
def colors573 (v : Fin 120) : Nat := if (633825300114114705146398646272 : Nat).testBit v.val then 0 else if (649037107921316363373626628505600 : Nat).testBit v.val then 1 else 0
def cert573 : CliqueCertificate (Fin 120) := .color 2 colors573
theorem checked573 : checkClique O c577 4 cert573 = true := by
  decide +kernel
#print axioms checked573
def colors574 (v : Fin 120) : Nat := if (22817710804145022719486123311104 : Nat).testBit v.val then 0 else 0
def cert574 : CliqueCertificate (Fin 120) := .color 1 colors574
theorem checked574 : checkClique O c579 4 cert574 = true := by
  decide +kernel
#print axioms checked574
def colors575 (v : Fin 120) : Nat := if (20282409641430890521678611234880 : Nat).testBit v.val then 0 else 0
def cert575 : CliqueCertificate (Fin 120) := .color 1 colors575
theorem checked575 : checkClique O c581 4 cert575 = true := by
  decide +kernel
#print axioms checked575
def colors576 (v : Fin 120) : Nat := if (79228164875519680602869596160 : Nat).testBit v.val then 0 else 0
def cert576 : CliqueCertificate (Fin 120) := .color 1 colors576
theorem checked576 : checkClique O c583 4 cert576 = true := by
  decide +kernel
#print axioms checked576
def colors577 (v : Fin 120) : Nat := if (41622039885264973517567167645614080 : Nat).testBit v.val then 0 else 0
def cert577 : CliqueCertificate (Fin 120) := .color 1 colors577
theorem checked577 : checkClique O c585 4 cert577 = true := by
  decide +kernel
#print axioms checked577
def colors578 (v : Fin 120) : Nat := if (649037107316853453671865157681152 : Nat).testBit v.val then 0 else 0
def cert578 : CliqueCertificate (Fin 120) := .color 1 colors578
theorem checked578 : checkClique O c587 4 cert578 = true := by
  decide +kernel
#print axioms checked578
def colors579 (v : Fin 120) : Nat := if (2535533390066836442888626503680 : Nat).testBit v.val then 0 else if (144115188075855872 : Nat).testBit v.val then 1 else 0
def cert579 : CliqueCertificate (Fin 120) := .color 2 colors579
theorem checked579 : checkClique O c589 4 cert579 = true := by
  decide +kernel
#print axioms checked579
def colors580 (v : Fin 120) : Nat := if (316912650057489695938403893248 : Nat).testBit v.val then 0 else if (41538374868316399960106927795470336 : Nat).testBit v.val then 1 else 0
def cert580 : CliqueCertificate (Fin 120) := .color 2 colors580
theorem checked580 : checkClique O c591 4 cert580 = true := by
  decide +kernel
#print axioms checked580
def colors581 (v : Fin 120) : Nat := if (633825357963104190668305072128 : Nat).testBit v.val then 0 else if (2614762083847546320079835627520 : Nat).testBit v.val then 1 else if (669636429646157226785071362473984 : Nat).testBit v.val then 2 else if (41620772158502381758955885516816384 : Nat).testBit v.val then 3 else 0
def cert581 : CliqueCertificate (Fin 120) := .color 4 colors581
theorem checked581 : checkClique O c592 5 cert581 = true := by
  decide +kernel
#print axioms checked581
def cert582 : CliqueCertificate (Fin 120) := .split 18 cert580 cert581
theorem checked582 : checkClique O c590 5 cert582 = true := by
  apply checkClique_split_literal O c590 c591 c592 18 4 cert580 cert581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked580
  · exact checked581
#print axioms checked582
def cert583 : CliqueCertificate (Fin 120) := .split 14 cert579 cert582
theorem checked583 : checkClique O c588 5 cert583 = true := by
  apply checkClique_split_literal O c588 c589 c590 14 4 cert579 cert582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked579
  · exact checked582
#print axioms checked583
def cert584 : CliqueCertificate (Fin 120) := .split 13 cert578 cert583
theorem checked584 : checkClique O c586 5 cert584 = true := by
  apply checkClique_split_literal O c586 c587 c588 13 4 cert578 cert583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked578
  · exact checked583
#print axioms checked584
def cert585 : CliqueCertificate (Fin 120) := .split 10 cert577 cert584
theorem checked585 : checkClique O c584 5 cert585 = true := by
  apply checkClique_split_literal O c584 c585 c586 10 4 cert577 cert584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked577
  · exact checked584
#print axioms checked585
def cert586 : CliqueCertificate (Fin 120) := .split 6 cert576 cert585
theorem checked586 : checkClique O c582 5 cert586 = true := by
  apply checkClique_split_literal O c582 c583 c584 6 4 cert576 cert585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked576
  · exact checked585
#print axioms checked586
def cert587 : CliqueCertificate (Fin 120) := .split 5 cert575 cert586
theorem checked587 : checkClique O c580 5 cert587 = true := by
  apply checkClique_split_literal O c580 c581 c582 5 4 cert575 cert586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked575
  · exact checked586
#print axioms checked587
def cert588 : CliqueCertificate (Fin 120) := .split 4 cert574 cert587
theorem checked588 : checkClique O c578 5 cert588 = true := by
  apply checkClique_split_literal O c578 c579 c580 4 4 cert574 cert587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked574
  · exact checked587
#print axioms checked588
def cert589 : CliqueCertificate (Fin 120) := .split 1 cert573 cert588
theorem checked589 : checkClique O c576 5 cert589 = true := by
  apply checkClique_split_literal O c576 c577 c578 1 4 cert573 cert588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked573
  · exact checked588
#print axioms checked589
def cert590 : PairCertificate (Fin 120) := .cross cert589
theorem checked590 : checkPair O U c6 c576 0 cert590 = true := by
  exact checked589
#print axioms checked590
def cert591 : PairCertificate (Fin 120) := .first .size
theorem checked591 : checkPair O U c6 c575 1 cert591 = true := by
  decide +kernel
#print axioms checked591
def cert592 : PairCertificate (Fin 120) := .split 119 cert590 cert591
theorem checked592 : checkPair O U c160 c575 1 cert592 = true := by
  apply checkPair_split_literal O U c160 c575 c6 c576 c6 119 0 cert590 cert591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked590
  · exact checked591
#print axioms checked592
def cert593 : PairCertificate (Fin 120) := .first .size
theorem checked593 : checkPair O U c160 c574 2 cert593 = true := by
  decide +kernel
#print axioms checked593
def cert594 : PairCertificate (Fin 120) := .split 93 cert592 cert593
theorem checked594 : checkPair O U c158 c574 2 cert594 = true := by
  apply checkPair_split_literal O U c158 c574 c160 c575 c160 93 1 cert592 cert593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked592
  · exact checked593
#print axioms checked594
def cert595 : PairCertificate (Fin 120) := .first .size
theorem checked595 : checkPair O U c158 c573 3 cert595 = true := by
  decide +kernel
#print axioms checked595
def cert596 : PairCertificate (Fin 120) := .split 52 cert594 cert595
theorem checked596 : checkPair O U c156 c573 3 cert596 = true := by
  apply checkPair_split_literal O U c156 c573 c158 c574 c158 52 2 cert594 cert595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked594
  · exact checked595
#print axioms checked596
def colors597 (v : Fin 120) : Nat := if (524421982751156568517363516045262848 : Nat).testBit v.val then 0 else if (9922863210408350497588117504 : Nat).testBit v.val then 1 else if (664613997892457936451903530140172288 : Nat).testBit v.val then 2 else 0
def cert597 : PairCertificate (Fin 120) := .first (.color 3 colors597)
theorem checked597 : checkPair O U c593 c564 4 cert597 = true := by
  decide +kernel
#print axioms checked597
def cert598 : PairCertificate (Fin 120) := .split 44 cert596 cert597
theorem checked598 : checkPair O U c572 c564 4 cert598 = true := by
  apply checkPair_split_literal O U c572 c564 c156 c573 c593 44 3 cert596 cert597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked596
  · exact checked597
#print axioms checked598
def cert599 : PairCertificate (Fin 120) := .split 40 cert572 cert598
theorem checked599 : checkPair O U c570 c564 4 cert599 = true := by
  apply checkPair_split_literal O U c570 c564 c153 c571 c572 40 3 cert572 cert598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked572
  · exact checked598
#print axioms checked599
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
