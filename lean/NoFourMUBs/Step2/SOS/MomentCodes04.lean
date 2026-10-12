import OAI.Analysis.MutuallyUnbiased.PairSemantics.Coordinates

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def code256 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def code257 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 2, -2], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def code258 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 3, -3], ![0, 2, -1, -1], ![2, -1, 0, -1]]⟩

def code259 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 0, 3, -3], ![0, 2, 0, -2], ![2, -1, -1, 0]]⟩

def code260 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def code261 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 1, -2], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def code262 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def code263 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def code264 : ExponentCode := ⟨4, 4, ![![-2, -1, -2, 5], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def code265 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 1, -1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def code266 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def code267 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def code268 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def code269 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def code270 : ExponentCode := ⟨5, 5, ![![-2, -1, -1, 1, 3], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, 1, -1], ![1, 1, -1, 0, -1]]⟩

def code271 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 2, 1, -3], ![2, 1, -2, -1]]⟩

def code272 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![0, 3, -2, -1], ![2, 0, 1, -3]]⟩

def code273 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 2, 0], ![1, 1, 1, -3], ![1, 2, -2, -1]]⟩

def code274 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 2, -1, -1], ![2, 1, -1, -2]]⟩

def code275 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 2, 0, -2], ![2, 1, -2, -1]]⟩

def code276 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 3, -2, -1], ![2, 0, 0, -2]]⟩

def code277 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 3, -1, -2], ![2, 0, -1, -1]]⟩

def code278 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 3, 0, -3], ![2, 0, -2, 0]]⟩

def code279 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![1, 1, -2, 0], ![1, 2, 0, -3]]⟩

def code280 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![1, 1, -1, -1], ![1, 2, -1, -2]]⟩

def code281 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def code282 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![0, 1, -2, 1], ![2, 1, 1, -4]]⟩

def code283 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate311

def code284 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![0, 1, 2, -3], ![2, 1, -3, 0]]⟩

def code285 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate312

def code286 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def code287 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate83

def code288 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate84

def code289 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate313

def code290 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 2, 1, -4]]⟩

def code291 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate314

def code292 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, 0, 2, -3], ![1, 2, -3, 0]]⟩

def code293 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate315

def code294 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate85

def code295 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, -2, 1], ![2, 1, 0, -3]]⟩

def code296 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, 1, -2], ![2, 1, -3, 0]]⟩

def code297 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate316

def code298 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate317

def code299 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate318

def code300 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def code301 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def code302 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate319

def code303 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate320

def code304 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 4, -3], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

def code305 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 4, -3], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def code306 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 4, -3], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def code307 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate321

def code308 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![0, 2, 1, -3], ![2, -1, -2, 1]]⟩

def code309 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate322

def code310 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 2, -2], ![1, -1, 2, -2], ![1, 2, -3, 0]]⟩

def code311 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate323

def code312 : ExponentCode := OAI.MUB6.Certificate.PairSemantics.coordinate324

def code313 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![0, 2, 0, -2], ![2, -1, -2, 1]]⟩

def code314 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def code315 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 3, -3], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def code316 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 4, -4], ![0, 2, -2, 0], ![2, -1, -1, 0]]⟩

def code317 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -2, 1], ![0, 1, 1, -2], ![2, -1, 2, -3]]⟩

def code318 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -2, 1], ![0, 1, 2, -3], ![2, -1, 1, -2]]⟩

def code319 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, -2, 1], ![0, 1, 3, -4], ![2, -1, 0, -1]]⟩

end NoFourMUBs.Step2.SOS.Semantics
