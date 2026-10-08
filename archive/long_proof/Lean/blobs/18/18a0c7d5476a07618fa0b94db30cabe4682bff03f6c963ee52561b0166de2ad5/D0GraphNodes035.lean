import D0GraphStates
import D0GraphNodes034
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors1050 (v : Fin 120) : Nat := if (43100159697848937126336086933504 : Nat).testBit v.val then 0 else if (1426106925256758076683791106048 : Nat).testBit v.val then 1 else 0
def cert1050 : PairCertificate (Fin 120) := .first (.color 2 colors1050)
theorem checked1050 : checkPair O U c1036 c973 3 cert1050 = true := by
  decide +kernel
#print axioms checked1050
def cert1051 : PairCertificate (Fin 120) := .split 71 cert1049 cert1050
theorem checked1051 : checkPair O U c1012 c973 3 cert1051 = true := by
  apply checkPair_split_literal O U c1012 c973 c976 c1013 c1036 71 2 cert1049 cert1050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1049
  · exact checked1050
#print axioms checked1051
def cert1052 : PairCertificate (Fin 120) := .split 62 cert1023 cert1051
theorem checked1052 : checkPair O U c972 c973 3 cert1052 = true := by
  apply checkPair_split_literal O U c972 c973 c974 c975 c1012 62 2 cert1023 cert1051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1023
  · exact checked1051
#print axioms checked1052
def cert1053 : PairCertificate (Fin 120) := .first .size
theorem checked1053 : checkPair O U c6 c1038 3 cert1053 = true := by
  decide +kernel
#print axioms checked1053
def cert1054 : PairCertificate (Fin 120) := .first .size
theorem checked1054 : checkPair O U c6 c1040 3 cert1054 = true := by
  decide +kernel
#print axioms checked1054
def cert1055 : PairCertificate (Fin 120) := .first .size
theorem checked1055 : checkPair O U c6 c1042 3 cert1055 = true := by
  decide +kernel
#print axioms checked1055
def colors1056 (v : Fin 120) : Nat := if (83076749736633980511869894813286402 : Nat).testBit v.val then 0 else 0
def cert1056 : CliqueCertificate (Fin 120) := .color 1 colors1056
theorem checked1056 : checkClique O c1048 4 cert1056 = true := by
  decide +kernel
#print axioms checked1056
def colors1057 (v : Fin 120) : Nat := if (2475880078570760621739474944 : Nat).testBit v.val then 0 else 0
def cert1057 : CliqueCertificate (Fin 120) := .color 1 colors1057
theorem checked1057 : checkClique O c1050 4 cert1057 = true := by
  decide +kernel
#print axioms checked1057
def colors1058 (v : Fin 120) : Nat := if (1180591921021524639744 : Nat).testBit v.val then 0 else if (39614100146598100275352829952 : Nat).testBit v.val then 1 else if (5192296858534827628530496329220096 : Nat).testBit v.val then 2 else 0
def cert1058 : CliqueCertificate (Fin 120) := .color 3 colors1058
theorem checked1058 : checkClique O c1052 4 cert1058 = true := by
  decide +kernel
#print axioms checked1058
def cert1059 : CliqueCertificate (Fin 120) := .size
theorem checked1059 : checkClique O c1054 4 cert1059 = true := by
  decide +kernel
#print axioms checked1059
def colors1060 (v : Fin 120) : Nat := if (41538374945649873629947225704497152 : Nat).testBit v.val then 0 else if (75558151956290475130880 : Nat).testBit v.val then 1 else 0
def cert1060 : CliqueCertificate (Fin 120) := .color 2 colors1060
theorem checked1060 : checkClique O c1056 4 cert1060 = true := by
  decide +kernel
#print axioms checked1060
def colors1061 (v : Fin 120) : Nat := if (226673879689594098679808 : Nat).testBit v.val then 0 else 0
def cert1061 : CliqueCertificate (Fin 120) := .color 1 colors1061
theorem checked1061 : checkClique O c1058 4 cert1061 = true := by
  decide +kernel
#print axioms checked1061
def colors1062 (v : Fin 120) : Nat := if (41538374868448626654273080704106496 : Nat).testBit v.val then 0 else if (5192381115905489947359210010312704 : Nat).testBit v.val then 1 else if (81191848528948526708848915906560 : Nat).testBit v.val then 2 else if (415383748702129023396273773132906496 : Nat).testBit v.val then 3 else 0
def cert1062 : CliqueCertificate (Fin 120) := .color 4 colors1062
theorem checked1062 : checkClique O c1059 5 cert1062 = true := by
  decide +kernel
#print axioms checked1062
def cert1063 : CliqueCertificate (Fin 120) := .split 29 cert1061 cert1062
theorem checked1063 : checkClique O c1057 5 cert1063 = true := by
  apply checkClique_split_literal O c1057 c1058 c1059 29 4 cert1061 cert1062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1061
  · exact checked1062
