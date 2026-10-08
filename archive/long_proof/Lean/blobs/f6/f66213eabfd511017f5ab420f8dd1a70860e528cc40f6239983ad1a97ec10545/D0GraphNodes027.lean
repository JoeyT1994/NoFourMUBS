import D0GraphStates
import D0GraphNodes025
import D0GraphNodes026
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert810 : CliqueCertificate (Fin 120) := .split 4 cert782 cert809
theorem checked810 : checkClique O c795 5 cert810 = true := by
  apply checkClique_split_literal O c795 c796 c797 4 4 cert782 cert809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked782
  · exact checked809
#print axioms checked810
def cert811 : CliqueCertificate (Fin 120) := .split 3 cert781 cert810
theorem checked811 : checkClique O c793 5 cert811 = true := by
  apply checkClique_split_literal O c793 c794 c795 3 4 cert781 cert810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked781
  · exact checked810
#print axioms checked811
def cert812 : CliqueCertificate (Fin 120) := .split 0 cert780 cert811
theorem checked812 : checkClique O c791 5 cert812 = true := by
  apply checkClique_split_literal O c791 c792 c793 0 4 cert780 cert811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked780
  · exact checked811
#print axioms checked812
def cert813 : PairCertificate (Fin 120) := .cross cert812
theorem checked813 : checkPair O U c6 c791 0 cert813 = true := by
  exact checked812
#print axioms checked813
def cert814 : PairCertificate (Fin 120) := .first .size
theorem checked814 : checkPair O U c6 c760 1 cert814 = true := by
  decide +kernel
#print axioms checked814
def cert815 : PairCertificate (Fin 120) := .split 69 cert813 cert814
theorem checked815 : checkPair O U c761 c760 1 cert815 = true := by
  apply checkPair_split_literal O U c761 c760 c6 c791 c6 69 0 cert813 cert814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked813
  · exact checked814
#print axioms checked815
def cert816 : PairCertificate (Fin 120) := .split 66 cert779 cert815
theorem checked816 : checkPair O U c759 c760 1 cert816 = true := by
  apply checkPair_split_literal O U c759 c760 c761 c762 c761 66 0 cert779 cert815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked779
  · exact checked815
#print axioms checked816
def colors817 (v : Fin 120) : Nat := if (75557872733251285813248 : Nat).testBit v.val then 0 else if (8796093022208 : Nat).testBit v.val then 1 else if (4835703278458516698824704 : Nat).testBit v.val then 2 else 0
def cert817 : CliqueCertificate (Fin 120) := .color 3 colors817
theorem checked817 : checkClique O c826 4 cert817 = true := by
  decide +kernel
#print axioms checked817
def colors818 (v : Fin 120) : Nat := if (300304113352704 : Nat).testBit v.val then 0 else if (166153499473133373578907361115897856 : Nat).testBit v.val then 1 else 0
def cert818 : CliqueCertificate (Fin 120) := .color 2 colors818
theorem checked818 : checkClique O c828 4 cert818 = true := by
  decide +kernel
#print axioms checked818
def colors819 (v : Fin 120) : Nat := if (4952119056994228074633514000 : Nat).testBit v.val then 0 else if (324518563405391147712664366743680 : Nat).testBit v.val then 1 else if (332307632791476358373319785757278208 : Nat).testBit v.val then 2 else if (166153499479159113211049028408573952 : Nat).testBit v.val then 3 else 0
def cert819 : CliqueCertificate (Fin 120) := .color 4 colors819
theorem checked819 : checkClique O c829 5 cert819 = true := by
  decide +kernel
#print axioms checked819
def cert820 : CliqueCertificate (Fin 120) := .split 3 cert818 cert819
theorem checked820 : checkClique O c827 5 cert820 = true := by
  apply checkClique_split_literal O c827 c828 c829 3 4 cert818 cert819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked818
  · exact checked819
#print axioms checked820
def cert821 : CliqueCertificate (Fin 120) := .split 0 cert817 cert820
theorem checked821 : checkClique O c825 5 cert821 = true := by
  apply checkClique_split_literal O c825 c826 c827 0 4 cert817 cert820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked817
  · exact checked820
#print axioms checked821
def cert822 : PairCertificate (Fin 120) := .cross cert821
theorem checked822 : checkPair O U c6 c825 0 cert822 = true := by
  exact checked821
#print axioms checked822
def cert823 : PairCertificate (Fin 120) := .first .size
theorem checked823 : checkPair O U c6 c824 1 cert823 = true := by
  decide +kernel
#print axioms checked823
def cert824 : PairCertificate (Fin 120) := .split 69 cert822 cert823
theorem checked824 : checkPair O U c761 c824 1 cert824 = true := by
  apply checkPair_split_literal O U c761 c824 c6 c825 c6 69 0 cert822 cert823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked822
  · exact checked823
#print axioms checked824
def cert825 : PairCertificate (Fin 120) := .first .size
theorem checked825 : checkPair O U c761 c758 2 cert825 = true := by
  decide +kernel
