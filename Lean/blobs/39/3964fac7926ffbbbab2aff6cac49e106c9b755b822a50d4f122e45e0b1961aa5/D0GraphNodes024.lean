import D0GraphStates
import D0GraphNodes023
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert720 : PairCertificate (Fin 120) := .split 67 cert718 cert719
theorem checked720 : checkPair O U c623 c714 2 cert720 = true := by
  apply checkPair_split_literal O U c623 c714 c625 c715 c625 67 1 cert718 cert719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked718
  · exact checked719
#print axioms checked720
def colors721 (v : Fin 120) : Nat := if (147573952589676412928 : Nat).testBit v.val then 0 else if (316913254815115062868115980288 : Nat).testBit v.val then 1 else 0
def cert721 : PairCertificate (Fin 120) := .first (.color 2 colors721)
theorem checked721 : checkPair O U c719 c713 3 cert721 = true := by
  decide +kernel
#print axioms checked721
def cert722 : PairCertificate (Fin 120) := .split 49 cert720 cert721
theorem checked722 : checkPair O U c712 c713 3 cert722 = true := by
  apply checkPair_split_literal O U c712 c713 c623 c714 c719 49 2 cert720 cert721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked720
  · exact checked721
#print axioms checked722
def colors723 (v : Fin 120) : Nat := if (5388134625527503943359442976768 : Nat).testBit v.val then 0 else if (64903710751028306044417860586962944 : Nat).testBit v.val then 1 else if (664613997892458231599808709492998144 : Nat).testBit v.val then 2 else 0
def cert723 : PairCertificate (Fin 120) := .first (.color 3 colors723)
theorem checked723 : checkPair O U c720 c618 4 cert723 = true := by
  decide +kernel
#print axioms checked723
def cert724 : PairCertificate (Fin 120) := .split 48 cert722 cert723
theorem checked724 : checkPair O U c711 c618 4 cert724 = true := by
  apply checkPair_split_literal O U c711 c618 c712 c713 c720 48 3 cert722 cert723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked722
  · exact checked723
#print axioms checked724
def cert725 : PairCertificate (Fin 120) := .split 42 cert712 cert724
theorem checked725 : checkPair O U c708 c618 4 cert725 = true := by
  apply checkPair_split_literal O U c708 c618 c709 c710 c711 42 3 cert712 cert724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked712
  · exact checked724
#print axioms checked725
def cert726 : PairCertificate (Fin 120) := .split 35 cert711 cert725
theorem checked726 : checkPair O U c705 c618 4 cert726 = true := by
  apply checkPair_split_literal O U c705 c618 c706 c707 c708 35 3 cert711 cert725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked711
  · exact checked725
#print axioms checked726
def cert727 : PairCertificate (Fin 120) := .split 21 cert710 cert726
theorem checked727 : checkPair O U c617 c618 4 cert727 = true := by
  apply checkPair_split_literal O U c617 c618 c619 c620 c705 21 3 cert710 cert726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked710
  · exact checked726
#print axioms checked727
def colors728 (v : Fin 120) : Nat := if (1237940039375452267446534144 : Nat).testBit v.val then 0 else if (1298074214633709789436385599422464 : Nat).testBit v.val then 1 else 0
def cert728 : PairCertificate (Fin 120) := .first (.color 2 colors728)
theorem checked728 : checkPair O U c724 c725 3 cert728 = true := by
  decide +kernel
#print axioms checked728
def colors729 (v : Fin 120) : Nat := if (5217650489660528775653316591354049 : Nat).testBit v.val then 0 else if (83076749823684903665433307781529602 : Nat).testBit v.val then 1 else if (3626777458844987044134912 : Nat).testBit v.val then 2 else if (23367871319349685697862761250291712 : Nat).testBit v.val then 3 else 0
def cert729 : CliqueCertificate (Fin 120) := .color 4 colors729
theorem checked729 : checkClique O c731 5 cert729 = true := by
  decide +kernel
#print axioms checked729
def cert730 : PairCertificate (Fin 120) := .cross cert729
theorem checked730 : checkPair O U c6 c731 0 cert730 = true := by
  exact checked729
#print axioms checked730
def cert731 : PairCertificate (Fin 120) := .first .size
theorem checked731 : checkPair O U c6 c730 1 cert731 = true := by
  decide +kernel
#print axioms checked731
def cert732 : PairCertificate (Fin 120) := .split 68 cert730 cert731
theorem checked732 : checkPair O U c625 c730 1 cert732 = true := by
  apply checkPair_split_literal O U c625 c730 c6 c731 c6 68 0 cert730 cert731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked730
  · exact checked731
#print axioms checked732
def cert733 : PairCertificate (Fin 120) := .first .size
theorem checked733 : checkPair O U c625 c729 2 cert733 = true := by
  decide +kernel
#print axioms checked733
def cert734 : PairCertificate (Fin 120) := .split 67 cert732 cert733
theorem checked734 : checkPair O U c623 c729 2 cert734 = true := by
  apply checkPair_split_literal O U c623 c729 c625 c730 c625 67 1 cert732 cert733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked732
  · exact checked733
#print axioms checked734
def colors735 (v : Fin 120) : Nat := if (166315758749943992696330233936084992 : Nat).testBit v.val then 0 else if (147573952589676412928 : Nat).testBit v.val then 1 else 0
def cert735 : PairCertificate (Fin 120) := .first (.color 2 colors735)
theorem checked735 : checkPair O U c732 c728 3 cert735 = true := by
  decide +kernel
