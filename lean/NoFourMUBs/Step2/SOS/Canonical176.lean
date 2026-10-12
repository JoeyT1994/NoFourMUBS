import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11264 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 1, -2, 1, 1, 0], ![1, 0, 0, -2, 1, 0], ![1, 0, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11264 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11264.moment H = canonicalOutput11264.moment H :=
  canonical_of_padded canonicalInput11264 canonicalOutput11264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11265 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 1, -1, 1, 0, 0], ![1, 0, -2, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11265 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11265.moment H = canonicalOutput11265.moment H :=
  canonical_of_padded canonicalInput11265 canonicalOutput11265 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11266 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 1, -1, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![1, 0, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11266 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11266.moment H = canonicalOutput11266.moment H :=
  canonical_of_padded canonicalInput11266 canonicalOutput11266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11267 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 2, -2, 1, 0, 0], ![1, -2, 0, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11267 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11267.moment H = canonicalOutput11267.moment H :=
  canonical_of_padded canonicalInput11267 canonicalOutput11267 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation307⟩ (by decide +kernel) hH

def canonicalInput11268 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 2, -2, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11268 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11268.moment H = canonicalOutput11268.moment H :=
  canonical_of_padded canonicalInput11268 canonicalOutput11268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation307⟩ (by decide +kernel) hH

def canonicalInput11269 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11269 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound11269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11269.moment H = canonicalOutput11269.moment H :=
  canonical_of_padded canonicalInput11269 canonicalOutput11269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation318, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput11270 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11270 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound11270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11270.moment H = canonicalOutput11270.moment H :=
  canonical_of_padded canonicalInput11270 canonicalOutput11270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput11271 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, -2, 2, 0, 0], ![-1, 2, 0, -1, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11271 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound11271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11271.moment H = canonicalOutput11271.moment H :=
  canonical_of_padded canonicalInput11271 canonicalOutput11271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11272 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, -2, 2, 0, 0], ![2, -1, 0, -1, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11272 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound11272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11272.moment H = canonicalOutput11272.moment H :=
  canonical_of_padded canonicalInput11272 canonicalOutput11272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11273 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11273 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound11273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11273.moment H = canonicalOutput11273.moment H :=
  canonical_of_padded canonicalInput11273 canonicalOutput11273 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11274 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11274 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound11274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11274.moment H = canonicalOutput11274.moment H :=
  canonical_of_padded canonicalInput11274 canonicalOutput11274 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput11275 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -3, 2, 0, 0], ![-1, 0, 2, -1, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11275 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11275.moment H = canonicalOutput11275.moment H :=
  canonical_of_padded canonicalInput11275 canonicalOutput11275 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation305⟩ (by decide +kernel) hH

def canonicalInput11276 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -3, 2, 0, 0], ![2, 0, -1, -1, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11276 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11276.moment H = canonicalOutput11276.moment H :=
  canonical_of_padded canonicalInput11276 canonicalOutput11276 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation305⟩ (by decide +kernel) hH

def canonicalInput11277 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -2, -1, 2, 0], ![-1, 0, 0, 2, -1, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11277 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11277.moment H = canonicalOutput11277.moment H :=
  canonical_of_padded canonicalInput11277 canonicalOutput11277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation365⟩ (by decide +kernel) hH

def canonicalInput11278 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -2, -1, 2, 0], ![2, 0, 0, -1, -1, 0], ![-1, 0, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11278 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11278.moment H = canonicalOutput11278.moment H :=
  canonical_of_padded canonicalInput11278 canonicalOutput11278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation365⟩ (by decide +kernel) hH

def canonicalInput11279 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -2, 2, -1, 0], ![-1, 0, 0, -1, 2, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11279 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11279.moment H = canonicalOutput11279.moment H :=
  canonical_of_padded canonicalInput11279 canonicalOutput11279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation370⟩ (by decide +kernel) hH

def canonicalInput11280 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -2, 2, -1, 0], ![2, 0, 0, -1, -1, 0], ![-1, 0, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11280 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11280.moment H = canonicalOutput11280.moment H :=
  canonical_of_padded canonicalInput11280 canonicalOutput11280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation370⟩ (by decide +kernel) hH

def canonicalInput11281 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, 0, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11281 : ExponentCode := normalNode4310

theorem canonicalSound11281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11281.moment H = canonicalOutput11281.moment H :=
  canonical_of_padded canonicalInput11281 canonicalOutput11281 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11282 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, 0, -1, 0, 0], ![2, 0, -1, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11282 : ExponentCode := normalNode4310

theorem canonicalSound11282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11282.moment H = canonicalOutput11282.moment H :=
  canonical_of_padded canonicalInput11282 canonicalOutput11282 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput11283 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11283 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound11283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11283.moment H = canonicalOutput11283.moment H :=
  canonical_of_padded canonicalInput11283 canonicalOutput11283 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11284 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11284 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound11284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11284.moment H = canonicalOutput11284.moment H :=
  canonical_of_padded canonicalInput11284 canonicalOutput11284 (by decide) (by decide)
    ⟨false, false, canonicalPermutation97, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11285 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 3, -2, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11285 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11285.moment H = canonicalOutput11285.moment H :=
  canonical_of_padded canonicalInput11285 canonicalOutput11285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11286 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 3, -2, -1, 0, 0], ![2, -1, 0, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11286 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11286.moment H = canonicalOutput11286.moment H :=
  canonical_of_padded canonicalInput11286 canonicalOutput11286 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11287 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, -1, -2, 1, 1, 0], ![0, 1, 0, -2, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11287 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11287.moment H = canonicalOutput11287.moment H :=
  canonical_of_padded canonicalInput11287 canonicalOutput11287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11288 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, -1, -1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11288 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11288.moment H = canonicalOutput11288.moment H :=
  canonical_of_padded canonicalInput11288 canonicalOutput11288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11289 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, -1, -1, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11289 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound11289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11289.moment H = canonicalOutput11289.moment H :=
  canonical_of_padded canonicalInput11289 canonicalOutput11289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11290 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -3, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11290 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11290.moment H = canonicalOutput11290.moment H :=
  canonical_of_padded canonicalInput11290 canonicalOutput11290 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation303⟩ (by decide +kernel) hH

def canonicalInput11291 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -3, 2, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11291 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11291.moment H = canonicalOutput11291.moment H :=
  canonical_of_padded canonicalInput11291 canonicalOutput11291 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation303⟩ (by decide +kernel) hH

def canonicalInput11292 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -2, -1, 2, 0], ![0, -1, 0, 2, -1, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11292 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11292.moment H = canonicalOutput11292.moment H :=
  canonical_of_padded canonicalInput11292 canonicalOutput11292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation103⟩ (by decide +kernel) hH

def canonicalInput11293 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -2, -1, 2, 0], ![0, 2, 0, -1, -1, 0], ![0, -1, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11293 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11293.moment H = canonicalOutput11293.moment H :=
  canonical_of_padded canonicalInput11293 canonicalOutput11293 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation103⟩ (by decide +kernel) hH

def canonicalInput11294 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -2, 2, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11294 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11294.moment H = canonicalOutput11294.moment H :=
  canonical_of_padded canonicalInput11294 canonicalOutput11294 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation369⟩ (by decide +kernel) hH

def canonicalInput11295 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -2, 2, -1, 0], ![0, 2, 0, -1, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11295 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound11295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11295.moment H = canonicalOutput11295.moment H :=
  canonical_of_padded canonicalInput11295 canonicalOutput11295 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation369⟩ (by decide +kernel) hH

def canonicalInput11296 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, 0, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11296 : ExponentCode := normalNode4310

theorem canonicalSound11296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11296.moment H = canonicalOutput11296.moment H :=
  canonical_of_padded canonicalInput11296 canonicalOutput11296 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11297 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, 0, -1, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11297 : ExponentCode := normalNode4310

theorem canonicalSound11297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11297.moment H = canonicalOutput11297.moment H :=
  canonical_of_padded canonicalInput11297 canonicalOutput11297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11298 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -4, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11298 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code827

theorem canonicalSound11298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11298.moment H = canonicalOutput11298.moment H :=
  canonical_of_padded canonicalInput11298 canonicalOutput11298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11299 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -3, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11299 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11299.moment H = canonicalOutput11299.moment H :=
  canonical_of_padded canonicalInput11299 canonicalOutput11299 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation396⟩ (by decide +kernel) hH

def canonicalInput11300 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -3, -1, 2, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11300 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11300.moment H = canonicalOutput11300.moment H :=
  canonical_of_padded canonicalInput11300 canonicalOutput11300 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation396⟩ (by decide +kernel) hH

def canonicalInput11301 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -3, 2, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11301 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11301.moment H = canonicalOutput11301.moment H :=
  canonical_of_padded canonicalInput11301 canonicalOutput11301 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation374⟩ (by decide +kernel) hH

def canonicalInput11302 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -3, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11302 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11302.moment H = canonicalOutput11302.moment H :=
  canonical_of_padded canonicalInput11302 canonicalOutput11302 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation374⟩ (by decide +kernel) hH

def canonicalInput11303 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, -2, 1, 1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11303 : ExponentCode := normalNode3674

theorem canonicalSound11303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11303.moment H = canonicalOutput11303.moment H :=
  canonical_of_padded canonicalInput11303 canonicalOutput11303 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11304 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11304 : ExponentCode := normalNode3682

theorem canonicalSound11304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11304.moment H = canonicalOutput11304.moment H :=
  canonical_of_padded canonicalInput11304 canonicalOutput11304 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11305 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11305 : ExponentCode := normalNode3682

theorem canonicalSound11305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11305.moment H = canonicalOutput11305.moment H :=
  canonical_of_padded canonicalInput11305 canonicalOutput11305 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11306 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, -2, 1, 0], ![1, 0, 0, 1, -2, 0]]⟩