#print axioms checked825
def cert826 : PairCertificate (Fin 120) := .split 66 cert824 cert825
theorem checked826 : checkPair O U c759 c758 2 cert826 = true := by
  apply checkPair_split_literal O U c759 c758 c761 c824 c761 66 1 cert824 cert825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked824
  · exact checked825
#print axioms checked826
def cert827 : PairCertificate (Fin 120) := .split 47 cert816 cert826
theorem checked827 : checkPair O U c757 c758 2 cert827 = true := by
  apply checkPair_split_literal O U c757 c758 c759 c760 c759 47 1 cert816 cert826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked816
  · exact checked826
#print axioms checked827
def colors828 (v : Fin 120) : Nat := if (1267650600228229445614607532032 : Nat).testBit v.val then 0 else if (4835703278458516698824704 : Nat).testBit v.val then 1 else 0
def cert828 : CliqueCertificate (Fin 120) := .color 2 colors828
theorem checked828 : checkClique O c833 4 cert828 = true := by
  decide +kernel
#print axioms checked828
def colors829 (v : Fin 120) : Nat := if (1307264681632935524120102174720 : Nat).testBit v.val then 0 else if (166153499473133373578907361115897856 : Nat).testBit v.val then 1 else 0
def cert829 : CliqueCertificate (Fin 120) := .color 2 colors829
theorem checked829 : checkClique O c835 4 cert829 = true := by
  decide +kernel
#print axioms checked829
def colors830 (v : Fin 120) : Nat := if (549760012928 : Nat).testBit v.val then 0 else 0
def cert830 : CliqueCertificate (Fin 120) := .color 1 colors830
theorem checked830 : checkClique O c837 4 cert830 = true := by
  decide +kernel
#print axioms checked830
def colors831 (v : Fin 120) : Nat := if (19645063015491693411565568 : Nat).testBit v.val then 0 else if (166153499473114484112975882535043072 : Nat).testBit v.val then 1 else 0
def cert831 : CliqueCertificate (Fin 120) := .color 2 colors831
theorem checked831 : checkClique O c839 4 cert831 = true := by
  decide +kernel
#print axioms checked831
def colors832 (v : Fin 120) : Nat := if (1267670245272798175504684285952 : Nat).testBit v.val then 0 else if (166153499473114484112975882535043072 : Nat).testBit v.val then 1 else 0
def cert832 : CliqueCertificate (Fin 120) := .color 2 colors832
theorem checked832 : checkClique O c841 4 cert832 = true := by
  decide +kernel
#print axioms checked832
def colors833 (v : Fin 120) : Nat := if (166153499473133373578907361191919616 : Nat).testBit v.val then 0 else if (332306998946228968225951765070086144 : Nat).testBit v.val then 1 else 0
def cert833 : CliqueCertificate (Fin 120) := .color 2 colors833
theorem checked833 : checkClique O c843 4 cert833 = true := by
  decide +kernel
#print axioms checked833
def colors834 (v : Fin 120) : Nat := if (166478018026772910839794222932164608 : Nat).testBit v.val then 0 else 0
def cert834 : CliqueCertificate (Fin 120) := .color 1 colors834
theorem checked834 : checkClique O c845 4 cert834 = true := by
  decide +kernel
#print axioms checked834
def colors835 (v : Fin 120) : Nat := if (166153499473723669391562534245629952 : Nat).testBit v.val then 0 else if (1267652130293416596503769120768 : Nat).testBit v.val then 1 else if (332632151344530326937070942740807680 : Nat).testBit v.val then 2 else if (39628588514541496936544862208 : Nat).testBit v.val then 3 else 0
def cert835 : CliqueCertificate (Fin 120) := .color 4 colors835
theorem checked835 : checkClique O c846 5 cert835 = true := by
  decide +kernel
#print axioms checked835
def cert836 : CliqueCertificate (Fin 120) := .split 13 cert834 cert835
theorem checked836 : checkClique O c844 5 cert836 = true := by
  apply checkClique_split_literal O c844 c845 c846 13 4 cert834 cert835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked834
  · exact checked835
#print axioms checked836
def cert837 : CliqueCertificate (Fin 120) := .split 12 cert833 cert836
theorem checked837 : checkClique O c842 5 cert837 = true := by
  apply checkClique_split_literal O c842 c843 c844 12 4 cert833 cert836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked833
  · exact checked836
#print axioms checked837
def cert838 : CliqueCertificate (Fin 120) := .split 9 cert832 cert837
theorem checked838 : checkClique O c840 5 cert838 = true := by
  apply checkClique_split_literal O c840 c841 c842 9 4 cert832 cert837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked832
  · exact checked837
#print axioms checked838
def cert839 : CliqueCertificate (Fin 120) := .split 7 cert831 cert838
theorem checked839 : checkClique O c838 5 cert839 = true := by
  apply checkClique_split_literal O c838 c839 c840 7 4 cert831 cert838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked831
  · exact checked838
#print axioms checked839
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
