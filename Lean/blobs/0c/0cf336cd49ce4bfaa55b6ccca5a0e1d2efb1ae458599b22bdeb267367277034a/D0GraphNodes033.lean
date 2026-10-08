import D0GraphStates
import D0GraphNodes032
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert990 : CliqueCertificate (Fin 120) := .split 23 cert984 cert989
theorem checked990 : checkClique O c987 5 cert990 = true := by
  apply checkClique_split_literal O c987 c988 c989 23 4 cert984 cert989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked984
  · exact checked989
#print axioms checked990
def cert991 : CliqueCertificate (Fin 120) := .split 19 cert983 cert990
theorem checked991 : checkClique O c985 5 cert991 = true := by
  apply checkClique_split_literal O c985 c986 c987 19 4 cert983 cert990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked983
  · exact checked990
#print axioms checked991
def cert992 : CliqueCertificate (Fin 120) := .split 3 cert982 cert991
theorem checked992 : checkClique O c983 5 cert992 = true := by
  apply checkClique_split_literal O c983 c984 c985 3 4 cert982 cert991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked982
  · exact checked991
#print axioms checked992
def cert993 : CliqueCertificate (Fin 120) := .split 1 cert981 cert992
theorem checked993 : checkClique O c981 5 cert993 = true := by
  apply checkClique_split_literal O c981 c982 c983 1 4 cert981 cert992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked981
  · exact checked992
#print axioms checked993
def cert994 : CliqueCertificate (Fin 120) := .split 0 cert980 cert993
theorem checked994 : checkClique O c979 5 cert994 = true := by
  apply checkClique_split_literal O c979 c980 c981 0 4 cert980 cert993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked980
  · exact checked993
#print axioms checked994
def cert995 : PairCertificate (Fin 120) := .cross cert994
theorem checked995 : checkPair O U c978 c979 0 cert995 = true := by
  exact checked994
#print axioms checked995
def colors996 (v : Fin 120) : Nat := if (22285338559928997978925694985 : Nat).testBit v.val then 0 else if (67499869064624189613736181786214402 : Nat).testBit v.val then 1 else if (83076794613111481437069014116335616 : Nat).testBit v.val then 2 else if (2677278706070411116211155738034176 : Nat).testBit v.val then 3 else 0
def cert996 : CliqueCertificate (Fin 120) := .color 4 colors996
theorem checked996 : checkClique O c993 5 cert996 = true := by
  decide +kernel
#print axioms checked996
def cert997 : PairCertificate (Fin 120) := .cross cert996
theorem checked997 : checkPair O U c6 c993 0 cert997 = true := by
  exact checked996
#print axioms checked997
def cert998 : PairCertificate (Fin 120) := .first .size
theorem checked998 : checkPair O U c6 c977 1 cert998 = true := by
  decide +kernel
#print axioms checked998
def cert999 : PairCertificate (Fin 120) := .split 105 cert997 cert998
theorem checked999 : checkPair O U c978 c977 1 cert999 = true := by
  apply checkPair_split_literal O U c978 c977 c6 c993 c6 105 0 cert997 cert998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked997
  · exact checked998
#print axioms checked999
def cert1000 : PairCertificate (Fin 120) := .split 97 cert995 cert999
theorem checked1000 : checkPair O U c976 c977 1 cert1000 = true := by
  apply checkPair_split_literal O U c976 c977 c978 c979 c978 97 0 cert995 cert999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked995
  · exact checked999
#print axioms checked1000
def colors1001 (v : Fin 120) : Nat := if (83076749736632836813702140449259522 : Nat).testBit v.val then 0 else 0
def cert1001 : CliqueCertificate (Fin 120) := .color 1 colors1001
theorem checked1001 : checkClique O c996 4 cert1001 = true := by
  decide +kernel
#print axioms checked1001
def colors1002 (v : Fin 120) : Nat := if (2475880078570760635698118912 : Nat).testBit v.val then 0 else 0
def cert1002 : CliqueCertificate (Fin 120) := .color 1 colors1002
theorem checked1002 : checkClique O c998 4 cert1002 = true := by
  decide +kernel
#print axioms checked1002
def colors1003 (v : Fin 120) : Nat := if (39614081405282582276190765056 : Nat).testBit v.val then 0 else if (5192296858553717094461974910074880 : Nat).testBit v.val then 1 else 0
def cert1003 : CliqueCertificate (Fin 120) := .color 2 colors1003
theorem checked1003 : checkClique O c1000 4 cert1003 = true := by
  decide +kernel
#print axioms checked1003
def colors1004 (v : Fin 120) : Nat := if (83076750046042251877833147431288832 : Nat).testBit v.val then 0 else 0
def cert1004 : CliqueCertificate (Fin 120) := .color 1 colors1004
theorem checked1004 : checkClique O c1002 4 cert1004 = true := by
  decide +kernel
