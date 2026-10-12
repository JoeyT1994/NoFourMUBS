import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30336 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30336 : ExponentCode := normalNode8361

theorem canonicalSound30336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30336.moment H = canonicalOutput30336.moment H :=
  canonical_of_padded canonicalInput30336 canonicalOutput30336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30337 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30337 : ExponentCode := normalNode10453

theorem canonicalSound30337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30337.moment H = canonicalOutput30337.moment H :=
  canonical_of_padded canonicalInput30337 canonicalOutput30337 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30338 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30338 : ExponentCode := normalNode10645

theorem canonicalSound30338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30338.moment H = canonicalOutput30338.moment H :=
  canonical_of_padded canonicalInput30338 canonicalOutput30338 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30339 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30339 : ExponentCode := normalNode10645

theorem canonicalSound30339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30339.moment H = canonicalOutput30339.moment H :=
  canonical_of_padded canonicalInput30339 canonicalOutput30339 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30340 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30340 : ExponentCode := normalNode10645

theorem canonicalSound30340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30340.moment H = canonicalOutput30340.moment H :=
  canonical_of_padded canonicalInput30340 canonicalOutput30340 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput30341 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30341 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30341.moment H = canonicalOutput30341.moment H :=
  canonical_of_padded canonicalInput30341 canonicalOutput30341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput30342 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30342 : ExponentCode := normalNode10645

theorem canonicalSound30342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30342.moment H = canonicalOutput30342.moment H :=
  canonical_of_padded canonicalInput30342 canonicalOutput30342 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput30343 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30343 : ExponentCode := normalNode10645

theorem canonicalSound30343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30343.moment H = canonicalOutput30343.moment H :=
  canonical_of_padded canonicalInput30343 canonicalOutput30343 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30344 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30344 : ExponentCode := normalNode10645

theorem canonicalSound30344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30344.moment H = canonicalOutput30344.moment H :=
  canonical_of_padded canonicalInput30344 canonicalOutput30344 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30345 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30345 : ExponentCode := normalNode8361

theorem canonicalSound30345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30345.moment H = canonicalOutput30345.moment H :=
  canonical_of_padded canonicalInput30345 canonicalOutput30345 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30346 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30346 : ExponentCode := normalNode10453

theorem canonicalSound30346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30346.moment H = canonicalOutput30346.moment H :=
  canonical_of_padded canonicalInput30346 canonicalOutput30346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30347 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30347 : ExponentCode := normalNode10645

theorem canonicalSound30347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30347.moment H = canonicalOutput30347.moment H :=
  canonical_of_padded canonicalInput30347 canonicalOutput30347 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput30348 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30348 : ExponentCode := normalNode10645

theorem canonicalSound30348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30348.moment H = canonicalOutput30348.moment H :=
  canonical_of_padded canonicalInput30348 canonicalOutput30348 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput30349 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30349 : ExponentCode := normalNode10453

theorem canonicalSound30349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30349.moment H = canonicalOutput30349.moment H :=
  canonical_of_padded canonicalInput30349 canonicalOutput30349 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30350 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30350 : ExponentCode := normalNode8361

theorem canonicalSound30350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30350.moment H = canonicalOutput30350.moment H :=
  canonical_of_padded canonicalInput30350 canonicalOutput30350 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30351 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30351 : ExponentCode := normalNode10453

theorem canonicalSound30351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30351.moment H = canonicalOutput30351.moment H :=
  canonical_of_padded canonicalInput30351 canonicalOutput30351 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30352 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30352 : ExponentCode := normalNode10645

theorem canonicalSound30352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30352.moment H = canonicalOutput30352.moment H :=
  canonical_of_padded canonicalInput30352 canonicalOutput30352 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30353 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30353 : ExponentCode := normalNode8361

theorem canonicalSound30353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30353.moment H = canonicalOutput30353.moment H :=
  canonical_of_padded canonicalInput30353 canonicalOutput30353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30354 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30354 : ExponentCode := normalNode8361

theorem canonicalSound30354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30354.moment H = canonicalOutput30354.moment H :=
  canonical_of_padded canonicalInput30354 canonicalOutput30354 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput30355 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30355 : ExponentCode := normalNode10645

theorem canonicalSound30355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30355.moment H = canonicalOutput30355.moment H :=
  canonical_of_padded canonicalInput30355 canonicalOutput30355 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput30356 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30356 : ExponentCode := normalNode10453

theorem canonicalSound30356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30356.moment H = canonicalOutput30356.moment H :=
  canonical_of_padded canonicalInput30356 canonicalOutput30356 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput30357 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30357 : ExponentCode := normalNode8361

