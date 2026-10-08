import D0GraphStates
import D0GraphNodes038
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors1170 (v : Fin 120) : Nat := if (250366064147485664446170626344910848 : Nat).testBit v.val then 0 else 0
def cert1170 : CliqueCertificate (Fin 120) := .color 1 colors1170
theorem checked1170 : checkClique O c1158 4 cert1170 = true := by
  decide +kernel
#print axioms checked1170
def colors1171 (v : Fin 120) : Nat := if (166660599327320089571266951553056768 : Nat).testBit v.val then 0 else if (83077383871380440072320656349855744 : Nat).testBit v.val then 1 else if (85011934434688928928291857891328 : Nat).testBit v.val then 2 else if (649354019966910510916686216953856 : Nat).testBit v.val then 3 else 0
def cert1171 : CliqueCertificate (Fin 120) := .color 4 colors1171
theorem checked1171 : checkClique O c1159 5 cert1171 = true := by
  decide +kernel
#print axioms checked1171
def cert1172 : CliqueCertificate (Fin 120) := .split 13 cert1170 cert1171
theorem checked1172 : checkClique O c1157 5 cert1172 = true := by
  apply checkClique_split_literal O c1157 c1158 c1159 13 4 cert1170 cert1171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1170
  · exact checked1171
#print axioms checked1172
def cert1173 : CliqueCertificate (Fin 120) := .split 6 cert1169 cert1172
theorem checked1173 : checkClique O c1155 5 cert1173 = true := by
  apply checkClique_split_literal O c1155 c1156 c1157 6 4 cert1169 cert1172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1169
  · exact checked1172
#print axioms checked1173
def cert1174 : CliqueCertificate (Fin 120) := .split 5 cert1168 cert1173
theorem checked1174 : checkClique O c1153 5 cert1174 = true := by
  apply checkClique_split_literal O c1153 c1154 c1155 5 4 cert1168 cert1173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1168
  · exact checked1173
#print axioms checked1174
def cert1175 : CliqueCertificate (Fin 120) := .split 3 cert1167 cert1174
theorem checked1175 : checkClique O c1151 5 cert1175 = true := by
  apply checkClique_split_literal O c1151 c1152 c1153 3 4 cert1167 cert1174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1167
  · exact checked1174
#print axioms checked1175
def cert1176 : PairCertificate (Fin 120) := .cross cert1175
theorem checked1176 : checkPair O U c6 c1151 0 cert1176 = true := by
  exact checked1175
#print axioms checked1176
def cert1177 : PairCertificate (Fin 120) := .first .size
theorem checked1177 : checkPair O U c6 c1150 1 cert1177 = true := by
  decide +kernel
#print axioms checked1177
def cert1178 : PairCertificate (Fin 120) := .split 114 cert1176 cert1177
theorem checked1178 : checkPair O U c1070 c1150 1 cert1178 = true := by
  apply checkPair_split_literal O U c1070 c1150 c6 c1151 c6 114 0 cert1176 cert1177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1176
  · exact checked1177
#print axioms checked1178
def cert1179 : PairCertificate (Fin 120) := .first .size
theorem checked1179 : checkPair O U c1070 c1149 2 cert1179 = true := by
  decide +kernel
#print axioms checked1179
def cert1180 : PairCertificate (Fin 120) := .split 90 cert1178 cert1179
theorem checked1180 : checkPair O U c1068 c1149 2 cert1180 = true := by
  apply checkPair_split_literal O U c1068 c1149 c1070 c1150 c1070 90 1 cert1178 cert1179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1178
  · exact checked1179
#print axioms checked1180
def colors1181 (v : Fin 120) : Nat := if (20769187434214868377847899640299520 : Nat).testBit v.val then 0 else if (1242775742563838791597948928 : Nat).testBit v.val then 1 else 0
def cert1181 : PairCertificate (Fin 120) := .first (.color 2 colors1181)
theorem checked1181 : checkPair O U c1160 c1148 3 cert1181 = true := by
  decide +kernel
#print axioms checked1181
def cert1182 : PairCertificate (Fin 120) := .split 65 cert1180 cert1181
theorem checked1182 : checkPair O U c1147 c1148 3 cert1182 = true := by
  apply checkPair_split_literal O U c1147 c1148 c1068 c1149 c1160 65 2 cert1180 cert1181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1180
  · exact checked1181
#print axioms checked1182
def colors1183 (v : Fin 120) : Nat := if (9903747098554684384420560896 : Nat).testBit v.val then 0 else if (1242775742563838791597948928 : Nat).testBit v.val then 1 else if (20769187434139310514121985316880384 : Nat).testBit v.val then 2 else 0
def cert1183 : PairCertificate (Fin 120) := .first (.color 3 colors1183)
theorem checked1183 : checkPair O U c1161 c1130 4 cert1183 = true := by
  decide +kernel
#print axioms checked1183
def cert1184 : PairCertificate (Fin 120) := .split 64 cert1182 cert1183
theorem checked1184 : checkPair O U c1146 c1130 4 cert1184 = true := by
  apply checkPair_split_literal O U c1146 c1130 c1147 c1148 c1161 64 3 cert1182 cert1183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1182
  · exact checked1183
