import D0GraphStates
import D0GraphNodes036
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert1110 : PairCertificate (Fin 120) := .split 114 cert1108 cert1109
theorem checked1110 : checkPair O U c1070 c1079 1 cert1110 = true := by
  apply checkPair_split_literal O U c1070 c1079 c6 c1080 c6 114 0 cert1108 cert1109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1108
  · exact checked1109
#print axioms checked1110
def cert1111 : PairCertificate (Fin 120) := .first .size
theorem checked1111 : checkPair O U c1070 c1067 2 cert1111 = true := by
  decide +kernel
#print axioms checked1111
def cert1112 : PairCertificate (Fin 120) := .split 90 cert1110 cert1111
theorem checked1112 : checkPair O U c1068 c1067 2 cert1112 = true := by
  apply checkPair_split_literal O U c1068 c1067 c1070 c1079 c1070 90 1 cert1110 cert1111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1110
  · exact checked1111
#print axioms checked1112
def cert1113 : PairCertificate (Fin 120) := .split 65 cert1094 cert1112
theorem checked1113 : checkPair O U c1066 c1067 2 cert1113 = true := by
  apply checkPair_split_literal O U c1066 c1067 c1068 c1069 c1068 65 1 cert1094 cert1112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1094
  · exact checked1112
#print axioms checked1113
def colors1114 (v : Fin 120) : Nat := if (1267650620445865480250743324672 : Nat).testBit v.val then 0 else if (166153539087195741245144679307018240 : Nat).testBit v.val then 1 else if (5192296858534827628530496329220096 : Nat).testBit v.val then 2 else 0
def cert1114 : CliqueCertificate (Fin 120) := .color 3 colors1114
theorem checked1114 : checkClique O c1095 4 cert1114 = true := by
  decide +kernel
#print axioms checked1114
def colors1115 (v : Fin 120) : Nat := if (79537656968818648401559158784 : Nat).testBit v.val then 0 else if (83076749736557242056487941267521536 : Nat).testBit v.val then 1 else 0
def cert1115 : CliqueCertificate (Fin 120) := .color 2 colors1115
theorem checked1115 : checkClique O c1075 4 cert1115 = true := by
  decide +kernel
#print axioms checked1115
def colors1116 (v : Fin 120) : Nat := if (730206369498438497820052757152000 : Nat).testBit v.val then 0 else if (83584126889355259276735100814886912 : Nat).testBit v.val then 1 else if (4536218504197617715150317420544 : Nat).testBit v.val then 2 else if (171345796370334937969174512454860800 : Nat).testBit v.val then 3 else 0
def cert1116 : CliqueCertificate (Fin 120) := .color 4 colors1116
theorem checked1116 : checkClique O c1097 5 cert1116 = true := by
  decide +kernel
#print axioms checked1116
def cert1117 : CliqueCertificate (Fin 120) := .split 6 cert1115 cert1116
theorem checked1117 : checkClique O c1096 5 cert1117 = true := by
  apply checkClique_split_literal O c1096 c1075 c1097 6 4 cert1115 cert1116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1115
  · exact checked1116
#print axioms checked1117
def cert1118 : CliqueCertificate (Fin 120) := .split 3 cert1114 cert1117
theorem checked1118 : checkClique O c1094 5 cert1118 = true := by
  apply checkClique_split_literal O c1094 c1095 c1096 3 4 cert1114 cert1117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1114
  · exact checked1117
#print axioms checked1118
def cert1119 : PairCertificate (Fin 120) := .cross cert1118
theorem checked1119 : checkPair O U c6 c1094 0 cert1119 = true := by
  exact checked1118
#print axioms checked1119
def cert1120 : PairCertificate (Fin 120) := .first .size
theorem checked1120 : checkPair O U c6 c1093 1 cert1120 = true := by
  decide +kernel
#print axioms checked1120
def cert1121 : PairCertificate (Fin 120) := .split 114 cert1119 cert1120
theorem checked1121 : checkPair O U c1070 c1093 1 cert1121 = true := by
  apply checkPair_split_literal O U c1070 c1093 c6 c1094 c6 114 0 cert1119 cert1120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1119
  · exact checked1120
#print axioms checked1121
def cert1122 : PairCertificate (Fin 120) := .first .size
theorem checked1122 : checkPair O U c1070 c1092 2 cert1122 = true := by
  decide +kernel
#print axioms checked1122
def cert1123 : PairCertificate (Fin 120) := .split 90 cert1121 cert1122
theorem checked1123 : checkPair O U c1068 c1092 2 cert1123 = true := by
  apply checkPair_split_literal O U c1068 c1092 c1070 c1093 c1070 90 1 cert1121 cert1122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1121
  · exact checked1122
#print axioms checked1123
def cert1124 : PairCertificate (Fin 120) := .first .size
theorem checked1124 : checkPair O U c1068 c1065 3 cert1124 = true := by
  decide +kernel
