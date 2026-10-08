import D0GraphStates
import D0GraphNodes009
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors300 (v : Fin 120) : Nat := if (2535533314213968926983025852416 : Nat).testBit v.val then 0 else 0
def cert300 : CliqueCertificate (Fin 120) := .color 1 colors300
theorem checked300 : checkClique O c317 4 cert300 = true := by
  decide +kernel
#print axioms checked300
def colors301 (v : Fin 120) : Nat := if (232113757370521197263978496 : Nat).testBit v.val then 0 else 0
def cert301 : CliqueCertificate (Fin 120) := .color 1 colors301
theorem checked301 : checkClique O c319 4 cert301 = true := by
  decide +kernel
#print axioms checked301
def colors302 (v : Fin 120) : Nat := if (20282409962551527636721475780608 : Nat).testBit v.val then 0 else if (19903905958301354952065286144 : Nat).testBit v.val then 1 else if (166156034929060397177675985945886720 : Nat).testBit v.val then 2 else if (649076731069517142652142210777088 : Nat).testBit v.val then 3 else 0
def cert302 : CliqueCertificate (Fin 120) := .color 4 colors302
theorem checked302 : checkClique O c320 5 cert302 = true := by
  decide +kernel
#print axioms checked302
def cert303 : CliqueCertificate (Fin 120) := .split 16 cert301 cert302
theorem checked303 : checkClique O c318 5 cert303 = true := by
  apply checkClique_split_literal O c318 c319 c320 16 4 cert301 cert302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked301
  · exact checked302
#print axioms checked303
def cert304 : CliqueCertificate (Fin 120) := .split 14 cert300 cert303
theorem checked304 : checkClique O c316 5 cert304 = true := by
  apply checkClique_split_literal O c316 c317 c318 14 4 cert300 cert303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked300
  · exact checked303
#print axioms checked304
def cert305 : CliqueCertificate (Fin 120) := .split 12 cert299 cert304
theorem checked305 : checkClique O c314 5 cert305 = true := by
  apply checkClique_split_literal O c314 c315 c316 12 4 cert299 cert304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked299
  · exact checked304
#print axioms checked305
def cert306 : CliqueCertificate (Fin 120) := .split 6 cert298 cert305
theorem checked306 : checkClique O c312 5 cert306 = true := by
  apply checkClique_split_literal O c312 c313 c314 6 4 cert298 cert305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked298
  · exact checked305
#print axioms checked306
def cert307 : CliqueCertificate (Fin 120) := .split 5 cert297 cert306
theorem checked307 : checkClique O c310 5 cert307 = true := by
  apply checkClique_split_literal O c310 c311 c312 5 4 cert297 cert306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked297
  · exact checked306
#print axioms checked307
def cert308 : CliqueCertificate (Fin 120) := .split 4 cert296 cert307
theorem checked308 : checkClique O c308 5 cert308 = true := by
  apply checkClique_split_literal O c308 c309 c310 4 4 cert296 cert307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked296
  · exact checked307
#print axioms checked308
def cert309 : CliqueCertificate (Fin 120) := .split 2 cert295 cert308
theorem checked309 : checkClique O c306 5 cert309 = true := by
  apply checkClique_split_literal O c306 c307 c308 2 4 cert295 cert308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked295
  · exact checked308
#print axioms checked309
def cert310 : PairCertificate (Fin 120) := .cross cert309
theorem checked310 : checkPair O U c6 c306 0 cert310 = true := by
  exact checked309
#print axioms checked310
def cert311 : PairCertificate (Fin 120) := .first .size
theorem checked311 : checkPair O U c6 c305 1 cert311 = true := by
  decide +kernel
#print axioms checked311
def cert312 : PairCertificate (Fin 120) := .split 60 cert310 cert311
theorem checked312 : checkPair O U c296 c305 1 cert312 = true := by
  apply checkPair_split_literal O U c296 c305 c6 c306 c6 60 0 cert310 cert311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked310
  · exact checked311
#print axioms checked312
def cert313 : PairCertificate (Fin 120) := .first .size
theorem checked313 : checkPair O U c296 c293 2 cert313 = true := by
  decide +kernel
#print axioms checked313
def cert314 : PairCertificate (Fin 120) := .split 54 cert312 cert313
theorem checked314 : checkPair O U c294 c293 2 cert314 = true := by
  apply checkPair_split_literal O U c294 c293 c296 c305 c296 54 1 cert312 cert313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked312
  · exact checked313
