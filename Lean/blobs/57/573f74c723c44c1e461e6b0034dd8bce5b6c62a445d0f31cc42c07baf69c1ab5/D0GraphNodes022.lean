import D0GraphStates
import D0GraphNodes021
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors660 (v : Fin 120) : Nat := if (324518563405391147497048016027840 : Nat).testBit v.val then 0 else if (83076749736710718976189848183373824 : Nat).testBit v.val then 1 else if (649037110953094094371949817888768 : Nat).testBit v.val then 2 else if (5215114724081440668429971349307392 : Nat).testBit v.val then 3 else 0
def cert660 : CliqueCertificate (Fin 120) := .color 4 colors660
theorem checked660 : checkClique O c673 5 cert660 = true := by
  decide +kernel
#print axioms checked660
def cert661 : CliqueCertificate (Fin 120) := .split 5 cert659 cert660
theorem checked661 : checkClique O c671 5 cert661 = true := by
  apply checkClique_split_literal O c671 c672 c673 5 4 cert659 cert660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked659
  · exact checked660
#print axioms checked661
def cert662 : CliqueCertificate (Fin 120) := .split 4 cert658 cert661
theorem checked662 : checkClique O c669 5 cert662 = true := by
  apply checkClique_split_literal O c669 c670 c671 4 4 cert658 cert661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked658
  · exact checked661
#print axioms checked662
def cert663 : CliqueCertificate (Fin 120) := .split 1 cert657 cert662
theorem checked663 : checkClique O c667 5 cert663 = true := by
  apply checkClique_split_literal O c667 c668 c669 1 4 cert657 cert662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked657
  · exact checked662
#print axioms checked663
def cert664 : CliqueCertificate (Fin 120) := .split 0 cert656 cert663
theorem checked664 : checkClique O c665 5 cert664 = true := by
  apply checkClique_split_literal O c665 c666 c667 0 4 cert656 cert663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked656
  · exact checked663
#print axioms checked664
def cert665 : PairCertificate (Fin 120) := .cross cert664
theorem checked665 : checkPair O U c6 c665 0 cert665 = true := by
  exact checked664
#print axioms checked665
def cert666 : PairCertificate (Fin 120) := .first .size
theorem checked666 : checkPair O U c6 c624 1 cert666 = true := by
  decide +kernel
#print axioms checked666
def cert667 : PairCertificate (Fin 120) := .split 68 cert665 cert666
theorem checked667 : checkPair O U c625 c624 1 cert667 = true := by
  apply checkPair_split_literal O U c625 c624 c6 c665 c6 68 0 cert665 cert666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked665
  · exact checked666
#print axioms checked667
def cert668 : PairCertificate (Fin 120) := .split 67 cert655 cert667
theorem checked668 : checkPair O U c623 c624 1 cert668 = true := by
  apply checkPair_split_literal O U c623 c624 c625 c626 c625 67 0 cert655 cert667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked655
  · exact checked667
#print axioms checked668
def colors669 (v : Fin 120) : Nat := if (154818099667887008422035458 : Nat).testBit v.val then 0 else if (83076749736557242056487941267521536 : Nat).testBit v.val then 1 else 0
def cert669 : CliqueCertificate (Fin 120) := .color 2 colors669
theorem checked669 : checkClique O c676 4 cert669 = true := by
  decide +kernel
#print axioms checked669
def colors670 (v : Fin 120) : Nat := if (68720009472 : Nat).testBit v.val then 0 else 0
def cert670 : CliqueCertificate (Fin 120) := .color 1 colors670
theorem checked670 : checkClique O c678 4 cert670 = true := by
  decide +kernel
#print axioms checked670
def colors671 (v : Fin 120) : Nat := if (79537648114381494257924964352 : Nat).testBit v.val then 0 else if (83076749736566686789453680557948928 : Nat).testBit v.val then 1 else 0
def cert671 : CliqueCertificate (Fin 120) := .color 2 colors671
theorem checked671 : checkClique O c680 4 cert671 = true := by
  decide +kernel
#print axioms checked671
def colors672 (v : Fin 120) : Nat := if (79228162514264356560127918080 : Nat).testBit v.val then 0 else if (2417851639229258349412352 : Nat).testBit v.val then 1 else 0
def cert672 : CliqueCertificate (Fin 120) := .color 2 colors672
theorem checked672 : checkClique O c682 4 cert672 = true := by
  decide +kernel
#print axioms checked672
def colors673 (v : Fin 120) : Nat := if (79382980577038753771855020032 : Nat).testBit v.val then 0 else if (83076749736557242056487941267521536 : Nat).testBit v.val then 1 else 0
def cert673 : CliqueCertificate (Fin 120) := .color 2 colors673
theorem checked673 : checkClique O c684 4 cert673 = true := by
  decide +kernel
