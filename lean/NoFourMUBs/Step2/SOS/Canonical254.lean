import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16256 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![1, 0, 0, 1, -2], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput16256 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1168

theorem canonicalSound16256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16256.moment H = canonicalOutput16256.moment H :=
  canonical_of_padded canonicalInput16256 canonicalOutput16256 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16257 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![1, 0, 1, 1, -3], ![1, 2, -3, -1, 1]]⟩

def canonicalOutput16257 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1360

theorem canonicalSound16257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16257.moment H = canonicalOutput16257.moment H :=
  canonical_of_padded canonicalInput16257 canonicalOutput16257 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16258 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, -1, 1], ![1, 1, 0, -1, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16258 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1399

theorem canonicalSound16258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16258.moment H = canonicalOutput16258.moment H :=
  canonical_of_padded canonicalInput16258 canonicalOutput16258 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16259 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![-1, 2, -2, 1, 0], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput16259 : ExponentCode := normalNode3917

theorem canonicalSound16259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16259.moment H = canonicalOutput16259.moment H :=
  canonical_of_padded canonicalInput16259 canonicalOutput16259 (by decide) (by decide)
    ⟨true, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16260 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![-1, 2, -1, 1, -1], ![3, 0, -1, -2, 0]]⟩

def canonicalOutput16260 : ExponentCode := normalNode4253

theorem canonicalSound16260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16260.moment H = canonicalOutput16260.moment H :=
  canonical_of_padded canonicalInput16260 canonicalOutput16260 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16261 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![0, 1, -2, 1, 0], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput16261 : ExponentCode := normalNode4647

theorem canonicalSound16261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16261.moment H = canonicalOutput16261.moment H :=
  canonical_of_padded canonicalInput16261 canonicalOutput16261 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16262 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![0, 1, -1, 1, -1], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput16262 : ExponentCode := normalNode4254

theorem canonicalSound16262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16262.moment H = canonicalOutput16262.moment H :=
  canonical_of_padded canonicalInput16262 canonicalOutput16262 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16263 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![0, 1, 0, -2, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput16263 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code874

theorem canonicalSound16263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16263.moment H = canonicalOutput16263.moment H :=
  canonical_of_padded canonicalInput16263 canonicalOutput16263 (by decide) (by decide)
    ⟨true, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16264 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![0, 1, 0, 1, -2], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput16264 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code874

theorem canonicalSound16264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16264.moment H = canonicalOutput16264.moment H :=
  canonical_of_padded canonicalInput16264 canonicalOutput16264 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16265 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![0, 2, -1, 1, -2], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput16265 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code964

theorem canonicalSound16265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16265.moment H = canonicalOutput16265.moment H :=
  canonical_of_padded canonicalInput16265 canonicalOutput16265 (by decide) (by decide)
    ⟨true, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16266 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![1, 0, -2, 1, 0], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput16266 : ExponentCode := normalNode4647

theorem canonicalSound16266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16266.moment H = canonicalOutput16266.moment H :=
  canonical_of_padded canonicalInput16266 canonicalOutput16266 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16267 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![1, 0, -1, -2, 2], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput16267 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code958

theorem canonicalSound16267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16267.moment H = canonicalOutput16267.moment H :=
  canonical_of_padded canonicalInput16267 canonicalOutput16267 (by decide) (by decide)
    ⟨true, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16268 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![1, 0, -1, 1, -1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput16268 : ExponentCode := normalNode4254

theorem canonicalSound16268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16268.moment H = canonicalOutput16268.moment H :=
  canonical_of_padded canonicalInput16268 canonicalOutput16268 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16269 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![1, 0, 0, 1, -2], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput16269 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code874

theorem canonicalSound16269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16269.moment H = canonicalOutput16269.moment H :=
  canonical_of_padded canonicalInput16269 canonicalOutput16269 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16270 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![1, 1, -3, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput16270 : ExponentCode := normalNode3457

theorem canonicalSound16270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16270.moment H = canonicalOutput16270.moment H :=
  canonical_of_padded canonicalInput16270 canonicalOutput16270 (by decide) (by decide)
    ⟨true, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16271 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![1, 1, -1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput16271 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code965

theorem canonicalSound16271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16271.moment H = canonicalOutput16271.moment H :=
  canonical_of_padded canonicalInput16271 canonicalOutput16271 (by decide) (by decide)
    ⟨true, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16272 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![1, 1, 0, -3, 1], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput16272 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code876

theorem canonicalSound16272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16272.moment H = canonicalOutput16272.moment H :=
  canonical_of_padded canonicalInput16272 canonicalOutput16272 (by decide) (by decide)
    ⟨true, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16273 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![1, 1, 0, -2, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput16273 : ExponentCode := normalNode3878

theorem canonicalSound16273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16273.moment H = canonicalOutput16273.moment H :=
  canonical_of_padded canonicalInput16273 canonicalOutput16273 (by decide) (by decide)
    ⟨true, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16274 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 0, 0], ![1, 1, 0, 1, -3], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput16274 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code876

theorem canonicalSound16274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16274.moment H = canonicalOutput16274.moment H :=
  canonical_of_padded canonicalInput16274 canonicalOutput16274 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16275 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 2, 1, -1], ![-1, 2, -2, 0, 1], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput16275 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1335

theorem canonicalSound16275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16275.moment H = canonicalOutput16275.moment H :=
  canonical_of_padded canonicalInput16275 canonicalOutput16275 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16276 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 3, 0, -1], ![-1, 2, -2, 1, 0], ![3, 0, -1, -2, 0]]⟩

def canonicalOutput16276 : ExponentCode := normalNode7668

theorem canonicalSound16276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16276.moment H = canonicalOutput16276.moment H :=
  canonical_of_padded canonicalInput16276 canonicalOutput16276 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16277 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 3, 0, -1], ![-1, 2, -1, 1, -1], ![3, 0, -2, -2, 1]]⟩

