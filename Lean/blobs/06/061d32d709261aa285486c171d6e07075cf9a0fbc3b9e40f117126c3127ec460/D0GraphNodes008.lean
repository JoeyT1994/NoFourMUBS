import D0GraphStates
import D0GraphNodes007
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors240 (v : Fin 120) : Nat := if (1328742034334269046784 : Nat).testBit v.val then 0 else 0
def cert240 : CliqueCertificate (Fin 120) := .color 1 colors240
theorem checked240 : checkClique O c257 4 cert240 = true := by
  decide +kernel
#print axioms checked240
def colors241 (v : Fin 120) : Nat := if (2475880078858995908112023552 : Nat).testBit v.val then 0 else if (38685626227668133590597632 : Nat).testBit v.val then 1 else 0
def cert241 : CliqueCertificate (Fin 120) := .color 2 colors241
theorem checked241 : checkClique O c259 4 cert241 = true := by
  decide +kernel
#print axioms checked241
def colors242 (v : Fin 120) : Nat := if (83563527567054326879628414857543680 : Nat).testBit v.val then 0 else 0
def cert242 : CliqueCertificate (Fin 120) := .color 1 colors242
theorem checked242 : checkClique O c261 4 cert242 = true := by
  decide +kernel
#print axioms checked242
def colors243 (v : Fin 120) : Nat := if (633883328553744433324889210880 : Nat).testBit v.val then 0 else 0
def cert243 : CliqueCertificate (Fin 120) := .color 1 colors243
theorem checked243 : checkClique O c263 4 cert243 = true := by
  decide +kernel
#print axioms checked243
def colors244 (v : Fin 120) : Nat := if (58028439350509674518544384 : Nat).testBit v.val then 0 else 0
def cert244 : CliqueCertificate (Fin 120) := .color 1 colors244
theorem checked244 : checkClique O c265 4 cert244 = true := by
  decide +kernel
#print axioms checked244
def colors245 (v : Fin 120) : Nat := if (324518553748151698970135843045376 : Nat).testBit v.val then 0 else if (2669913263130902668274302976 : Nat).testBit v.val then 1 else if (83077383581201498315287191957274624 : Nat).testBit v.val then 2 else if (162259587523149004351275909775360 : Nat).testBit v.val then 3 else 0
def cert245 : CliqueCertificate (Fin 120) := .color 4 colors245
theorem checked245 : checkClique O c266 5 cert245 = true := by
  decide +kernel
#print axioms checked245
def cert246 : CliqueCertificate (Fin 120) := .split 17 cert244 cert245
theorem checked246 : checkClique O c264 5 cert246 = true := by
  apply checkClique_split_literal O c264 c265 c266 17 4 cert244 cert245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked244
  · exact checked245
#print axioms checked246
def cert247 : CliqueCertificate (Fin 120) := .split 15 cert243 cert246
theorem checked247 : checkClique O c262 5 cert247 = true := by
  apply checkClique_split_literal O c262 c263 c264 15 4 cert243 cert246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked243
  · exact checked246
#print axioms checked247
def cert248 : CliqueCertificate (Fin 120) := .split 13 cert242 cert247
theorem checked248 : checkClique O c260 5 cert248 = true := by
  apply checkClique_split_literal O c260 c261 c262 13 4 cert242 cert247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked242
  · exact checked247
#print axioms checked248
def cert249 : CliqueCertificate (Fin 120) := .split 5 cert241 cert248
theorem checked249 : checkClique O c258 5 cert249 = true := by
  apply checkClique_split_literal O c258 c259 c260 5 4 cert241 cert248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked241
  · exact checked248
#print axioms checked249
def cert250 : CliqueCertificate (Fin 120) := .split 3 cert240 cert249
theorem checked250 : checkClique O c256 5 cert250 = true := by
  apply checkClique_split_literal O c256 c257 c258 3 4 cert240 cert249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked240
  · exact checked249
#print axioms checked250
def cert251 : CliqueCertificate (Fin 120) := .split 2 cert239 cert250
theorem checked251 : checkClique O c254 5 cert251 = true := by
  apply checkClique_split_literal O c254 c255 c256 2 4 cert239 cert250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked239
  · exact checked250
#print axioms checked251
def cert252 : CliqueCertificate (Fin 120) := .split 1 cert238 cert251
theorem checked252 : checkClique O c252 5 cert252 = true := by
  apply checkClique_split_literal O c252 c253 c254 1 4 cert238 cert251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked238
  · exact checked251
#print axioms checked252
def cert253 : PairCertificate (Fin 120) := .cross cert252
theorem checked253 : checkPair O U c6 c252 0 cert253 = true := by
  exact checked252
#print axioms checked253
def cert254 : PairCertificate (Fin 120) := .first .size
theorem checked254 : checkPair O U c6 c251 1 cert254 = true := by
  decide +kernel