theorem canonicalSound30357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30357.moment H = canonicalOutput30357.moment H :=
  canonical_of_padded canonicalInput30357 canonicalOutput30357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30358 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30358 : ExponentCode := normalNode10645

theorem canonicalSound30358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30358.moment H = canonicalOutput30358.moment H :=
  canonical_of_padded canonicalInput30358 canonicalOutput30358 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30359 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30359 : ExponentCode := normalNode10453

theorem canonicalSound30359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30359.moment H = canonicalOutput30359.moment H :=
  canonical_of_padded canonicalInput30359 canonicalOutput30359 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30360 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30360 : ExponentCode := normalNode10453

theorem canonicalSound30360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30360.moment H = canonicalOutput30360.moment H :=
  canonical_of_padded canonicalInput30360 canonicalOutput30360 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput30361 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30361 : ExponentCode := normalNode10645

theorem canonicalSound30361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30361.moment H = canonicalOutput30361.moment H :=
  canonical_of_padded canonicalInput30361 canonicalOutput30361 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput30362 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30362 : ExponentCode := normalNode8361

theorem canonicalSound30362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30362.moment H = canonicalOutput30362.moment H :=
  canonical_of_padded canonicalInput30362 canonicalOutput30362 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput30363 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30363 : ExponentCode := normalNode11165

theorem canonicalSound30363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30363.moment H = canonicalOutput30363.moment H :=
  canonical_of_padded canonicalInput30363 canonicalOutput30363 (by decide) (by decide)
    ⟨false, true, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30364 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30364 : ExponentCode := normalNode8361

theorem canonicalSound30364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30364.moment H = canonicalOutput30364.moment H :=
  canonical_of_padded canonicalInput30364 canonicalOutput30364 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput30365 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30365 : ExponentCode := normalNode8361

theorem canonicalSound30365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30365.moment H = canonicalOutput30365.moment H :=
  canonical_of_padded canonicalInput30365 canonicalOutput30365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput30366 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30366 : ExponentCode := normalNode11165

theorem canonicalSound30366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30366.moment H = canonicalOutput30366.moment H :=
  canonical_of_padded canonicalInput30366 canonicalOutput30366 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30367 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30367 : ExponentCode := normalNode10415

theorem canonicalSound30367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30367.moment H = canonicalOutput30367.moment H :=
  canonical_of_padded canonicalInput30367 canonicalOutput30367 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput30368 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30368 : ExponentCode := normalNode10371

theorem canonicalSound30368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30368.moment H = canonicalOutput30368.moment H :=
  canonical_of_padded canonicalInput30368 canonicalOutput30368 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput30369 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30369 : ExponentCode := normalNode10274

theorem canonicalSound30369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30369.moment H = canonicalOutput30369.moment H :=
  canonical_of_padded canonicalInput30369 canonicalOutput30369 (by decide) (by decide)
    ⟨false, true, canonicalPermutation65, canonicalPermutation275⟩ (by decide +kernel) hH

def canonicalInput30370 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30370 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30370.moment H = canonicalOutput30370.moment H :=
  canonical_of_padded canonicalInput30370 canonicalOutput30370 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput30371 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30371 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30371.moment H = canonicalOutput30371.moment H :=
  canonical_of_padded canonicalInput30371 canonicalOutput30371 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput30372 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30372 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound30372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30372.moment H = canonicalOutput30372.moment H :=
  canonical_of_padded canonicalInput30372 canonicalOutput30372 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput30373 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30373 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound30373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30373.moment H = canonicalOutput30373.moment H :=
  canonical_of_padded canonicalInput30373 canonicalOutput30373 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput30374 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30374 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound30374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30374.moment H = canonicalOutput30374.moment H :=
  canonical_of_padded canonicalInput30374 canonicalOutput30374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput30375 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30375 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2851⟩

theorem canonicalSound30375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30375.moment H = canonicalOutput30375.moment H :=
  canonical_of_padded canonicalInput30375 canonicalOutput30375 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation70⟩ (by decide +kernel) hH

def canonicalInput30376 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30376 : ExponentCode := normalNode10415

theorem canonicalSound30376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30376.moment H = canonicalOutput30376.moment H :=
  canonical_of_padded canonicalInput30376 canonicalOutput30376 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput30377 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30377 : ExponentCode := normalNode10371

theorem canonicalSound30377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30377.moment H = canonicalOutput30377.moment H :=
  canonical_of_padded canonicalInput30377 canonicalOutput30377 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput30378 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30378 : ExponentCode := normalNode11165

theorem canonicalSound30378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30378.moment H = canonicalOutput30378.moment H :=
  canonical_of_padded canonicalInput30378 canonicalOutput30378 (by decide) (by decide)
    ⟨false, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30379 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30379 : ExponentCode := normalNode8361

