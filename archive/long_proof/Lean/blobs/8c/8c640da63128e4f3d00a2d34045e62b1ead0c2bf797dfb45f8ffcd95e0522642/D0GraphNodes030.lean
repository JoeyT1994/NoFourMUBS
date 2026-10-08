import D0GraphStates
import D0GraphNodes029
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors900 (v : Fin 120) : Nat := if (19807040628566084982505734784 : Nat).testBit v.val then 0 else 0
def cert900 : CliqueCertificate (Fin 120) := .color 1 colors900
theorem checked900 : checkClique O c906 4 cert900 = true := by
  decide +kernel
#print axioms checked900
def colors901 (v : Fin 120) : Nat := if (309485600189214120979988480 : Nat).testBit v.val then 0 else if (332306998946238412958917504360513536 : Nat).testBit v.val then 1 else 0
def cert901 : CliqueCertificate (Fin 120) := .color 2 colors901
theorem checked901 : checkClique O c908 4 cert901 = true := by
  decide +kernel
#print axioms checked901
def colors902 (v : Fin 120) : Nat := if (166153499473416734014624713058287616 : Nat).testBit v.val then 0 else 0
def cert902 : CliqueCertificate (Fin 120) := .color 1 colors902
theorem checked902 : checkClique O c910 4 cert902 = true := by
  decide +kernel
#print axioms checked902
def colors903 (v : Fin 120) : Nat := if (498460498574085957249600181967783936 : Nat).testBit v.val then 0 else 0
def cert903 : CliqueCertificate (Fin 120) := .color 1 colors903
theorem checked903 : checkClique O c912 4 cert903 = true := by
  decide +kernel
#print axioms checked903
def colors904 (v : Fin 120) : Nat := if (166153499473416715567880639348752384 : Nat).testBit v.val then 0 else 0
def cert904 : CliqueCertificate (Fin 120) := .color 1 colors904
theorem checked904 : checkClique O c914 4 cert904 = true := by
  decide +kernel
#print axioms checked904
def colors905 (v : Fin 120) : Nat := if (41619504506693246156684932860084224 : Nat).testBit v.val then 0 else if (2475880078570760549798248448 : Nat).testBit v.val then 1 else 0
def cert905 : CliqueCertificate (Fin 120) := .color 2 colors905
theorem checked905 : checkClique O c916 4 cert905 = true := by
  decide +kernel
#print axioms checked905
def colors906 (v : Fin 120) : Nat := if (154742800058578263475486720 : Nat).testBit v.val then 0 else if (144115188075855872 : Nat).testBit v.val then 1 else 0
def cert906 : CliqueCertificate (Fin 120) := .color 2 colors906
theorem checked906 : checkClique O c918 4 cert906 = true := by
  decide +kernel
#print axioms checked906
def colors907 (v : Fin 120) : Nat := if (41538374868278621460589535935070208 : Nat).testBit v.val then 0 else if (302249901647731003228160 : Nat).testBit v.val then 1 else if (37778931862957161709568 : Nat).testBit v.val then 2 else 0
def cert907 : CliqueCertificate (Fin 120) := .color 3 colors907
theorem checked907 : checkClique O c920 4 cert907 = true := by
  decide +kernel
#print axioms checked907
def colors908 (v : Fin 120) : Nat := if (19816721775436218498774204416 : Nat).testBit v.val then 0 else if (166153504735266363959355791078588416 : Nat).testBit v.val then 1 else if (41619544125648557348240388977065984 : Nat).testBit v.val then 2 else if (332307001576851551707384849230725120 : Nat).testBit v.val then 3 else 0
def cert908 : CliqueCertificate (Fin 120) := .color 4 colors908
theorem checked908 : checkClique O c921 5 cert908 = true := by
  decide +kernel
#print axioms checked908
def cert909 : CliqueCertificate (Fin 120) := .split 18 cert907 cert908
theorem checked909 : checkClique O c919 5 cert909 = true := by
  apply checkClique_split_literal O c919 c920 c921 18 4 cert907 cert908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked907
  · exact checked908
#print axioms checked909
def cert910 : CliqueCertificate (Fin 120) := .split 14 cert906 cert909
theorem checked910 : checkClique O c917 5 cert910 = true := by
  apply checkClique_split_literal O c917 c918 c919 14 4 cert906 cert909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked906
  · exact checked909
#print axioms checked910
def cert911 : CliqueCertificate (Fin 120) := .split 11 cert905 cert910
theorem checked911 : checkClique O c915 5 cert911 = true := by
  apply checkClique_split_literal O c915 c916 c917 11 4 cert905 cert910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked905
  · exact checked910
#print axioms checked911
def cert912 : CliqueCertificate (Fin 120) := .split 9 cert904 cert911
theorem checked912 : checkClique O c913 5 cert912 = true := by
  apply checkClique_split_literal O c913 c914 c915 9 4 cert904 cert911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked904
  · exact checked911
