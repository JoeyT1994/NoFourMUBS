import D0GraphStates
import D0GraphNodes039
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors1200 (v : Fin 120) : Nat := if (2555108241121918376088971513984 : Nat).testBit v.val then 0 else 0
def cert1200 : CliqueCertificate (Fin 120) := .color 1 colors1200
theorem checked1200 : checkClique O c1190 4 cert1200 = true := by
  decide +kernel
#print axioms checked1200
def colors1201 (v : Fin 120) : Nat := if (2485551485415908509103423552 : Nat).testBit v.val then 0 else 0
def cert1201 : CliqueCertificate (Fin 120) := .color 1 colors1201
theorem checked1201 : checkClique O c1192 4 cert1201 = true := by
  decide +kernel
#print axioms checked1201
def colors1202 (v : Fin 120) : Nat := if (415383748682786210291448005104009216 : Nat).testBit v.val then 0 else if (309494454554310808015208448 : Nat).testBit v.val then 1 else 0
def cert1202 : CliqueCertificate (Fin 120) := .color 2 colors1202
theorem checked1202 : checkClique O c1194 4 cert1202 = true := by
  decide +kernel
#print axioms checked1202
def colors1203 (v : Fin 120) : Nat := if (166153499473416715572384238967717888 : Nat).testBit v.val then 0 else 0
def cert1203 : CliqueCertificate (Fin 120) := .color 1 colors1203
theorem checked1203 : checkClique O c1196 4 cert1203 = true := by
  decide +kernel
#print axioms checked1203
def colors1204 (v : Fin 120) : Nat := if (581537253107660851537007057213325312 : Nat).testBit v.val then 0 else 0
def cert1204 : CliqueCertificate (Fin 120) := .color 1 colors1204
theorem checked1204 : checkClique O c1198 4 cert1204 = true := by
  decide +kernel
#print axioms checked1204
def colors1205 (v : Fin 120) : Nat := if (293015450755792896 : Nat).testBit v.val then 0 else if (302231454903657293676544 : Nat).testBit v.val then 1 else 0
def cert1205 : CliqueCertificate (Fin 120) := .color 2 colors1205
theorem checked1205 : checkClique O c1200 4 cert1205 = true := by
  decide +kernel
#print axioms checked1205
def colors1206 (v : Fin 120) : Nat := if (332306998946229005133303104852459520 : Nat).testBit v.val then 0 else if (41540930286609183828316430052360192 : Nat).testBit v.val then 1 else if (249230293790029695587955761861361664 : Nat).testBit v.val then 2 else if (81132269339421618032530459459584 : Nat).testBit v.val then 3 else 0
def cert1206 : CliqueCertificate (Fin 120) := .color 4 colors1206
theorem checked1206 : checkClique O c1201 5 cert1206 = true := by
  decide +kernel
#print axioms checked1206
def cert1207 : CliqueCertificate (Fin 120) := .split 15 cert1205 cert1206
theorem checked1207 : checkClique O c1199 5 cert1207 = true := by
  apply checkClique_split_literal O c1199 c1200 c1201 15 4 cert1205 cert1206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1205
  · exact checked1206
#print axioms checked1207
def cert1208 : CliqueCertificate (Fin 120) := .split 12 cert1204 cert1207
theorem checked1208 : checkClique O c1197 5 cert1208 = true := by
  apply checkClique_split_literal O c1197 c1198 c1199 12 4 cert1204 cert1207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1204
  · exact checked1207
#print axioms checked1208
def cert1209 : CliqueCertificate (Fin 120) := .split 7 cert1203 cert1208
theorem checked1209 : checkClique O c1195 5 cert1209 = true := by
  apply checkClique_split_literal O c1195 c1196 c1197 7 4 cert1203 cert1208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1203
  · exact checked1208
#print axioms checked1209
def cert1210 : CliqueCertificate (Fin 120) := .split 6 cert1202 cert1209
theorem checked1210 : checkClique O c1193 5 cert1210 = true := by
  apply checkClique_split_literal O c1193 c1194 c1195 6 4 cert1202 cert1209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1202
  · exact checked1209
#print axioms checked1210
def cert1211 : CliqueCertificate (Fin 120) := .split 5 cert1201 cert1210
theorem checked1211 : checkClique O c1191 5 cert1211 = true := by
  apply checkClique_split_literal O c1191 c1192 c1193 5 4 cert1201 cert1210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1201
  · exact checked1210
#print axioms checked1211
def cert1212 : CliqueCertificate (Fin 120) := .split 4 cert1200 cert1211
theorem checked1212 : checkClique O c1189 5 cert1212 = true := by
  apply checkClique_split_literal O c1189 c1190 c1191 4 4 cert1200 cert1211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1200
  · exact checked1211
