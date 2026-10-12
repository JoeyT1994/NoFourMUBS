import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3392 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, 0, -2], ![1, -1, -2, 1, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput3392 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code526

theorem canonicalSound3392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3392.moment H = canonicalOutput3392.moment H :=
  canonical_of_padded canonicalInput3392 canonicalOutput3392 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3393 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, 0, -2], ![1, -1, -1, 1, 0], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput3393 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code883

theorem canonicalSound3393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3393.moment H = canonicalOutput3393.moment H :=
  canonical_of_padded canonicalInput3393 canonicalOutput3393 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3394 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, 0, -2], ![1, -1, 0, 1, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput3394 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code663

theorem canonicalSound3394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3394.moment H = canonicalOutput3394.moment H :=
  canonical_of_padded canonicalInput3394 canonicalOutput3394 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3395 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 0, 2, 1, -3], ![0, 2, -2, 0, 0], ![1, -1, 0, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput3395 : ExponentCode := normalNode8179

theorem canonicalSound3395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3395.moment H = canonicalOutput3395.moment H :=
  canonical_of_padded canonicalInput3395 canonicalOutput3395 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3396 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, -1, 2], ![0, 1, 1, 0, -2], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3396 : ExponentCode := normalNode10031

theorem canonicalSound3396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3396.moment H = canonicalOutput3396.moment H :=
  canonical_of_padded canonicalInput3396 canonicalOutput3396 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput3397 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 0, 0, 1, -1], ![1, 0, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3397 : ExponentCode := normalNode6578

theorem canonicalSound3397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3397.moment H = canonicalOutput3397.moment H :=
  canonical_of_padded canonicalInput3397 canonicalOutput3397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3398 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 0, 1, 0, -1], ![1, 0, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3398 : ExponentCode := normalNode6577

theorem canonicalSound3398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3398.moment H = canonicalOutput3398.moment H :=
  canonical_of_padded canonicalInput3398 canonicalOutput3398 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3399 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3399 : ExponentCode := normalNode6576

theorem canonicalSound3399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3399.moment H = canonicalOutput3399.moment H :=
  canonical_of_padded canonicalInput3399 canonicalOutput3399 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3400 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, -1, 0], ![1, -1, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3400 : ExponentCode := normalNode8520

theorem canonicalSound3400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3400.moment H = canonicalOutput3400.moment H :=
  canonical_of_padded canonicalInput3400 canonicalOutput3400 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput3401 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, -1, 0], ![1, -1, 2, 1, -3], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3401 : ExponentCode := normalNode8598

theorem canonicalSound3401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3401.moment H = canonicalOutput3401.moment H :=
  canonical_of_padded canonicalInput3401 canonicalOutput3401 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation77⟩ (by decide +kernel) hH

def canonicalInput3402 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, 1, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput3402 : ExponentCode := normalNode9180

theorem canonicalSound3402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3402.moment H = canonicalOutput3402.moment H :=
  canonical_of_padded canonicalInput3402 canonicalOutput3402 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3403 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput3403 : ExponentCode := normalNode8643

theorem canonicalSound3403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3403.moment H = canonicalOutput3403.moment H :=
  canonical_of_padded canonicalInput3403 canonicalOutput3403 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3404 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3404 : ExponentCode := normalNode6557

theorem canonicalSound3404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3404.moment H = canonicalOutput3404.moment H :=
  canonical_of_padded canonicalInput3404 canonicalOutput3404 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3405 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3405 : ExponentCode := normalNode8674

theorem canonicalSound3405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3405.moment H = canonicalOutput3405.moment H :=
  canonical_of_padded canonicalInput3405 canonicalOutput3405 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3406 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 2, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3406 : ExponentCode := normalNode6813

theorem canonicalSound3406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3406.moment H = canonicalOutput3406.moment H :=
  canonical_of_padded canonicalInput3406 canonicalOutput3406 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput3407 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput3407 : ExponentCode := normalNode6813

theorem canonicalSound3407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3407.moment H = canonicalOutput3407.moment H :=
  canonical_of_padded canonicalInput3407 canonicalOutput3407 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3408 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput3408 : ExponentCode := normalNode8674

theorem canonicalSound3408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3408.moment H = canonicalOutput3408.moment H :=
  canonical_of_padded canonicalInput3408 canonicalOutput3408 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3409 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput3409 : ExponentCode := normalNode6814

theorem canonicalSound3409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3409.moment H = canonicalOutput3409.moment H :=
  canonical_of_padded canonicalInput3409 canonicalOutput3409 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput3410 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, -1, -1], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3410 : ExponentCode := normalNode8521

theorem canonicalSound3410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3410.moment H = canonicalOutput3410.moment H :=
  canonical_of_padded canonicalInput3410 canonicalOutput3410 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3411 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3411 : ExponentCode := normalNode8138

theorem canonicalSound3411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3411.moment H = canonicalOutput3411.moment H :=
  canonical_of_padded canonicalInput3411 canonicalOutput3411 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3412 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3412 : ExponentCode := normalNode10089

