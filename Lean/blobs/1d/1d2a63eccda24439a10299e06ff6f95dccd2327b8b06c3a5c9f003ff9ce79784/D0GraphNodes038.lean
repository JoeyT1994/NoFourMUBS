import D0GraphStates
import D0GraphNodes037
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert1140 : CliqueCertificate (Fin 120) := .split 6 cert1136 cert1139
theorem checked1140 : checkClique O c1122 5 cert1140 = true := by
  apply checkClique_split_literal O c1122 c1123 c1124 6 4 cert1136 cert1139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1136
  · exact checked1139
#print axioms checked1140
def cert1141 : CliqueCertificate (Fin 120) := .split 3 cert1135 cert1140
theorem checked1141 : checkClique O c1120 5 cert1141 = true := by
  apply checkClique_split_literal O c1120 c1121 c1122 3 4 cert1135 cert1140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1135
  · exact checked1140
#print axioms checked1141
def cert1142 : CliqueCertificate (Fin 120) := .split 2 cert1134 cert1141
theorem checked1142 : checkClique O c1118 5 cert1142 = true := by
  apply checkClique_split_literal O c1118 c1119 c1120 2 4 cert1134 cert1141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1134
  · exact checked1141
#print axioms checked1142
def cert1143 : PairCertificate (Fin 120) := .cross cert1142
theorem checked1143 : checkPair O U c6 c1118 0 cert1143 = true := by
  exact checked1142
#print axioms checked1143
def cert1144 : PairCertificate (Fin 120) := .first .size
theorem checked1144 : checkPair O U c6 c1117 1 cert1144 = true := by
  decide +kernel
#print axioms checked1144
def cert1145 : PairCertificate (Fin 120) := .split 114 cert1143 cert1144
theorem checked1145 : checkPair O U c1070 c1117 1 cert1145 = true := by
  apply checkPair_split_literal O U c1070 c1117 c6 c1118 c6 114 0 cert1143 cert1144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1143
  · exact checked1144
#print axioms checked1145
def cert1146 : PairCertificate (Fin 120) := .first .size
theorem checked1146 : checkPair O U c1070 c1116 2 cert1146 = true := by
  decide +kernel
#print axioms checked1146
def cert1147 : PairCertificate (Fin 120) := .split 90 cert1145 cert1146
theorem checked1147 : checkPair O U c1068 c1116 2 cert1147 = true := by
  apply checkPair_split_literal O U c1068 c1116 c1070 c1117 c1070 90 1 cert1145 cert1146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1145
  · exact checked1146
#print axioms checked1147
def cert1148 : PairCertificate (Fin 120) := .first .size
theorem checked1148 : checkPair O U c1068 c1115 3 cert1148 = true := by
  decide +kernel
#print axioms checked1148
def cert1149 : PairCertificate (Fin 120) := .split 65 cert1147 cert1148
theorem checked1149 : checkPair O U c1066 c1115 3 cert1149 = true := by
  apply checkPair_split_literal O U c1066 c1115 c1068 c1116 c1068 65 2 cert1147 cert1148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1147
  · exact checked1148
#print axioms checked1149
def colors1150 (v : Fin 120) : Nat := if (619574814593890778808844288 : Nat).testBit v.val then 0 else if (20769187434441541969025642610556928 : Nat).testBit v.val then 1 else if (1240357890924609533248536576 : Nat).testBit v.val then 2 else 0
def cert1150 : PairCertificate (Fin 120) := .first (.color 3 colors1150)
theorem checked1150 : checkPair O U c1127 c1063 4 cert1150 = true := by
  decide +kernel
#print axioms checked1150
def cert1151 : PairCertificate (Fin 120) := .split 64 cert1149 cert1150
theorem checked1151 : checkPair O U c1114 c1063 4 cert1151 = true := by
  apply checkPair_split_literal O U c1114 c1063 c1066 c1115 c1127 64 3 cert1149 cert1150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1149
  · exact checked1150
#print axioms checked1151
def cert1152 : PairCertificate (Fin 120) := .split 62 cert1133 cert1151
theorem checked1152 : checkPair O U c1112 c1063 4 cert1152 = true := by
  apply checkPair_split_literal O U c1112 c1063 c6 c1113 c1114 62 3 cert1133 cert1151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1133
  · exact checked1151
#print axioms checked1152
def cert1153 : PairCertificate (Fin 120) := .split 57 cert1132 cert1152
theorem checked1153 : checkPair O U c1109 c1063 4 cert1153 = true := by
  apply checkPair_split_literal O U c1109 c1063 c1110 c1111 c1112 57 3 cert1132 cert1152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1132
  · exact checked1152
#print axioms checked1153
def cert1154 : PairCertificate (Fin 120) := .split 47 cert1131 cert1153
theorem checked1154 : checkPair O U c1107 c1063 4 cert1154 = true := by
  apply checkPair_split_literal O U c1107 c1063 c6 c1108 c1109 47 3 cert1131 cert1153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1131
  · exact checked1153
