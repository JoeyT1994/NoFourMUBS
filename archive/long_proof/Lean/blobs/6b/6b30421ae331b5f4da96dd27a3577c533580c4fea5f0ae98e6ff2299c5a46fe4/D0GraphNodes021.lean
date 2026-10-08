import D0GraphStates
import D0GraphNodes020
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert630 : CliqueCertificate (Fin 120) := .size
theorem checked630 : checkClique O c655 4 cert630 = true := by
  decide +kernel
#print axioms checked630
def cert631 : CliqueCertificate (Fin 120) := .size
theorem checked631 : checkClique O c657 4 cert631 = true := by
  decide +kernel
#print axioms checked631
def cert632 : CliqueCertificate (Fin 120) := .size
theorem checked632 : checkClique O c659 4 cert632 = true := by
  decide +kernel
#print axioms checked632
def colors633 (v : Fin 120) : Nat := if (2478297930209989808147660800 : Nat).testBit v.val then 0 else if (22817710804108129226940657696768 : Nat).testBit v.val then 1 else 0
def cert633 : CliqueCertificate (Fin 120) := .color 2 colors633
theorem checked633 : checkClique O c661 4 cert633 = true := by
  decide +kernel
#print axioms checked633
def colors634 (v : Fin 120) : Nat := if (38685630839355251529613312 : Nat).testBit v.val then 0 else if (83076749736557242056487941267521536 : Nat).testBit v.val then 1 else 0
def cert634 : CliqueCertificate (Fin 120) := .color 2 colors634
theorem checked634 : checkClique O c663 4 cert634 = true := by
  decide +kernel
#print axioms checked634
def colors635 (v : Fin 120) : Nat := if (2535340114015267933000155791360 : Nat).testBit v.val then 0 else if (83076749754700574083673118178541568 : Nat).testBit v.val then 1 else if (20285040226235151857031411924992 : Nat).testBit v.val then 2 else if (5192296858534827628530496329220096 : Nat).testBit v.val then 3 else 0
def cert635 : CliqueCertificate (Fin 120) := .color 4 colors635
theorem checked635 : checkClique O c664 5 cert635 = true := by
  decide +kernel
#print axioms checked635
def cert636 : CliqueCertificate (Fin 120) := .split 39 cert634 cert635
theorem checked636 : checkClique O c662 5 cert636 = true := by
  apply checkClique_split_literal O c662 c663 c664 39 4 cert634 cert635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked634
  · exact checked635
#print axioms checked636
def cert637 : CliqueCertificate (Fin 120) := .split 38 cert633 cert636
theorem checked637 : checkClique O c660 5 cert637 = true := by
  apply checkClique_split_literal O c660 c661 c662 38 4 cert633 cert636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked633
  · exact checked636
#print axioms checked637
def cert638 : CliqueCertificate (Fin 120) := .split 37 cert632 cert637
theorem checked638 : checkClique O c658 5 cert638 = true := by
  apply checkClique_split_literal O c658 c659 c660 37 4 cert632 cert637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked632
  · exact checked637
#print axioms checked638
def cert639 : CliqueCertificate (Fin 120) := .split 36 cert631 cert638
theorem checked639 : checkClique O c656 5 cert639 = true := by
  apply checkClique_split_literal O c656 c657 c658 36 4 cert631 cert638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked631
  · exact checked638
#print axioms checked639
def cert640 : CliqueCertificate (Fin 120) := .split 32 cert630 cert639
theorem checked640 : checkClique O c654 5 cert640 = true := by
  apply checkClique_split_literal O c654 c655 c656 32 4 cert630 cert639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked630
  · exact checked639
#print axioms checked640
def cert641 : CliqueCertificate (Fin 120) := .split 31 cert629 cert640
theorem checked641 : checkClique O c652 5 cert641 = true := by
  apply checkClique_split_literal O c652 c653 c654 31 4 cert629 cert640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked629
  · exact checked640
#print axioms checked641
def cert642 : CliqueCertificate (Fin 120) := .split 28 cert628 cert641
theorem checked642 : checkClique O c650 5 cert642 = true := by
  apply checkClique_split_literal O c650 c651 c652 28 4 cert628 cert641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked628
  · exact checked641
#print axioms checked642
def cert643 : CliqueCertificate (Fin 120) := .split 23 cert627 cert642
theorem checked643 : checkClique O c648 5 cert643 = true := by
  apply checkClique_split_literal O c648 c649 c650 23 4 cert627 cert642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked627
  · exact checked642
#print axioms checked643
def cert644 : CliqueCertificate (Fin 120) := .split 22 cert626 cert643
theorem checked644 : checkClique O c646 5 cert644 = true := by
  apply checkClique_split_literal O c646 c647 c648 22 4 cert626 cert643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked626
  · exact checked643