#print axioms checked1004
def colors1005 (v : Fin 120) : Nat := if (83076749736632799920213993030189056 : Nat).testBit v.val then 0 else 0
def cert1005 : CliqueCertificate (Fin 120) := .color 1 colors1005
theorem checked1005 : checkClique O c1004 4 cert1005 = true := by
  decide +kernel
#print axioms checked1005
def colors1006 (v : Fin 120) : Nat := if (88269046614434882798852504400430080 : Nat).testBit v.val then 0 else 0
def cert1006 : CliqueCertificate (Fin 120) := .color 1 colors1006
theorem checked1006 : checkClique O c1006 4 cert1006 = true := by
  decide +kernel
#print axioms checked1006
def colors1007 (v : Fin 120) : Nat := if (41619504506693264603428044496961536 : Nat).testBit v.val then 0 else if (19807040628566084398385987584 : Nat).testBit v.val then 1 else 0
def cert1007 : CliqueCertificate (Fin 120) := .color 2 colors1007
theorem checked1007 : checkClique O c1008 4 cert1007 = true := by
  decide +kernel
#print axioms checked1007
def colors1008 (v : Fin 120) : Nat := if (19342886900810430361894912 : Nat).testBit v.val then 0 else if (288230376151711744 : Nat).testBit v.val then 1 else 0
def cert1008 : CliqueCertificate (Fin 120) := .color 2 colors1008
theorem checked1008 : checkClique O c1010 4 cert1008 = true := by
  decide +kernel
#print axioms checked1008
def colors1009 (v : Fin 120) : Nat := if (42091189225351912518655934464 : Nat).testBit v.val then 0 else if (46730691553348006496490393738674176 : Nat).testBit v.val then 1 else if (83076754688392993955223248635428864 : Nat).testBit v.val then 2 else if (81129950322338082705575400964096 : Nat).testBit v.val then 3 else 0
def cert1009 : CliqueCertificate (Fin 120) := .color 4 colors1009
theorem checked1009 : checkClique O c1011 5 cert1009 = true := by
  decide +kernel
#print axioms checked1009
def cert1010 : CliqueCertificate (Fin 120) := .split 15 cert1008 cert1009
theorem checked1010 : checkClique O c1009 5 cert1010 = true := by
  apply checkClique_split_literal O c1009 c1010 c1011 15 4 cert1008 cert1009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1008
  · exact checked1009
#print axioms checked1010
def cert1011 : CliqueCertificate (Fin 120) := .split 10 cert1007 cert1010
theorem checked1011 : checkClique O c1007 5 cert1011 = true := by
  apply checkClique_split_literal O c1007 c1008 c1009 10 4 cert1007 cert1010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1007
  · exact checked1010
#print axioms checked1011
def cert1012 : CliqueCertificate (Fin 120) := .split 9 cert1006 cert1011
theorem checked1012 : checkClique O c1005 5 cert1012 = true := by
  apply checkClique_split_literal O c1005 c1006 c1007 9 4 cert1006 cert1011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1006
  · exact checked1011
#print axioms checked1012
def cert1013 : CliqueCertificate (Fin 120) := .split 8 cert1005 cert1012
theorem checked1013 : checkClique O c1003 5 cert1013 = true := by
  apply checkClique_split_literal O c1003 c1004 c1005 8 4 cert1005 cert1012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1005
  · exact checked1012
#print axioms checked1013
def cert1014 : CliqueCertificate (Fin 120) := .split 6 cert1004 cert1013
theorem checked1014 : checkClique O c1001 5 cert1014 = true := by
  apply checkClique_split_literal O c1001 c1002 c1003 6 4 cert1004 cert1013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1004
  · exact checked1013
#print axioms checked1014
def cert1015 : CliqueCertificate (Fin 120) := .split 3 cert1003 cert1014
theorem checked1015 : checkClique O c999 5 cert1015 = true := by
  apply checkClique_split_literal O c999 c1000 c1001 3 4 cert1003 cert1014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1003
  · exact checked1014
#print axioms checked1015
def cert1016 : CliqueCertificate (Fin 120) := .split 1 cert1002 cert1015
theorem checked1016 : checkClique O c997 5 cert1016 = true := by
  apply checkClique_split_literal O c997 c998 c999 1 4 cert1002 cert1015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1002
  · exact checked1015
#print axioms checked1016
def cert1017 : CliqueCertificate (Fin 120) := .split 0 cert1001 cert1016
theorem checked1017 : checkClique O c995 5 cert1017 = true := by
  apply checkClique_split_literal O c995 c996 c997 0 4 cert1001 cert1016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1001
  · exact checked1016
#print axioms checked1017
def cert1018 : PairCertificate (Fin 120) := .cross cert1017
theorem checked1018 : checkPair O U c6 c995 0 cert1018 = true := by
  exact checked1017
#print axioms checked1018
def cert1019 : PairCertificate (Fin 120) := .first .size
theorem checked1019 : checkPair O U c6 c994 1 cert1019 = true := by
  decide +kernel
#print axioms checked1019
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
