import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11328 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 1, 1, -2, 0, 0]]⟩

def canonicalOutput11328 : ExponentCode := normalNode4210

theorem canonicalSound11328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11328.moment H = canonicalOutput11328.moment H :=
  canonical_of_padded canonicalInput11328 canonicalOutput11328 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11329 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 1, -2, 1, 0, 0]]⟩

def canonicalOutput11329 : ExponentCode := normalNode4210

theorem canonicalSound11329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11329.moment H = canonicalOutput11329.moment H :=
  canonical_of_padded canonicalInput11329 canonicalOutput11329 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11330 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 2, -1, -1, 0, 0]]⟩

def canonicalOutput11330 : ExponentCode := normalNode4257

theorem canonicalSound11330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11330.moment H = canonicalOutput11330.moment H :=
  canonical_of_padded canonicalInput11330 canonicalOutput11330 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11331 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, -1, 2, -1, 0, 0]]⟩

def canonicalOutput11331 : ExponentCode := normalNode4257

theorem canonicalSound11331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11331.moment H = canonicalOutput11331.moment H :=
  canonical_of_padded canonicalInput11331 canonicalOutput11331 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11332 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, 2, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 2, 0, -1, -1, 0]]⟩

def canonicalOutput11332 : ExponentCode := normalNode3682

theorem canonicalSound11332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11332.moment H = canonicalOutput11332.moment H :=
  canonical_of_padded canonicalInput11332 canonicalOutput11332 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11333 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, 2, -1, 0], ![0, 2, 0, -1, -1, 0], ![0, -1, 0, -1, 2, 0]]⟩

def canonicalOutput11333 : ExponentCode := normalNode3682

theorem canonicalSound11333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11333.moment H = canonicalOutput11333.moment H :=
  canonical_of_padded canonicalInput11333 canonicalOutput11333 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11334 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 2, -1, -1, 0, 0]]⟩

def canonicalOutput11334 : ExponentCode := normalNode4257

theorem canonicalSound11334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11334.moment H = canonicalOutput11334.moment H :=
  canonical_of_padded canonicalInput11334 canonicalOutput11334 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11335 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, -1, -1, 2, 0, 0]]⟩

def canonicalOutput11335 : ExponentCode := normalNode4257

theorem canonicalSound11335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11335.moment H = canonicalOutput11335.moment H :=
  canonical_of_padded canonicalInput11335 canonicalOutput11335 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11336 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0]]⟩

def canonicalOutput11336 : ExponentCode := normalNode3674

theorem canonicalSound11336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11336.moment H = canonicalOutput11336.moment H :=
  canonical_of_padded canonicalInput11336 canonicalOutput11336 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11337 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 2, -1, -1, 0]]⟩

def canonicalOutput11337 : ExponentCode := normalNode3682

theorem canonicalSound11337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11337.moment H = canonicalOutput11337.moment H :=
  canonical_of_padded canonicalInput11337 canonicalOutput11337 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11338 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, -1, -1, 2, 0]]⟩

def canonicalOutput11338 : ExponentCode := normalNode3682

theorem canonicalSound11338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11338.moment H = canonicalOutput11338.moment H :=
  canonical_of_padded canonicalInput11338 canonicalOutput11338 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11339 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 1, 1, -2]]⟩

def canonicalOutput11339 : ExponentCode := normalNode3656

theorem canonicalSound11339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11339.moment H = canonicalOutput11339.moment H :=
  canonical_of_padded canonicalInput11339 canonicalOutput11339 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput11340 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11340 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound11340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11340.moment H = canonicalOutput11340.moment H :=
  canonical_of_padded canonicalInput11340 canonicalOutput11340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11341 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput11341 : ExponentCode := normalNode3657

theorem canonicalSound11341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11341.moment H = canonicalOutput11341.moment H :=
  canonical_of_padded canonicalInput11341 canonicalOutput11341 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput11342 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, 1, -2, 0]]⟩

def canonicalOutput11342 : ExponentCode := normalNode3674

theorem canonicalSound11342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11342.moment H = canonicalOutput11342.moment H :=
  canonical_of_padded canonicalInput11342 canonicalOutput11342 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11343 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, -2, 1, 1, 0]]⟩

def canonicalOutput11343 : ExponentCode := normalNode3674

theorem canonicalSound11343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11343.moment H = canonicalOutput11343.moment H :=
  canonical_of_padded canonicalInput11343 canonicalOutput11343 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11344 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 2, -1, -1, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, -1, -1, 2, 0]]⟩

def canonicalOutput11344 : ExponentCode := normalNode3682

theorem canonicalSound11344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11344.moment H = canonicalOutput11344.moment H :=
  canonical_of_padded canonicalInput11344 canonicalOutput11344 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11345 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 1, 1, -2, 0, 0]]⟩