def canonicalOutput11306 : ExponentCode := normalNode3674

theorem canonicalSound11306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11306.moment H = canonicalOutput11306.moment H :=
  canonical_of_padded canonicalInput11306 canonicalOutput11306 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11307 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 1, 1, 0, 0], ![1, 0, -2, 1, 0, 0], ![1, 0, 1, -2, 0, 0]]⟩

def canonicalOutput11307 : ExponentCode := normalNode4210

theorem canonicalSound11307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11307.moment H = canonicalOutput11307.moment H :=
  canonical_of_padded canonicalInput11307 canonicalOutput11307 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11308 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 1, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![1, 0, -2, 1, 0, 0]]⟩

def canonicalOutput11308 : ExponentCode := normalNode4210

theorem canonicalSound11308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11308.moment H = canonicalOutput11308.moment H :=
  canonical_of_padded canonicalInput11308 canonicalOutput11308 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11309 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 0, 1, 0, 0], ![1, -2, 0, 1, 0, 0], ![1, 1, 0, -2, 0, 0]]⟩

def canonicalOutput11309 : ExponentCode := normalNode4210

theorem canonicalSound11309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11309.moment H = canonicalOutput11309.moment H :=
  canonical_of_padded canonicalInput11309 canonicalOutput11309 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11310 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 0, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![1, -2, 0, 1, 0, 0]]⟩

