import D0GraphStates
import D0GraphNodes008
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def cert270 : PairCertificate (Fin 120) := .cross cert269
theorem checked270 : checkPair O U c6 c278 0 cert270 = true := by
  exact checked269
#print axioms checked270
def cert271 : PairCertificate (Fin 120) := .first .size
theorem checked271 : checkPair O U c6 c277 1 cert271 = true := by
  decide +kernel
#print axioms checked271
def cert272 : PairCertificate (Fin 120) := .split 61 cert270 cert271
theorem checked272 : checkPair O U c231 c277 1 cert272 = true := by
  apply checkPair_split_literal O U c231 c277 c6 c278 c6 61 0 cert270 cert271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked270
  · exact checked271
#print axioms checked272
def cert273 : PairCertificate (Fin 120) := .first .size
theorem checked273 : checkPair O U c231 c276 2 cert273 = true := by
  decide +kernel
#print axioms checked273
def cert274 : PairCertificate (Fin 120) := .split 55 cert272 cert273
theorem checked274 : checkPair O U c229 c276 2 cert274 = true := by
  apply checkPair_split_literal O U c229 c276 c231 c277 c231 55 1 cert272 cert273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked272
  · exact checked273
#print axioms checked274
def colors275 (v : Fin 120) : Nat := if (81129648086015544455969055440896 : Nat).testBit v.val then 0 else if (2555108241085060916188811362304 : Nat).testBit v.val then 1 else 0
def cert275 : PairCertificate (Fin 120) := .first (.color 2 colors275)
theorem checked275 : checkPair O U c285 c275 3 cert275 = true := by
  decide +kernel
#print axioms checked275
def cert276 : PairCertificate (Fin 120) := .split 32 cert274 cert275
theorem checked276 : checkPair O U c274 c275 3 cert276 = true := by
  apply checkPair_split_literal O U c274 c275 c229 c276 c285 32 2 cert274 cert275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked274
  · exact checked275
#print axioms checked276
def colors277 (v : Fin 120) : Nat := if (41538374955321290419464966686900224 : Nat).testBit v.val then 0 else if (2555108241121954404336230465536 : Nat).testBit v.val then 1 else if (81129638414608987538798218838016 : Nat).testBit v.val then 2 else 0
def cert277 : PairCertificate (Fin 120) := .first (.color 3 colors277)
theorem checked277 : checkPair O U c286 c224 4 cert277 = true := by
  decide +kernel
#print axioms checked277
def cert278 : PairCertificate (Fin 120) := .split 30 cert276 cert277
theorem checked278 : checkPair O U c273 c224 4 cert278 = true := by
  apply checkPair_split_literal O U c273 c224 c274 c275 c286 30 3 cert276 cert277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked276
  · exact checked277
#print axioms checked278
def cert279 : PairCertificate (Fin 120) := .split 27 cert262 cert278
theorem checked279 : checkPair O U c270 c224 4 cert279 = true := by
  apply checkPair_split_literal O U c270 c224 c271 c272 c273 27 3 cert262 cert278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked262
  · exact checked278
#print axioms checked279
def cert280 : PairCertificate (Fin 120) := .split 22 cert261 cert279
theorem checked280 : checkPair O U c267 c224 4 cert280 = true := by
  apply checkPair_split_literal O U c267 c224 c268 c269 c270 22 3 cert261 cert279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked261
  · exact checked279
#print axioms checked280
def cert281 : PairCertificate (Fin 120) := .split 12 cert260 cert280
theorem checked281 : checkPair O U c223 c224 4 cert281 = true := by
  apply checkPair_split_literal O U c223 c224 c225 c226 c267 12 3 cert260 cert280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked260
  · exact checked280
#print axioms checked281
def colors282 (v : Fin 120) : Nat := if (166802696274715294918595800170758196 : Nat).testBit v.val then 0 else if (20282583688970127282778425786432 : Nat).testBit v.val then 1 else if (11682707550809217810596468323516416 : Nat).testBit v.val then 2 else if (87042659012253300578844672 : Nat).testBit v.val then 3 else 0
def cert282 : CliqueCertificate (Fin 120) := .color 4 colors282
theorem checked282 : checkClique O c297 5 cert282 = true := by
  decide +kernel
#print axioms checked282
def cert283 : PairCertificate (Fin 120) := .cross cert282
theorem checked283 : checkPair O U c296 c297 0 cert283 = true := by
  exact checked282
#print axioms checked283
def colors284 (v : Fin 120) : Nat := if (5070602400913061723442631409664 : Nat).testBit v.val then 0 else if (77371252455336267181195264 : Nat).testBit v.val then 1 else 0
def cert284 : CliqueCertificate (Fin 120) := .color 2 colors284
theorem checked284 : checkClique O c299 4 cert284 = true := by
  decide +kernel
