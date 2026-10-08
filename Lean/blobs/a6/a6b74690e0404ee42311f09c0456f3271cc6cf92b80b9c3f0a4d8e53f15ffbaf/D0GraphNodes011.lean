import D0GraphStates
import D0GraphNodes010
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors330 (v : Fin 120) : Nat := if (332306999178342725664616295245578296 : Nat).testBit v.val then 0 else if (20282409622541568707657056912064 : Nat).testBit v.val then 1 else if (83076749756088959629549022744674304 : Nat).testBit v.val then 2 else if (166802576204184001255628024745820160 : Nat).testBit v.val then 3 else 0
def cert330 : CliqueCertificate (Fin 120) := .color 4 colors330
theorem checked330 : checkClique O c338 5 cert330 = true := by
  decide +kernel
#print axioms checked330
def cert331 : CliqueCertificate (Fin 120) := .split 2 cert329 cert330
theorem checked331 : checkClique O c336 5 cert331 = true := by
  apply checkClique_split_literal O c336 c337 c338 2 4 cert329 cert330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked329
  · exact checked330
#print axioms checked331
def cert332 : PairCertificate (Fin 120) := .cross cert331
theorem checked332 : checkPair O U c6 c336 0 cert332 = true := by
  exact checked331
#print axioms checked332
def cert333 : PairCertificate (Fin 120) := .first .size
theorem checked333 : checkPair O U c6 c335 1 cert333 = true := by
  decide +kernel
#print axioms checked333
def cert334 : PairCertificate (Fin 120) := .split 60 cert332 cert333
theorem checked334 : checkPair O U c296 c335 1 cert334 = true := by
  apply checkPair_split_literal O U c296 c335 c6 c336 c6 60 0 cert332 cert333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked332
  · exact checked333
#print axioms checked334
def cert335 : PairCertificate (Fin 120) := .first .size
theorem checked335 : checkPair O U c296 c334 2 cert335 = true := by
  decide +kernel
#print axioms checked335
def cert336 : PairCertificate (Fin 120) := .split 54 cert334 cert335
theorem checked336 : checkPair O U c294 c334 2 cert336 = true := by
  apply checkPair_split_literal O U c294 c334 c296 c335 c296 54 1 cert334 cert335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked334
  · exact checked335
#print axioms checked336
def cert337 : PairCertificate (Fin 120) := .first .size
theorem checked337 : checkPair O U c294 c333 3 cert337 = true := by
  decide +kernel
#print axioms checked337
def cert338 : PairCertificate (Fin 120) := .split 33 cert336 cert337
theorem checked338 : checkPair O U c292 c333 3 cert338 = true := by
  apply checkPair_split_literal O U c292 c333 c294 c334 c294 33 2 cert336 cert337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked336
  · exact checked337
#print axioms checked338
def colors339 (v : Fin 120) : Nat := if (41538374906964251905175040632553472 : Nat).testBit v.val then 0 else if (81129639623550966069989910511616 : Nat).testBit v.val then 1 else if (636301180193838382802756698112 : Nat).testBit v.val then 2 else 0
def cert339 : PairCertificate (Fin 120) := .first (.color 3 colors339)
theorem checked339 : checkPair O U c339 c289 4 cert339 = true := by
  decide +kernel
#print axioms checked339
def cert340 : PairCertificate (Fin 120) := .split 31 cert338 cert339
theorem checked340 : checkPair O U c332 c289 4 cert340 = true := by
  apply checkPair_split_literal O U c332 c289 c292 c333 c339 31 3 cert338 cert339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked338
  · exact checked339
#print axioms checked340
def cert341 : PairCertificate (Fin 120) := .split 26 cert328 cert340
theorem checked341 : checkPair O U c329 c289 4 cert341 = true := by
  apply checkPair_split_literal O U c329 c289 c330 c331 c332 26 3 cert328 cert340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked328
  · exact checked340
#print axioms checked341
def cert342 : PairCertificate (Fin 120) := .split 19 cert327 cert341
theorem checked342 : checkPair O U c326 c289 4 cert342 = true := by
  apply checkPair_split_literal O U c326 c289 c327 c328 c329 19 3 cert327 cert341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked327
  · exact checked341
#print axioms checked342
def cert343 : PairCertificate (Fin 120) := .split 13 cert326 cert342
theorem checked343 : checkPair O U c288 c289 4 cert343 = true := by
  apply checkPair_split_literal O U c288 c289 c290 c291 c326 13 3 cert326 cert342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked326
  · exact checked342
#print axioms checked343
def cert344 : PairCertificate (Fin 120) := .first .size
theorem checked344 : checkPair O U c6 c343 3 cert344 = true := by
  decide +kernel
