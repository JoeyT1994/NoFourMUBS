import D0GraphStates
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph

def colors210 (v : Fin 120) : Nat := if (2920666982925840541055001254952960 : Nat).testBit v.val then 0 else if (604462909807314587353088 : Nat).testBit v.val then 1 else 0
def cert210 : CliqueCertificate (Fin 120) := .color 2 colors210
theorem checked210 : checkClique O c233 4 cert210 = true := by
  decide +kernel
#print axioms checked210
def colors211 (v : Fin 120) : Nat := if (83076749737322265426721894765166628 : Nat).testBit v.val then 0 else if (329599233664972384290654270783496 : Nat).testBit v.val then 1 else if (20931447021667181957013724909797376 : Nat).testBit v.val then 2 else if (2596148467953040618394134058631168 : Nat).testBit v.val then 3 else 0
def cert211 : CliqueCertificate (Fin 120) := .color 4 colors211
theorem checked211 : checkClique O c234 5 cert211 = true := by
  decide +kernel
#print axioms checked211
def cert212 : CliqueCertificate (Fin 120) := .split 1 cert210 cert211
theorem checked212 : checkClique O c232 5 cert212 = true := by
  apply checkClique_split_literal O c232 c233 c234 1 4 cert210 cert211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked210
  · exact checked211
#print axioms checked212
def cert213 : PairCertificate (Fin 120) := .cross cert212
theorem checked213 : checkPair O U c231 c232 0 cert213 = true := by
  exact checked212
#print axioms checked213
def colors214 (v : Fin 120) : Nat := if (83249151765622775166849240844468262 : Nat).testBit v.val then 0 else if (324518727743745183642468231413768 : Nat).testBit v.val then 1 else if (665912072110723143760823663695233024 : Nat).testBit v.val then 2 else if (39290089137475448177950720 : Nat).testBit v.val then 3 else 0
def cert214 : CliqueCertificate (Fin 120) := .color 4 colors214
theorem checked214 : checkClique O c235 5 cert214 = true := by
  decide +kernel
#print axioms checked214
def cert215 : PairCertificate (Fin 120) := .cross cert214
theorem checked215 : checkPair O U c6 c235 0 cert215 = true := by
  exact checked214
#print axioms checked215
def cert216 : PairCertificate (Fin 120) := .first .size
theorem checked216 : checkPair O U c6 c230 1 cert216 = true := by
  decide +kernel
#print axioms checked216
def cert217 : PairCertificate (Fin 120) := .split 61 cert215 cert216
theorem checked217 : checkPair O U c231 c230 1 cert217 = true := by
  apply checkPair_split_literal O U c231 c230 c6 c235 c6 61 0 cert215 cert216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked215
  · exact checked216
#print axioms checked217
def cert218 : PairCertificate (Fin 120) := .split 55 cert213 cert217
theorem checked218 : checkPair O U c229 c230 1 cert218 = true := by
  apply checkPair_split_literal O U c229 c230 c231 c232 c231 55 0 cert213 cert217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked213
  · exact checked217
#print axioms checked218
def colors219 (v : Fin 120) : Nat := if (18446750690106671104 : Nat).testBit v.val then 0 else if (324518554262889636590470607929344 : Nat).testBit v.val then 1 else 0
def cert219 : CliqueCertificate (Fin 120) := .color 2 colors219
theorem checked219 : checkClique O c238 4 cert219 = true := by
  decide +kernel
#print axioms checked219
def colors220 (v : Fin 120) : Nat := if (1213943478120632207540232 : Nat).testBit v.val then 0 else if (324518553658426726783156020576256 : Nat).testBit v.val then 1 else 0
def cert220 : CliqueCertificate (Fin 120) := .color 2 colors220
theorem checked220 : checkClique O c240 4 cert220 = true := by
  decide +kernel
#print axioms checked220
def colors221 (v : Fin 120) : Nat := if (580965726320328704 : Nat).testBit v.val then 0 else 0
def cert221 : CliqueCertificate (Fin 120) := .color 1 colors221
theorem checked221 : checkClique O c242 4 cert221 = true := by
  decide +kernel
#print axioms checked221
def colors222 (v : Fin 120) : Nat := if (74075211618926460928 : Nat).testBit v.val then 0 else if (37778932988857068552192 : Nat).testBit v.val then 1 else if (38685626227668133590597632 : Nat).testBit v.val then 2 else 0
def cert222 : CliqueCertificate (Fin 120) := .color 3 colors222
theorem checked222 : checkClique O c244 4 cert222 = true := by
  decide +kernel
#print axioms checked222
def colors223 (v : Fin 120) : Nat := if (213677657068133379966238720 : Nat).testBit v.val then 0 else 0
def cert223 : CliqueCertificate (Fin 120) := .color 1 colors223
theorem checked223 : checkClique O c246 4 cert223 = true := by
  decide +kernel