#print axioms checked284
def colors285 (v : Fin 120) : Nat := if (60847228810955011278438823624704 : Nat).testBit v.val then 0 else if (151115727451828646838272 : Nat).testBit v.val then 1 else 0
def cert285 : CliqueCertificate (Fin 120) := .color 2 colors285
theorem checked285 : checkClique O c301 4 cert285 = true := by
  decide +kernel
#print axioms checked285
def colors286 (v : Fin 120) : Nat := if (9709185777014833477058624 : Nat).testBit v.val then 0 else if (25353012004564588029934064107520 : Nat).testBit v.val then 1 else if (40564819207303340847894502572032 : Nat).testBit v.val then 2 else 0
def cert286 : CliqueCertificate (Fin 120) := .color 3 colors286
theorem checked286 : checkClique O c303 4 cert286 = true := by
  decide +kernel
#print axioms checked286
def colors287 (v : Fin 120) : Nat := if (207784413481382187106368 : Nat).testBit v.val then 0 else if (25353264065598121806300216033280 : Nat).testBit v.val then 1 else if (187571724643212074352328944778215424 : Nat).testBit v.val then 2 else if (40604433288561049477443577970688 : Nat).testBit v.val then 3 else 0
def cert287 : CliqueCertificate (Fin 120) := .color 4 colors287
theorem checked287 : checkClique O c304 5 cert287 = true := by
  decide +kernel
#print axioms checked287
def cert288 : CliqueCertificate (Fin 120) := .split 5 cert286 cert287
theorem checked288 : checkClique O c302 5 cert288 = true := by
  apply checkClique_split_literal O c302 c303 c304 5 4 cert286 cert287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked286
  · exact checked287
#print axioms checked288
def cert289 : CliqueCertificate (Fin 120) := .split 4 cert285 cert288
theorem checked289 : checkClique O c300 5 cert289 = true := by
  apply checkClique_split_literal O c300 c301 c302 4 4 cert285 cert288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked285
  · exact checked288
#print axioms checked289
def cert290 : CliqueCertificate (Fin 120) := .split 2 cert284 cert289
theorem checked290 : checkClique O c298 5 cert290 = true := by
  apply checkClique_split_literal O c298 c299 c300 2 4 cert284 cert289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked284
  · exact checked289
#print axioms checked290
def cert291 : PairCertificate (Fin 120) := .cross cert290
theorem checked291 : checkPair O U c6 c298 0 cert291 = true := by
  exact checked290
#print axioms checked291
def cert292 : PairCertificate (Fin 120) := .first .size
theorem checked292 : checkPair O U c6 c295 1 cert292 = true := by
  decide +kernel
#print axioms checked292
def cert293 : PairCertificate (Fin 120) := .split 60 cert291 cert292
theorem checked293 : checkPair O U c296 c295 1 cert293 = true := by
  apply checkPair_split_literal O U c296 c295 c6 c298 c6 60 0 cert291 cert292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked291
  · exact checked292
#print axioms checked293
def cert294 : PairCertificate (Fin 120) := .split 54 cert283 cert293
theorem checked294 : checkPair O U c294 c295 1 cert294 = true := by
  apply checkPair_split_literal O U c294 c295 c296 c297 c296 54 0 cert283 cert293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked283
  · exact checked293
#print axioms checked294
def colors295 (v : Fin 120) : Nat := if (19807040628710201871384444928 : Nat).testBit v.val then 0 else if (77371252455336267181195264 : Nat).testBit v.val then 1 else 0
def cert295 : CliqueCertificate (Fin 120) := .color 2 colors295
theorem checked295 : checkClique O c307 4 cert295 = true := by
  decide +kernel
#print axioms checked295
def colors296 (v : Fin 120) : Nat := if (2555108241085024893988862169088 : Nat).testBit v.val then 0 else if (20282409754767397875775898124288 : Nat).testBit v.val then 1 else 0
def cert296 : CliqueCertificate (Fin 120) := .color 2 colors296
theorem checked296 : checkClique O c309 4 cert296 = true := by
  decide +kernel
#print axioms checked296
def colors297 (v : Fin 120) : Nat := if (9709185777014833477075008 : Nat).testBit v.val then 0 else if (20282409603651670423947251286016 : Nat).testBit v.val then 1 else 0
def cert297 : CliqueCertificate (Fin 120) := .color 2 colors297
theorem checked297 : checkClique O c311 4 cert297 = true := by
  decide +kernel
#print axioms checked297
def colors298 (v : Fin 120) : Nat := if (2951551118183659208704 : Nat).testBit v.val then 0 else 0
def cert298 : CliqueCertificate (Fin 120) := .color 1 colors298
theorem checked298 : checkClique O c313 4 cert298 = true := by
  decide +kernel
#print axioms checked298
def colors299 (v : Fin 120) : Nat := if (166822818990053878702897620953612288 : Nat).testBit v.val then 0 else 0
def cert299 : CliqueCertificate (Fin 120) := .color 1 colors299
theorem checked299 : checkClique O c315 4 cert299 = true := by
  decide +kernel
#print axioms checked299
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