def canonicalOutput11345 : ExponentCode := normalNode4210

theorem canonicalSound11345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11345.moment H = canonicalOutput11345.moment H :=
  canonical_of_padded canonicalInput11345 canonicalOutput11345 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11346 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, -2, 1, 1, 0, 0]]⟩

def canonicalOutput11346 : ExponentCode := normalNode4210

theorem canonicalSound11346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11346.moment H = canonicalOutput11346.moment H :=
  canonical_of_padded canonicalInput11346 canonicalOutput11346 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11347 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, -2, 1, 0], ![0, -2, 0, 1, 1, 0], ![0, 1, 0, 1, -2, 0]]⟩

def canonicalOutput11347 : ExponentCode := normalNode3674

theorem canonicalSound11347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11347.moment H = canonicalOutput11347.moment H :=
  canonical_of_padded canonicalInput11347 canonicalOutput11347 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11348 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 0, -2, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, -2, 0, 1, 1, 0]]⟩

def canonicalOutput11348 : ExponentCode := normalNode3674

theorem canonicalSound11348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11348.moment H = canonicalOutput11348.moment H :=
  canonical_of_padded canonicalInput11348 canonicalOutput11348 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11349 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0]]⟩

def canonicalOutput11349 : ExponentCode := normalNode4210

theorem canonicalSound11349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11349.moment H = canonicalOutput11349.moment H :=
  canonical_of_padded canonicalInput11349 canonicalOutput11349 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11350 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, -2, 1, 1, 0, 0]]⟩

def canonicalOutput11350 : ExponentCode := normalNode4210

theorem canonicalSound11350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11350.moment H = canonicalOutput11350.moment H :=
  canonical_of_padded canonicalInput11350 canonicalOutput11350 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11351 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0]]⟩

def canonicalOutput11351 : ExponentCode := normalNode4257

theorem canonicalSound11351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11351.moment H = canonicalOutput11351.moment H :=
  canonical_of_padded canonicalInput11351 canonicalOutput11351 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11352 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, -1, -1, 2, 0, 0]]⟩

def canonicalOutput11352 : ExponentCode := normalNode4257

theorem canonicalSound11352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11352.moment H = canonicalOutput11352.moment H :=
  canonical_of_padded canonicalInput11352 canonicalOutput11352 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11353 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, 0, -1, -1, 0], ![0, -1, 0, 2, -1, 0], ![0, -1, 0, -1, 2, 0]]⟩

def canonicalOutput11353 : ExponentCode := normalNode3682

theorem canonicalSound11353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11353.moment H = canonicalOutput11353.moment H :=
  canonical_of_padded canonicalInput11353 canonicalOutput11353 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11354 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 0, 1, 0, 0], ![-2, 1, 0, 1, 0, 0], ![1, 1, 0, -2, 0, 0]]⟩

def canonicalOutput11354 : ExponentCode := normalNode4210

theorem canonicalSound11354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11354.moment H = canonicalOutput11354.moment H :=
  canonical_of_padded canonicalInput11354 canonicalOutput11354 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11355 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 0, 1, 0, 0], ![1, 1, 0, -2, 0, 0], ![-2, 1, 0, 1, 0, 0]]⟩

def canonicalOutput11355 : ExponentCode := normalNode4210

theorem canonicalSound11355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11355.moment H = canonicalOutput11355.moment H :=
  canonical_of_padded canonicalInput11355 canonicalOutput11355 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11356 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0]]⟩

def canonicalOutput11356 : ExponentCode := normalNode5550

theorem canonicalSound11356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11356.moment H = canonicalOutput11356.moment H :=
  canonical_of_padded canonicalInput11356 canonicalOutput11356 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11357 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0]]⟩

def canonicalOutput11357 : ExponentCode := normalNode5550

theorem canonicalSound11357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11357.moment H = canonicalOutput11357.moment H :=
  canonical_of_padded canonicalInput11357 canonicalOutput11357 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11358 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, -2, 1, 0, 0], ![-2, 0, 1, 1, 0, 0], ![1, 0, 1, -2, 0, 0]]⟩

def canonicalOutput11358 : ExponentCode := normalNode4210

theorem canonicalSound11358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11358.moment H = canonicalOutput11358.moment H :=
  canonical_of_padded canonicalInput11358 canonicalOutput11358 (by decide) (by decide)
    ⟨false, false, canonicalPermutation92, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11359 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, -2, 1, 0, 0], ![1, 0, 1, -2, 0, 0], ![-2, 0, 1, 1, 0, 0]]⟩

def canonicalOutput11359 : ExponentCode := normalNode4210