def canonicalOutput11310 : ExponentCode := normalNode4210

theorem canonicalSound11310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11310.moment H = canonicalOutput11310.moment H :=
  canonical_of_padded canonicalInput11310 canonicalOutput11310 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11311 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0]]⟩

def canonicalOutput11311 : ExponentCode := normalNode5550

theorem canonicalSound11311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11311.moment H = canonicalOutput11311.moment H :=
  canonical_of_padded canonicalInput11311 canonicalOutput11311 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11312 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0]]⟩

def canonicalOutput11312 : ExponentCode := normalNode5550

theorem canonicalSound11312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11312.moment H = canonicalOutput11312.moment H :=
  canonical_of_padded canonicalInput11312 canonicalOutput11312 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11313 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 0, 2, 0, 0], ![-1, 2, 0, -1, 0, 0], ![2, -1, 0, -1, 0, 0]]⟩

def canonicalOutput11313 : ExponentCode := normalNode4257

theorem canonicalSound11313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11313.moment H = canonicalOutput11313.moment H :=
  canonical_of_padded canonicalInput11313 canonicalOutput11313 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11314 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 0, 2, 0, 0], ![2, -1, 0, -1, 0, 0], ![-1, 2, 0, -1, 0, 0]]⟩

def canonicalOutput11314 : ExponentCode := normalNode4257

theorem canonicalSound11314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11314.moment H = canonicalOutput11314.moment H :=
  canonical_of_padded canonicalInput11314 canonicalOutput11314 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11315 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0]]⟩

