import D0GraphStates
import D0GraphNodes027
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert840 : CliqueCertificate (Fin 120) := .split 4 cert830 cert839
theorem checked840 : checkClique O c836 5 cert840 = true := by
  apply checkClique_split_literal O c836 c837 c838 4 4 cert830 cert839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked830
  · exact checked839
#print axioms checked840
def cert841 : CliqueCertificate (Fin 120) := .split 3 cert829 cert840
theorem checked841 : checkClique O c834 5 cert841 = true := by
  apply checkClique_split_literal O c834 c835 c836 3 4 cert829 cert840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked829
  · exact checked840
#print axioms checked841
def cert842 : CliqueCertificate (Fin 120) := .split 0 cert828 cert841
theorem checked842 : checkClique O c832 5 cert842 = true := by
  apply checkClique_split_literal O c832 c833 c834 0 4 cert828 cert841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked828
  · exact checked841
#print axioms checked842
def cert843 : PairCertificate (Fin 120) := .cross cert842
theorem checked843 : checkPair O U c6 c832 0 cert843 = true := by
  exact checked842
#print axioms checked843
def cert844 : PairCertificate (Fin 120) := .first .size
theorem checked844 : checkPair O U c6 c831 1 cert844 = true := by
  decide +kernel
#print axioms checked844
def cert845 : PairCertificate (Fin 120) := .split 69 cert843 cert844
theorem checked845 : checkPair O U c761 c831 1 cert845 = true := by
  apply checkPair_split_literal O U c761 c831 c6 c832 c6 69 0 cert843 cert844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked843
  · exact checked844
#print axioms checked845
def cert846 : PairCertificate (Fin 120) := .first .size
theorem checked846 : checkPair O U c761 c830 2 cert846 = true := by
  decide +kernel
#print axioms checked846
def cert847 : PairCertificate (Fin 120) := .split 66 cert845 cert846
theorem checked847 : checkPair O U c759 c830 2 cert847 = true := by
  apply checkPair_split_literal O U c759 c830 c761 c831 c761 66 1 cert845 cert846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked845
  · exact checked846
#print axioms checked847
def cert848 : PairCertificate (Fin 120) := .first .size
theorem checked848 : checkPair O U c759 c756 3 cert848 = true := by
  decide +kernel
#print axioms checked848
def cert849 : PairCertificate (Fin 120) := .split 47 cert847 cert848
theorem checked849 : checkPair O U c757 c756 3 cert849 = true := by
  apply checkPair_split_literal O U c757 c756 c759 c830 c759 47 2 cert847 cert848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked847
  · exact checked848
#print axioms checked849
def cert850 : PairCertificate (Fin 120) := .split 46 cert827 cert849
theorem checked850 : checkPair O U c755 c756 3 cert850 = true := by
  apply checkPair_split_literal O U c755 c756 c757 c758 c757 46 2 cert827 cert849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked827
  · exact checked849
#print axioms checked850
def cert851 : PairCertificate (Fin 120) := .first .size
theorem checked851 : checkPair O U c848 c849 3 cert851 = true := by
  decide +kernel
#print axioms checked851
def colors852 (v : Fin 120) : Nat := if (151115727522197391015936 : Nat).testBit v.val then 0 else if (73786976294838206464 : Nat).testBit v.val then 1 else 0
def cert852 : PairCertificate (Fin 120) := .first (.color 2 colors852)
theorem checked852 : checkPair O U c851 c852 3 cert852 = true := by
  decide +kernel
#print axioms checked852
def colors853 (v : Fin 120) : Nat := if (332632151345437016545980776846983193 : Nat).testBit v.val then 0 else if (14516554568341976586125440 : Nat).testBit v.val then 1 else if (166153659168607367230601746391760896 : Nat).testBit v.val then 2 else if (665912072107091645664879163436171264 : Nat).testBit v.val then 3 else 0
def cert853 : CliqueCertificate (Fin 120) := .color 4 colors853
theorem checked853 : checkClique O c858 5 cert853 = true := by
  decide +kernel
#print axioms checked853
def cert854 : PairCertificate (Fin 120) := .cross cert853
theorem checked854 : checkPair O U c6 c858 0 cert854 = true := by
  exact checked853
#print axioms checked854
def cert855 : PairCertificate (Fin 120) := .first .size
theorem checked855 : checkPair O U c6 c857 1 cert855 = true := by
  decide +kernel