#print axioms checked344
def colors345 (v : Fin 120) : Nat := if (4294967296 : Nat).testBit v.val then 0 else if (4951760159447364108810190848 : Nat).testBit v.val then 1 else 0
def cert345 : PairCertificate (Fin 120) := .first (.color 2 colors345)
theorem checked345 : checkPair O U c345 c346 3 cert345 = true := by
  decide +kernel
#print axioms checked345
def cert346 : PairCertificate (Fin 120) := .first .size
theorem checked346 : checkPair O U c6 c348 3 cert346 = true := by
  decide +kernel
#print axioms checked346
def cert347 : PairCertificate (Fin 120) := .first .size
theorem checked347 : checkPair O U c6 c350 3 cert347 = true := by
  decide +kernel
#print axioms checked347
def cert348 : PairCertificate (Fin 120) := .first .size
theorem checked348 : checkPair O U c352 c353 3 cert348 = true := by
  decide +kernel
#print axioms checked348
def colors349 (v : Fin 120) : Nat := if (324518553658426726789753090342912 : Nat).testBit v.val then 0 else if (604462909807314587353088 : Nat).testBit v.val then 1 else 0
def cert349 : CliqueCertificate (Fin 120) := .color 2 colors349
theorem checked349 : checkClique O c359 4 cert349 = true := by
  decide +kernel
#print axioms checked349
def colors350 (v : Fin 120) : Nat := if (1213648332467235488530952 : Nat).testBit v.val then 0 else if (324518631029679182119423201771520 : Nat).testBit v.val then 1 else 0
def cert350 : CliqueCertificate (Fin 120) := .color 2 colors350
theorem checked350 : checkClique O c361 4 cert350 = true := by
  decide +kernel
#print axioms checked350
def colors351 (v : Fin 120) : Nat := if (1267650600228806143998861246464 : Nat).testBit v.val then 0 else 0
def cert351 : CliqueCertificate (Fin 120) := .color 1 colors351
theorem checked351 : checkClique O c363 4 cert351 = true := by
  decide +kernel
#print axioms checked351
def colors352 (v : Fin 120) : Nat := if (288235323954036736 : Nat).testBit v.val then 0 else if (38685626227668133590597632 : Nat).testBit v.val then 1 else 0
def cert352 : CliqueCertificate (Fin 120) := .color 2 colors352
theorem checked352 : checkClique O c365 4 cert352 = true := by
  decide +kernel
#print axioms checked352
def colors353 (v : Fin 120) : Nat := if (19345174297084572588834816 : Nat).testBit v.val then 0 else 0
def cert353 : CliqueCertificate (Fin 120) := .color 1 colors353
theorem checked353 : checkClique O c367 4 cert353 = true := by
  decide +kernel
#print axioms checked353
def colors354 (v : Fin 120) : Nat := if (83078017406502644583246689443250176 : Nat).testBit v.val then 0 else 0
def cert354 : CliqueCertificate (Fin 120) := .color 1 colors354
theorem checked354 : checkClique O c369 4 cert354 = true := by
  decide +kernel
#print axioms checked354
def colors355 (v : Fin 120) : Nat := if (39894552047704975230369792 : Nat).testBit v.val then 0 else 0
def cert355 : CliqueCertificate (Fin 120) := .color 1 colors355
theorem checked355 : checkClique O c371 4 cert355 = true := by
  decide +kernel
#print axioms checked355
def colors356 (v : Fin 120) : Nat := if (232718229501448748892422144 : Nat).testBit v.val then 0 else if (83076749736557242056487941267521536 : Nat).testBit v.val then 1 else 0
def cert356 : CliqueCertificate (Fin 120) := .color 2 colors356
theorem checked356 : checkClique O c373 4 cert356 = true := by
  decide +kernel
#print axioms checked356
def cert357 : CliqueCertificate (Fin 120) := .size
theorem checked357 : checkClique O c375 4 cert357 = true := by
  decide +kernel
#print axioms checked357
def colors358 (v : Fin 120) : Nat := if (324518631039124061881509672386560 : Nat).testBit v.val then 0 else if (194034964526827844348674048 : Nat).testBit v.val then 1 else if (83078017411336024436361297339088896 : Nat).testBit v.val then 2 else if (162259587527871370834145554989056 : Nat).testBit v.val then 3 else 0
def cert358 : CliqueCertificate (Fin 120) := .color 4 colors358
theorem checked358 : checkClique O c376 5 cert358 = true := by
  decide +kernel
#print axioms checked358
def cert359 : CliqueCertificate (Fin 120) := .split 38 cert357 cert358
theorem checked359 : checkClique O c374 5 cert359 = true := by
  apply checkClique_split_literal O c374 c375 c376 38 4 cert357 cert358
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked357
  · exact checked358
#print axioms checked359
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