#print axioms checked1184
def cert1185 : PairCertificate (Fin 120) := .split 63 cert1166 cert1184
theorem checked1185 : checkPair O U c1144 c1130 4 cert1185 = true := by
  apply checkPair_split_literal O U c1144 c1130 c6 c1145 c1146 63 3 cert1166 cert1184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1166
  · exact checked1184
#print axioms checked1185
def cert1186 : PairCertificate (Fin 120) := .split 58 cert1165 cert1185
theorem checked1186 : checkPair O U c1141 c1130 4 cert1186 = true := by
  apply checkPair_split_literal O U c1141 c1130 c1142 c1143 c1144 58 3 cert1165 cert1185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1165
  · exact checked1185
#print axioms checked1186
def cert1187 : PairCertificate (Fin 120) := .split 48 cert1164 cert1186
theorem checked1187 : checkPair O U c1139 c1130 4 cert1187 = true := by
  apply checkPair_split_literal O U c1139 c1130 c6 c1140 c1141 48 3 cert1164 cert1186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1164
  · exact checked1186
#print axioms checked1187
def cert1188 : PairCertificate (Fin 120) := .split 42 cert1163 cert1187
theorem checked1188 : checkPair O U c1137 c1130 4 cert1188 = true := by
  apply checkPair_split_literal O U c1137 c1130 c6 c1138 c1139 42 3 cert1163 cert1187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1163
  · exact checked1187
#print axioms checked1188
def cert1189 : PairCertificate (Fin 120) := .split 38 cert1162 cert1188
theorem checked1189 : checkPair O U c1134 c1130 4 cert1189 = true := by
  apply checkPair_split_literal O U c1134 c1130 c1135 c1136 c1137 38 3 cert1162 cert1188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1162
  · exact checked1188
#print axioms checked1189
def cert1190 : PairCertificate (Fin 120) := .split 35 cert1161 cert1189
theorem checked1190 : checkPair O U c1132 c1130 4 cert1190 = true := by
  apply checkPair_split_literal O U c1132 c1130 c6 c1133 c1134 35 3 cert1161 cert1189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1161
  · exact checked1189
#print axioms checked1190
def cert1191 : PairCertificate (Fin 120) := .split 33 cert1160 cert1190
theorem checked1191 : checkPair O U c1129 c1130 4 cert1191 = true := by
  apply checkPair_split_literal O U c1129 c1130 c533 c1131 c1132 33 3 cert1160 cert1190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1160
  · exact checked1190
#print axioms checked1191
def colors1192 (v : Fin 120) : Nat := if (83783781860757610074998682157056 : Nat).testBit v.val then 0 else if (19807040628602113195404951552 : Nat).testBit v.val then 1 else if (9671408862760042611343360 : Nat).testBit v.val then 2 else 0
def cert1192 : PairCertificate (Fin 120) := .first (.color 3 colors1192)
theorem checked1192 : checkPair O U c1163 c1164 4 cert1192 = true := by
  decide +kernel
#print axioms checked1192
def colors1193 (v : Fin 120) : Nat := if (324840418153938681511054533459968 : Nat).testBit v.val then 0 else if (9903521605573141757371088896 : Nat).testBit v.val then 1 else if (5192296858534828781452000936067072 : Nat).testBit v.val then 2 else 0
def cert1193 : PairCertificate (Fin 120) := .first (.color 3 colors1193)
theorem checked1193 : checkPair O U c1166 c1167 4 cert1193 = true := by
  decide +kernel
#print axioms checked1193
def colors1194 (v : Fin 120) : Nat := if (332327598887755001879954558531141632 : Nat).testBit v.val then 0 else if (4951781723691186275276029952 : Nat).testBit v.val then 1 else 0
def cert1194 : PairCertificate (Fin 120) := .first (.color 2 colors1194)
theorem checked1194 : checkPair O U c1169 c1170 4 cert1194 = true := by
  decide +kernel
#print axioms checked1194
def colors1195 (v : Fin 120) : Nat := if (82397598502953026834272513687552 : Nat).testBit v.val then 0 else if (636301180193838382802756698112 : Nat).testBit v.val then 1 else if (1208925819614629174706176 : Nat).testBit v.val then 2 else 0
def cert1195 : PairCertificate (Fin 120) := .first (.color 3 colors1195)
theorem checked1195 : checkPair O U c1172 c1173 4 cert1195 = true := by
  decide +kernel
#print axioms checked1195
def cert1196 : PairCertificate (Fin 120) := .first .size
theorem checked1196 : checkPair O U c6 c1177 3 cert1196 = true := by
  decide +kernel
#print axioms checked1196
def cert1197 : PairCertificate (Fin 120) := .first .size
theorem checked1197 : checkPair O U c6 c1179 3 cert1197 = true := by
  decide +kernel
#print axioms checked1197
def cert1198 : PairCertificate (Fin 120) := .first .size
theorem checked1198 : checkPair O U c1181 c1182 3 cert1198 = true := by
  decide +kernel
#print axioms checked1198
def cert1199 : PairCertificate (Fin 120) := .first .size
theorem checked1199 : checkPair O U c6 c1184 3 cert1199 = true := by
  decide +kernel
#print axioms checked1199
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
