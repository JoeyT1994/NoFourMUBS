import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3456 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput3456 : ExponentCode := normalNode7566

theorem canonicalSound3456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3456.moment H = canonicalOutput3456.moment H :=
  canonical_of_padded canonicalInput3456 canonicalOutput3456 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3457 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 2, 0, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput3457 : ExponentCode := normalNode7243

theorem canonicalSound3457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3457.moment H = canonicalOutput3457.moment H :=
  canonical_of_padded canonicalInput3457 canonicalOutput3457 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3458 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput3458 : ExponentCode := normalNode7243

theorem canonicalSound3458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3458.moment H = canonicalOutput3458.moment H :=
  canonical_of_padded canonicalInput3458 canonicalOutput3458 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3459 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, -1, 0, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3459 : ExponentCode := normalNode8342

theorem canonicalSound3459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3459.moment H = canonicalOutput3459.moment H :=
  canonical_of_padded canonicalInput3459 canonicalOutput3459 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput3460 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3460 : ExponentCode := normalNode9197

theorem canonicalSound3460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3460.moment H = canonicalOutput3460.moment H :=
  canonical_of_padded canonicalInput3460 canonicalOutput3460 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, canonicalPermutation81⟩ (by decide +kernel) hH

def canonicalInput3461 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 1, -1, 1, -1], ![1, 1, -1, 0, -1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput3461 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1362

theorem canonicalSound3461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3461.moment H = canonicalOutput3461.moment H :=
  canonical_of_padded canonicalInput3461 canonicalOutput3461 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3462 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, -1, 0], ![0, 0, 2, 0, -2], ![1, 0, -2, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3462 : ExponentCode := normalNode8599

theorem canonicalSound3462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3462.moment H = canonicalOutput3462.moment H :=
  canonical_of_padded canonicalInput3462 canonicalOutput3462 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3463 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput3463 : ExponentCode := normalNode8668

theorem canonicalSound3463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3463.moment H = canonicalOutput3463.moment H :=
  canonical_of_padded canonicalInput3463 canonicalOutput3463 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3464 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, -1, -1, 1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput3464 : ExponentCode := normalNode8587

theorem canonicalSound3464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3464.moment H = canonicalOutput3464.moment H :=
  canonical_of_padded canonicalInput3464 canonicalOutput3464 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3465 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput3465 : ExponentCode := normalNode8557

theorem canonicalSound3465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3465.moment H = canonicalOutput3465.moment H :=
  canonical_of_padded canonicalInput3465 canonicalOutput3465 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3466 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 0, 1, -1, 0], ![1, 0, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3466 : ExponentCode := normalNode9766

theorem canonicalSound3466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3466.moment H = canonicalOutput3466.moment H :=
  canonical_of_padded canonicalInput3466 canonicalOutput3466 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3467 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 0, 2, -2, 0], ![1, 0, -2, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3467 : ExponentCode := normalNode6609

theorem canonicalSound3467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3467.moment H = canonicalOutput3467.moment H :=
  canonical_of_padded canonicalInput3467 canonicalOutput3467 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3468 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 0, 2, -2, 0], ![1, 0, -2, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3468 : ExponentCode := normalNode8259

theorem canonicalSound3468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3468.moment H = canonicalOutput3468.moment H :=
  canonical_of_padded canonicalInput3468 canonicalOutput3468 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3469 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 0, 2, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3469 : ExponentCode := normalNode10033

theorem canonicalSound3469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3469.moment H = canonicalOutput3469.moment H :=
  canonical_of_padded canonicalInput3469 canonicalOutput3469 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3470 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 0, 2, -1, -1], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3470 : ExponentCode := normalNode7593