def canonicalOutput16277 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1337

theorem canonicalSound16277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16277.moment H = canonicalOutput16277.moment H :=
  canonical_of_padded canonicalInput16277 canonicalOutput16277 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16278 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, -1, 3, 0, -1], ![0, 2, -2, 1, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput16278 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1364

theorem canonicalSound16278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16278.moment H = canonicalOutput16278.moment H :=
  canonical_of_padded canonicalInput16278 canonicalOutput16278 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16279 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 1, -1, 1], ![-1, 2, 1, -1, -1], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput16279 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1344

theorem canonicalSound16279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16279.moment H = canonicalOutput16279.moment H :=
  canonical_of_padded canonicalInput16279 canonicalOutput16279 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16280 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 1, -1, 1], ![-1, 3, -2, 1, -1], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput16280 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1347

theorem canonicalSound16280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16280.moment H = canonicalOutput16280.moment H :=
  canonical_of_padded canonicalInput16280 canonicalOutput16280 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16281 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 1, 1, -1], ![-1, 2, -2, 0, 1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput16281 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1343

theorem canonicalSound16281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16281.moment H = canonicalOutput16281.moment H :=
  canonical_of_padded canonicalInput16281 canonicalOutput16281 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16282 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 1, 1, -1], ![0, 2, -2, -1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput16282 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1367

theorem canonicalSound16282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16282.moment H = canonicalOutput16282.moment H :=
  canonical_of_padded canonicalInput16282 canonicalOutput16282 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16283 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 1, 1, -1], ![0, 2, -2, 0, 0], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput16283 : ExponentCode := normalNode4286

theorem canonicalSound16283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16283.moment H = canonicalOutput16283.moment H :=
  canonical_of_padded canonicalInput16283 canonicalOutput16283 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16284 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 1, 1, -1], ![1, -1, 1, -1, 0], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput16284 : ExponentCode := normalNode8866

theorem canonicalSound16284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16284.moment H = canonicalOutput16284.moment H :=
  canonical_of_padded canonicalInput16284 canonicalOutput16284 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16285 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 1, 1, -1], ![1, -1, 1, 0, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput16285 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1365

theorem canonicalSound16285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16285.moment H = canonicalOutput16285.moment H :=
  canonical_of_padded canonicalInput16285 canonicalOutput16285 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16286 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, -2, 1], ![-1, 2, -1, 1, -1], ![3, -1, -1, 0, -1]]⟩

def canonicalOutput16286 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound16286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16286.moment H = canonicalOutput16286.moment H :=
  canonical_of_padded canonicalInput16286 canonicalOutput16286 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16287 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, -2, 1], ![0, 2, -3, 1, 0], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput16287 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1369

theorem canonicalSound16287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16287.moment H = canonicalOutput16287.moment H :=
  canonical_of_padded canonicalInput16287 canonicalOutput16287 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16288 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, -2, 1], ![0, 2, -2, 0, 0], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput16288 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code883

