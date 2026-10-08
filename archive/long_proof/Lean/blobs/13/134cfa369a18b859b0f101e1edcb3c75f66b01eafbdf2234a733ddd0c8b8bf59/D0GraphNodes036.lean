import D0GraphStates
import D0GraphNodes035
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert1080 : PairCertificate (Fin 120) := .split 47 cert1053 cert1079
theorem checked1080 : checkPair O U c1037 c971 4 cert1080 = true := by
  apply checkPair_split_literal O U c1037 c971 c6 c1038 c1039 47 3 cert1053 cert1079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1053
  · exact checked1079
#print axioms checked1080
def cert1081 : PairCertificate (Fin 120) := .split 35 cert1052 cert1080
theorem checked1081 : checkPair O U c970 c971 4 cert1081 = true := by
  apply checkPair_split_literal O U c970 c971 c972 c973 c1037 35 3 cert1052 cert1080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1052
  · exact checked1080
#print axioms checked1081
def colors1082 (v : Fin 120) : Nat := if (831900658159932704268328059797576 : Nat).testBit v.val then 0 else if (92657645616279767246772284424192 : Nat).testBit v.val then 1 else if (327687796215875983291298550382592 : Nat).testBit v.val then 2 else if (249230407665996754698139010890465280 : Nat).testBit v.val then 3 else 0
def cert1082 : CliqueCertificate (Fin 120) := .color 4 colors1082
theorem checked1082 : checkClique O c1071 5 cert1082 = true := by
  decide +kernel
#print axioms checked1082
def cert1083 : PairCertificate (Fin 120) := .cross cert1082
theorem checked1083 : checkPair O U c1070 c1071 0 cert1083 = true := by
  exact checked1082
#print axioms checked1083
def colors1084 (v : Fin 120) : Nat := if (1307264700374827501772056035328 : Nat).testBit v.val then 0 else if (166153499473114484112975882535043072 : Nat).testBit v.val then 1 else 0
def cert1084 : CliqueCertificate (Fin 120) := .color 2 colors1084
theorem checked1084 : checkClique O c1073 4 cert1084 = true := by
  decide +kernel
#print axioms checked1084
def colors1085 (v : Fin 120) : Nat := if (79537656968818648401559158784 : Nat).testBit v.val then 0 else if (83076749736557242056487941267521536 : Nat).testBit v.val then 1 else 0
def cert1085 : CliqueCertificate (Fin 120) := .color 2 colors1085
theorem checked1085 : checkClique O c1075 4 cert1085 = true := by
  decide +kernel
#print axioms checked1085
def colors1086 (v : Fin 120) : Nat := if (1307264681485361570293508734976 : Nat).testBit v.val then 0 else if (166194064292321787453823777037615104 : Nat).testBit v.val then 1 else if (162259276829213363391578010288128 : Nat).testBit v.val then 2 else 0
def cert1086 : CliqueCertificate (Fin 120) := .color 3 colors1086
theorem checked1086 : checkClique O c1077 4 cert1086 = true := by
  decide +kernel
#print axioms checked1086
def colors1087 (v : Fin 120) : Nat := if (348287002412707217012139340333056 : Nat).testBit v.val then 0 else if (41620891309093072654435760061022208 : Nat).testBit v.val then 1 else if (2636713364531595838117543438974976 : Nat).testBit v.val then 2 else if (250041545593817792986421713854005248 : Nat).testBit v.val then 3 else 0
def cert1087 : CliqueCertificate (Fin 120) := .color 4 colors1087
theorem checked1087 : checkClique O c1078 5 cert1087 = true := by
  decide +kernel
#print axioms checked1087
def cert1088 : CliqueCertificate (Fin 120) := .split 21 cert1086 cert1087
theorem checked1088 : checkClique O c1076 5 cert1088 = true := by
  apply checkClique_split_literal O c1076 c1077 c1078 21 4 cert1086 cert1087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1086
  · exact checked1087
#print axioms checked1088
def cert1089 : CliqueCertificate (Fin 120) := .split 6 cert1085 cert1088
theorem checked1089 : checkClique O c1074 5 cert1089 = true := by
  apply checkClique_split_literal O c1074 c1075 c1076 6 4 cert1085 cert1088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1085
  · exact checked1088
#print axioms checked1089
def cert1090 : CliqueCertificate (Fin 120) := .split 3 cert1084 cert1089
theorem checked1090 : checkClique O c1072 5 cert1090 = true := by
  apply checkClique_split_literal O c1072 c1073 c1074 3 4 cert1084 cert1089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1084
  · exact checked1089
#print axioms checked1090
def cert1091 : PairCertificate (Fin 120) := .cross cert1090
theorem checked1091 : checkPair O U c6 c1072 0 cert1091 = true := by
  exact checked1090
#print axioms checked1091
def cert1092 : PairCertificate (Fin 120) := .first .size
theorem checked1092 : checkPair O U c6 c1069 1 cert1092 = true := by
  decide +kernel
#print axioms checked1092
def cert1093 : PairCertificate (Fin 120) := .split 114 cert1091 cert1092
theorem checked1093 : checkPair O U c1070 c1069 1 cert1093 = true := by
  apply checkPair_split_literal O U c1070 c1069 c6 c1072 c6 114 0 cert1091 cert1092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1091
  · exact checked1092