#print axioms checked254
def cert255 : PairCertificate (Fin 120) := .split 61 cert253 cert254
theorem checked255 : checkPair O U c231 c251 1 cert255 = true := by
  apply checkPair_split_literal O U c231 c251 c6 c252 c6 61 0 cert253 cert254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked253
  · exact checked254
#print axioms checked255
def cert256 : PairCertificate (Fin 120) := .first .size
theorem checked256 : checkPair O U c231 c250 2 cert256 = true := by
  decide +kernel
#print axioms checked256
def cert257 : PairCertificate (Fin 120) := .split 55 cert255 cert256
theorem checked257 : checkPair O U c229 c250 2 cert257 = true := by
  apply checkPair_split_literal O U c229 c250 c231 c251 c231 55 1 cert255 cert256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked255
  · exact checked256
#print axioms checked257
def cert258 : PairCertificate (Fin 120) := .first .size
theorem checked258 : checkPair O U c229 c226 3 cert258 = true := by
  decide +kernel
#print axioms checked258
def cert259 : PairCertificate (Fin 120) := .split 32 cert257 cert258
theorem checked259 : checkPair O U c227 c226 3 cert259 = true := by
  apply checkPair_split_literal O U c227 c226 c229 c250 c229 32 2 cert257 cert258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked257
  · exact checked258
#print axioms checked259
def cert260 : PairCertificate (Fin 120) := .split 30 cert237 cert259
theorem checked260 : checkPair O U c225 c226 3 cert260 = true := by
  apply checkPair_split_literal O U c225 c226 c227 c228 c227 30 2 cert237 cert259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked237
  · exact checked259
#print axioms checked260
def colors261 (v : Fin 120) : Nat := if (1073741824 : Nat).testBit v.val then 0 else if (81129638414608987538798218838016 : Nat).testBit v.val then 1 else 0
def cert261 : PairCertificate (Fin 120) := .first (.color 2 colors261)
theorem checked261 : checkPair O U c268 c269 3 cert261 = true := by
  decide +kernel
#print axioms checked261
def colors262 (v : Fin 120) : Nat := if (2535301200465682315767749541888 : Nat).testBit v.val then 0 else 0
def cert262 : PairCertificate (Fin 120) := .first (.color 1 colors262)
theorem checked262 : checkPair O U c271 c272 3 cert262 = true := by
  decide +kernel
#print axioms checked262
def colors263 (v : Fin 120) : Nat := if (83239009013386455419958958992916482 : Nat).testBit v.val then 0 else if (154742504910672534362390528 : Nat).testBit v.val then 1 else 0
def cert263 : CliqueCertificate (Fin 120) := .color 2 colors263
theorem checked263 : checkClique O c279 4 cert263 = true := by
  decide +kernel
#print axioms checked263
def colors264 (v : Fin 120) : Nat := if (324518553658426726789753157452032 : Nat).testBit v.val then 0 else if (604462909807314587353088 : Nat).testBit v.val then 1 else 0
def cert264 : CliqueCertificate (Fin 120) := .color 2 colors264
theorem checked264 : checkClique O c281 4 cert264 = true := by
  decide +kernel
#print axioms checked264
def colors265 (v : Fin 120) : Nat := if (324518553663149237383971177758728 : Nat).testBit v.val then 0 else if (1208925819614629174706176 : Nat).testBit v.val then 1 else 0
def cert265 : CliqueCertificate (Fin 120) := .color 2 colors265
theorem checked265 : checkClique O c283 4 cert265 = true := by
  decide +kernel
#print axioms checked265
def colors266 (v : Fin 120) : Nat := if (310103640047347720035237928 : Nat).testBit v.val then 0 else if (5516815470221694561582022859440448 : Nat).testBit v.val then 1 else if (166315758904686202387040553253470208 : Nat).testBit v.val then 2 else if (83076749737766172487806181055660032 : Nat).testBit v.val then 3 else 0
def cert266 : CliqueCertificate (Fin 120) := .color 4 colors266
theorem checked266 : checkClique O c284 5 cert266 = true := by
  decide +kernel
#print axioms checked266
def cert267 : CliqueCertificate (Fin 120) := .split 2 cert265 cert266
theorem checked267 : checkClique O c282 5 cert267 = true := by
  apply checkClique_split_literal O c282 c283 c284 2 4 cert265 cert266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked265
  · exact checked266
#print axioms checked267
def cert268 : CliqueCertificate (Fin 120) := .split 1 cert264 cert267
theorem checked268 : checkClique O c280 5 cert268 = true := by
  apply checkClique_split_literal O c280 c281 c282 1 4 cert264 cert267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked264
  · exact checked267
#print axioms checked268
def cert269 : CliqueCertificate (Fin 120) := .split 0 cert263 cert268
theorem checked269 : checkClique O c278 5 cert269 = true := by
  apply checkClique_split_literal O c278 c279 c280 0 4 cert263 cert268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked263
  · exact checked268
#print axioms checked269
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
