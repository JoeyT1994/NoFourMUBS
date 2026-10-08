import D0GraphStates
import D0GraphNodes040
import D0GraphNodes041
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert1260 : PairCertificate (Fin 120) := .first .size
theorem checked1260 : checkPair O U c978 c1215 2 cert1260 = true := by
  decide +kernel
#print axioms checked1260
def cert1261 : PairCertificate (Fin 120) := .split 97 cert1259 cert1260
theorem checked1261 : checkPair O U c976 c1215 2 cert1261 = true := by
  apply checkPair_split_literal O U c976 c1215 c978 c1216 c978 97 1 cert1259 cert1260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1259
  · exact checked1260
#print axioms checked1261
def cert1262 : PairCertificate (Fin 120) := .first .size
theorem checked1262 : checkPair O U c976 c1214 3 cert1262 = true := by
  decide +kernel
#print axioms checked1262
def cert1263 : PairCertificate (Fin 120) := .split 71 cert1261 cert1262
theorem checked1263 : checkPair O U c974 c1214 3 cert1263 = true := by
  apply checkPair_split_literal O U c974 c1214 c976 c1215 c976 71 2 cert1261 cert1262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1261
  · exact checked1262
#print axioms checked1263
def colors1264 (v : Fin 120) : Nat := if (2614568657191931288546067873792 : Nat).testBit v.val then 0 else if (1426106925256758076683791106048 : Nat).testBit v.val then 1 else if (40564819207303340847894502572032 : Nat).testBit v.val then 2 else 0
def cert1264 : PairCertificate (Fin 120) := .first (.color 3 colors1264)
theorem checked1264 : checkPair O U c1243 c1205 4 cert1264 = true := by
  decide +kernel
#print axioms checked1264
def cert1265 : PairCertificate (Fin 120) := .split 62 cert1263 cert1264
theorem checked1265 : checkPair O U c1213 c1205 4 cert1265 = true := by
  apply checkPair_split_literal O U c1213 c1205 c974 c1214 c1243 62 3 cert1263 cert1264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1263
  · exact checked1264
#print axioms checked1265
def cert1266 : PairCertificate (Fin 120) := .split 45 cert1229 cert1265
theorem checked1266 : checkPair O U c1211 c1205 4 cert1266 = true := by
  apply checkPair_split_literal O U c1211 c1205 c761 c1212 c1213 45 3 cert1229 cert1265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1229
  · exact checked1265
#print axioms checked1266
def cert1267 : PairCertificate (Fin 120) := .split 44 cert1228 cert1266
theorem checked1267 : checkPair O U c1209 c1205 4 cert1267 = true := by
  apply checkPair_split_literal O U c1209 c1205 c6 c1210 c1211 44 3 cert1228 cert1266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1228
  · exact checked1266
#print axioms checked1267
def cert1268 : PairCertificate (Fin 120) := .split 43 cert1227 cert1267
theorem checked1268 : checkPair O U c1207 c1205 4 cert1268 = true := by
  apply checkPair_split_literal O U c1207 c1205 c6 c1208 c1209 43 3 cert1227 cert1267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1227
  · exact checked1267
#print axioms checked1268
def cert1269 : PairCertificate (Fin 120) := .split 40 cert1226 cert1268
theorem checked1269 : checkPair O U c1204 c1205 4 cert1269 = true := by
  apply checkPair_split_literal O U c1204 c1205 c6 c1206 c1207 40 3 cert1226 cert1268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1226
  · exact checked1268
#print axioms checked1269
def colors1270 (v : Fin 120) : Nat := if (79305533775945333019204648960 : Nat).testBit v.val then 0 else if (167451613301830628743898020800626688 : Nat).testBit v.val then 1 else if (10141204806548201694843270856704 : Nat).testBit v.val then 2 else 0
def cert1270 : PairCertificate (Fin 120) := .first (.color 3 colors1270)
theorem checked1270 : checkPair O U c1245 c1246 4 cert1270 = true := by
  decide +kernel
#print axioms checked1270
def colors1271 (v : Fin 120) : Nat := if (20445353461359763299556655104 : Nat).testBit v.val then 0 else if (20282409622541136355425832140800 : Nat).testBit v.val then 1 else if (332306998946228968225951765070086144 : Nat).testBit v.val then 2 else 0
def cert1271 : PairCertificate (Fin 120) := .first (.color 3 colors1271)
theorem checked1271 : checkPair O U c1248 c1249 4 cert1271 = true := by
  decide +kernel
#print axioms checked1271
def colors1272 (v : Fin 120) : Nat := if (22830090506751028935545239633920 : Nat).testBit v.val then 0 else if (2417851639229258349412352 : Nat).testBit v.val then 1 else if (20769187434139310514121985316880384 : Nat).testBit v.val then 2 else 0
def cert1272 : PairCertificate (Fin 120) := .first (.color 3 colors1272)
theorem checked1272 : checkPair O U c1251 c1252 4 cert1272 = true := by
  decide +kernel
#print axioms checked1272
def colors1273 (v : Fin 120) : Nat := if (1267689285859069900240325705728 : Nat).testBit v.val then 0 else if (84374824260678319968207068897214464 : Nat).testBit v.val then 1 else if (158456362807460538144249610240 : Nat).testBit v.val then 2 else 0
def cert1273 : PairCertificate (Fin 120) := .first (.color 3 colors1273)
theorem checked1273 : checkPair O U c1254 c1255 4 cert1273 = true := by
  decide +kernel