#print axioms checked1124
def cert1125 : PairCertificate (Fin 120) := .split 65 cert1123 cert1124
theorem checked1125 : checkPair O U c1066 c1065 3 cert1125 = true := by
  apply checkPair_split_literal O U c1066 c1065 c1068 c1092 c1068 65 2 cert1123 cert1124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1123
  · exact checked1124
#print axioms checked1125
def cert1126 : PairCertificate (Fin 120) := .split 64 cert1113 cert1125
theorem checked1126 : checkPair O U c1064 c1065 3 cert1126 = true := by
  apply checkPair_split_literal O U c1064 c1065 c1066 c1067 c1066 64 2 cert1113 cert1125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1113
  · exact checked1125
#print axioms checked1126
def cert1127 : PairCertificate (Fin 120) := .first .size
theorem checked1127 : checkPair O U c565 c1099 3 cert1127 = true := by
  decide +kernel
#print axioms checked1127
def cert1128 : PairCertificate (Fin 120) := .first .size
theorem checked1128 : checkPair O U c6 c1101 3 cert1128 = true := by
  decide +kernel
#print axioms checked1128
def cert1129 : PairCertificate (Fin 120) := .first .size
theorem checked1129 : checkPair O U c6 c1103 3 cert1129 = true := by
  decide +kernel
#print axioms checked1129
def colors1130 (v : Fin 120) : Nat := if (618970056536178284868665344 : Nat).testBit v.val then 0 else if (20769187434139310514121985316880384 : Nat).testBit v.val then 1 else 0
def cert1130 : PairCertificate (Fin 120) := .first (.color 2 colors1130)
theorem checked1130 : checkPair O U c1105 c1106 3 cert1130 = true := by
  decide +kernel
#print axioms checked1130
def cert1131 : PairCertificate (Fin 120) := .first .size
theorem checked1131 : checkPair O U c6 c1108 3 cert1131 = true := by
  decide +kernel
#print axioms checked1131
def cert1132 : PairCertificate (Fin 120) := .first .size
theorem checked1132 : checkPair O U c1110 c1111 3 cert1132 = true := by
  decide +kernel
#print axioms checked1132
def cert1133 : PairCertificate (Fin 120) := .first .size
theorem checked1133 : checkPair O U c6 c1113 3 cert1133 = true := by
  decide +kernel
#print axioms checked1133
def colors1134 (v : Fin 120) : Nat := if (324518553658426726783783085801480 : Nat).testBit v.val then 0 else if (4722366482869645213696 : Nat).testBit v.val then 1 else if (77371252455336267181195264 : Nat).testBit v.val then 2 else 0
def cert1134 : CliqueCertificate (Fin 120) := .color 3 colors1134
theorem checked1134 : checkClique O c1119 4 cert1134 = true := by
  decide +kernel
#print axioms checked1134
def colors1135 (v : Fin 120) : Nat := if (1307264681485361851905890861056 : Nat).testBit v.val then 0 else if (166153499473133373578907361115897856 : Nat).testBit v.val then 1 else 0
def cert1135 : CliqueCertificate (Fin 120) := .color 2 colors1135
theorem checked1135 : checkClique O c1121 4 cert1135 = true := by
  decide +kernel
#print axioms checked1135
def colors1136 (v : Fin 120) : Nat := if (79228171958997338654645420032 : Nat).testBit v.val then 0 else if (83076750046042251877833009992302592 : Nat).testBit v.val then 1 else 0
def cert1136 : CliqueCertificate (Fin 120) := .color 2 colors1136
theorem checked1136 : checkClique O c1123 4 cert1136 = true := by
  decide +kernel
#print axioms checked1136
def colors1137 (v : Fin 120) : Nat := if (250061828003440334122777174045900800 : Nat).testBit v.val then 0 else 0
def cert1137 : CliqueCertificate (Fin 120) := .color 1 colors1137
theorem checked1137 : checkClique O c1125 4 cert1137 = true := by
  decide +kernel
#print axioms checked1137
def colors1138 (v : Fin 120) : Nat := if (84070588116687296859652576440893440 : Nat).testBit v.val then 0 else if (166156074388400993857442717357834240 : Nat).testBit v.val then 1 else if (83110458534351196512065230471168 : Nat).testBit v.val then 2 else if (162576189479270420741952186089472 : Nat).testBit v.val then 3 else 0
def cert1138 : CliqueCertificate (Fin 120) := .color 4 colors1138
theorem checked1138 : checkClique O c1126 5 cert1138 = true := by
  decide +kernel
#print axioms checked1138
def cert1139 : CliqueCertificate (Fin 120) := .split 12 cert1137 cert1138
theorem checked1139 : checkClique O c1124 5 cert1139 = true := by
  apply checkClique_split_literal O c1124 c1125 c1126 12 4 cert1137 cert1138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1137
  · exact checked1138
#print axioms checked1139
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
