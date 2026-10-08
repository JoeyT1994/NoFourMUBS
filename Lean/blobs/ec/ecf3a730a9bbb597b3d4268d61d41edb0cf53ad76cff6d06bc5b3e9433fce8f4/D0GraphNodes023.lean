import D0GraphStates
import D0GraphNodes022
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert690 : PairCertificate (Fin 120) := .split 68 cert688 cert689
theorem checked690 : checkPair O U c625 c674 1 cert690 = true := by
  apply checkPair_split_literal O U c625 c674 c6 c675 c6 68 0 cert688 cert689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked688
  · exact checked689
#print axioms checked690
def cert691 : PairCertificate (Fin 120) := .first .size
theorem checked691 : checkPair O U c625 c622 2 cert691 = true := by
  decide +kernel
#print axioms checked691
def cert692 : PairCertificate (Fin 120) := .split 67 cert690 cert691
theorem checked692 : checkPair O U c623 c622 2 cert692 = true := by
  apply checkPair_split_literal O U c623 c622 c625 c674 c625 67 1 cert690 cert691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked690
  · exact checked691
#print axioms checked692
def cert693 : PairCertificate (Fin 120) := .split 49 cert668 cert692
theorem checked693 : checkPair O U c621 c622 2 cert693 = true := by
  apply checkPair_split_literal O U c621 c622 c623 c624 c623 49 1 cert668 cert692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked668
  · exact checked692
#print axioms checked693
def colors694 (v : Fin 120) : Nat := if (154818062774434045375023106 : Nat).testBit v.val then 0 else if (83076749736557242056487941267521536 : Nat).testBit v.val then 1 else 0
def cert694 : CliqueCertificate (Fin 120) := .color 2 colors694
theorem checked694 : checkClique O c697 4 cert694 = true := by
  decide +kernel
#print axioms checked694
def colors695 (v : Fin 120) : Nat := if (2267810365440 : Nat).testBit v.val then 0 else 0
def cert695 : CliqueCertificate (Fin 120) := .color 1 colors695
theorem checked695 : checkClique O c699 4 cert695 = true := by
  decide +kernel
#print axioms checked695
def colors696 (v : Fin 120) : Nat := if (177158811058176 : Nat).testBit v.val then 0 else if (83076749736566686789453680557948928 : Nat).testBit v.val then 1 else 0
def cert696 : CliqueCertificate (Fin 120) := .color 2 colors696
theorem checked696 : checkClique O c701 4 cert696 = true := by
  decide +kernel
#print axioms checked696
def colors697 (v : Fin 120) : Nat := if (302231459408356977935360 : Nat).testBit v.val then 0 else if (274877906944 : Nat).testBit v.val then 1 else if (2417851639229258349412352 : Nat).testBit v.val then 2 else 0
def cert697 : CliqueCertificate (Fin 120) := .color 3 colors697
theorem checked697 : checkClique O c703 4 cert697 = true := by
  decide +kernel
#print axioms checked697
def colors698 (v : Fin 120) : Nat := if (4951849882104696481849314304 : Nat).testBit v.val then 0 else if (20282411114808945086339075276800 : Nat).testBit v.val then 1 else if (5194832314628904729996774187466752 : Nat).testBit v.val then 2 else if (83076749748646500252634233014583296 : Nat).testBit v.val then 3 else 0
def cert698 : CliqueCertificate (Fin 120) := .color 4 colors698
theorem checked698 : checkClique O c704 5 cert698 = true := by
  decide +kernel
#print axioms checked698
def cert699 : CliqueCertificate (Fin 120) := .split 7 cert697 cert698
theorem checked699 : checkClique O c702 5 cert699 = true := by
  apply checkClique_split_literal O c702 c703 c704 7 4 cert697 cert698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked697
  · exact checked698
#print axioms checked699
def cert700 : CliqueCertificate (Fin 120) := .split 6 cert696 cert699
theorem checked700 : checkClique O c700 5 cert700 = true := by
  apply checkClique_split_literal O c700 c701 c702 6 4 cert696 cert699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked696
  · exact checked699
#print axioms checked700
def cert701 : CliqueCertificate (Fin 120) := .split 1 cert695 cert700
theorem checked701 : checkClique O c698 5 cert701 = true := by
  apply checkClique_split_literal O c698 c699 c700 1 4 cert695 cert700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked695
  · exact checked700
#print axioms checked701
def cert702 : CliqueCertificate (Fin 120) := .split 0 cert694 cert701
theorem checked702 : checkClique O c696 5 cert702 = true := by
  apply checkClique_split_literal O c696 c697 c698 0 4 cert694 cert701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked694
  · exact checked701