#print axioms checked735
def cert736 : PairCertificate (Fin 120) := .split 49 cert734 cert735
theorem checked736 : checkPair O U c727 c728 3 cert736 = true := by
  apply checkPair_split_literal O U c727 c728 c623 c729 c732 49 2 cert734 cert735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked734
  · exact checked735
#print axioms checked736
def colors737 (v : Fin 120) : Nat := if (1307264681633511983635455016960 : Nat).testBit v.val then 0 else if (295147905179352825856 : Nat).testBit v.val then 1 else 0
def cert737 : PairCertificate (Fin 120) := .first (.color 2 colors737)
theorem checked737 : checkPair O U c734 c735 3 cert737 = true := by
  decide +kernel
#print axioms checked737
def colors738 (v : Fin 120) : Nat := if (10141204801828141054982839336960 : Nat).testBit v.val then 0 else if (40564819207303340847894502572032 : Nat).testBit v.val then 1 else 0
def cert738 : PairCertificate (Fin 120) := .first (.color 2 colors738)
theorem checked738 : checkPair O U c737 c738 3 cert738 = true := by
  decide +kernel
#print axioms checked738
def colors739 (v : Fin 120) : Nat := if (39614081405282582138751811584 : Nat).testBit v.val then 0 else 0
def cert739 : PairCertificate (Fin 120) := .first (.color 1 colors739)
theorem checked739 : checkPair O U c740 c741 3 cert739 = true := by
  decide +kernel
#print axioms checked739
def colors740 (v : Fin 120) : Nat := if (11449707423500938418893193478144 : Nat).testBit v.val then 0 else if (40574722727912771795273048391680 : Nat).testBit v.val then 1 else if (177998426681647059640561077286076416 : Nat).testBit v.val then 2 else 0
def cert740 : PairCertificate (Fin 120) := .first (.color 3 colors740)
theorem checked740 : checkPair O U c742 c723 4 cert740 = true := by
  decide +kernel
#print axioms checked740
def cert741 : PairCertificate (Fin 120) := .split 56 cert739 cert740
theorem checked741 : checkPair O U c739 c723 4 cert741 = true := by
  apply checkPair_split_literal O U c739 c723 c740 c741 c742 56 3 cert739 cert740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked739
  · exact checked740
#print axioms checked741
def cert742 : PairCertificate (Fin 120) := .split 54 cert738 cert741
theorem checked742 : checkPair O U c736 c723 4 cert742 = true := by
  apply checkPair_split_literal O U c736 c723 c737 c738 c739 54 3 cert738 cert741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked738
  · exact checked741
#print axioms checked742
def cert743 : PairCertificate (Fin 120) := .split 49 cert737 cert742
theorem checked743 : checkPair O U c733 c723 4 cert743 = true := by
  apply checkPair_split_literal O U c733 c723 c734 c735 c736 49 3 cert737 cert742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked737
  · exact checked742
#print axioms checked743
def cert744 : PairCertificate (Fin 120) := .split 48 cert736 cert743
theorem checked744 : checkPair O U c726 c723 4 cert744 = true := by
  apply checkPair_split_literal O U c726 c723 c727 c728 c733 48 3 cert736 cert743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked736
  · exact checked743
#print axioms checked744
def cert745 : PairCertificate (Fin 120) := .split 25 cert728 cert744
theorem checked745 : checkPair O U c722 c723 4 cert745 = true := by
  apply checkPair_split_literal O U c722 c723 c724 c725 c726 25 3 cert728 cert744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked728
  · exact checked744
#print axioms checked745
def colors746 (v : Fin 120) : Nat := if (1227815357604805138710528 : Nat).testBit v.val then 0 else if (4951760157735996250409402368 : Nat).testBit v.val then 1 else if (81763463714723102239546570440704 : Nat).testBit v.val then 2 else 0
def cert746 : PairCertificate (Fin 120) := .first (.color 3 colors746)
theorem checked746 : checkPair O U c744 c745 4 cert746 = true := by
  decide +kernel
#print axioms checked746
def colors747 (v : Fin 120) : Nat := if (20769187434139310658237173392736256 : Nat).testBit v.val then 0 else if (36893488147419103232 : Nat).testBit v.val then 1 else 0
def cert747 : PairCertificate (Fin 120) := .first (.color 2 colors747)
theorem checked747 : checkPair O U c749 c750 3 cert747 = true := by
  decide +kernel
#print axioms checked747
def colors748 (v : Fin 120) : Nat := if (20769504346794090084322775373185024 : Nat).testBit v.val then 0 else if (41543445548126381446630662522011648 : Nat).testBit v.val then 1 else 0
def cert748 : PairCertificate (Fin 120) := .first (.color 2 colors748)
theorem checked748 : checkPair O U c751 c748 4 cert748 = true := by
  decide +kernel
#print axioms checked748
def cert749 : PairCertificate (Fin 120) := .split 28 cert747 cert748
theorem checked749 : checkPair O U c747 c748 4 cert749 = true := by
  apply checkPair_split_literal O U c747 c748 c749 c750 c751 28 3 cert747 cert748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked747
  · exact checked748
#print axioms checked749
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