#print axioms checked223
def colors224 (v : Fin 120) : Nat := if (324835466318297451981293433651200 : Nat).testBit v.val then 0 else 0
def cert224 : CliqueCertificate (Fin 120) := .color 1 colors224
theorem checked224 : checkClique O c248 4 cert224 = true := by
  decide +kernel
#print axioms checked224
def colors225 (v : Fin 120) : Nat := if (324835640393802245496459214454784 : Nat).testBit v.val then 0 else if (83239009014638177757848103504838656 : Nat).testBit v.val then 1 else if (38987932047134737932746752 : Nat).testBit v.val then 2 else if (310098935910862196312113152 : Nat).testBit v.val then 3 else 0
def cert225 : CliqueCertificate (Fin 120) := .color 4 colors225
theorem checked225 : checkClique O c249 5 cert225 = true := by
  decide +kernel
#print axioms checked225
def cert226 : CliqueCertificate (Fin 120) := .split 31 cert224 cert225
theorem checked226 : checkClique O c247 5 cert226 = true := by
  apply checkClique_split_literal O c247 c248 c249 31 4 cert224 cert225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked224
  · exact checked225
#print axioms checked226
def cert227 : CliqueCertificate (Fin 120) := .split 27 cert223 cert226
theorem checked227 : checkClique O c245 5 cert227 = true := by
  apply checkClique_split_literal O c245 c246 c247 27 4 cert223 cert226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked223
  · exact checked226
#print axioms checked227
def cert228 : CliqueCertificate (Fin 120) := .split 5 cert222 cert227
theorem checked228 : checkClique O c243 5 cert228 = true := by
  apply checkClique_split_literal O c243 c244 c245 5 4 cert222 cert227
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked222
  · exact checked227
#print axioms checked228
def cert229 : CliqueCertificate (Fin 120) := .split 3 cert221 cert228
theorem checked229 : checkClique O c241 5 cert229 = true := by
  apply checkClique_split_literal O c241 c242 c243 3 4 cert221 cert228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked221
  · exact checked228
#print axioms checked229
def cert230 : CliqueCertificate (Fin 120) := .split 2 cert220 cert229
theorem checked230 : checkClique O c239 5 cert230 = true := by
  apply checkClique_split_literal O c239 c240 c241 2 4 cert220 cert229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked220
  · exact checked229
#print axioms checked230
def cert231 : CliqueCertificate (Fin 120) := .split 1 cert219 cert230
theorem checked231 : checkClique O c237 5 cert231 = true := by
  apply checkClique_split_literal O c237 c238 c239 1 4 cert219 cert230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked219
  · exact checked230
#print axioms checked231
def cert232 : PairCertificate (Fin 120) := .cross cert231
theorem checked232 : checkPair O U c6 c237 0 cert232 = true := by
  exact checked231
#print axioms checked232
def cert233 : PairCertificate (Fin 120) := .first .size
theorem checked233 : checkPair O U c6 c236 1 cert233 = true := by
  decide +kernel
#print axioms checked233
def cert234 : PairCertificate (Fin 120) := .split 61 cert232 cert233
theorem checked234 : checkPair O U c231 c236 1 cert234 = true := by
  apply checkPair_split_literal O U c231 c236 c6 c237 c6 61 0 cert232 cert233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked232
  · exact checked233
#print axioms checked234
def cert235 : PairCertificate (Fin 120) := .first .size
theorem checked235 : checkPair O U c231 c228 2 cert235 = true := by
  decide +kernel
#print axioms checked235
def cert236 : PairCertificate (Fin 120) := .split 55 cert234 cert235
theorem checked236 : checkPair O U c229 c228 2 cert236 = true := by
  apply checkPair_split_literal O U c229 c228 c231 c236 c231 55 1 cert234 cert235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked234
  · exact checked235
#print axioms checked236
def cert237 : PairCertificate (Fin 120) := .split 32 cert218 cert236
theorem checked237 : checkPair O U c227 c228 2 cert237 = true := by
  apply checkPair_split_literal O U c227 c228 c229 c230 c229 32 1 cert218 cert236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact checked218
  · exact checked236
#print axioms checked237
def colors238 (v : Fin 120) : Nat := if (636301180192685467895219625984 : Nat).testBit v.val then 0 else if (324518554262889636590470607929344 : Nat).testBit v.val then 1 else 0
def cert238 : CliqueCertificate (Fin 120) := .color 2 colors238
theorem checked238 : checkClique O c253 4 cert238 = true := by
  decide +kernel
#print axioms checked238
def colors239 (v : Fin 120) : Nat := if (1213648330215435674877960 : Nat).testBit v.val then 0 else if (324518553658426726783156020576256 : Nat).testBit v.val then 1 else 0
def cert239 : CliqueCertificate (Fin 120) := .color 2 colors239
theorem checked239 : checkClique O c255 4 cert239 = true := by
  decide +kernel
#print axioms checked239
end Mub6.Numerical.GraphKernel.D0Prototype.LiteralGraph