#print axioms checked644
def cert645 : CliqueCertificate (Fin 120) := .split 19 cert625 cert644
theorem checked645 : checkClique O c644 5 cert645 = true := by
  apply checkClique_split_literal O c644 c645 c646 19 4 cert625 cert644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked625
  · exact checked644
#print axioms checked645
def cert646 : CliqueCertificate (Fin 120) := .split 18 cert624 cert645
theorem checked646 : checkClique O c642 5 cert646 = true := by
  apply checkClique_split_literal O c642 c643 c644 18 4 cert624 cert645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked624
  · exact checked645
#print axioms checked646
def cert647 : CliqueCertificate (Fin 120) := .split 16 cert623 cert646
theorem checked647 : checkClique O c640 5 cert647 = true := by
  apply checkClique_split_literal O c640 c641 c642 16 4 cert623 cert646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked623
  · exact checked646
#print axioms checked647
def cert648 : CliqueCertificate (Fin 120) := .split 14 cert622 cert647
theorem checked648 : checkClique O c638 5 cert648 = true := by
  apply checkClique_split_literal O c638 c639 c640 14 4 cert622 cert647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked622
  · exact checked647
#print axioms checked648
def cert649 : CliqueCertificate (Fin 120) := .split 9 cert621 cert648
theorem checked649 : checkClique O c636 5 cert649 = true := by
  apply checkClique_split_literal O c636 c637 c638 9 4 cert621 cert648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked621
  · exact checked648
#print axioms checked649
def cert650 : CliqueCertificate (Fin 120) := .split 7 cert620 cert649
theorem checked650 : checkClique O c634 5 cert650 = true := by
  apply checkClique_split_literal O c634 c635 c636 7 4 cert620 cert649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked620
  · exact checked649
#print axioms checked650
def cert651 : CliqueCertificate (Fin 120) := .split 6 cert619 cert650
theorem checked651 : checkClique O c632 5 cert651 = true := by
  apply checkClique_split_literal O c632 c633 c634 6 4 cert619 cert650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked619
  · exact checked650
#print axioms checked651
def cert652 : CliqueCertificate (Fin 120) := .split 2 cert618 cert651
theorem checked652 : checkClique O c630 5 cert652 = true := by
  apply checkClique_split_literal O c630 c631 c632 2 4 cert618 cert651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked618
  · exact checked651
#print axioms checked652
def cert653 : CliqueCertificate (Fin 120) := .split 1 cert617 cert652
theorem checked653 : checkClique O c628 5 cert653 = true := by
  apply checkClique_split_literal O c628 c629 c630 1 4 cert617 cert652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked617
  · exact checked652
#print axioms checked653
def cert654 : CliqueCertificate (Fin 120) := .split 0 cert616 cert653
theorem checked654 : checkClique O c626 5 cert654 = true := by
  apply checkClique_split_literal O c626 c627 c628 0 4 cert616 cert653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked616
  · exact checked653
#print axioms checked654
def cert655 : PairCertificate (Fin 120) := .cross cert654
theorem checked655 : checkPair O U c625 c626 0 cert655 = true := by
  exact checked654
#print axioms checked655
def colors656 (v : Fin 120) : Nat := if (83076749736632799929291835906981890 : Nat).testBit v.val then 0 else if (154742504910672534362390528 : Nat).testBit v.val then 1 else 0
def cert656 : CliqueCertificate (Fin 120) := .color 2 colors656
theorem checked656 : checkClique O c666 4 cert656 = true := by
  decide +kernel
#print axioms checked656
def colors657 (v : Fin 120) : Nat := if (973555660975298627093628744892416 : Nat).testBit v.val then 0 else 0
def cert657 : CliqueCertificate (Fin 120) := .color 1 colors657
theorem checked657 : checkClique O c668 4 cert657 = true := by
  decide +kernel
#print axioms checked657
def colors658 (v : Fin 120) : Nat := if (22817710955223856679327654477952 : Nat).testBit v.val then 0 else 0
def cert658 : CliqueCertificate (Fin 120) := .color 1 colors658
theorem checked658 : checkClique O c670 4 cert658 = true := by
  decide +kernel
#print axioms checked658
def colors659 (v : Fin 120) : Nat := if (5212579268138479298955063129538624 : Nat).testBit v.val then 0 else if (9671406556917033397649408 : Nat).testBit v.val then 1 else 0
def cert659 : CliqueCertificate (Fin 120) := .color 2 colors659
theorem checked659 : checkClique O c672 4 cert659 = true := by
  decide +kernel
#print axioms checked659
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