theorem canonicalSound11359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11359.moment H = canonicalOutput11359.moment H :=
  canonical_of_padded canonicalInput11359 canonicalOutput11359 (by decide) (by decide)
    ⟨false, false, canonicalPermutation57, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11360 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, -2, 1, 0], ![-2, 0, 0, 1, 1, 0], ![1, 0, 0, 1, -2, 0]]⟩

def canonicalOutput11360 : ExponentCode := normalNode3674

theorem canonicalSound11360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11360.moment H = canonicalOutput11360.moment H :=
  canonical_of_padded canonicalInput11360 canonicalOutput11360 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11361 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 0, -2, 1, 0], ![1, 0, 0, 1, -2, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput11361 : ExponentCode := normalNode3674

theorem canonicalSound11361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11361.moment H = canonicalOutput11361.moment H :=
  canonical_of_padded canonicalInput11361 canonicalOutput11361 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11362 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 1, -2, 0, 0], ![-2, 0, 1, 1, 0, 0], ![1, 0, -2, 1, 0, 0]]⟩

def canonicalOutput11362 : ExponentCode := normalNode4210

theorem canonicalSound11362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11362.moment H = canonicalOutput11362.moment H :=
  canonical_of_padded canonicalInput11362 canonicalOutput11362 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11363 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, 1, -2, 0, 0], ![1, 0, -2, 1, 0, 0], ![-2, 0, 1, 1, 0, 0]]⟩

def canonicalOutput11363 : ExponentCode := normalNode4210

theorem canonicalSound11363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11363.moment H = canonicalOutput11363.moment H :=
  canonical_of_padded canonicalInput11363 canonicalOutput11363 (by decide) (by decide)
    ⟨false, false, canonicalPermutation100, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11364 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0]]⟩

def canonicalOutput11364 : ExponentCode := normalNode5550

theorem canonicalSound11364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11364.moment H = canonicalOutput11364.moment H :=
  canonical_of_padded canonicalInput11364 canonicalOutput11364 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11365 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0]]⟩

def canonicalOutput11365 : ExponentCode := normalNode5550

theorem canonicalSound11365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11365.moment H = canonicalOutput11365.moment H :=
  canonical_of_padded canonicalInput11365 canonicalOutput11365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11366 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, 0, -2, 0, 0], ![-2, 1, 0, 1, 0, 0], ![1, -2, 0, 1, 0, 0]]⟩

def canonicalOutput11366 : ExponentCode := normalNode4210

theorem canonicalSound11366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11366.moment H = canonicalOutput11366.moment H :=
  canonical_of_padded canonicalInput11366 canonicalOutput11366 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11367 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, 0, -2, 0, 0], ![1, -2, 0, 1, 0, 0], ![-2, 1, 0, 1, 0, 0]]⟩

def canonicalOutput11367 : ExponentCode := normalNode4210

theorem canonicalSound11367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11367.moment H = canonicalOutput11367.moment H :=
  canonical_of_padded canonicalInput11367 canonicalOutput11367 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11368 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0]]⟩

def canonicalOutput11368 : ExponentCode := normalNode5557

theorem canonicalSound11368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11368.moment H = canonicalOutput11368.moment H :=
  canonical_of_padded canonicalInput11368 canonicalOutput11368 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11369 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0]]⟩

def canonicalOutput11369 : ExponentCode := normalNode5557

theorem canonicalSound11369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11369.moment H = canonicalOutput11369.moment H :=
  canonical_of_padded canonicalInput11369 canonicalOutput11369 (by decide) (by decide)
    ⟨false, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput11370 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, 0, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![-1, 2, 0, -1, 0, 0]]⟩

def canonicalOutput11370 : ExponentCode := normalNode4257

theorem canonicalSound11370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11370.moment H = canonicalOutput11370.moment H :=
  canonical_of_padded canonicalInput11370 canonicalOutput11370 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11371 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, 0, -1, 0, 0], ![-1, 2, 0, -1, 0, 0], ![-1, -1, 0, 2, 0, 0]]⟩

def canonicalOutput11371 : ExponentCode := normalNode4257

theorem canonicalSound11371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11371.moment H = canonicalOutput11371.moment H :=
  canonical_of_padded canonicalInput11371 canonicalOutput11371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput11372 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, -1, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![-1, 0, 2, -1, 0, 0]]⟩

def canonicalOutput11372 : ExponentCode := normalNode4257

theorem canonicalSound11372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11372.moment H = canonicalOutput11372.moment H :=
  canonical_of_padded canonicalInput11372 canonicalOutput11372 (by decide) (by decide)
    ⟨false, false, canonicalPermutation90, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11373 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, -1, -1, 0, 0], ![-1, 0, 2, -1, 0, 0], ![-1, 0, -1, 2, 0, 0]]⟩