#print axioms checked1212
def cert1213 : PairCertificate (Fin 120) := .cross cert1212
theorem checked1213 : checkPair O U c6 c1189 0 cert1213 = true := by
  exact checked1212
#print axioms checked1213
def cert1214 : PairCertificate (Fin 120) := .first .size
theorem checked1214 : checkPair O U c6 c1188 1 cert1214 = true := by
  decide +kernel
#print axioms checked1214
def cert1215 : PairCertificate (Fin 120) := .split 111 cert1213 cert1214
theorem checked1215 : checkPair O U c889 c1188 1 cert1215 = true := by
  apply checkPair_split_literal O U c889 c1188 c6 c1189 c6 111 0 cert1213 cert1214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1213
  · exact checked1214
#print axioms checked1215
def cert1216 : PairCertificate (Fin 120) := .first .size
theorem checked1216 : checkPair O U c889 c1187 2 cert1216 = true := by
  decide +kernel
#print axioms checked1216
def cert1217 : PairCertificate (Fin 120) := .split 103 cert1215 cert1216
theorem checked1217 : checkPair O U c887 c1187 2 cert1217 = true := by
  apply checkPair_split_literal O U c887 c1187 c889 c1188 c889 103 1 cert1215 cert1216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1215
  · exact checked1216
#print axioms checked1217
def cert1218 : PairCertificate (Fin 120) := .first .size
theorem checked1218 : checkPair O U c887 c1186 3 cert1218 = true := by
  decide +kernel
#print axioms checked1218
def cert1219 : PairCertificate (Fin 120) := .split 70 cert1217 cert1218
theorem checked1219 : checkPair O U c885 c1186 3 cert1219 = true := by
  apply checkPair_split_literal O U c885 c1186 c887 c1187 c887 70 2 cert1217 cert1218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1217
  · exact checked1218
#print axioms checked1219
def colors1220 (v : Fin 120) : Nat := if (1901553426399875705082793164800 : Nat).testBit v.val then 0 else if (10220432964340099549567169593344 : Nat).testBit v.val then 1 else if (2596148429267413814265248164610048 : Nat).testBit v.val then 2 else 0
def cert1220 : PairCertificate (Fin 120) := .first (.color 3 colors1220)
theorem checked1220 : checkPair O U c1202 c1176 4 cert1220 = true := by
  decide +kernel
#print axioms checked1220
def cert1221 : PairCertificate (Fin 120) := .split 63 cert1219 cert1220
theorem checked1221 : checkPair O U c1185 c1176 4 cert1221 = true := by
  apply checkPair_split_literal O U c1185 c1176 c885 c1186 c1202 63 3 cert1219 cert1220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1219
  · exact checked1220
#print axioms checked1221
def cert1222 : PairCertificate (Fin 120) := .split 45 cert1199 cert1221
theorem checked1222 : checkPair O U c1183 c1176 4 cert1222 = true := by
  apply checkPair_split_literal O U c1183 c1176 c6 c1184 c1185 45 3 cert1199 cert1221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1199
  · exact checked1221
#print axioms checked1222
def cert1223 : PairCertificate (Fin 120) := .split 44 cert1198 cert1222
theorem checked1223 : checkPair O U c1180 c1176 4 cert1223 = true := by
  apply checkPair_split_literal O U c1180 c1176 c1181 c1182 c1183 44 3 cert1198 cert1222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1198
  · exact checked1222
#print axioms checked1223
def cert1224 : PairCertificate (Fin 120) := .split 38 cert1197 cert1223
theorem checked1224 : checkPair O U c1178 c1176 4 cert1224 = true := by
  apply checkPair_split_literal O U c1178 c1176 c6 c1179 c1180 38 3 cert1197 cert1223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1197
  · exact checked1223
#print axioms checked1224
def cert1225 : PairCertificate (Fin 120) := .split 37 cert1196 cert1224
theorem checked1225 : checkPair O U c1175 c1176 4 cert1225 = true := by
  apply checkPair_split_literal O U c1175 c1176 c6 c1177 c1178 37 3 cert1196 cert1224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1196
  · exact checked1224
#print axioms checked1225
def cert1226 : PairCertificate (Fin 120) := .first .size
theorem checked1226 : checkPair O U c6 c1206 3 cert1226 = true := by
  decide +kernel
#print axioms checked1226
def cert1227 : PairCertificate (Fin 120) := .first .size
theorem checked1227 : checkPair O U c6 c1208 3 cert1227 = true := by
  decide +kernel
#print axioms checked1227
def cert1228 : PairCertificate (Fin 120) := .first .size
theorem checked1228 : checkPair O U c6 c1210 3 cert1228 = true := by
  decide +kernel
#print axioms checked1228
def cert1229 : PairCertificate (Fin 120) := .first .size
theorem checked1229 : checkPair O U c761 c1212 3 cert1229 = true := by
  decide +kernel
#print axioms checked1229
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