#print axioms checked673
def colors674 (v : Fin 120) : Nat := if (83097032146160893726929480713764864 : Nat).testBit v.val then 0 else 0
def cert674 : CliqueCertificate (Fin 120) := .color 1 colors674
theorem checked674 : checkClique O c686 4 cert674 = true := by
  decide +kernel
#print axioms checked674
def colors675 (v : Fin 120) : Nat := if (83076749736566686789453680696623104 : Nat).testBit v.val then 0 else if (5192296858534827628530496329220096 : Nat).testBit v.val then 1 else 0
def cert675 : CliqueCertificate (Fin 120) := .color 2 colors675
theorem checked675 : checkClique O c688 4 cert675 = true := by
  decide +kernel
#print axioms checked675
def colors676 (v : Fin 120) : Nat := if (37779221219301940264960 : Nat).testBit v.val then 0 else 0
def cert676 : CliqueCertificate (Fin 120) := .color 1 colors676
theorem checked676 : checkClique O c690 4 cert676 = true := by
  decide +kernel
#print axioms checked676
def colors677 (v : Fin 120) : Nat := if (9680851289882910265442304 : Nat).testBit v.val then 0 else if (2535301200456458802993406410752 : Nat).testBit v.val then 1 else 0
def cert677 : CliqueCertificate (Fin 120) := .color 2 colors677
theorem checked677 : checkClique O c692 4 cert677 = true := by
  decide +kernel
#print axioms checked677
def colors678 (v : Fin 120) : Nat := if (236155505862899323109376 : Nat).testBit v.val then 0 else if (79547357309093663877533532160 : Nat).testBit v.val then 1 else if (158369282370642321793351680 : Nat).testBit v.val then 2 else if (88291864305896177814245378254438400 : Nat).testBit v.val then 3 else 0
def cert678 : CliqueCertificate (Fin 120) := .color 4 colors678
theorem checked678 : checkClique O c693 5 cert678 = true := by
  decide +kernel
#print axioms checked678
def cert679 : CliqueCertificate (Fin 120) := .split 19 cert677 cert678
theorem checked679 : checkClique O c691 5 cert679 = true := by
  apply checkClique_split_literal O c691 c692 c693 19 4 cert677 cert678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked677
  · exact checked678
#print axioms checked679
def cert680 : CliqueCertificate (Fin 120) := .split 18 cert676 cert679
theorem checked680 : checkClique O c689 5 cert680 = true := by
  apply checkClique_split_literal O c689 c690 c691 18 4 cert676 cert679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked676
  · exact checked679
#print axioms checked680
def cert681 : CliqueCertificate (Fin 120) := .split 13 cert675 cert680
theorem checked681 : checkClique O c687 5 cert681 = true := by
  apply checkClique_split_literal O c687 c688 c689 13 4 cert675 cert680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked675
  · exact checked680
#print axioms checked681
def cert682 : CliqueCertificate (Fin 120) := .split 12 cert674 cert681
theorem checked682 : checkClique O c685 5 cert682 = true := by
  apply checkClique_split_literal O c685 c686 c687 12 4 cert674 cert681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked674
  · exact checked681
#print axioms checked682
def cert683 : CliqueCertificate (Fin 120) := .split 8 cert673 cert682
theorem checked683 : checkClique O c683 5 cert683 = true := by
  apply checkClique_split_literal O c683 c684 c685 8 4 cert673 cert682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked673
  · exact checked682
#print axioms checked683
def cert684 : CliqueCertificate (Fin 120) := .split 7 cert672 cert683
theorem checked684 : checkClique O c681 5 cert684 = true := by
  apply checkClique_split_literal O c681 c682 c683 7 4 cert672 cert683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked672
  · exact checked683
#print axioms checked684
def cert685 : CliqueCertificate (Fin 120) := .split 6 cert671 cert684
theorem checked685 : checkClique O c679 5 cert685 = true := by
  apply checkClique_split_literal O c679 c680 c681 6 4 cert671 cert684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked671
  · exact checked684
#print axioms checked685
def cert686 : CliqueCertificate (Fin 120) := .split 1 cert670 cert685
theorem checked686 : checkClique O c677 5 cert686 = true := by
  apply checkClique_split_literal O c677 c678 c679 1 4 cert670 cert685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked670
  · exact checked685
#print axioms checked686
def cert687 : CliqueCertificate (Fin 120) := .split 0 cert669 cert686
theorem checked687 : checkClique O c675 5 cert687 = true := by
  apply checkClique_split_literal O c675 c676 c677 0 4 cert669 cert686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked669
  · exact checked686
#print axioms checked687
def cert688 : PairCertificate (Fin 120) := .cross cert687
theorem checked688 : checkPair O U c6 c675 0 cert688 = true := by
  exact checked687
#print axioms checked688
def cert689 : PairCertificate (Fin 120) := .first .size
theorem checked689 : checkPair O U c6 c674 1 cert689 = true := by
  decide +kernel
#print axioms checked689
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
