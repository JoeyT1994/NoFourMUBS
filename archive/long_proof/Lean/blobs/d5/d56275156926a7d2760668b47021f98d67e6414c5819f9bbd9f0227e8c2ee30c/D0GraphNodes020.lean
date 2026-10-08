import D0GraphStates
import D0GraphNodes019
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert600 : PairCertificate (Fin 120) := .split 38 cert571 cert599
theorem checked600 : checkPair O U c567 c564 4 cert600 = true := by
  apply checkPair_split_literal O U c567 c564 c568 c569 c570 38 3 cert571 cert599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked571
  · exact checked599
#print axioms checked600
def cert601 : PairCertificate (Fin 120) := .split 30 cert570 cert600
theorem checked601 : checkPair O U c563 c564 4 cert601 = true := by
  apply checkPair_split_literal O U c563 c564 c565 c566 c567 30 3 cert570 cert600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked570
  · exact checked600
#print axioms checked601
def cert602 : PairCertificate (Fin 120) := .first .size
theorem checked602 : checkPair O U c6 c597 3 cert602 = true := by
  decide +kernel
#print axioms checked602
def colors603 (v : Fin 120) : Nat := if (20769187434139310802352361468592128 : Nat).testBit v.val then 0 else if (18446744073709551616 : Nat).testBit v.val then 1 else 0
def cert603 : PairCertificate (Fin 120) := .first (.color 2 colors603)
theorem checked603 : checkPair O U c599 c600 3 cert603 = true := by
  decide +kernel
#print axioms checked603
def colors604 (v : Fin 120) : Nat := if (20769504346827146792691662506164224 : Nat).testBit v.val then 0 else if (41543445509667410219281010116263936 : Nat).testBit v.val then 1 else 0
def cert604 : PairCertificate (Fin 120) := .first (.color 2 colors604)
theorem checked604 : checkPair O U c601 c596 4 cert604 = true := by
  decide +kernel
#print axioms checked604
def cert605 : PairCertificate (Fin 120) := .split 29 cert603 cert604
theorem checked605 : checkPair O U c598 c596 4 cert605 = true := by
  apply checkPair_split_literal O U c598 c596 c599 c600 c601 29 3 cert603 cert604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked603
  · exact checked604
#print axioms checked605
def cert606 : PairCertificate (Fin 120) := .split 19 cert602 cert605
theorem checked606 : checkPair O U c595 c596 4 cert606 = true := by
  apply checkPair_split_literal O U c595 c596 c6 c597 c598 19 3 cert602 cert605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked602
  · exact checked605
#print axioms checked606
def colors607 (v : Fin 120) : Nat := if (4951760157231593092143906816 : Nat).testBit v.val then 0 else if (81129638414609563999550522261504 : Nat).testBit v.val then 1 else 0
def cert607 : PairCertificate (Fin 120) := .first (.color 2 colors607)
theorem checked607 : checkPair O U c605 c606 3 cert607 = true := by
  decide +kernel
#print axioms checked607
def cert608 : PairCertificate (Fin 120) := .first .size
theorem checked608 : checkPair O U c608 c609 3 cert608 = true := by
  decide +kernel
#print axioms checked608
def cert609 : PairCertificate (Fin 120) := .first .size
theorem checked609 : checkPair O U c6 c611 3 cert609 = true := by
  decide +kernel
#print axioms checked609
def cert610 : PairCertificate (Fin 120) := .first .size
theorem checked610 : checkPair O U c613 c614 3 cert610 = true := by
  decide +kernel
#print axioms checked610
def colors611 (v : Fin 120) : Nat := if (4961441010809304621565083648 : Nat).testBit v.val then 0 else if (83664939615063734973933224460288 : Nat).testBit v.val then 1 else 0
def cert611 : PairCertificate (Fin 120) := .first (.color 2 colors611)
theorem checked611 : checkPair O U c615 c604 4 cert611 = true := by
  decide +kernel
#print axioms checked611
def cert612 : PairCertificate (Fin 120) := .split 32 cert610 cert611
theorem checked612 : checkPair O U c612 c604 4 cert612 = true := by
  apply checkPair_split_literal O U c612 c604 c613 c614 c615 32 3 cert610 cert611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked610
  · exact checked611
#print axioms checked612
def cert613 : PairCertificate (Fin 120) := .split 28 cert609 cert612
theorem checked613 : checkPair O U c610 c604 4 cert613 = true := by
  apply checkPair_split_literal O U c610 c604 c6 c611 c612 28 3 cert609 cert612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked609
  · exact checked612
#print axioms checked613
def cert614 : PairCertificate (Fin 120) := .split 27 cert608 cert613
theorem checked614 : checkPair O U c607 c604 4 cert614 = true := by
  apply checkPair_split_literal O U c607 c604 c608 c609 c610 27 3 cert608 cert613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked608
  · exact checked613