theorem canonicalSound16288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16288.moment H = canonicalOutput16288.moment H :=
  canonical_of_padded canonicalInput16288 canonicalOutput16288 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16289 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, -2, 1], ![0, 2, -1, 0, -1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput16289 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound16289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16289.moment H = canonicalOutput16289.moment H :=
  canonical_of_padded canonicalInput16289 canonicalOutput16289 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16290 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, -2, 1], ![0, 2, 0, 0, -2], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput16290 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1166

theorem canonicalSound16290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16290.moment H = canonicalOutput16290.moment H :=
  canonical_of_padded canonicalInput16290 canonicalOutput16290 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16291 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, -2, 1], ![1, -1, 0, 1, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput16291 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1373

theorem canonicalSound16291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16291.moment H = canonicalOutput16291.moment H :=
  canonical_of_padded canonicalInput16291 canonicalOutput16291 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16292 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, -1, 0], ![-1, 2, -2, 1, 0], ![3, -1, 0, -1, -1]]⟩

def canonicalOutput16292 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2019⟩

theorem canonicalSound16292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16292.moment H = canonicalOutput16292.moment H :=
  canonical_of_padded canonicalInput16292 canonicalOutput16292 (by decide) (by decide)
    ⟨true, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16293 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, -1, 0], ![0, 2, -1, 1, -2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput16293 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound16293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16293.moment H = canonicalOutput16293.moment H :=
  canonical_of_padded canonicalInput16293 canonicalOutput16293 (by decide) (by decide)
    ⟨true, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16294 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, -1, 0], ![1, -1, -1, -1, 2], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput16294 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code960

theorem canonicalSound16294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16294.moment H = canonicalOutput16294.moment H :=
  canonical_of_padded canonicalInput16294 canonicalOutput16294 (by decide) (by decide)
    ⟨true, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16295 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, 0, -1], ![-1, 3, -1, -2, 1], ![3, -2, -1, 1, -1]]⟩

def canonicalOutput16295 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code975

theorem canonicalSound16295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16295.moment H = canonicalOutput16295.moment H :=
  canonical_of_padded canonicalInput16295 canonicalOutput16295 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16296 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, 0, -1], ![1, -1, -2, 1, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput16296 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound16296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16296.moment H = canonicalOutput16296.moment H :=
  canonical_of_padded canonicalInput16296 canonicalOutput16296 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16297 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, 0, -1], ![1, -1, -1, 1, 0], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput16297 : ExponentCode := normalNode4307

theorem canonicalSound16297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16297.moment H = canonicalOutput16297.moment H :=
  canonical_of_padded canonicalInput16297 canonicalOutput16297 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16298 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 2, 0, -1], ![1, -1, 0, 1, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput16298 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code878

theorem canonicalSound16298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16298.moment H = canonicalOutput16298.moment H :=
  canonical_of_padded canonicalInput16298 canonicalOutput16298 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16299 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 3, -2, 0], ![-1, 2, -2, 1, 0], ![3, -1, -1, 0, -1]]⟩

def canonicalOutput16299 : ExponentCode := normalNode7746

theorem canonicalSound16299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16299.moment H = canonicalOutput16299.moment H :=
  canonical_of_padded canonicalInput16299 canonicalOutput16299 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16300 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 0, 3, -2, 0], ![0, 2, -2, 1, -1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput16300 : ExponentCode := normalNode5282

theorem canonicalSound16300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16300.moment H = canonicalOutput16300.moment H :=
  canonical_of_padded canonicalInput16300 canonicalOutput16300 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16301 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, -2, 1, 1], ![-1, -1, 3, -1, 0], ![3, 1, -1, -1, -2]]⟩

def canonicalOutput16301 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1332

theorem canonicalSound16301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16301.moment H = canonicalOutput16301.moment H :=
  canonical_of_padded canonicalInput16301 canonicalOutput16301 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16302 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, -2, 1, 1], ![-1, 1, 2, -1, -1], ![3, -1, 0, -1, -1]]⟩

def canonicalOutput16302 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1354

