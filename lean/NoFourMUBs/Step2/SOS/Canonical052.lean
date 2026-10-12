import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3328 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 1, -1], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3328 : ExponentCode := normalNode7631

theorem canonicalSound3328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3328.moment H = canonicalOutput3328.moment H :=
  canonical_of_padded canonicalInput3328 canonicalOutput3328 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3329 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 1, -1], ![1, -1, 1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput3329 : ExponentCode := normalNode8127

theorem canonicalSound3329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3329.moment H = canonicalOutput3329.moment H :=
  canonical_of_padded canonicalInput3329 canonicalOutput3329 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput3330 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -2, 1, -1], ![1, 0, 0, -2, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput3330 : ExponentCode := normalNode8127

theorem canonicalSound3330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3330.moment H = canonicalOutput3330.moment H :=
  canonical_of_padded canonicalInput3330 canonicalOutput3330 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, canonicalPermutation37⟩ (by decide +kernel) hH

def canonicalInput3331 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, -1, 0, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3331 : ExponentCode := normalNode10047

theorem canonicalSound3331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3331.moment H = canonicalOutput3331.moment H :=
  canonical_of_padded canonicalInput3331 canonicalOutput3331 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput3332 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, -1, -1, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3332 : ExponentCode := normalNode7586

theorem canonicalSound3332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3332.moment H = canonicalOutput3332.moment H :=
  canonical_of_padded canonicalInput3332 canonicalOutput3332 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput3333 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, 0, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3333 : ExponentCode := normalNode10447

theorem canonicalSound3333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3333.moment H = canonicalOutput3333.moment H :=
  canonical_of_padded canonicalInput3333 canonicalOutput3333 (by decide) (by decide)
    ⟨false, true, canonicalPermutation37, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput3334 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, -1, 0, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput3334 : ExponentCode := normalNode7585

theorem canonicalSound3334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3334.moment H = canonicalOutput3334.moment H :=
  canonical_of_padded canonicalInput3334 canonicalOutput3334 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3335 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput3335 : ExponentCode := normalNode7252

theorem canonicalSound3335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3335.moment H = canonicalOutput3335.moment H :=
  canonical_of_padded canonicalInput3335 canonicalOutput3335 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput3336 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, -1, 0, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3336 : ExponentCode := normalNode7253

theorem canonicalSound3336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3336.moment H = canonicalOutput3336.moment H :=
  canonical_of_padded canonicalInput3336 canonicalOutput3336 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3337 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, -1, 0, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput3337 : ExponentCode := normalNode10060

theorem canonicalSound3337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3337.moment H = canonicalOutput3337.moment H :=
  canonical_of_padded canonicalInput3337 canonicalOutput3337 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3338 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, -1, -2, 2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput3338 : ExponentCode := normalNode7243

theorem canonicalSound3338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3338.moment H = canonicalOutput3338.moment H :=
  canonical_of_padded canonicalInput3338 canonicalOutput3338 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput3339 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 0, 0, 0, 0], ![0, 1, 0, -1, 0], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3339 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2633⟩

theorem canonicalSound3339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3339.moment H = canonicalOutput3339.moment H :=
  canonical_of_padded canonicalInput3339 canonicalOutput3339 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3340 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3340 : ExponentCode := normalNode6582

theorem canonicalSound3340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3340.moment H = canonicalOutput3340.moment H :=
  canonical_of_padded canonicalInput3340 canonicalOutput3340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3341 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3341 : ExponentCode := normalNode6581

theorem canonicalSound3341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3341.moment H = canonicalOutput3341.moment H :=
  canonical_of_padded canonicalInput3341 canonicalOutput3341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3342 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 0, 1, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3342 : ExponentCode := normalNode6595

theorem canonicalSound3342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3342.moment H = canonicalOutput3342.moment H :=
  canonical_of_padded canonicalInput3342 canonicalOutput3342 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3343 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3343 : ExponentCode := normalNode6576