def canonicalOutput11315 : ExponentCode := normalNode5557

theorem canonicalSound11315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11315.moment H = canonicalOutput11315.moment H :=
  canonical_of_padded canonicalInput11315 canonicalOutput11315 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11316 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0]]⟩

def canonicalOutput11316 : ExponentCode := normalNode5557

theorem canonicalSound11316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11316.moment H = canonicalOutput11316.moment H :=
  canonical_of_padded canonicalInput11316 canonicalOutput11316 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11317 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, -1, 2, 0, 0], ![-1, 0, 2, -1, 0, 0], ![2, 0, -1, -1, 0, 0]]⟩

def canonicalOutput11317 : ExponentCode := normalNode4257

theorem canonicalSound11317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11317.moment H = canonicalOutput11317.moment H :=
  canonical_of_padded canonicalInput11317 canonicalOutput11317 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11318 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, -1, 2, 0, 0], ![2, 0, -1, -1, 0, 0], ![-1, 0, 2, -1, 0, 0]]⟩

def canonicalOutput11318 : ExponentCode := normalNode4257

theorem canonicalSound11318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11318.moment H = canonicalOutput11318.moment H :=
  canonical_of_padded canonicalInput11318 canonicalOutput11318 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11319 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, 2, -1, 0], ![-1, 0, 0, -1, 2, 0], ![2, 0, 0, -1, -1, 0]]⟩

def canonicalOutput11319 : ExponentCode := normalNode3682

theorem canonicalSound11319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11319.moment H = canonicalOutput11319.moment H :=
  canonical_of_padded canonicalInput11319 canonicalOutput11319 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11320 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, 2, -1, 0], ![2, 0, 0, -1, -1, 0], ![-1, 0, 0, -1, 2, 0]]⟩

def canonicalOutput11320 : ExponentCode := normalNode3682

theorem canonicalSound11320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11320.moment H = canonicalOutput11320.moment H :=
  canonical_of_padded canonicalInput11320 canonicalOutput11320 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11321 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 2, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![2, 0, -1, -1, 0, 0]]⟩

def canonicalOutput11321 : ExponentCode := normalNode4257

theorem canonicalSound11321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11321.moment H = canonicalOutput11321.moment H :=
  canonical_of_padded canonicalInput11321 canonicalOutput11321 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11322 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 2, -1, 0, 0], ![2, 0, -1, -1, 0, 0], ![-1, 0, -1, 2, 0, 0]]⟩

def canonicalOutput11322 : ExponentCode := normalNode4257

theorem canonicalSound11322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11322.moment H = canonicalOutput11322.moment H :=
  canonical_of_padded canonicalInput11322 canonicalOutput11322 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11323 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0]]⟩

def canonicalOutput11323 : ExponentCode := normalNode5557

theorem canonicalSound11323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11323.moment H = canonicalOutput11323.moment H :=
  canonical_of_padded canonicalInput11323 canonicalOutput11323 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11324 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0]]⟩

def canonicalOutput11324 : ExponentCode := normalNode5557

theorem canonicalSound11324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11324.moment H = canonicalOutput11324.moment H :=
  canonical_of_padded canonicalInput11324 canonicalOutput11324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11325 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, 0, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![2, -1, 0, -1, 0, 0]]⟩

def canonicalOutput11325 : ExponentCode := normalNode4257

theorem canonicalSound11325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11325.moment H = canonicalOutput11325.moment H :=
  canonical_of_padded canonicalInput11325 canonicalOutput11325 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11326 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, 0, -1, 0, 0], ![2, -1, 0, -1, 0, 0], ![-1, -1, 0, 2, 0, 0]]⟩

def canonicalOutput11326 : ExponentCode := normalNode4257

theorem canonicalSound11326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11326.moment H = canonicalOutput11326.moment H :=
  canonical_of_padded canonicalInput11326 canonicalOutput11326 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11327 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 0, 1, 1, 0], ![0, 1, 0, -2, 1, 0], ![0, 1, 0, 1, -2, 0]]⟩

def canonicalOutput11327 : ExponentCode := normalNode3674

theorem canonicalSound11327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11327.moment H = canonicalOutput11327.moment H :=
  canonical_of_padded canonicalInput11327 canonicalOutput11327 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