#print axioms checked855
def cert856 : PairCertificate (Fin 120) := .split 69 cert854 cert855
theorem checked856 : checkPair O U c761 c857 1 cert856 = true := by
  apply checkPair_split_literal O U c761 c857 c6 c858 c6 69 0 cert854 cert855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked854
  · exact checked855
#print axioms checked856
def cert857 : PairCertificate (Fin 120) := .first .size
theorem checked857 : checkPair O U c761 c856 2 cert857 = true := by
  decide +kernel
#print axioms checked857
def cert858 : PairCertificate (Fin 120) := .split 66 cert856 cert857
theorem checked858 : checkPair O U c759 c856 2 cert858 = true := by
  apply checkPair_split_literal O U c759 c856 c761 c857 c761 66 1 cert856 cert857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked856
  · exact checked857
#print axioms checked858
def colors859 (v : Fin 120) : Nat := if (73786976294838206464 : Nat).testBit v.val then 0 else if (41538375023021716234726863701803008 : Nat).testBit v.val then 1 else 0
def cert859 : PairCertificate (Fin 120) := .first (.color 2 colors859)
theorem checked859 : checkPair O U c859 c855 3 cert859 = true := by
  decide +kernel
#print axioms checked859
def cert860 : PairCertificate (Fin 120) := .split 47 cert858 cert859
theorem checked860 : checkPair O U c854 c855 3 cert860 = true := by
  apply checkPair_split_literal O U c854 c855 c759 c856 c859 47 2 cert858 cert859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked858
  · exact checked859
#print axioms checked860
def colors861 (v : Fin 120) : Nat := if (5080660664028448316938835197952 : Nat).testBit v.val then 0 else if (20810069166147860426748377480298496 : Nat).testBit v.val then 1 else if (51922968585348866581115321997852672 : Nat).testBit v.val then 2 else 0
def cert861 : PairCertificate (Fin 120) := .first (.color 3 colors861)
theorem checked861 : checkPair O U c860 c754 4 cert861 = true := by
  decide +kernel
#print axioms checked861
def cert862 : PairCertificate (Fin 120) := .split 46 cert860 cert861
theorem checked862 : checkPair O U c853 c754 4 cert862 = true := by
  apply checkPair_split_literal O U c853 c754 c854 c855 c860 46 3 cert860 cert861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked860
  · exact checked861
#print axioms checked862
def cert863 : PairCertificate (Fin 120) := .split 41 cert852 cert862
theorem checked863 : checkPair O U c850 c754 4 cert863 = true := by
  apply checkPair_split_literal O U c850 c754 c851 c852 c853 41 3 cert852 cert862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked852
  · exact checked862
#print axioms checked863
def cert864 : PairCertificate (Fin 120) := .split 34 cert851 cert863
theorem checked864 : checkPair O U c847 c754 4 cert864 = true := by
  apply checkPair_split_literal O U c847 c754 c848 c849 c850 34 3 cert851 cert863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked851
  · exact checked863
#print axioms checked864
def cert865 : PairCertificate (Fin 120) := .split 25 cert850 cert864
theorem checked865 : checkPair O U c753 c754 4 cert865 = true := by
  apply checkPair_split_literal O U c753 c754 c755 c756 c847 25 3 cert850 cert864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked850
  · exact checked864
#print axioms checked865
def colors866 (v : Fin 120) : Nat := if (332632161287642958209612614237421593 : Nat).testBit v.val then 0 else if (14507109835376237295698048 : Nat).testBit v.val then 1 else if (166158570076724322886235191146184704 : Nat).testBit v.val then 2 else if (20809752253365503320901358400307200 : Nat).testBit v.val then 3 else 0
def cert866 : CliqueCertificate (Fin 120) := .color 4 colors866
theorem checked866 : checkClique O c868 5 cert866 = true := by
  decide +kernel
#print axioms checked866
def cert867 : PairCertificate (Fin 120) := .cross cert866
theorem checked867 : checkPair O U c6 c868 0 cert867 = true := by
  exact checked866
#print axioms checked867
def cert868 : PairCertificate (Fin 120) := .first .size
theorem checked868 : checkPair O U c6 c867 1 cert868 = true := by
  decide +kernel
#print axioms checked868
def cert869 : PairCertificate (Fin 120) := .split 69 cert867 cert868
theorem checked869 : checkPair O U c761 c867 1 cert869 = true := by
  apply checkPair_split_literal O U c761 c867 c6 c868 c6 69 0 cert867 cert868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked867
  · exact checked868
#print axioms checked869
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