theorem canonicalSound3343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3343.moment H = canonicalOutput3343.moment H :=
  canonical_of_padded canonicalInput3343 canonicalOutput3343 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3344 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 0, 1, -1, 0], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput3344 : ExponentCode := normalNode10171

theorem canonicalSound3344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3344.moment H = canonicalOutput3344.moment H :=
  canonical_of_padded canonicalInput3344 canonicalOutput3344 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3345 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput3345 : ExponentCode := normalNode8732

theorem canonicalSound3345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3345.moment H = canonicalOutput3345.moment H :=
  canonical_of_padded canonicalInput3345 canonicalOutput3345 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput3346 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3346 : ExponentCode := normalNode9777

theorem canonicalSound3346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3346.moment H = canonicalOutput3346.moment H :=
  canonical_of_padded canonicalInput3346 canonicalOutput3346 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3347 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![0, 0, 1, 0, -1], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput3347 : ExponentCode := normalNode6575

theorem canonicalSound3347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3347.moment H = canonicalOutput3347.moment H :=
  canonical_of_padded canonicalInput3347 canonicalOutput3347 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3348 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput3348 : ExponentCode := normalNode6616

theorem canonicalSound3348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3348.moment H = canonicalOutput3348.moment H :=
  canonical_of_padded canonicalInput3348 canonicalOutput3348 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3349 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, -1, 1, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3349 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code351

theorem canonicalSound3349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3349.moment H = canonicalOutput3349.moment H :=
  canonical_of_padded canonicalInput3349 canonicalOutput3349 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3350 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3350 : ExponentCode := normalNode8341

theorem canonicalSound3350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3350.moment H = canonicalOutput3350.moment H :=
  canonical_of_padded canonicalInput3350 canonicalOutput3350 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3351 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3351 : ExponentCode := normalNode6604

theorem canonicalSound3351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3351.moment H = canonicalOutput3351.moment H :=
  canonical_of_padded canonicalInput3351 canonicalOutput3351 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3352 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3352 : ExponentCode := normalNode9769

theorem canonicalSound3352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3352.moment H = canonicalOutput3352.moment H :=
  canonical_of_padded canonicalInput3352 canonicalOutput3352 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput3353 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3353 : ExponentCode := normalNode9778

theorem canonicalSound3353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3353.moment H = canonicalOutput3353.moment H :=
  canonical_of_padded canonicalInput3353 canonicalOutput3353 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3354 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3354 : ExponentCode := normalNode8397

theorem canonicalSound3354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3354.moment H = canonicalOutput3354.moment H :=
  canonical_of_padded canonicalInput3354 canonicalOutput3354 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3355 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3355 : ExponentCode := normalNode6598

theorem canonicalSound3355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3355.moment H = canonicalOutput3355.moment H :=
  canonical_of_padded canonicalInput3355 canonicalOutput3355 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3356 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput3356 : ExponentCode := normalNode6598

theorem canonicalSound3356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3356.moment H = canonicalOutput3356.moment H :=
  canonical_of_padded canonicalInput3356 canonicalOutput3356 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3357 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -2, -1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput3357 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code558

theorem canonicalSound3357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3357.moment H = canonicalOutput3357.moment H :=
  canonical_of_padded canonicalInput3357 canonicalOutput3357 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3358 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, -1, 0, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3358 : ExponentCode := normalNode8135

theorem canonicalSound3358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3358.moment H = canonicalOutput3358.moment H :=
  canonical_of_padded canonicalInput3358 canonicalOutput3358 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3359 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3359 : ExponentCode := normalNode6610

theorem canonicalSound3359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3359.moment H = canonicalOutput3359.moment H :=
  canonical_of_padded canonicalInput3359 canonicalOutput3359 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3360 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, -1, 1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput3360 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code359