theorem canonicalSound3470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3470.moment H = canonicalOutput3470.moment H :=
  canonical_of_padded canonicalInput3470 canonicalOutput3470 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3471 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, -1, 0, 0], ![1, -1, 2, -2, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3471 : ExponentCode := normalNode8641

theorem canonicalSound3471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3471.moment H = canonicalOutput3471.moment H :=
  canonical_of_padded canonicalInput3471 canonicalOutput3471 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3472 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, -1, 1, -1], ![1, -1, 2, 0, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput3472 : ExponentCode := normalNode7243

theorem canonicalSound3472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3472.moment H = canonicalOutput3472.moment H :=
  canonical_of_padded canonicalInput3472 canonicalOutput3472 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3473 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3473 : ExponentCode := normalNode7595

theorem canonicalSound3473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3473.moment H = canonicalOutput3473.moment H :=
  canonical_of_padded canonicalInput3473 canonicalOutput3473 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3474 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, 1, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput3474 : ExponentCode := normalNode7249

theorem canonicalSound3474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3474.moment H = canonicalOutput3474.moment H :=
  canonical_of_padded canonicalInput3474 canonicalOutput3474 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3475 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 2, -2, 0], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput3475 : ExponentCode := normalNode8277

theorem canonicalSound3475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3475.moment H = canonicalOutput3475.moment H :=
  canonical_of_padded canonicalInput3475 canonicalOutput3475 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3476 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 2, 0, -2], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput3476 : ExponentCode := normalNode7247

theorem canonicalSound3476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3476.moment H = canonicalOutput3476.moment H :=
  canonical_of_padded canonicalInput3476 canonicalOutput3476 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3477 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 1, -2], ![1, -1, 1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput3477 : ExponentCode := normalNode6600

theorem canonicalSound3477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3477.moment H = canonicalOutput3477.moment H :=
  canonical_of_padded canonicalInput3477 canonicalOutput3477 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3478 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, -2, 1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3478 : ExponentCode := normalNode6551

theorem canonicalSound3478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3478.moment H = canonicalOutput3478.moment H :=
  canonical_of_padded canonicalInput3478 canonicalOutput3478 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3479 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, -1, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput3479 : ExponentCode := normalNode6591

theorem canonicalSound3479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3479.moment H = canonicalOutput3479.moment H :=
  canonical_of_padded canonicalInput3479 canonicalOutput3479 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3480 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, -1, 1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3480 : ExponentCode := normalNode8246

theorem canonicalSound3480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3480.moment H = canonicalOutput3480.moment H :=
  canonical_of_padded canonicalInput3480 canonicalOutput3480 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3481 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput3481 : ExponentCode := normalNode10112

theorem canonicalSound3481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3481.moment H = canonicalOutput3481.moment H :=
  canonical_of_padded canonicalInput3481 canonicalOutput3481 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3482 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, 0, 1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3482 : ExponentCode := normalNode10047

theorem canonicalSound3482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3482.moment H = canonicalOutput3482.moment H :=
  canonical_of_padded canonicalInput3482 canonicalOutput3482 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput3483 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, 1, 1, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput3483 : ExponentCode := normalNode8556

theorem canonicalSound3483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3483.moment H = canonicalOutput3483.moment H :=
  canonical_of_padded canonicalInput3483 canonicalOutput3483 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput3484 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -2, 0, 1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput3484 : ExponentCode := normalNode8556

theorem canonicalSound3484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3484.moment H = canonicalOutput3484.moment H :=
  canonical_of_padded canonicalInput3484 canonicalOutput3484 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput3485 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -2, 1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput3485 : ExponentCode := normalNode8269

theorem canonicalSound3485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3485.moment H = canonicalOutput3485.moment H :=
  canonical_of_padded canonicalInput3485 canonicalOutput3485 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3486 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput3486 : ExponentCode := normalNode10047

theorem canonicalSound3486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3486.moment H = canonicalOutput3486.moment H :=
  canonical_of_padded canonicalInput3486 canonicalOutput3486 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3487 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, 0, -2], ![1, -1, 0, 1, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput3487 : ExponentCode := normalNode6599

theorem canonicalSound3487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3487.moment H = canonicalOutput3487.moment H :=
  canonical_of_padded canonicalInput3487 canonicalOutput3487 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3488 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, 0, -1], ![1, 0, -2, -1, 2]]⟩

def canonicalOutput3488 : ExponentCode := normalNode6601

theorem canonicalSound3488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3488.moment H = canonicalOutput3488.moment H :=
  canonical_of_padded canonicalInput3488 canonicalOutput3488 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput3489 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, -1, -2, 1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3489 : ExponentCode := normalNode7587

