import D0GraphStates
import D0GraphNodes028
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert870 : PairCertificate (Fin 120) := .first .size
theorem checked870 : checkPair O U c761 c866 2 cert870 = true := by
  decide +kernel
#print axioms checked870
def cert871 : PairCertificate (Fin 120) := .split 66 cert869 cert870
theorem checked871 : checkPair O U c759 c866 2 cert871 = true := by
  apply checkPair_split_literal O U c759 c866 c761 c867 c761 66 1 cert869 cert870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked869
  · exact checked870
#print axioms checked871
def colors872 (v : Fin 120) : Nat := if (79537648114453550615012311040 : Nat).testBit v.val then 0 else if (73786976294838206464 : Nat).testBit v.val then 1 else 0
def cert872 : PairCertificate (Fin 120) := .first (.color 2 colors872)
theorem checked872 : checkPair O U c869 c865 3 cert872 = true := by
  decide +kernel
#print axioms checked872
def cert873 : PairCertificate (Fin 120) := .split 47 cert871 cert872
theorem checked873 : checkPair O U c864 c865 3 cert873 = true := by
  apply checkPair_split_literal O U c864 c865 c759 c866 c869 47 2 cert871 cert872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked871
  · exact checked872
#print axioms checked873
def colors874 (v : Fin 120) : Nat := if (83725786843874169873491300450304000 : Nat).testBit v.val then 0 else if (590295810358705651712 : Nat).testBit v.val then 1 else 0
def cert874 : PairCertificate (Fin 120) := .first (.color 2 colors874)
theorem checked874 : checkPair O U c871 c872 3 cert874 = true := by
  decide +kernel
#print axioms checked874
def colors875 (v : Fin 120) : Nat := if (618970021948533146663256064 : Nat).testBit v.val then 0 else if (664613997892457936451903530140172288 : Nat).testBit v.val then 1 else 0
def cert875 : PairCertificate (Fin 120) := .first (.color 2 colors875)
theorem checked875 : checkPair O U c874 c875 3 cert875 = true := by
  decide +kernel
#print axioms checked875
def cert876 : PairCertificate (Fin 120) := .first .size
theorem checked876 : checkPair O U c877 c878 3 cert876 = true := by
  decide +kernel
#print axioms checked876
def colors877 (v : Fin 120) : Nat := if (649038964226989050916780745162752 : Nat).testBit v.val then 0 else if (665912310101064786269204362284761088 : Nat).testBit v.val then 1 else if (85672898165824655870753189432131584 : Nat).testBit v.val then 2 else 0
def cert877 : PairCertificate (Fin 120) := .first (.color 3 colors877)
theorem checked877 : checkPair O U c879 c863 4 cert877 = true := by
  decide +kernel
#print axioms checked877
def cert878 : PairCertificate (Fin 120) := .split 56 cert876 cert877
theorem checked878 : checkPair O U c876 c863 4 cert878 = true := by
  apply checkPair_split_literal O U c876 c863 c877 c878 c879 56 3 cert876 cert877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked876
  · exact checked877
#print axioms checked878
def cert879 : PairCertificate (Fin 120) := .split 54 cert875 cert878
theorem checked879 : checkPair O U c873 c863 4 cert879 = true := by
  apply checkPair_split_literal O U c873 c863 c874 c875 c876 54 3 cert875 cert878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked875
  · exact checked878
#print axioms checked879
def cert880 : PairCertificate (Fin 120) := .split 47 cert874 cert879
theorem checked880 : checkPair O U c870 c863 4 cert880 = true := by
  apply checkPair_split_literal O U c870 c863 c871 c872 c873 47 3 cert874 cert879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked874
  · exact checked879
#print axioms checked880
def cert881 : PairCertificate (Fin 120) := .split 46 cert873 cert880
theorem checked881 : checkPair O U c862 c863 4 cert881 = true := by
  apply checkPair_split_literal O U c862 c863 c864 c865 c870 46 3 cert873 cert880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked873
  · exact checked880
#print axioms checked881
def colors882 (v : Fin 120) : Nat := if (81172980823093811223969785970768 : Nat).testBit v.val then 0 else if (41538394675933157669447536885104768 : Nat).testBit v.val then 1 else if (176538256908056566316491783500988416 : Nat).testBit v.val then 2 else if (996920996993429409588527829572648960 : Nat).testBit v.val then 3 else 0
def cert882 : CliqueCertificate (Fin 120) := .color 4 colors882
theorem checked882 : checkClique O c890 5 cert882 = true := by
  decide +kernel
#print axioms checked882
def cert883 : PairCertificate (Fin 120) := .cross cert882
theorem checked883 : checkPair O U c889 c890 0 cert883 = true := by
  exact checked882