#print axioms checked314
def cert315 : PairCertificate (Fin 120) := .split 33 cert294 cert314
theorem checked315 : checkPair O U c292 c293 2 cert315 = true := by
  apply checkPair_split_literal O U c292 c293 c294 c295 c294 33 1 cert294 cert314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked294
  · exact checked314
#print axioms checked315
def colors316 (v : Fin 120) : Nat := if (295292022635238522880 : Nat).testBit v.val then 0 else if (4722368734669458898944 : Nat).testBit v.val then 1 else if (77371252455336267181195264 : Nat).testBit v.val then 2 else 0
def cert316 : CliqueCertificate (Fin 120) := .color 3 colors316
theorem checked316 : checkClique O c324 4 cert316 = true := by
  decide +kernel
#print axioms checked316
def colors317 (v : Fin 120) : Nat := if (166802536580436355153014638275199024 : Nat).testBit v.val then 0 else if (251456570626216491952898112 : Nat).testBit v.val then 1 else if (20599322480419509677855942377472 : Nat).testBit v.val then 2 else if (39623809406450317313053818880 : Nat).testBit v.val then 3 else 0
def cert317 : CliqueCertificate (Fin 120) := .color 4 colors317
theorem checked317 : checkClique O c325 5 cert317 = true := by
  decide +kernel
#print axioms checked317
def cert318 : CliqueCertificate (Fin 120) := .split 2 cert316 cert317
theorem checked318 : checkClique O c323 5 cert318 = true := by
  apply checkClique_split_literal O c323 c324 c325 2 4 cert316 cert317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked316
  · exact checked317
#print axioms checked318
def cert319 : PairCertificate (Fin 120) := .cross cert318
theorem checked319 : checkPair O U c6 c323 0 cert319 = true := by
  exact checked318
#print axioms checked319
def cert320 : PairCertificate (Fin 120) := .first .size
theorem checked320 : checkPair O U c6 c322 1 cert320 = true := by
  decide +kernel
#print axioms checked320
def cert321 : PairCertificate (Fin 120) := .split 60 cert319 cert320
theorem checked321 : checkPair O U c296 c322 1 cert321 = true := by
  apply checkPair_split_literal O U c296 c322 c6 c323 c6 60 0 cert319 cert320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked319
  · exact checked320
#print axioms checked321
def cert322 : PairCertificate (Fin 120) := .first .size
theorem checked322 : checkPair O U c296 c321 2 cert322 = true := by
  decide +kernel
#print axioms checked322
def cert323 : PairCertificate (Fin 120) := .split 54 cert321 cert322
theorem checked323 : checkPair O U c294 c321 2 cert323 = true := by
  apply checkPair_split_literal O U c294 c321 c296 c322 c296 54 1 cert321 cert322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked321
  · exact checked322
#print axioms checked323
def cert324 : PairCertificate (Fin 120) := .first .size
theorem checked324 : checkPair O U c294 c291 3 cert324 = true := by
  decide +kernel
#print axioms checked324
def cert325 : PairCertificate (Fin 120) := .split 33 cert323 cert324
theorem checked325 : checkPair O U c292 c291 3 cert325 = true := by
  apply checkPair_split_literal O U c292 c291 c294 c321 c294 33 2 cert323 cert324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked323
  · exact checked324
#print axioms checked325
def cert326 : PairCertificate (Fin 120) := .split 31 cert315 cert325
theorem checked326 : checkPair O U c290 c291 3 cert326 = true := by
  apply checkPair_split_literal O U c290 c291 c292 c293 c292 31 2 cert315 cert325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked315
  · exact checked325
#print axioms checked326
def colors327 (v : Fin 120) : Nat := if (8589934592 : Nat).testBit v.val then 0 else if (81129638414606699710187514626048 : Nat).testBit v.val then 1 else 0
def cert327 : PairCertificate (Fin 120) := .first (.color 2 colors327)
theorem checked327 : checkPair O U c327 c328 3 cert327 = true := by
  decide +kernel
#print axioms checked327
def colors328 (v : Fin 120) : Nat := if (633825300118726668241755701248 : Nat).testBit v.val then 0 else 0
def cert328 : PairCertificate (Fin 120) := .first (.color 1 colors328)
theorem checked328 : checkPair O U c330 c331 3 cert328 = true := by
  decide +kernel
#print axioms checked328
def colors329 (v : Fin 120) : Nat := if (332306999023600220825405419350426120 : Nat).testBit v.val then 0 else if (68719476736 : Nat).testBit v.val then 1 else 0
def cert329 : CliqueCertificate (Fin 120) := .color 2 colors329
theorem checked329 : checkClique O c337 4 cert329 = true := by
  decide +kernel
#print axioms checked329
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