theorem canonicalSound16302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16302.moment H = canonicalOutput16302.moment H :=
  canonical_of_padded canonicalInput16302 canonicalOutput16302 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16303 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, -2, 1, 1], ![0, -1, 3, -1, -1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput16303 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1372

theorem canonicalSound16303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16303.moment H = canonicalOutput16303.moment H :=
  canonical_of_padded canonicalInput16303 canonicalOutput16303 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16304 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, -2, 1, 1], ![0, 1, 1, 0, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput16304 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound16304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16304.moment H = canonicalOutput16304.moment H :=
  canonical_of_padded canonicalInput16304 canonicalOutput16304 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16305 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, -2, 1, 1], ![0, 2, 1, -2, -1], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput16305 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1314

theorem canonicalSound16305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16305.moment H = canonicalOutput16305.moment H :=
  canonical_of_padded canonicalInput16305 canonicalOutput16305 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16306 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, -2, 1, 1], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput16306 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound16306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16306.moment H = canonicalOutput16306.moment H :=
  canonical_of_padded canonicalInput16306 canonicalOutput16306 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16307 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, -1, 1, 0], ![-1, -1, 3, 0, -1], ![3, 1, -2, -2, 0]]⟩

def canonicalOutput16307 : ExponentCode := normalNode7755

theorem canonicalSound16307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16307.moment H = canonicalOutput16307.moment H :=
  canonical_of_padded canonicalInput16307 canonicalOutput16307 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16308 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, -1, 1, 0], ![1, 1, -1, 0, -1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput16308 : ExponentCode := normalNode8825

theorem canonicalSound16308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16308.moment H = canonicalOutput16308.moment H :=
  canonical_of_padded canonicalInput16308 canonicalOutput16308 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16309 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 0, -1, 1], ![0, -1, 2, -1, 0], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput16309 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code878

theorem canonicalSound16309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16309.moment H = canonicalOutput16309.moment H :=
  canonical_of_padded canonicalInput16309 canonicalOutput16309 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16310 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 0, 1, -1], ![-1, -1, 3, 0, -1], ![3, 1, -3, -2, 1]]⟩

def canonicalOutput16310 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1351

theorem canonicalSound16310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16310.moment H = canonicalOutput16310.moment H :=
  canonical_of_padded canonicalInput16310 canonicalOutput16310 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16311 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 0, 1, -1], ![0, -1, 2, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput16311 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1373

theorem canonicalSound16311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16311.moment H = canonicalOutput16311.moment H :=
  canonical_of_padded canonicalInput16311 canonicalOutput16311 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16312 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 0, 1, -1], ![0, -1, 2, 0, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput16312 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code878

theorem canonicalSound16312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16312.moment H = canonicalOutput16312.moment H :=
  canonical_of_padded canonicalInput16312 canonicalOutput16312 (by decide) (by decide)
    ⟨true, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16313 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 0, 1, -1], ![0, 1, -2, 0, 1], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput16313 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code878

theorem canonicalSound16313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16313.moment H = canonicalOutput16313.moment H :=
  canonical_of_padded canonicalInput16313 canonicalOutput16313 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16314 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 0, 1, -1], ![1, 1, -2, 0, 0], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput16314 : ExponentCode := normalNode3956

theorem canonicalSound16314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16314.moment H = canonicalOutput16314.moment H :=
  canonical_of_padded canonicalInput16314 canonicalOutput16314 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16315 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 1, -2, 1], ![0, 1, 1, 0, -2], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput16315 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound16315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16315.moment H = canonicalOutput16315.moment H :=
  canonical_of_padded canonicalInput16315 canonicalOutput16315 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16316 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 1, -1, 0], ![-1, 1, -2, 1, 1], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput16316 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1355

theorem canonicalSound16316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16316.moment H = canonicalOutput16316.moment H :=
  canonical_of_padded canonicalInput16316 canonicalOutput16316 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16317 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 1, -1, 0], ![0, 1, -2, 1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput16317 : ExponentCode := normalNode4304

theorem canonicalSound16317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16317.moment H = canonicalOutput16317.moment H :=
  canonical_of_padded canonicalInput16317 canonicalOutput16317 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16318 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 1, -1, 0], ![1, -1, -2, 1, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput16318 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1383

theorem canonicalSound16318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16318.moment H = canonicalOutput16318.moment H :=
  canonical_of_padded canonicalInput16318 canonicalOutput16318 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16319 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 1, 1], ![-1, 1, 1, 0, -1], ![-1, 1, -2, 1, 1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput16319 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1355

theorem canonicalSound16319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16319.moment H = canonicalOutput16319.moment H :=
  canonical_of_padded canonicalInput16319 canonicalOutput16319 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
