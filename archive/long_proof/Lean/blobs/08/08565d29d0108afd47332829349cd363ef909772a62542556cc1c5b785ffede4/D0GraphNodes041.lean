import D0GraphStates
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors1230 (v : Fin 120) : Nat := if (83076749736632799929221192284635138 : Nat).testBit v.val then 0 else 0
def cert1230 : CliqueCertificate (Fin 120) := .color 1 colors1230
theorem checked1230 : checkClique O c1218 4 cert1230 = true := by
  decide +kernel
#print axioms checked1230
def colors1231 (v : Fin 120) : Nat := if (636301180211132205440579411968 : Nat).testBit v.val then 0 else 0
def cert1231 : CliqueCertificate (Fin 120) := .color 1 colors1231
theorem checked1231 : checkClique O c1220 4 cert1231 = true := by
  decide +kernel
#print axioms checked1231
def colors1232 (v : Fin 120) : Nat := if (19808249554529814284356026376 : Nat).testBit v.val then 0 else 0
def cert1232 : CliqueCertificate (Fin 120) := .color 1 colors1232
theorem checked1232 : checkClique O c1222 4 cert1232 = true := by
  decide +kernel
#print axioms checked1232
def colors1233 (v : Fin 120) : Nat := if (171345796331649311746010115930603520 : Nat).testBit v.val then 0 else if (39614100146598100275352829952 : Nat).testBit v.val then 1 else 0
def cert1233 : CliqueCertificate (Fin 120) := .color 2 colors1233
theorem checked1233 : checkClique O c1224 4 cert1233 = true := by
  decide +kernel
#print axioms checked1233
def colors1234 (v : Fin 120) : Nat := if (254422551019966710940078369681702912 : Nat).testBit v.val then 0 else 0
def cert1234 : CliqueCertificate (Fin 120) := .color 1 colors1234
theorem checked1234 : checkClique O c1226 4 cert1234 = true := by
  decide +kernel
#print axioms checked1234
def colors1235 (v : Fin 120) : Nat := if (153263124818952192 : Nat).testBit v.val then 0 else if (75557863725914323419136 : Nat).testBit v.val then 1 else 0
def cert1235 : CliqueCertificate (Fin 120) := .color 2 colors1235
theorem checked1235 : checkClique O c1228 4 cert1235 = true := by
  decide +kernel
#print axioms checked1235
def colors1236 (v : Fin 120) : Nat := if (81129638414606753753524776992768 : Nat).testBit v.val then 0 else if (4951760157141521099596496896 : Nat).testBit v.val then 1 else 0
def cert1236 : CliqueCertificate (Fin 120) := .color 2 colors1236
theorem checked1236 : checkClique O c1230 4 cert1236 = true := by
  decide +kernel
#print axioms checked1236
def colors1237 (v : Fin 120) : Nat := if (41538374868278621460589534861328384 : Nat).testBit v.val then 0 else if (75557863725914323419136 : Nat).testBit v.val then 1 else 0
def cert1237 : CliqueCertificate (Fin 120) := .color 2 colors1237
theorem checked1237 : checkClique O c988 4 cert1237 = true := by
  decide +kernel
#print axioms checked1237
def colors1238 (v : Fin 120) : Nat := if (4951779065058700320233750528 : Nat).testBit v.val then 0 else 0
def cert1238 : CliqueCertificate (Fin 120) := .color 1 colors1238
theorem checked1238 : checkClique O c1233 4 cert1238 = true := by
  decide +kernel
#print axioms checked1238
def colors1239 (v : Fin 120) : Nat := if (166153539087195750468516853600747520 : Nat).testBit v.val then 0 else 0
def cert1239 : CliqueCertificate (Fin 120) := .color 1 colors1239
theorem checked1239 : checkClique O c1235 4 cert1239 = true := by
  decide +kernel
#print axioms checked1239
def cert1240 : CliqueCertificate (Fin 120) := .size
theorem checked1240 : checkClique O c1237 4 cert1240 = true := by
  decide +kernel
#print axioms checked1240
def cert1241 : CliqueCertificate (Fin 120) := .size
theorem checked1241 : checkClique O c1239 4 cert1241 = true := by
  decide +kernel
#print axioms checked1241
def colors1242 (v : Fin 120) : Nat := if (41539028519962186334465597173137408 : Nat).testBit v.val then 0 else if (39614081257132168796771975168 : Nat).testBit v.val then 1 else 0
def cert1242 : CliqueCertificate (Fin 120) := .color 2 colors1242
theorem checked1242 : checkClique O c1241 4 cert1242 = true := by
  decide +kernel
#print axioms checked1242
def colors1243 (v : Fin 120) : Nat := if (46731305571607501281989510721175552 : Nat).testBit v.val then 0 else if (81132427425380517378441380626432 : Nat).testBit v.val then 1 else if (249230293775588698306879634494455808 : Nat).testBit v.val then 2 else if (19807040628566084398385987584 : Nat).testBit v.val then 3 else 0
def cert1243 : CliqueCertificate (Fin 120) := .color 4 colors1243
theorem checked1243 : checkClique O c1242 5 cert1243 = true := by
  decide +kernel