#print axioms checked1273
def colors1274 (v : Fin 120) : Nat := if (12534142898919648587774164992 : Nat).testBit v.val then 0 else if (324518553667871459748895311003648 : Nat).testBit v.val then 1 else if (5192296858534827628530496329220096 : Nat).testBit v.val then 2 else 0
def cert1274 : PairCertificate (Fin 120) := .first (.color 3 colors1274)
theorem checked1274 : checkPair O U c1257 c1258 4 cert1274 = true := by
  decide +kernel
#print axioms checked1274
def cert1275 : PairCertificate (Fin 120) := .first .size
theorem checked1275 : checkPair O U c6 c1262 3 cert1275 = true := by
  decide +kernel
#print axioms checked1275
def cert1276 : PairCertificate (Fin 120) := .first .size
theorem checked1276 : checkPair O U c1264 c1265 3 cert1276 = true := by
  decide +kernel
#print axioms checked1276
def colors1277 (v : Fin 120) : Nat := if (83076749736708441370748853910765568 : Nat).testBit v.val then 0 else if (79237835101412875344352903168 : Nat).testBit v.val then 1 else if (659178312118679288778285666795520 : Nat).testBit v.val then 2 else 0
def cert1277 : PairCertificate (Fin 120) := .first (.color 3 colors1277)
theorem checked1277 : checkPair O U c1266 c1261 4 cert1277 = true := by
  decide +kernel
#print axioms checked1277
def cert1278 : PairCertificate (Fin 120) := .split 46 cert1276 cert1277
theorem checked1278 : checkPair O U c1263 c1261 4 cert1278 = true := by
  apply checkPair_split_literal O U c1263 c1261 c1264 c1265 c1266 46 3 cert1276 cert1277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1276
  · exact checked1277
#print axioms checked1278
def cert1279 : PairCertificate (Fin 120) := .split 44 cert1275 cert1278
theorem checked1279 : checkPair O U c1260 c1261 4 cert1279 = true := by
  apply checkPair_split_literal O U c1260 c1261 c6 c1262 c1263 44 3 cert1275 cert1278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1275
  · exact checked1278
#print axioms checked1279
def cert1280 : PairCertificate (Fin 120) := .first .size
theorem checked1280 : checkPair O U c6 c1270 3 cert1280 = true := by
  decide +kernel
#print axioms checked1280
def cert1281 : PairCertificate (Fin 120) := .first .size
theorem checked1281 : checkPair O U c6 c1272 3 cert1281 = true := by
  decide +kernel
#print axioms checked1281
def cert1282 : PairCertificate (Fin 120) := .first .size
theorem checked1282 : checkPair O U c1274 c1275 3 cert1282 = true := by
  decide +kernel
#print axioms checked1282
def colors1283 (v : Fin 120) : Nat := if (166153499473719246854431988940537856 : Nat).testBit v.val then 0 else if (1267651811515232257560700518400 : Nat).testBit v.val then 1 else if (162417733154241892066765098188800 : Nat).testBit v.val then 2 else 0
def cert1283 : PairCertificate (Fin 120) := .first (.color 3 colors1283)
theorem checked1283 : checkPair O U c1276 c1269 4 cert1283 = true := by
  decide +kernel
#print axioms checked1283
def cert1284 : PairCertificate (Fin 120) := .split 49 cert1282 cert1283
theorem checked1284 : checkPair O U c1273 c1269 4 cert1284 = true := by
  apply checkPair_split_literal O U c1273 c1269 c1274 c1275 c1276 49 3 cert1282 cert1283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1282
  · exact checked1283
#print axioms checked1284
def cert1285 : PairCertificate (Fin 120) := .split 45 cert1281 cert1284
theorem checked1285 : checkPair O U c1271 c1269 4 cert1285 = true := by
  apply checkPair_split_literal O U c1271 c1269 c6 c1272 c1273 45 3 cert1281 cert1284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1281
  · exact checked1284
#print axioms checked1285
def cert1286 : PairCertificate (Fin 120) := .split 43 cert1280 cert1285
theorem checked1286 : checkPair O U c1268 c1269 4 cert1286 = true := by
  apply checkPair_split_literal O U c1268 c1269 c6 c1270 c1271 43 3 cert1280 cert1285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked1280
  · exact checked1285
#print axioms checked1286
def colors1287 (v : Fin 120) : Nat := if (325172805044784095984353078673408 : Nat).testBit v.val then 0 else if (4835703278458516698824704 : Nat).testBit v.val then 1 else if (20769187434139310514121985316880384 : Nat).testBit v.val then 2 else 0
def cert1287 : PairCertificate (Fin 120) := .first (.color 3 colors1287)
theorem checked1287 : checkPair O U c1278 c1279 4 cert1287 = true := by
  decide +kernel
#print axioms checked1287
def colors1288 (v : Fin 120) : Nat := if (19807040629725902039922245632 : Nat).testBit v.val then 0 else if (664614037508966637530219914228400128 : Nat).testBit v.val then 1 else if (12379400392853802748991242240 : Nat).testBit v.val then 2 else 0
def cert1288 : PairCertificate (Fin 120) := .first (.color 3 colors1288)
theorem checked1288 : checkPair O U c1281 c1282 4 cert1288 = true := by
  decide +kernel
#print axioms checked1288
def colors1289 (v : Fin 120) : Nat := if (2475880078617203920955506688 : Nat).testBit v.val then 0 else if (10384594031409848118606415368552448 : Nat).testBit v.val then 1 else if (20426010648208774535835549696 : Nat).testBit v.val then 2 else 0
def cert1289 : PairCertificate (Fin 120) := .first (.color 3 colors1289)
theorem checked1289 : checkPair O U c1284 c1285 4 cert1289 = true := by
  decide +kernel
#print axioms checked1289
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