#print axioms checked912
def cert913 : CliqueCertificate (Fin 120) := .split 8 cert903 cert912
theorem checked913 : checkClique O c911 5 cert913 = true := by
  apply checkClique_split_literal O c911 c912 c913 8 4 cert903 cert912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked903
  · exact checked912
#print axioms checked913
def cert914 : CliqueCertificate (Fin 120) := .split 7 cert902 cert913
theorem checked914 : checkClique O c909 5 cert914 = true := by
  apply checkClique_split_literal O c909 c910 c911 7 4 cert902 cert913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked902
  · exact checked913
#print axioms checked914
def cert915 : CliqueCertificate (Fin 120) := .split 6 cert901 cert914
theorem checked915 : checkClique O c907 5 cert915 = true := by
  apply checkClique_split_literal O c907 c908 c909 6 4 cert901 cert914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked901
  · exact checked914
#print axioms checked915
def cert916 : CliqueCertificate (Fin 120) := .split 4 cert900 cert915
theorem checked916 : checkClique O c905 5 cert916 = true := by
  apply checkClique_split_literal O c905 c906 c907 4 4 cert900 cert915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked900
  · exact checked915
#print axioms checked916
def cert917 : CliqueCertificate (Fin 120) := .split 3 cert899 cert916
theorem checked917 : checkClique O c903 5 cert917 = true := by
  apply checkClique_split_literal O c903 c904 c905 3 4 cert899 cert916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked899
  · exact checked916
#print axioms checked917
def cert918 : PairCertificate (Fin 120) := .cross cert917
theorem checked918 : checkPair O U c6 c903 0 cert918 = true := by
  exact checked917
#print axioms checked918
def cert919 : PairCertificate (Fin 120) := .first .size
theorem checked919 : checkPair O U c6 c902 1 cert919 = true := by
  decide +kernel
#print axioms checked919
def cert920 : PairCertificate (Fin 120) := .split 111 cert918 cert919
theorem checked920 : checkPair O U c889 c902 1 cert920 = true := by
  apply checkPair_split_literal O U c889 c902 c6 c903 c6 111 0 cert918 cert919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked918
  · exact checked919
#print axioms checked920
def cert921 : PairCertificate (Fin 120) := .first .size
theorem checked921 : checkPair O U c889 c886 2 cert921 = true := by
  decide +kernel
#print axioms checked921
def cert922 : PairCertificate (Fin 120) := .split 103 cert920 cert921
theorem checked922 : checkPair O U c887 c886 2 cert922 = true := by
  apply checkPair_split_literal O U c887 c886 c889 c902 c889 103 1 cert920 cert921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked920
  · exact checked921
#print axioms checked922
def cert923 : PairCertificate (Fin 120) := .split 70 cert898 cert922
theorem checked923 : checkPair O U c885 c886 2 cert923 = true := by
  apply checkPair_split_literal O U c885 c886 c887 c888 c887 70 1 cert898 cert922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked898
  · exact checked922
#print axioms checked923
def colors924 (v : Fin 120) : Nat := if (162279083869841929476526290501760 : Nat).testBit v.val then 0 else 0
def cert924 : CliqueCertificate (Fin 120) := .color 1 colors924
theorem checked924 : checkClique O c926 4 cert924 = true := by
  decide +kernel
#print axioms checked924
def colors925 (v : Fin 120) : Nat := if (309485009821909118189830144 : Nat).testBit v.val then 0 else if (332306998946238412958917504360513536 : Nat).testBit v.val then 1 else 0
def cert925 : CliqueCertificate (Fin 120) := .color 2 colors925
theorem checked925 : checkClique O c928 4 cert925 = true := by
  decide +kernel
#print axioms checked925
def colors926 (v : Fin 120) : Nat := if (166153499473416715568443589830640640 : Nat).testBit v.val then 0 else if (2417851639229258349412352 : Nat).testBit v.val then 1 else 0
def cert926 : CliqueCertificate (Fin 120) := .color 2 colors926
theorem checked926 : checkClique O c930 4 cert926 = true := by
  decide +kernel
#print axioms checked926
def colors927 (v : Fin 120) : Nat := if (41538394684990656153497202369495040 : Nat).testBit v.val then 0 else if (81129638414606681695789005144064 : Nat).testBit v.val then 1 else 0
def cert927 : CliqueCertificate (Fin 120) := .color 2 colors927
theorem checked927 : checkClique O c932 4 cert927 = true := by
  decide +kernel
#print axioms checked927
def colors928 (v : Fin 120) : Nat := if (166315758749953142209896149927854080 : Nat).testBit v.val then 0 else if (4951760157141521099596496896 : Nat).testBit v.val then 1 else 0
def cert928 : CliqueCertificate (Fin 120) := .color 2 colors928
theorem checked928 : checkClique O c934 4 cert928 = true := by
  decide +kernel
#print axioms checked928
def colors929 (v : Fin 120) : Nat := if (332306999101575936048683413833515008 : Nat).testBit v.val then 0 else 0
def cert929 : CliqueCertificate (Fin 120) := .color 1 colors929
theorem checked929 : checkClique O c936 4 cert929 = true := by
  decide +kernel
#print axioms checked929
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