def canonicalOutput11373 : ExponentCode := normalNode4257

theorem canonicalSound11373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11373.moment H = canonicalOutput11373.moment H :=
  canonical_of_padded canonicalInput11373 canonicalOutput11373 (by decide) (by decide)
    ⟨false, false, canonicalPermutation98, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11374 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![-1, 0, 0, 2, -1, 0], ![-1, 0, 0, -1, 2, 0]]⟩

def canonicalOutput11374 : ExponentCode := normalNode3682

theorem canonicalSound11374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11374.moment H = canonicalOutput11374.moment H :=
  canonical_of_padded canonicalInput11374 canonicalOutput11374 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput11375 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 1, -2, 1], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11375 : ExponentCode := normalNode3674

theorem canonicalSound11375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11375.moment H = canonicalOutput11375.moment H :=
  canonical_of_padded canonicalInput11375 canonicalOutput11375 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11376 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 1, 1, -2], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11376 : ExponentCode := normalNode3674

theorem canonicalSound11376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11376.moment H = canonicalOutput11376.moment H :=
  canonical_of_padded canonicalInput11376 canonicalOutput11376 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11377 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11377 : ExponentCode := normalNode3682

theorem canonicalSound11377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11377.moment H = canonicalOutput11377.moment H :=
  canonical_of_padded canonicalInput11377 canonicalOutput11377 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11378 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -1, -2, 1, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11378 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11378.moment H = canonicalOutput11378.moment H :=
  canonical_of_padded canonicalInput11378 canonicalOutput11378 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation396⟩ (by decide +kernel) hH

def canonicalInput11379 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -1, -2, 1, 0], ![0, 0, 1, 1, -2, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11379 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11379.moment H = canonicalOutput11379.moment H :=
  canonical_of_padded canonicalInput11379 canonicalOutput11379 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation396⟩ (by decide +kernel) hH

def canonicalInput11380 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -1, 1, -2, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11380 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11380.moment H = canonicalOutput11380.moment H :=
  canonical_of_padded canonicalInput11380 canonicalOutput11380 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation374⟩ (by decide +kernel) hH

def canonicalInput11381 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -1, 1, -2, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, -2, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11381 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound11381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11381.moment H = canonicalOutput11381.moment H :=
  canonical_of_padded canonicalInput11381 canonicalOutput11381 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation374⟩ (by decide +kernel) hH

def canonicalInput11382 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, 0, -1, -1, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11382 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code831

theorem canonicalSound11382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11382.moment H = canonicalOutput11382.moment H :=
  canonical_of_padded canonicalInput11382 canonicalOutput11382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput11383 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -4, 1, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11383 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11383.moment H = canonicalOutput11383.moment H :=
  canonical_of_padded canonicalInput11383 canonicalOutput11383 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11384 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -4, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11384 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound11384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11384.moment H = canonicalOutput11384.moment H :=
  canonical_of_padded canonicalInput11384 canonicalOutput11384 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput11385 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -2, -2, 1, 0], ![0, -2, 0, 1, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11385 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11385.moment H = canonicalOutput11385.moment H :=
  canonical_of_padded canonicalInput11385 canonicalOutput11385 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation366⟩ (by decide +kernel) hH

def canonicalInput11386 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -2, -2, 1, 0], ![0, 1, 0, 1, -2, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11386 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11386.moment H = canonicalOutput11386.moment H :=
  canonical_of_padded canonicalInput11386 canonicalOutput11386 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation366⟩ (by decide +kernel) hH

def canonicalInput11387 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -2, 1, -2, 0], ![0, -2, 0, 1, 1, 0], ![0, 1, 0, -2, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11387 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11387.moment H = canonicalOutput11387.moment H :=
  canonical_of_padded canonicalInput11387 canonicalOutput11387 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation371⟩ (by decide +kernel) hH

def canonicalInput11388 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -2, 1, -2, 0], ![0, 1, 0, -2, 1, 0], ![0, -2, 0, 1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11388 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code145

theorem canonicalSound11388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11388.moment H = canonicalOutput11388.moment H :=
  canonical_of_padded canonicalInput11388 canonicalOutput11388 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation371⟩ (by decide +kernel) hH

def canonicalInput11389 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -1, -2, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11389 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11389.moment H = canonicalOutput11389.moment H :=
  canonical_of_padded canonicalInput11389 canonicalOutput11389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11390 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -1, -2, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, -2, 1, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11390 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound11390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11390.moment H = canonicalOutput11390.moment H :=
  canonical_of_padded canonicalInput11390 canonicalOutput11390 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput11391 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 3, -3, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11391 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11391.moment H = canonicalOutput11391.moment H :=
  canonical_of_padded canonicalInput11391 canonicalOutput11391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation83⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