#print axioms checked614
def cert615 : PairCertificate (Fin 120) := .split 22 cert607 cert614
theorem checked615 : checkPair O U c603 c604 4 cert615 = true := by
  apply checkPair_split_literal O U c603 c604 c605 c606 c607 22 3 cert607 cert614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked607
  · exact checked614
#print axioms checked615
def colors616 (v : Fin 120) : Nat := if (154819243366019578682671106 : Nat).testBit v.val then 0 else if (83076749741392945334946457966346240 : Nat).testBit v.val then 1 else 0
def cert616 : CliqueCertificate (Fin 120) := .color 2 colors616
theorem checked616 : checkClique O c627 4 cert616 = true := by
  decide +kernel
#print axioms checked616
def colors617 (v : Fin 120) : Nat := if (2475880078570760620665733120 : Nat).testBit v.val then 0 else 0
def cert617 : CliqueCertificate (Fin 120) := .color 1 colors617
theorem checked617 : checkClique O c629 4 cert617 = true := by
  decide +kernel
#print axioms checked617
def colors618 (v : Fin 120) : Nat := if (1208925819615247649997312 : Nat).testBit v.val then 0 else 0
def cert618 : CliqueCertificate (Fin 120) := .color 1 colors618
theorem checked618 : checkClique O c631 4 cert618 = true := by
  decide +kernel
#print axioms checked618
def colors619 (v : Fin 120) : Nat := if (83076749736557242056489178218102784 : Nat).testBit v.val then 0 else if (9444732965739290427392 : Nat).testBit v.val then 1 else 0
def cert619 : CliqueCertificate (Fin 120) := .color 2 colors619
theorem checked619 : checkClique O c633 4 cert619 = true := by
  decide +kernel
#print axioms checked619
def colors620 (v : Fin 120) : Nat := if (1374397923328 : Nat).testBit v.val then 0 else if (2417851639229258349412352 : Nat).testBit v.val then 1 else 0
def cert620 : CliqueCertificate (Fin 120) := .color 2 colors620
theorem checked620 : checkClique O c635 4 cert620 = true := by
  decide +kernel
#print axioms checked620
def colors621 (v : Fin 120) : Nat := if (83076749736558422648110033076764672 : Nat).testBit v.val then 0 else if (5192296858534827628530496329220096 : Nat).testBit v.val then 1 else 0
def cert621 : CliqueCertificate (Fin 120) := .color 2 colors621
theorem checked621 : checkClique O c637 4 cert621 = true := by
  decide +kernel
#print axioms checked621
def colors622 (v : Fin 120) : Nat := if (2535456018519233201992120926208 : Nat).testBit v.val then 0 else 0
def cert622 : CliqueCertificate (Fin 120) := .color 1 colors622
theorem checked622 : checkClique O c639 4 cert622 = true := by
  decide +kernel
#print axioms checked622
def colors623 (v : Fin 120) : Nat := if (5192297013352895014615100881371136 : Nat).testBit v.val then 0 else if (83076749736557242056487941267521536 : Nat).testBit v.val then 1 else 0
def cert623 : CliqueCertificate (Fin 120) := .color 2 colors623
theorem checked623 : checkClique O c641 4 cert623 = true := by
  decide +kernel
#print axioms checked623
def cert624 : CliqueCertificate (Fin 120) := .size
theorem checked624 : checkClique O c643 4 cert624 = true := by
  decide +kernel
#print axioms checked624
def colors625 (v : Fin 120) : Nat := if (9680851289882914694627328 : Nat).testBit v.val then 0 else if (2535301200456458802993406410752 : Nat).testBit v.val then 1 else 0
def cert625 : CliqueCertificate (Fin 120) := .color 2 colors625
theorem checked625 : checkClique O c645 4 cert625 = true := by
  decide +kernel
#print axioms checked625
def colors626 (v : Fin 120) : Nat := if (1208925819615730842206208 : Nat).testBit v.val then 0 else 0
def cert626 : CliqueCertificate (Fin 120) := .color 1 colors626
theorem checked626 : checkClique O c647 4 cert626 = true := by
  decide +kernel
#print axioms checked626
def cert627 : CliqueCertificate (Fin 120) := .size
theorem checked627 : checkClique O c649 4 cert627 = true := by
  decide +kernel
#print axioms checked627
def cert628 : CliqueCertificate (Fin 120) := .size
theorem checked628 : checkClique O c651 4 cert628 = true := by
  decide +kernel
#print axioms checked628
def colors629 (v : Fin 120) : Nat := if (86256975289215619170304 : Nat).testBit v.val then 0 else if (5192296858534827628530496329220096 : Nat).testBit v.val then 1 else 0
def cert629 : CliqueCertificate (Fin 120) := .color 2 colors629
theorem checked629 : checkClique O c653 4 cert629 = true := by
  decide +kernel
#print axioms checked629
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