#print axioms checked702
def cert703 : PairCertificate (Fin 120) := .cross cert702
theorem checked703 : checkPair O U c6 c696 0 cert703 = true := by
  exact checked702
#print axioms checked703
def cert704 : PairCertificate (Fin 120) := .first .size
theorem checked704 : checkPair O U c6 c695 1 cert704 = true := by
  decide +kernel
#print axioms checked704
def cert705 : PairCertificate (Fin 120) := .split 68 cert703 cert704
theorem checked705 : checkPair O U c625 c695 1 cert705 = true := by
  apply checkPair_split_literal O U c625 c695 c6 c696 c6 68 0 cert703 cert704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked703
  · exact checked704
#print axioms checked705
def cert706 : PairCertificate (Fin 120) := .first .size
theorem checked706 : checkPair O U c625 c694 2 cert706 = true := by
  decide +kernel
#print axioms checked706
def cert707 : PairCertificate (Fin 120) := .split 67 cert705 cert706
theorem checked707 : checkPair O U c623 c694 2 cert707 = true := by
  apply checkPair_split_literal O U c623 c694 c625 c695 c625 67 1 cert705 cert706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked705
  · exact checked706
#print axioms checked707
def cert708 : PairCertificate (Fin 120) := .first .size
theorem checked708 : checkPair O U c623 c620 3 cert708 = true := by
  decide +kernel
#print axioms checked708
def cert709 : PairCertificate (Fin 120) := .split 49 cert707 cert708
theorem checked709 : checkPair O U c621 c620 3 cert709 = true := by
  apply checkPair_split_literal O U c621 c620 c623 c694 c623 49 2 cert707 cert708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked707
  · exact checked708
#print axioms checked709
def cert710 : PairCertificate (Fin 120) := .split 48 cert693 cert709
theorem checked710 : checkPair O U c619 c620 3 cert710 = true := by
  apply checkPair_split_literal O U c619 c620 c621 c622 c621 48 2 cert693 cert709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked693
  · exact checked709
#print axioms checked710
def cert711 : PairCertificate (Fin 120) := .first .size
theorem checked711 : checkPair O U c706 c707 3 cert711 = true := by
  decide +kernel
#print axioms checked711
def colors712 (v : Fin 120) : Nat := if (604462910370264540774400 : Nat).testBit v.val then 0 else if (295147905179352825856 : Nat).testBit v.val then 1 else 0
def cert712 : PairCertificate (Fin 120) := .first (.color 2 colors712)
theorem checked712 : checkPair O U c709 c710 3 cert712 = true := by
  decide +kernel
#print axioms checked712
def colors713 (v : Fin 120) : Nat := if (154818062774398861002932226 : Nat).testBit v.val then 0 else if (83076750974497281341868216166645760 : Nat).testBit v.val then 1 else if (10384593717069655257060992658440192 : Nat).testBit v.val then 2 else 0
def cert713 : CliqueCertificate (Fin 120) := .color 3 colors713
theorem checked713 : checkClique O c717 4 cert713 = true := by
  decide +kernel
#print axioms checked713
def colors714 (v : Fin 120) : Nat := if (5215114724308114259608264079835330 : Nat).testBit v.val then 0 else if (83076750975725096627415767040131072 : Nat).testBit v.val then 1 else if (11682667943802065111320183726669824 : Nat).testBit v.val then 2 else if (10141204801828141054982839336960 : Nat).testBit v.val then 3 else 0
def cert714 : CliqueCertificate (Fin 120) := .color 4 colors714
theorem checked714 : checkClique O c718 5 cert714 = true := by
  decide +kernel
#print axioms checked714
def cert715 : CliqueCertificate (Fin 120) := .split 0 cert713 cert714
theorem checked715 : checkClique O c716 5 cert715 = true := by
  apply checkClique_split_literal O c716 c717 c718 0 4 cert713 cert714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked713
  · exact checked714
#print axioms checked715
def cert716 : PairCertificate (Fin 120) := .cross cert715
theorem checked716 : checkPair O U c6 c716 0 cert716 = true := by
  exact checked715
#print axioms checked716
def cert717 : PairCertificate (Fin 120) := .first .size
theorem checked717 : checkPair O U c6 c715 1 cert717 = true := by
  decide +kernel
#print axioms checked717
def cert718 : PairCertificate (Fin 120) := .split 68 cert716 cert717
theorem checked718 : checkPair O U c625 c715 1 cert718 = true := by
  apply checkPair_split_literal O U c625 c715 c6 c716 c6 68 0 cert716 cert717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked716
  · exact checked717
#print axioms checked718
def cert719 : PairCertificate (Fin 120) := .first .size
theorem checked719 : checkPair O U c625 c714 2 cert719 = true := by
  decide +kernel
#print axioms checked719
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