theorem canonicalSound3489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3489.moment H = canonicalOutput3489.moment H :=
  canonical_of_padded canonicalInput3489 canonicalOutput3489 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation16⟩ (by decide +kernel) hH

def canonicalInput3490 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, -1, 0, 1, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput3490 : ExponentCode := normalNode9181

theorem canonicalSound3490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3490.moment H = canonicalOutput3490.moment H :=
  canonical_of_padded canonicalInput3490 canonicalOutput3490 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput3491 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 0, -1], ![0, 1, 2, -2, -1], ![1, 0, -2, 0, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput3491 : ExponentCode := normalNode9181

theorem canonicalSound3491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3491.moment H = canonicalOutput3491.moment H :=
  canonical_of_padded canonicalInput3491 canonicalOutput3491 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput3492 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 1, -2], ![0, -1, 2, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput3492 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code535

theorem canonicalSound3492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3492.moment H = canonicalOutput3492.moment H :=
  canonical_of_padded canonicalInput3492 canonicalOutput3492 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3493 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 1, -2], ![0, 0, 2, -2, 0], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3493 : ExponentCode := normalNode6608

theorem canonicalSound3493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3493.moment H = canonicalOutput3493.moment H :=
  canonical_of_padded canonicalInput3493 canonicalOutput3493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput3494 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 1, -2], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput3494 : ExponentCode := normalNode6600

theorem canonicalSound3494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3494.moment H = canonicalOutput3494.moment H :=
  canonical_of_padded canonicalInput3494 canonicalOutput3494 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3495 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 1, -2], ![0, 1, 1, -2, 0], ![1, -1, -1, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3495 : ExponentCode := normalNode6592

theorem canonicalSound3495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3495.moment H = canonicalOutput3495.moment H :=
  canonical_of_padded canonicalInput3495 canonicalOutput3495 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput3496 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 1, -2], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput3496 : ExponentCode := normalNode8396

theorem canonicalSound3496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3496.moment H = canonicalOutput3496.moment H :=
  canonical_of_padded canonicalInput3496 canonicalOutput3496 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput3497 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 1, -2], ![0, 1, 1, -2, 0], ![1, 0, -2, 0, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput3497 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code369

theorem canonicalSound3497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3497.moment H = canonicalOutput3497.moment H :=
  canonical_of_padded canonicalInput3497 canonicalOutput3497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3498 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 1, -2], ![0, 1, 2, -2, -1], ![1, -1, 0, 0, 0], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput3498 : ExponentCode := normalNode8218

theorem canonicalSound3498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3498.moment H = canonicalOutput3498.moment H :=
  canonical_of_padded canonicalInput3498 canonicalOutput3498 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3499 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 0, 1, -2], ![1, 1, -2, 0, 0], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput3499 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code863

theorem canonicalSound3499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3499.moment H = canonicalOutput3499.moment H :=
  canonical_of_padded canonicalInput3499 canonicalOutput3499 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3500 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 1, -2, 0], ![0, 0, 1, 1, -2], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3500 : ExponentCode := normalNode6598

theorem canonicalSound3500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3500.moment H = canonicalOutput3500.moment H :=
  canonical_of_padded canonicalInput3500 canonicalOutput3500 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3501 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, -1, -2, 1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3501 : ExponentCode := normalNode6552

theorem canonicalSound3501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3501.moment H = canonicalOutput3501.moment H :=
  canonical_of_padded canonicalInput3501 canonicalOutput3501 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3502 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput3502 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code364

theorem canonicalSound3502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3502.moment H = canonicalOutput3502.moment H :=
  canonical_of_padded canonicalInput3502 canonicalOutput3502 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput3503 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput3503 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code847

theorem canonicalSound3503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3503.moment H = canonicalOutput3503.moment H :=
  canonical_of_padded canonicalInput3503 canonicalOutput3503 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3504 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 1, 0, -2], ![0, 1, 1, -2, 0], ![1, -1, 0, 1, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput3504 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code364

theorem canonicalSound3504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3504.moment H = canonicalOutput3504.moment H :=
  canonical_of_padded canonicalInput3504 canonicalOutput3504 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput3505 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 1, 2], ![0, 1, 1, 1, -3], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput3505 : ExponentCode := normalNode8180