#print axioms checked1093
def cert1094 : PairCertificate (Fin 120) := .split 90 cert1083 cert1093
theorem checked1094 : checkPair O U c1068 c1069 1 cert1094 = true := by
  apply checkPair_split_literal O U c1068 c1069 c1070 c1071 c1070 90 0 cert1083 cert1093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1083
  · exact checked1093
#print axioms checked1094
def colors1095 (v : Fin 120) : Nat := if (1307264700374827501772056035328 : Nat).testBit v.val then 0 else if (166153499473114484112975882535043072 : Nat).testBit v.val then 1 else 0
def cert1095 : CliqueCertificate (Fin 120) := .color 2 colors1095
theorem checked1095 : checkClique O c1073 4 cert1095 = true := by
  decide +kernel
#print axioms checked1095
def colors1096 (v : Fin 120) : Nat := if (79228174910485925275570798592 : Nat).testBit v.val then 0 else if (83076750046042251877833009992302592 : Nat).testBit v.val then 1 else if (332306998946228968225951765070086144 : Nat).testBit v.val then 2 else 0
def cert1096 : CliqueCertificate (Fin 120) := .color 3 colors1096
theorem checked1096 : checkClique O c1082 4 cert1096 = true := by
  decide +kernel
#print axioms checked1096
def colors1097 (v : Fin 120) : Nat := if (83078017387159831469130872793334784 : Nat).testBit v.val then 0 else if (166153499473114484112975882535043072 : Nat).testBit v.val then 1 else 0
def cert1097 : CliqueCertificate (Fin 120) := .color 2 colors1097
theorem checked1097 : checkClique O c1084 4 cert1097 = true := by
  decide +kernel
#print axioms checked1097
def cert1098 : CliqueCertificate (Fin 120) := .size
theorem checked1098 : checkClique O c1086 4 cert1098 = true := by
  decide +kernel
#print axioms checked1098
def colors1099 (v : Fin 120) : Nat := if (3248586776842212857336100290560 : Nat).testBit v.val then 0 else 0
def cert1099 : CliqueCertificate (Fin 120) := .color 1 colors1099
theorem checked1099 : checkClique O c1088 4 cert1099 = true := by
  decide +kernel
#print axioms checked1099
def colors1100 (v : Fin 120) : Nat := if (324835466317928526107018497359872 : Nat).testBit v.val then 0 else 0
def cert1100 : CliqueCertificate (Fin 120) := .color 1 colors1100
theorem checked1100 : checkClique O c1090 4 cert1100 = true := by
  decide +kernel
#print axioms checked1100
def colors1101 (v : Fin 120) : Nat := if (83664939625098178845648091086848 : Nat).testBit v.val then 0 else if (1389008639880894250012892987392 : Nat).testBit v.val then 1 else if (250386346866607382503319712657571840 : Nat).testBit v.val then 2 else if (332307949916292896764011689141075968 : Nat).testBit v.val then 3 else 0
def cert1101 : CliqueCertificate (Fin 120) := .color 4 colors1101
theorem checked1101 : checkClique O c1091 5 cert1101 = true := by
  decide +kernel
#print axioms checked1101
def cert1102 : CliqueCertificate (Fin 120) := .split 31 cert1100 cert1101
theorem checked1102 : checkClique O c1089 5 cert1102 = true := by
  apply checkClique_split_literal O c1089 c1090 c1091 31 4 cert1100 cert1101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1100
  · exact checked1101
#print axioms checked1102
def cert1103 : CliqueCertificate (Fin 120) := .split 26 cert1099 cert1102
theorem checked1103 : checkClique O c1087 5 cert1103 = true := by
  apply checkClique_split_literal O c1087 c1088 c1089 26 4 cert1099 cert1102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1099
  · exact checked1102
#print axioms checked1103
def cert1104 : CliqueCertificate (Fin 120) := .split 10 cert1098 cert1103
theorem checked1104 : checkClique O c1085 5 cert1104 = true := by
  apply checkClique_split_literal O c1085 c1086 c1087 10 4 cert1098 cert1103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1098
  · exact checked1103
#print axioms checked1104
def cert1105 : CliqueCertificate (Fin 120) := .split 9 cert1097 cert1104
theorem checked1105 : checkClique O c1083 5 cert1105 = true := by
  apply checkClique_split_literal O c1083 c1084 c1085 9 4 cert1097 cert1104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1097
  · exact checked1104
#print axioms checked1105
def cert1106 : CliqueCertificate (Fin 120) := .split 6 cert1096 cert1105
theorem checked1106 : checkClique O c1081 5 cert1106 = true := by
  apply checkClique_split_literal O c1081 c1082 c1083 6 4 cert1096 cert1105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1096
  · exact checked1105
#print axioms checked1106
def cert1107 : CliqueCertificate (Fin 120) := .split 3 cert1095 cert1106
theorem checked1107 : checkClique O c1080 5 cert1107 = true := by
  apply checkClique_split_literal O c1080 c1073 c1081 3 4 cert1095 cert1106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1095
  · exact checked1106
#print axioms checked1107
def cert1108 : PairCertificate (Fin 120) := .cross cert1107
theorem checked1108 : checkPair O U c6 c1080 0 cert1108 = true := by
  exact checked1107
#print axioms checked1108
def cert1109 : PairCertificate (Fin 120) := .first .size
theorem checked1109 : checkPair O U c6 c1079 1 cert1109 = true := by
  decide +kernel
#print axioms checked1109
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