#print axioms checked1243
def cert1244 : CliqueCertificate (Fin 120) := .split 49 cert1242 cert1243
theorem checked1244 : checkClique O c1240 5 cert1244 = true := by
  apply checkClique_split_literal O c1240 c1241 c1242 49 4 cert1242 cert1243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1242
  · exact checked1243
#print axioms checked1244
def cert1245 : CliqueCertificate (Fin 120) := .split 47 cert1241 cert1244
theorem checked1245 : checkClique O c1238 5 cert1245 = true := by
  apply checkClique_split_literal O c1238 c1239 c1240 47 4 cert1241 cert1244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1241
  · exact checked1244
#print axioms checked1245
def cert1246 : CliqueCertificate (Fin 120) := .split 37 cert1240 cert1245
theorem checked1246 : checkClique O c1236 5 cert1246 = true := by
  apply checkClique_split_literal O c1236 c1237 c1238 37 4 cert1240 cert1245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1240
  · exact checked1245
#print axioms checked1246
def cert1247 : CliqueCertificate (Fin 120) := .split 36 cert1239 cert1246
theorem checked1247 : checkClique O c1234 5 cert1247 = true := by
  apply checkClique_split_literal O c1234 c1235 c1236 36 4 cert1239 cert1246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1239
  · exact checked1246
#print axioms checked1247
def cert1248 : CliqueCertificate (Fin 120) := .split 32 cert1238 cert1247
theorem checked1248 : checkClique O c1232 5 cert1248 = true := by
  apply checkClique_split_literal O c1232 c1233 c1234 32 4 cert1238 cert1247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1238
  · exact checked1247
#print axioms checked1248
def cert1249 : CliqueCertificate (Fin 120) := .split 23 cert1237 cert1248
theorem checked1249 : checkClique O c1231 5 cert1249 = true := by
  apply checkClique_split_literal O c1231 c988 c1232 23 4 cert1237 cert1248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1237
  · exact checked1248
#print axioms checked1249
def cert1250 : CliqueCertificate (Fin 120) := .split 19 cert1236 cert1249
theorem checked1250 : checkClique O c1229 5 cert1250 = true := by
  apply checkClique_split_literal O c1229 c1230 c1231 19 4 cert1236 cert1249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1236
  · exact checked1249
#print axioms checked1250
def cert1251 : CliqueCertificate (Fin 120) := .split 14 cert1235 cert1250
theorem checked1251 : checkClique O c1227 5 cert1251 = true := by
  apply checkClique_split_literal O c1227 c1228 c1229 14 4 cert1235 cert1250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1235
  · exact checked1250
#print axioms checked1251
def cert1252 : CliqueCertificate (Fin 120) := .split 13 cert1234 cert1251
theorem checked1252 : checkClique O c1225 5 cert1252 = true := by
  apply checkClique_split_literal O c1225 c1226 c1227 13 4 cert1234 cert1251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1234
  · exact checked1251
#print axioms checked1252
def cert1253 : CliqueCertificate (Fin 120) := .split 3 cert1233 cert1252
theorem checked1253 : checkClique O c1223 5 cert1253 = true := by
  apply checkClique_split_literal O c1223 c1224 c1225 3 4 cert1233 cert1252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1233
  · exact checked1252
#print axioms checked1253
def cert1254 : CliqueCertificate (Fin 120) := .split 2 cert1232 cert1253
theorem checked1254 : checkClique O c1221 5 cert1254 = true := by
  apply checkClique_split_literal O c1221 c1222 c1223 2 4 cert1232 cert1253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1232
  · exact checked1253
#print axioms checked1254
def cert1255 : CliqueCertificate (Fin 120) := .split 1 cert1231 cert1254
theorem checked1255 : checkClique O c1219 5 cert1255 = true := by
  apply checkClique_split_literal O c1219 c1220 c1221 1 4 cert1231 cert1254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1231
  · exact checked1254
#print axioms checked1255
def cert1256 : CliqueCertificate (Fin 120) := .split 0 cert1230 cert1255
theorem checked1256 : checkClique O c1217 5 cert1256 = true := by
  apply checkClique_split_literal O c1217 c1218 c1219 0 4 cert1230 cert1255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1230
  · exact checked1255
#print axioms checked1256
def cert1257 : PairCertificate (Fin 120) := .cross cert1256
theorem checked1257 : checkPair O U c6 c1217 0 cert1257 = true := by
  exact checked1256
#print axioms checked1257
def cert1258 : PairCertificate (Fin 120) := .first .size
theorem checked1258 : checkPair O U c6 c1216 1 cert1258 = true := by
  decide +kernel
#print axioms checked1258
def cert1259 : PairCertificate (Fin 120) := .split 105 cert1257 cert1258
theorem checked1259 : checkPair O U c978 c1216 1 cert1259 = true := by
  apply checkPair_split_literal O U c978 c1216 c6 c1217 c6 105 0 cert1257 cert1258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1257
  · exact checked1258
#print axioms checked1259
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