#print axioms checked1154
def cert1155 : PairCertificate (Fin 120) := .split 43 cert1130 cert1154
theorem checked1155 : checkPair O U c1104 c1063 4 cert1155 = true := by
  apply checkPair_split_literal O U c1104 c1063 c1105 c1106 c1107 43 3 cert1130 cert1154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1130
  · exact checked1154
#print axioms checked1155
def cert1156 : PairCertificate (Fin 120) := .split 41 cert1129 cert1155
theorem checked1156 : checkPair O U c1102 c1063 4 cert1156 = true := by
  apply checkPair_split_literal O U c1102 c1063 c6 c1103 c1104 41 3 cert1129 cert1155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1129
  · exact checked1155
#print axioms checked1156
def cert1157 : PairCertificate (Fin 120) := .split 34 cert1128 cert1156
theorem checked1157 : checkPair O U c1100 c1063 4 cert1157 = true := by
  apply checkPair_split_literal O U c1100 c1063 c6 c1101 c1102 34 3 cert1128 cert1156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1128
  · exact checked1156
#print axioms checked1157
def cert1158 : PairCertificate (Fin 120) := .split 30 cert1127 cert1157
theorem checked1158 : checkPair O U c1098 c1063 4 cert1158 = true := by
  apply checkPair_split_literal O U c1098 c1063 c565 c1099 c1100 30 3 cert1127 cert1157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1127
  · exact checked1157
#print axioms checked1158
def cert1159 : PairCertificate (Fin 120) := .split 29 cert1126 cert1158
theorem checked1159 : checkPair O U c1062 c1063 4 cert1159 = true := by
  apply checkPair_split_literal O U c1062 c1063 c1064 c1065 c1098 29 3 cert1126 cert1158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1126
  · exact checked1158
#print axioms checked1159
def cert1160 : PairCertificate (Fin 120) := .first .size
theorem checked1160 : checkPair O U c533 c1131 3 cert1160 = true := by
  decide +kernel
#print axioms checked1160
def cert1161 : PairCertificate (Fin 120) := .first .size
theorem checked1161 : checkPair O U c6 c1133 3 cert1161 = true := by
  decide +kernel
#print axioms checked1161
def colors1162 (v : Fin 120) : Nat := if (9903520332729786272902545408 : Nat).testBit v.val then 0 else if (20769187434139310514121985316880384 : Nat).testBit v.val then 1 else 0
def cert1162 : PairCertificate (Fin 120) := .first (.color 2 colors1162)
theorem checked1162 : checkPair O U c1135 c1136 3 cert1162 = true := by
  decide +kernel
#print axioms checked1162
def cert1163 : PairCertificate (Fin 120) := .first .size
theorem checked1163 : checkPair O U c6 c1138 3 cert1163 = true := by
  decide +kernel
#print axioms checked1163
def cert1164 : PairCertificate (Fin 120) := .first .size
theorem checked1164 : checkPair O U c6 c1140 3 cert1164 = true := by
  decide +kernel
#print axioms checked1164
def cert1165 : PairCertificate (Fin 120) := .first .size
theorem checked1165 : checkPair O U c1142 c1143 3 cert1165 = true := by
  decide +kernel
#print axioms checked1165
def cert1166 : PairCertificate (Fin 120) := .first .size
theorem checked1166 : checkPair O U c6 c1145 3 cert1166 = true := by
  decide +kernel
#print axioms checked1166
def colors1167 (v : Fin 120) : Nat := if (1267650619117695351666981732352 : Nat).testBit v.val then 0 else if (166153539087195741245144679307018240 : Nat).testBit v.val then 1 else 0
def cert1167 : CliqueCertificate (Fin 120) := .color 2 colors1167
theorem checked1167 : checkClique O c1152 4 cert1167 = true := by
  decide +kernel
#print axioms checked1167
def colors1168 (v : Fin 120) : Nat := if (20282409603651670424566800318528 : Nat).testBit v.val then 0 else if (37778931862957161709568 : Nat).testBit v.val then 1 else if (38685626227668133590597632 : Nat).testBit v.val then 2 else 0
def cert1168 : CliqueCertificate (Fin 120) := .color 3 colors1168
theorem checked1168 : checkClique O c1154 4 cert1168 = true := by
  decide +kernel
#print axioms checked1168
def colors1169 (v : Fin 120) : Nat := if (79537647524085824499268747264 : Nat).testBit v.val then 0 else if (83076749736566686789453680557948928 : Nat).testBit v.val then 1 else 0
def cert1169 : CliqueCertificate (Fin 120) := .color 2 colors1169
theorem checked1169 : checkClique O c1156 4 cert1169 = true := by
  decide +kernel
#print axioms checked1169
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