#print axioms checked1063
def cert1064 : CliqueCertificate (Fin 120) := .split 23 cert1060 cert1063
theorem checked1064 : checkClique O c1055 5 cert1064 = true := by
  apply checkClique_split_literal O c1055 c1056 c1057 23 4 cert1060 cert1063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1060
  · exact checked1063
#print axioms checked1064
def cert1065 : CliqueCertificate (Fin 120) := .split 19 cert1059 cert1064
theorem checked1065 : checkClique O c1053 5 cert1065 = true := by
  apply checkClique_split_literal O c1053 c1054 c1055 19 4 cert1059 cert1064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1059
  · exact checked1064
#print axioms checked1065
def cert1066 : CliqueCertificate (Fin 120) := .split 3 cert1058 cert1065
theorem checked1066 : checkClique O c1051 5 cert1066 = true := by
  apply checkClique_split_literal O c1051 c1052 c1053 3 4 cert1058 cert1065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1058
  · exact checked1065
#print axioms checked1066
def cert1067 : CliqueCertificate (Fin 120) := .split 1 cert1057 cert1066
theorem checked1067 : checkClique O c1049 5 cert1067 = true := by
  apply checkClique_split_literal O c1049 c1050 c1051 1 4 cert1057 cert1066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1057
  · exact checked1066
#print axioms checked1067
def cert1068 : CliqueCertificate (Fin 120) := .split 0 cert1056 cert1067
theorem checked1068 : checkClique O c1047 5 cert1068 = true := by
  apply checkClique_split_literal O c1047 c1048 c1049 0 4 cert1056 cert1067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1056
  · exact checked1067
#print axioms checked1068
def cert1069 : PairCertificate (Fin 120) := .cross cert1068
theorem checked1069 : checkPair O U c6 c1047 0 cert1069 = true := by
  exact checked1068
#print axioms checked1069
def cert1070 : PairCertificate (Fin 120) := .first .size
theorem checked1070 : checkPair O U c6 c1046 1 cert1070 = true := by
  decide +kernel
#print axioms checked1070
def cert1071 : PairCertificate (Fin 120) := .split 105 cert1069 cert1070
theorem checked1071 : checkPair O U c978 c1046 1 cert1071 = true := by
  apply checkPair_split_literal O U c978 c1046 c6 c1047 c6 105 0 cert1069 cert1070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1069
  · exact checked1070
#print axioms checked1071
def cert1072 : PairCertificate (Fin 120) := .first .size
theorem checked1072 : checkPair O U c978 c1045 2 cert1072 = true := by
  decide +kernel
#print axioms checked1072
def cert1073 : PairCertificate (Fin 120) := .split 97 cert1071 cert1072
theorem checked1073 : checkPair O U c976 c1045 2 cert1073 = true := by
  apply checkPair_split_literal O U c976 c1045 c978 c1046 c978 97 1 cert1071 cert1072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1071
  · exact checked1072
#print axioms checked1073
def cert1074 : PairCertificate (Fin 120) := .first .size
theorem checked1074 : checkPair O U c976 c1044 3 cert1074 = true := by
  decide +kernel
#print axioms checked1074
def cert1075 : PairCertificate (Fin 120) := .split 71 cert1073 cert1074
theorem checked1075 : checkPair O U c974 c1044 3 cert1075 = true := by
  apply checkPair_split_literal O U c974 c1044 c976 c1045 c976 71 2 cert1073 cert1074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1073
  · exact checked1074
#print axioms checked1075
def colors1076 (v : Fin 120) : Nat := if (3169340180598043746993774264320 : Nat).testBit v.val then 0 else if (1426106925256758076683791106048 : Nat).testBit v.val then 1 else if (40564819207303340847894502572032 : Nat).testBit v.val then 2 else 0
def cert1076 : PairCertificate (Fin 120) := .first (.color 3 colors1076)
theorem checked1076 : checkPair O U c1060 c971 4 cert1076 = true := by
  decide +kernel
#print axioms checked1076
def cert1077 : PairCertificate (Fin 120) := .split 62 cert1075 cert1076
theorem checked1077 : checkPair O U c1043 c971 4 cert1077 = true := by
  apply checkPair_split_literal O U c1043 c971 c974 c1044 c1060 62 3 cert1075 cert1076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1075
  · exact checked1076
#print axioms checked1077
def cert1078 : PairCertificate (Fin 120) := .split 53 cert1055 cert1077
theorem checked1078 : checkPair O U c1041 c971 4 cert1078 = true := by
  apply checkPair_split_literal O U c1041 c971 c6 c1042 c1043 53 3 cert1055 cert1077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1055
  · exact checked1077
#print axioms checked1078
def cert1079 : PairCertificate (Fin 120) := .split 52 cert1054 cert1078
theorem checked1079 : checkPair O U c1039 c971 4 cert1079 = true := by
  apply checkPair_split_literal O U c1039 c971 c6 c1040 c1041 52 3 cert1054 cert1078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1054
  · exact checked1078
#print axioms checked1079
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