theorem canonicalSound3412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3412.moment H = canonicalOutput3412.moment H :=
  canonical_of_padded canonicalInput3412 canonicalOutput3412 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput3413 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![-1, -1, 3, -1, 0], ![3, 1, -1, -1, -2]]⟩

def canonicalOutput3413 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1069

theorem canonicalSound3413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3413.moment H = canonicalOutput3413.moment H :=
  canonical_of_padded canonicalInput3413 canonicalOutput3413 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3414 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![-1, 1, 2, -1, -1], ![3, -1, 0, -1, -1]]⟩

def canonicalOutput3414 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code871

theorem canonicalSound3414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3414.moment H = canonicalOutput3414.moment H :=
  canonical_of_padded canonicalInput3414 canonicalOutput3414 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3415 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, -1, 3, -1, -1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput3415 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code422

theorem canonicalSound3415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3415.moment H = canonicalOutput3415.moment H :=
  canonical_of_padded canonicalInput3415 canonicalOutput3415 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3416 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 0, 1, -1, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3416 : ExponentCode := normalNode8582

theorem canonicalSound3416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3416.moment H = canonicalOutput3416.moment H :=
  canonical_of_padded canonicalInput3416 canonicalOutput3416 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3417 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 0, 1, 0, -1], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3417 : ExponentCode := normalNode8231

theorem canonicalSound3417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3417.moment H = canonicalOutput3417.moment H :=
  canonical_of_padded canonicalInput3417 canonicalOutput3417 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3418 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3418 : ExponentCode := normalNode8228

theorem canonicalSound3418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3418.moment H = canonicalOutput3418.moment H :=
  canonical_of_padded canonicalInput3418 canonicalOutput3418 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3419 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3419 : ExponentCode := normalNode8606

theorem canonicalSound3419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3419.moment H = canonicalOutput3419.moment H :=
  canonical_of_padded canonicalInput3419 canonicalOutput3419 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3420 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput3420 : ExponentCode := normalNode9216

theorem canonicalSound3420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3420.moment H = canonicalOutput3420.moment H :=
  canonical_of_padded canonicalInput3420 canonicalOutput3420 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3421 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3421 : ExponentCode := normalNode8272

theorem canonicalSound3421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3421.moment H = canonicalOutput3421.moment H :=
  canonical_of_padded canonicalInput3421 canonicalOutput3421 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3422 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput3422 : ExponentCode := normalNode8279

theorem canonicalSound3422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3422.moment H = canonicalOutput3422.moment H :=
  canonical_of_padded canonicalInput3422 canonicalOutput3422 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3423 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3423 : ExponentCode := normalNode8125

theorem canonicalSound3423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3423.moment H = canonicalOutput3423.moment H :=
  canonical_of_padded canonicalInput3423 canonicalOutput3423 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3424 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput3424 : ExponentCode := normalNode8125

theorem canonicalSound3424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3424.moment H = canonicalOutput3424.moment H :=
  canonical_of_padded canonicalInput3424 canonicalOutput3424 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3425 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3425 : ExponentCode := normalNode6585

theorem canonicalSound3425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3425.moment H = canonicalOutput3425.moment H :=
  canonical_of_padded canonicalInput3425 canonicalOutput3425 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3426 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput3426 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code903

theorem canonicalSound3426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3426.moment H = canonicalOutput3426.moment H :=
  canonical_of_padded canonicalInput3426 canonicalOutput3426 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3427 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![0, 2, 1, -2, -1], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput3427 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code938

theorem canonicalSound3427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3427.moment H = canonicalOutput3427.moment H :=
  canonical_of_padded canonicalInput3427 canonicalOutput3427 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3428 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -2, 1, 0], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput3428 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code860

theorem canonicalSound3428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3428.moment H = canonicalOutput3428.moment H :=
  canonical_of_padded canonicalInput3428 canonicalOutput3428 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3429 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, -1, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput3429 : ExponentCode := normalNode7508

theorem canonicalSound3429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3429.moment H = canonicalOutput3429.moment H :=
  canonical_of_padded canonicalInput3429 canonicalOutput3429 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput3430 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, -1, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput3430 : ExponentCode := normalNode8611

theorem canonicalSound3430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3430.moment H = canonicalOutput3430.moment H :=
  canonical_of_padded canonicalInput3430 canonicalOutput3430 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput3431 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, -1, 1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3431 : ExponentCode := normalNode8649

theorem canonicalSound3431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3431.moment H = canonicalOutput3431.moment H :=
  canonical_of_padded canonicalInput3431 canonicalOutput3431 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3432 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, -1, 1, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3432 : ExponentCode := normalNode8658

theorem canonicalSound3432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3432.moment H = canonicalOutput3432.moment H :=
  canonical_of_padded canonicalInput3432 canonicalOutput3432 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3433 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, -1, 2, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3433 : ExponentCode := normalNode8277