theorem canonicalSound3505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3505.moment H = canonicalOutput3505.moment H :=
  canonical_of_padded canonicalInput3505 canonicalOutput3505 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3506 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 2, -2, 0, 0], ![-1, -1, 2, 1, -1], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput3506 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code843

theorem canonicalSound3506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3506.moment H = canonicalOutput3506.moment H :=
  canonical_of_padded canonicalInput3506 canonicalOutput3506 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3507 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 1, 2], ![0, 2, -2, 1, -1], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput3507 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound3507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3507.moment H = canonicalOutput3507.moment H :=
  canonical_of_padded canonicalInput3507 canonicalOutput3507 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3508 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 2, -1, -1, 0], ![-1, -1, 3, -1, 0], ![3, 0, -2, 1, -2]]⟩

def canonicalOutput3508 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1230

theorem canonicalSound3508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3508.moment H = canonicalOutput3508.moment H :=
  canonical_of_padded canonicalInput3508 canonicalOutput3508 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3509 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 2, -1, 0, -1], ![-1, -1, 2, 1, -1], ![3, 0, -1, -2, 0]]⟩

def canonicalOutput3509 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code930

theorem canonicalSound3509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3509.moment H = canonicalOutput3509.moment H :=
  canonical_of_padded canonicalInput3509 canonicalOutput3509 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3510 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 2, -1, 0, -1], ![-1, 0, 3, -2, 0], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput3510 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1019

theorem canonicalSound3510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3510.moment H = canonicalOutput3510.moment H :=
  canonical_of_padded canonicalInput3510 canonicalOutput3510 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3511 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 2, -1, 0, -1], ![0, -1, 2, 1, -2], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput3511 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code938

theorem canonicalSound3511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3511.moment H = canonicalOutput3511.moment H :=
  canonical_of_padded canonicalInput3511 canonicalOutput3511 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3512 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2], ![1, -1, 2, 1, -3]]⟩

def canonicalOutput3512 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code983

theorem canonicalSound3512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3512.moment H = canonicalOutput3512.moment H :=
  canonical_of_padded canonicalInput3512 canonicalOutput3512 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3513 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 2, 0, -2, 0], ![-1, -1, 2, 1, -1], ![3, 0, -2, 0, -1]]⟩

def canonicalOutput3513 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code927

theorem canonicalSound3513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3513.moment H = canonicalOutput3513.moment H :=
  canonical_of_padded canonicalInput3513 canonicalOutput3513 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3514 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 2, 0, -1, -1], ![0, -1, 2, 1, -2], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput3514 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code937

theorem canonicalSound3514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3514.moment H = canonicalOutput3514.moment H :=
  canonical_of_padded canonicalInput3514 canonicalOutput3514 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3515 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 2, 0, 0, -2], ![0, -1, 3, -2, 0], ![2, 0, -3, 1, 0]]⟩

def canonicalOutput3515 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code835

theorem canonicalSound3515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3515.moment H = canonicalOutput3515.moment H :=
  canonical_of_padded canonicalInput3515 canonicalOutput3515 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3516 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 2, 0, 0, -2], ![1, -1, -2, 1, 1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput3516 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code525

theorem canonicalSound3516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3516.moment H = canonicalOutput3516.moment H :=
  canonical_of_padded canonicalInput3516 canonicalOutput3516 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3517 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput3517 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code859

theorem canonicalSound3517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3517.moment H = canonicalOutput3517.moment H :=
  canonical_of_padded canonicalInput3517 canonicalOutput3517 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3518 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![1, 0, 0, 1, -2], ![0, -1, 2, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput3518 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code534

theorem canonicalSound3518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3518.moment H = canonicalOutput3518.moment H :=
  canonical_of_padded canonicalInput3518 canonicalOutput3518 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput3519 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![1, 1, 0, 0, -2], ![0, -1, 2, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput3519 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code533

theorem canonicalSound3519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3519.moment H = canonicalOutput3519.moment H :=
  canonical_of_padded canonicalInput3519 canonicalOutput3519 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