#print axioms checked883
def colors884 (v : Fin 120) : Nat := if (19807040628602118143211470976 : Nat).testBit v.val then 0 else if (40564819207303340847894502572032 : Nat).testBit v.val then 1 else 0
def cert884 : CliqueCertificate (Fin 120) := .color 2 colors884
theorem checked884 : checkClique O c892 4 cert884 = true := by
  decide +kernel
#print axioms checked884
def colors885 (v : Fin 120) : Nat := if (309485009821346168236408832 : Nat).testBit v.val then 0 else if (332306998946238412958917504360513536 : Nat).testBit v.val then 1 else 0
def cert885 : CliqueCertificate (Fin 120) := .color 2 colors885
theorem checked885 : checkClique O c894 4 cert885 = true := by
  decide +kernel
#print axioms checked885
def cert886 : CliqueCertificate (Fin 120) := .size
theorem checked886 : checkClique O c896 4 cert886 = true := by
  decide +kernel
#print axioms checked886
def colors887 (v : Fin 120) : Nat := if (62307562302417931974711520178208768 : Nat).testBit v.val then 0 else if (302231454903657293676544 : Nat).testBit v.val then 1 else 0
def cert887 : CliqueCertificate (Fin 120) := .color 2 colors887
theorem checked887 : checkClique O c898 4 cert887 = true := by
  decide +kernel
#print axioms checked887
def colors888 (v : Fin 120) : Nat := if (40574722727617623890093695565824 : Nat).testBit v.val then 0 else if (166153539087195741245144679307018240 : Nat).testBit v.val then 1 else 0
def cert888 : CliqueCertificate (Fin 120) := .color 2 colors888
theorem checked888 : checkClique O c900 4 cert888 = true := by
  decide +kernel
#print axioms checked888
def colors889 (v : Fin 120) : Nat := if (62307622342519282084654336901644288 : Nat).testBit v.val then 0 else if (166194069554473648781402016751550464 : Nat).testBit v.val then 1 else if (81142032322109370874088092860416 : Nat).testBit v.val then 2 else if (332306999100971473136624299432476672 : Nat).testBit v.val then 3 else 0
def cert889 : CliqueCertificate (Fin 120) := .color 4 colors889
theorem checked889 : checkClique O c901 5 cert889 = true := by
  decide +kernel
#print axioms checked889
def cert890 : CliqueCertificate (Fin 120) := .split 21 cert888 cert889
theorem checked890 : checkClique O c899 5 cert890 = true := by
  apply checkClique_split_literal O c899 c900 c901 21 4 cert888 cert889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked888
  · exact checked889
#print axioms checked890
def cert891 : CliqueCertificate (Fin 120) := .split 18 cert887 cert890
theorem checked891 : checkClique O c897 5 cert891 = true := by
  apply checkClique_split_literal O c897 c898 c899 18 4 cert887 cert890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked887
  · exact checked890
#print axioms checked891
def cert892 : CliqueCertificate (Fin 120) := .split 7 cert886 cert891
theorem checked892 : checkClique O c895 5 cert892 = true := by
  apply checkClique_split_literal O c895 c896 c897 7 4 cert886 cert891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked886
  · exact checked891
#print axioms checked892
def cert893 : CliqueCertificate (Fin 120) := .split 6 cert885 cert892
theorem checked893 : checkClique O c893 5 cert893 = true := by
  apply checkClique_split_literal O c893 c894 c895 6 4 cert885 cert892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked885
  · exact checked892
#print axioms checked893
def cert894 : CliqueCertificate (Fin 120) := .split 4 cert884 cert893
theorem checked894 : checkClique O c891 5 cert894 = true := by
  apply checkClique_split_literal O c891 c892 c893 4 4 cert884 cert893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked884
  · exact checked893
#print axioms checked894
def cert895 : PairCertificate (Fin 120) := .cross cert894
theorem checked895 : checkPair O U c6 c891 0 cert895 = true := by
  exact checked894
#print axioms checked895
def cert896 : PairCertificate (Fin 120) := .first .size
theorem checked896 : checkPair O U c6 c888 1 cert896 = true := by
  decide +kernel
#print axioms checked896
def cert897 : PairCertificate (Fin 120) := .split 111 cert895 cert896
theorem checked897 : checkPair O U c889 c888 1 cert897 = true := by
  apply checkPair_split_literal O U c889 c888 c6 c891 c6 111 0 cert895 cert896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked895
  · exact checked896
#print axioms checked897
def cert898 : PairCertificate (Fin 120) := .split 103 cert883 cert897
theorem checked898 : checkPair O U c887 c888 1 cert898 = true := by
  apply checkPair_split_literal O U c887 c888 c889 c890 c889 103 0 cert883 cert897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked883
  · exact checked897
#print axioms checked898
def colors899 (v : Fin 120) : Nat := if (166153539087195741245145778818662400 : Nat).testBit v.val then 0 else 0
def cert899 : CliqueCertificate (Fin 120) := .color 1 colors899
theorem checked899 : checkClique O c904 4 cert899 = true := by
  decide +kernel
#print axioms checked899
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