theorem canonicalSound3360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3360.moment H = canonicalOutput3360.moment H :=
  canonical_of_padded canonicalInput3360 canonicalOutput3360 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3361 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, 0, 0, -2, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput3361 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code359

theorem canonicalSound3361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3361.moment H = canonicalOutput3361.moment H :=
  canonical_of_padded canonicalInput3361 canonicalOutput3361 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3362 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput3362 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code907

theorem canonicalSound3362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3362.moment H = canonicalOutput3362.moment H :=
  canonical_of_padded canonicalInput3362 canonicalOutput3362 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3363 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -1, 0, -1], ![1, -1, 0, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3363 : ExponentCode := normalNode8210

theorem canonicalSound3363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3363.moment H = canonicalOutput3363.moment H :=
  canonical_of_padded canonicalInput3363 canonicalOutput3363 (by decide) (by decide)
    ⟨false, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3364 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -1, 0, -1], ![1, -1, 0, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput3364 : ExponentCode := normalNode8211

theorem canonicalSound3364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3364.moment H = canonicalOutput3364.moment H :=
  canonical_of_padded canonicalInput3364 canonicalOutput3364 (by decide) (by decide)
    ⟨false, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3365 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput3365 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code355

theorem canonicalSound3365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3365.moment H = canonicalOutput3365.moment H :=
  canonical_of_padded canonicalInput3365 canonicalOutput3365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput3366 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![0, 2, 1, -2, -1], ![1, -1, 0, 0, 0], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput3366 : ExponentCode := normalNode8217

theorem canonicalSound3366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3366.moment H = canonicalOutput3366.moment H :=
  canonical_of_padded canonicalInput3366 canonicalOutput3366 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3367 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![1, -1, 1, -1, 0], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput3367 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code886

theorem canonicalSound3367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3367.moment H = canonicalOutput3367.moment H :=
  canonical_of_padded canonicalInput3367 canonicalOutput3367 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3368 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 1, 1, -2], ![1, -1, 1, 0, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput3368 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code664

theorem canonicalSound3368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3368.moment H = canonicalOutput3368.moment H :=
  canonical_of_padded canonicalInput3368 canonicalOutput3368 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3369 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![-1, 2, -1, 1, -1], ![3, -1, -1, 0, -1]]⟩

def canonicalOutput3369 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code944

theorem canonicalSound3369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3369.moment H = canonicalOutput3369.moment H :=
  canonical_of_padded canonicalInput3369 canonicalOutput3369 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3370 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput3370 : ExponentCode := normalNode8718

theorem canonicalSound3370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3370.moment H = canonicalOutput3370.moment H :=
  canonical_of_padded canonicalInput3370 canonicalOutput3370 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3371 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 0, 0], ![0, 1, -1, 1, -1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput3371 : ExponentCode := normalNode8569

theorem canonicalSound3371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3371.moment H = canonicalOutput3371.moment H :=
  canonical_of_padded canonicalInput3371 canonicalOutput3371 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3372 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![0, 1, -1, 0, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput3372 : ExponentCode := normalNode8569

theorem canonicalSound3372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3372.moment H = canonicalOutput3372.moment H :=
  canonical_of_padded canonicalInput3372 canonicalOutput3372 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput3373 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, -2, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3373 : ExponentCode := normalNode8259

theorem canonicalSound3373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3373.moment H = canonicalOutput3373.moment H :=
  canonical_of_padded canonicalInput3373 canonicalOutput3373 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3374 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 2, -3, 1, 0], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput3374 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code387

theorem canonicalSound3374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3374.moment H = canonicalOutput3374.moment H :=
  canonical_of_padded canonicalInput3374 canonicalOutput3374 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3375 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 2, -2, 0, 0], ![1, -1, 0, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3375 : ExponentCode := normalNode8168

theorem canonicalSound3375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3375.moment H = canonicalOutput3375.moment H :=
  canonical_of_padded canonicalInput3375 canonicalOutput3375 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3376 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 2, -2, 0, 0], ![2, -1, 0, 1, -2]]⟩