theorem canonicalSound30379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30379.moment H = canonicalOutput30379.moment H :=
  canonical_of_padded canonicalInput30379 canonicalOutput30379 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30380 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30380 : ExponentCode := normalNode8361

theorem canonicalSound30380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30380.moment H = canonicalOutput30380.moment H :=
  canonical_of_padded canonicalInput30380 canonicalOutput30380 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput30381 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30381 : ExponentCode := normalNode11165

theorem canonicalSound30381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30381.moment H = canonicalOutput30381.moment H :=
  canonical_of_padded canonicalInput30381 canonicalOutput30381 (by decide) (by decide)
    ⟨false, true, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30382 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30382 : ExponentCode := normalNode8361

theorem canonicalSound30382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30382.moment H = canonicalOutput30382.moment H :=
  canonical_of_padded canonicalInput30382 canonicalOutput30382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30383 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30383 : ExponentCode := normalNode10645

theorem canonicalSound30383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30383.moment H = canonicalOutput30383.moment H :=
  canonical_of_padded canonicalInput30383 canonicalOutput30383 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30384 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30384 : ExponentCode := normalNode10453

theorem canonicalSound30384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30384.moment H = canonicalOutput30384.moment H :=
  canonical_of_padded canonicalInput30384 canonicalOutput30384 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30385 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30385 : ExponentCode := normalNode10453

theorem canonicalSound30385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30385.moment H = canonicalOutput30385.moment H :=
  canonical_of_padded canonicalInput30385 canonicalOutput30385 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30386 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30386 : ExponentCode := normalNode10645

theorem canonicalSound30386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30386.moment H = canonicalOutput30386.moment H :=
  canonical_of_padded canonicalInput30386 canonicalOutput30386 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation184⟩ (by decide +kernel) hH

def canonicalInput30387 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30387 : ExponentCode := normalNode8361

theorem canonicalSound30387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30387.moment H = canonicalOutput30387.moment H :=
  canonical_of_padded canonicalInput30387 canonicalOutput30387 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30388 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30388 : ExponentCode := normalNode8361

theorem canonicalSound30388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30388.moment H = canonicalOutput30388.moment H :=
  canonical_of_padded canonicalInput30388 canonicalOutput30388 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30389 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30389 : ExponentCode := normalNode10453

theorem canonicalSound30389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30389.moment H = canonicalOutput30389.moment H :=
  canonical_of_padded canonicalInput30389 canonicalOutput30389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30390 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30390 : ExponentCode := normalNode10645

theorem canonicalSound30390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30390.moment H = canonicalOutput30390.moment H :=
  canonical_of_padded canonicalInput30390 canonicalOutput30390 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30391 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30391 : ExponentCode := normalNode10645

theorem canonicalSound30391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30391.moment H = canonicalOutput30391.moment H :=
  canonical_of_padded canonicalInput30391 canonicalOutput30391 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput30392 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30392 : ExponentCode := normalNode10453

theorem canonicalSound30392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30392.moment H = canonicalOutput30392.moment H :=
  canonical_of_padded canonicalInput30392 canonicalOutput30392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30393 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30393 : ExponentCode := normalNode8361

theorem canonicalSound30393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30393.moment H = canonicalOutput30393.moment H :=
  canonical_of_padded canonicalInput30393 canonicalOutput30393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30394 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30394 : ExponentCode := normalNode11165

theorem canonicalSound30394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30394.moment H = canonicalOutput30394.moment H :=
  canonical_of_padded canonicalInput30394 canonicalOutput30394 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30395 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30395 : ExponentCode := normalNode8361

theorem canonicalSound30395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30395.moment H = canonicalOutput30395.moment H :=
  canonical_of_padded canonicalInput30395 canonicalOutput30395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput30396 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30396 : ExponentCode := normalNode8361

theorem canonicalSound30396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30396.moment H = canonicalOutput30396.moment H :=
  canonical_of_padded canonicalInput30396 canonicalOutput30396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput30397 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30397 : ExponentCode := normalNode11165

theorem canonicalSound30397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30397.moment H = canonicalOutput30397.moment H :=
  canonical_of_padded canonicalInput30397 canonicalOutput30397 (by decide) (by decide)
    ⟨false, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30398 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30398 : ExponentCode := normalNode10453

theorem canonicalSound30398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30398.moment H = canonicalOutput30398.moment H :=
  canonical_of_padded canonicalInput30398 canonicalOutput30398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput30399 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30399 : ExponentCode := normalNode8361

theorem canonicalSound30399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30399.moment H = canonicalOutput30399.moment H :=
  canonical_of_padded canonicalInput30399 canonicalOutput30399 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