theorem canonicalSound3433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3433.moment H = canonicalOutput3433.moment H :=
  canonical_of_padded canonicalInput3433 canonicalOutput3433 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput3434 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, -1, 1, -1], ![1, -1, 1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3434 : ExponentCode := normalNode8545

theorem canonicalSound3434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3434.moment H = canonicalOutput3434.moment H :=
  canonical_of_padded canonicalInput3434 canonicalOutput3434 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3435 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, -1, 0, -1, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput3435 : ExponentCode := normalNode9222

theorem canonicalSound3435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3435.moment H = canonicalOutput3435.moment H :=
  canonical_of_padded canonicalInput3435 canonicalOutput3435 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3436 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3436 : ExponentCode := normalNode8654

theorem canonicalSound3436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3436.moment H = canonicalOutput3436.moment H :=
  canonical_of_padded canonicalInput3436 canonicalOutput3436 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3437 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, -1, 2, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3437 : ExponentCode := normalNode8662

theorem canonicalSound3437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3437.moment H = canonicalOutput3437.moment H :=
  canonical_of_padded canonicalInput3437 canonicalOutput3437 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3438 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, 1, 0], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput3438 : ExponentCode := normalNode9221

theorem canonicalSound3438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3438.moment H = canonicalOutput3438.moment H :=
  canonical_of_padded canonicalInput3438 canonicalOutput3438 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3439 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, -2, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput3439 : ExponentCode := normalNode8637

theorem canonicalSound3439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3439.moment H = canonicalOutput3439.moment H :=
  canonical_of_padded canonicalInput3439 canonicalOutput3439 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput3440 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput3440 : ExponentCode := normalNode8671

theorem canonicalSound3440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3440.moment H = canonicalOutput3440.moment H :=
  canonical_of_padded canonicalInput3440 canonicalOutput3440 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3441 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3441 : ExponentCode := normalNode8639

theorem canonicalSound3441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3441.moment H = canonicalOutput3441.moment H :=
  canonical_of_padded canonicalInput3441 canonicalOutput3441 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3442 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput3442 : ExponentCode := normalNode8673

theorem canonicalSound3442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3442.moment H = canonicalOutput3442.moment H :=
  canonical_of_padded canonicalInput3442 canonicalOutput3442 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3443 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -2, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3443 : ExponentCode := normalNode8641

theorem canonicalSound3443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3443.moment H = canonicalOutput3443.moment H :=
  canonical_of_padded canonicalInput3443 canonicalOutput3443 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput3444 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3444 : ExponentCode := normalNode9767

theorem canonicalSound3444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3444.moment H = canonicalOutput3444.moment H :=
  canonical_of_padded canonicalInput3444 canonicalOutput3444 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3445 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3445 : ExponentCode := normalNode10121

theorem canonicalSound3445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3445.moment H = canonicalOutput3445.moment H :=
  canonical_of_padded canonicalInput3445 canonicalOutput3445 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3446 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3446 : ExponentCode := normalNode8318

theorem canonicalSound3446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3446.moment H = canonicalOutput3446.moment H :=
  canonical_of_padded canonicalInput3446 canonicalOutput3446 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput3447 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3447 : ExponentCode := normalNode9775

theorem canonicalSound3447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3447.moment H = canonicalOutput3447.moment H :=
  canonical_of_padded canonicalInput3447 canonicalOutput3447 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3448 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3448 : ExponentCode := normalNode8644

theorem canonicalSound3448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3448.moment H = canonicalOutput3448.moment H :=
  canonical_of_padded canonicalInput3448 canonicalOutput3448 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput3449 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![1, -1, 0, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3449 : ExponentCode := normalNode9605

theorem canonicalSound3449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3449.moment H = canonicalOutput3449.moment H :=
  canonical_of_padded canonicalInput3449 canonicalOutput3449 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3450 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![1, -1, 1, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3450 : ExponentCode := normalNode8769

theorem canonicalSound3450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3450.moment H = canonicalOutput3450.moment H :=
  canonical_of_padded canonicalInput3450 canonicalOutput3450 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation44⟩ (by decide +kernel) hH

def canonicalInput3451 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 1, -1], ![-1, -1, 3, 0, -1], ![3, 1, -2, -2, 0]]⟩

def canonicalOutput3451 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1375

theorem canonicalSound3451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3451.moment H = canonicalOutput3451.moment H :=
  canonical_of_padded canonicalInput3451 canonicalOutput3451 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3452 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 0, 1, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3452 : ExponentCode := normalNode6600

theorem canonicalSound3452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3452.moment H = canonicalOutput3452.moment H :=
  canonical_of_padded canonicalInput3452 canonicalOutput3452 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3453 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, -1, 0, 0], ![1, -1, 1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3453 : ExponentCode := normalNode8545

theorem canonicalSound3453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3453.moment H = canonicalOutput3453.moment H :=
  canonical_of_padded canonicalInput3453 canonicalOutput3453 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3454 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 0, -2, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3454 : ExponentCode := normalNode8209

theorem canonicalSound3454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3454.moment H = canonicalOutput3454.moment H :=
  canonical_of_padded canonicalInput3454 canonicalOutput3454 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput3455 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3455 : ExponentCode := normalNode7596

theorem canonicalSound3455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3455.moment H = canonicalOutput3455.moment H :=
  canonical_of_padded canonicalInput3455 canonicalOutput3455 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