def canonicalOutput3376 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code985

theorem canonicalSound3376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3376.moment H = canonicalOutput3376.moment H :=
  canonical_of_padded canonicalInput3376 canonicalOutput3376 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3377 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput3377 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound3377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3377.moment H = canonicalOutput3377.moment H :=
  canonical_of_padded canonicalInput3377 canonicalOutput3377 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3378 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput3378 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code845

theorem canonicalSound3378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3378.moment H = canonicalOutput3378.moment H :=
  canonical_of_padded canonicalInput3378 canonicalOutput3378 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3379 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -2, 0], ![1, -1, 0, 1, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput3379 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code883

theorem canonicalSound3379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3379.moment H = canonicalOutput3379.moment H :=
  canonical_of_padded canonicalInput3379 canonicalOutput3379 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3380 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -1, -1], ![-1, 2, -2, 1, 0], ![3, -1, 0, -1, -1]]⟩

def canonicalOutput3380 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code832

theorem canonicalSound3380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3380.moment H = canonicalOutput3380.moment H :=
  canonical_of_padded canonicalInput3380 canonicalOutput3380 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3381 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput3381 : ExponentCode := normalNode8721

theorem canonicalSound3381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3381.moment H = canonicalOutput3381.moment H :=
  canonical_of_padded canonicalInput3381 canonicalOutput3381 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3382 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3382 : ExponentCode := normalNode10043

theorem canonicalSound3382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3382.moment H = canonicalOutput3382.moment H :=
  canonical_of_padded canonicalInput3382 canonicalOutput3382 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3383 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 1, 0, 0, -1], ![1, 0, -2, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3383 : ExponentCode := normalNode10026

theorem canonicalSound3383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3383.moment H = canonicalOutput3383.moment H :=
  canonical_of_padded canonicalInput3383 canonicalOutput3383 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput3384 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 2, -2, 0, 0], ![1, -1, 0, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3384 : ExponentCode := normalNode8298

theorem canonicalSound3384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3384.moment H = canonicalOutput3384.moment H :=
  canonical_of_padded canonicalInput3384 canonicalOutput3384 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3385 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -1, -1], ![0, 2, -1, 1, -2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput3385 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1012

theorem canonicalSound3385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3385.moment H = canonicalOutput3385.moment H :=
  canonical_of_padded canonicalInput3385 canonicalOutput3385 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3386 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, -1, -1], ![1, -1, -1, -1, 2], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput3386 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1017

theorem canonicalSound3386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3386.moment H = canonicalOutput3386.moment H :=
  canonical_of_padded canonicalInput3386 canonicalOutput3386 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3387 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput3387 : ExponentCode := normalNode10390

theorem canonicalSound3387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3387.moment H = canonicalOutput3387.moment H :=
  canonical_of_padded canonicalInput3387 canonicalOutput3387 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3388 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, -1, 0, 1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput3388 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code348

theorem canonicalSound3388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3388.moment H = canonicalOutput3388.moment H :=
  canonical_of_padded canonicalInput3388 canonicalOutput3388 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3389 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3389 : ExponentCode := normalNode6614

theorem canonicalSound3389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3389.moment H = canonicalOutput3389.moment H :=
  canonical_of_padded canonicalInput3389 canonicalOutput3389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3390 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 2, -2, 0, 0], ![1, -1, 0, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput3390 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code357

theorem canonicalSound3390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3390.moment H = canonicalOutput3390.moment H :=
  canonical_of_padded canonicalInput3390 canonicalOutput3390 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3391 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, 0, -2], ![0, 2, -2, 1, -1], ![1, -1, 0, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput3391 : ExponentCode := normalNode8216

theorem canonicalSound3391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3391.moment H = canonicalOutput3391.moment H :=
  canonical_of_padded canonicalInput3391 canonicalOutput3391 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
