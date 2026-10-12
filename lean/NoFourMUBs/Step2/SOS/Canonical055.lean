import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3520 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 1, 2], ![1, 1, 0, 0, -2], ![0, 1, 2, -3, 0], ![1, -1, -2, 2, 0]]⟩

def canonicalOutput3520 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code833

theorem canonicalSound3520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3520.moment H = canonicalOutput3520.moment H :=
  canonical_of_padded canonicalInput3520 canonicalOutput3520 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput3521 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![-2, 2, 1, -1, 0], ![2, -1, -2, 0, 1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput3521 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code187

theorem canonicalSound3521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3521.moment H = canonicalOutput3521.moment H :=
  canonical_of_padded canonicalInput3521 canonicalOutput3521 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3522 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![-2, 2, 1, -1, 0], ![2, -1, 1, 0, -2], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput3522 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code188

theorem canonicalSound3522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3522.moment H = canonicalOutput3522.moment H :=
  canonical_of_padded canonicalInput3522 canonicalOutput3522 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3523 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![-1, 0, 2, 0, -1], ![1, -1, -1, -1, 2], ![2, 2, -1, -1, -2]]⟩

def canonicalOutput3523 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code950

theorem canonicalSound3523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3523.moment H = canonicalOutput3523.moment H :=
  canonical_of_padded canonicalInput3523 canonicalOutput3523 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3524 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![-1, 0, 2, 0, -1], ![1, -1, -1, 0, 1], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput3524 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1192

theorem canonicalSound3524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3524.moment H = canonicalOutput3524.moment H :=
  canonical_of_padded canonicalInput3524 canonicalOutput3524 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3525 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![-1, 0, 2, 0, -1], ![1, 2, -1, -1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput3525 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code946

theorem canonicalSound3525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3525.moment H = canonicalOutput3525.moment H :=
  canonical_of_padded canonicalInput3525 canonicalOutput3525 (by decide) (by decide)
    ⟨true, true, canonicalPermutation35, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3526 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![-1, 1, 1, -1, 0], ![0, 1, -2, 0, 1], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput3526 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1151

theorem canonicalSound3526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3526.moment H = canonicalOutput3526.moment H :=
  canonical_of_padded canonicalInput3526 canonicalOutput3526 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3527 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![-1, 1, 1, -1, 0], ![1, 1, -2, -1, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput3527 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1315

theorem canonicalSound3527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3527.moment H = canonicalOutput3527.moment H :=
  canonical_of_padded canonicalInput3527 canonicalOutput3527 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3528 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![-1, 1, 1, -1, 0], ![1, 1, 1, -1, -2], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput3528 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1314

theorem canonicalSound3528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3528.moment H = canonicalOutput3528.moment H :=
  canonical_of_padded canonicalInput3528 canonicalOutput3528 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3529 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![-1, 2, 0, -1, 0], ![0, 0, 2, 0, -2], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput3529 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code849

theorem canonicalSound3529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3529.moment H = canonicalOutput3529.moment H :=
  canonical_of_padded canonicalInput3529 canonicalOutput3529 (by decide) (by decide)
    ⟨true, true, canonicalPermutation32, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3530 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![-1, 2, 0, -1, 0], ![1, -1, 2, 0, -2], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput3530 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code979

theorem canonicalSound3530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3530.moment H = canonicalOutput3530.moment H :=
  canonical_of_padded canonicalInput3530 canonicalOutput3530 (by decide) (by decide)
    ⟨true, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3531 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![-1, 2, 0, -1, 0], ![1, 0, -2, 0, 1], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput3531 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code888

theorem canonicalSound3531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3531.moment H = canonicalOutput3531.moment H :=
  canonical_of_padded canonicalInput3531 canonicalOutput3531 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3532 : ExponentCode := ⟨3, 5, ![![-2, -1, 0, 2, 1], ![-1, 2, 2, -1, -2], ![3, -1, -2, -1, 1]]⟩

def canonicalOutput3532 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code681

theorem canonicalSound3532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3532.moment H = canonicalOutput3532.moment H :=
  canonical_of_padded canonicalInput3532 canonicalOutput3532 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3533 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -2, 1, 0, 1], ![0, 2, -2, 0, 0], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput3533 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1189

theorem canonicalSound3533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3533.moment H = canonicalOutput3533.moment H :=
  canonical_of_padded canonicalInput3533 canonicalOutput3533 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3534 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -2, 1, 0, 1], ![0, 3, -2, -1, 0], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput3534 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code390

theorem canonicalSound3534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3534.moment H = canonicalOutput3534.moment H :=
  canonical_of_padded canonicalInput3534 canonicalOutput3534 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3535 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![2, 0, 2, -2, -2]]⟩

def canonicalOutput3535 : ExponentCode := normalNode9498

theorem canonicalSound3535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3535.moment H = canonicalOutput3535.moment H :=
  canonical_of_padded canonicalInput3535 canonicalOutput3535 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3536 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput3536 : ExponentCode := normalNode9250

theorem canonicalSound3536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3536.moment H = canonicalOutput3536.moment H :=
  canonical_of_padded canonicalInput3536 canonicalOutput3536 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput3537 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3537 : ExponentCode := normalNode9219

theorem canonicalSound3537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3537.moment H = canonicalOutput3537.moment H :=
  canonical_of_padded canonicalInput3537 canonicalOutput3537 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput3538 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![1, 0, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput3538 : ExponentCode := normalNode9262

theorem canonicalSound3538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3538.moment H = canonicalOutput3538.moment H :=
  canonical_of_padded canonicalInput3538 canonicalOutput3538 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput3539 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![1, 0, 2, -2, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3539 : ExponentCode := normalNode8429

theorem canonicalSound3539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3539.moment H = canonicalOutput3539.moment H :=
  canonical_of_padded canonicalInput3539 canonicalOutput3539 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput3540 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput3540 : ExponentCode := normalNode9246

theorem canonicalSound3540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3540.moment H = canonicalOutput3540.moment H :=
  canonical_of_padded canonicalInput3540 canonicalOutput3540 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3541 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3541 : ExponentCode := normalNode6620

theorem canonicalSound3541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3541.moment H = canonicalOutput3541.moment H :=
  canonical_of_padded canonicalInput3541 canonicalOutput3541 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3542 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 2, -2, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3542 : ExponentCode := normalNode9202

theorem canonicalSound3542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3542.moment H = canonicalOutput3542.moment H :=
  canonical_of_padded canonicalInput3542 canonicalOutput3542 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput3543 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 1, 0, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3543 : ExponentCode := normalNode6625

theorem canonicalSound3543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3543.moment H = canonicalOutput3543.moment H :=
  canonical_of_padded canonicalInput3543 canonicalOutput3543 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3544 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3544 : ExponentCode := normalNode9206

theorem canonicalSound3544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3544.moment H = canonicalOutput3544.moment H :=
  canonical_of_padded canonicalInput3544 canonicalOutput3544 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput3545 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3545 : ExponentCode := normalNode6619

theorem canonicalSound3545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3545.moment H = canonicalOutput3545.moment H :=
  canonical_of_padded canonicalInput3545 canonicalOutput3545 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3546 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3546 : ExponentCode := normalNode6619

theorem canonicalSound3546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3546.moment H = canonicalOutput3546.moment H :=
  canonical_of_padded canonicalInput3546 canonicalOutput3546 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3547 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, 2, -2, -1], ![1, 0, -1, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3547 : ExponentCode := normalNode8184

theorem canonicalSound3547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3547.moment H = canonicalOutput3547.moment H :=
  canonical_of_padded canonicalInput3547 canonicalOutput3547 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation190⟩ (by decide +kernel) hH

def canonicalInput3548 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, 2, -2, -1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3548 : ExponentCode := normalNode8183

theorem canonicalSound3548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3548.moment H = canonicalOutput3548.moment H :=
  canonical_of_padded canonicalInput3548 canonicalOutput3548 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3549 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 2, 0, -1, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3549 : ExponentCode := normalNode8070

theorem canonicalSound3549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3549.moment H = canonicalOutput3549.moment H :=
  canonical_of_padded canonicalInput3549 canonicalOutput3549 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput3550 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 2, 0, 0, -2], ![1, 0, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3550 : ExponentCode := normalNode8071

theorem canonicalSound3550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3550.moment H = canonicalOutput3550.moment H :=
  canonical_of_padded canonicalInput3550 canonicalOutput3550 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput3551 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 2, 1, -2, -1], ![1, 0, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3551 : ExponentCode := normalNode8429

theorem canonicalSound3551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3551.moment H = canonicalOutput3551.moment H :=
  canonical_of_padded canonicalInput3551 canonicalOutput3551 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3552 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 2, 1, -2, -1], ![1, 0, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3552 : ExponentCode := normalNode8425

theorem canonicalSound3552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3552.moment H = canonicalOutput3552.moment H :=
  canonical_of_padded canonicalInput3552 canonicalOutput3552 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3553 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![0, 2, 2, -2, -2], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3553 : ExponentCode := normalNode9154

theorem canonicalSound3553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3553.moment H = canonicalOutput3553.moment H :=
  canonical_of_padded canonicalInput3553 canonicalOutput3553 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation75⟩ (by decide +kernel) hH

def canonicalInput3554 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, -1, 0, 2], ![1, 1, 0, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3554 : ExponentCode := normalNode6624

theorem canonicalSound3554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3554.moment H = canonicalOutput3554.moment H :=
  canonical_of_padded canonicalInput3554 canonicalOutput3554 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3555 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, -1, 2], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3555 : ExponentCode := normalNode8466

theorem canonicalSound3555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3555.moment H = canonicalOutput3555.moment H :=
  canonical_of_padded canonicalInput3555 canonicalOutput3555 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput3556 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, -1, 2], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3556 : ExponentCode := normalNode10054

theorem canonicalSound3556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3556.moment H = canonicalOutput3556.moment H :=
  canonical_of_padded canonicalInput3556 canonicalOutput3556 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3557 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, -1, 2], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3557 : ExponentCode := normalNode8152

theorem canonicalSound3557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3557.moment H = canonicalOutput3557.moment H :=
  canonical_of_padded canonicalInput3557 canonicalOutput3557 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3558 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, -1, 2], ![0, 2, 0, -1, -1], ![1, 0, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3558 : ExponentCode := normalNode8257

theorem canonicalSound3558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3558.moment H = canonicalOutput3558.moment H :=
  canonical_of_padded canonicalInput3558 canonicalOutput3558 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput3559 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, -1, 2], ![0, 2, 0, 0, -2], ![1, 0, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3559 : ExponentCode := normalNode8271

theorem canonicalSound3559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3559.moment H = canonicalOutput3559.moment H :=
  canonical_of_padded canonicalInput3559 canonicalOutput3559 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput3560 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, 0, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput3560 : ExponentCode := normalNode9249

theorem canonicalSound3560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3560.moment H = canonicalOutput3560.moment H :=
  canonical_of_padded canonicalInput3560 canonicalOutput3560 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3561 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3561 : ExponentCode := normalNode10012

theorem canonicalSound3561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3561.moment H = canonicalOutput3561.moment H :=
  canonical_of_padded canonicalInput3561 canonicalOutput3561 (by decide) (by decide)
    ⟨true, true, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput3562 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3562 : ExponentCode := normalNode10754

theorem canonicalSound3562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3562.moment H = canonicalOutput3562.moment H :=
  canonical_of_padded canonicalInput3562 canonicalOutput3562 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3563 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3563 : ExponentCode := normalNode11075

theorem canonicalSound3563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3563.moment H = canonicalOutput3563.moment H :=
  canonical_of_padded canonicalInput3563 canonicalOutput3563 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput3564 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, 0, 1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3564 : ExponentCode := normalNode10107

theorem canonicalSound3564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3564.moment H = canonicalOutput3564.moment H :=
  canonical_of_padded canonicalInput3564 canonicalOutput3564 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3565 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, 0, 1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput3565 : ExponentCode := normalNode10132

theorem canonicalSound3565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3565.moment H = canonicalOutput3565.moment H :=
  canonical_of_padded canonicalInput3565 canonicalOutput3565 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput3566 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 0, 0, 1], ![0, 2, 1, -2, -1], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3566 : ExponentCode := normalNode8428

theorem canonicalSound3566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3566.moment H = canonicalOutput3566.moment H :=
  canonical_of_padded canonicalInput3566 canonicalOutput3566 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput3567 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -2, 2], ![0, 1, -1, 0, 0], ![1, 0, -1, 0, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3567 : ExponentCode := normalNode8758

theorem canonicalSound3567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3567.moment H = canonicalOutput3567.moment H :=
  canonical_of_padded canonicalInput3567 canonicalOutput3567 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput3568 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 0, 1], ![1, 0, 0, -1, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3568 : ExponentCode := normalNode8201

theorem canonicalSound3568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3568.moment H = canonicalOutput3568.moment H :=
  canonical_of_padded canonicalInput3568 canonicalOutput3568 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput3569 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput3569 : ExponentCode := normalNode10411

theorem canonicalSound3569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3569.moment H = canonicalOutput3569.moment H :=
  canonical_of_padded canonicalInput3569 canonicalOutput3569 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput3570 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 0, 1], ![1, 1, 0, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3570 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code376

theorem canonicalSound3570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3570.moment H = canonicalOutput3570.moment H :=
  canonical_of_padded canonicalInput3570 canonicalOutput3570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3571 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 0, 1], ![1, 1, 0, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3571 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code375

theorem canonicalSound3571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3571.moment H = canonicalOutput3571.moment H :=
  canonical_of_padded canonicalInput3571 canonicalOutput3571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3572 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 0, 1], ![1, 1, 1, -1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3572 : ExponentCode := normalNode10411

theorem canonicalSound3572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3572.moment H = canonicalOutput3572.moment H :=
  canonical_of_padded canonicalInput3572 canonicalOutput3572 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput3573 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, -1, 1], ![1, 0, -1, 0, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3573 : ExponentCode := normalNode9199

theorem canonicalSound3573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3573.moment H = canonicalOutput3573.moment H :=
  canonical_of_padded canonicalInput3573 canonicalOutput3573 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput3574 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 0, 0], ![1, 0, -1, -1, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3574 : ExponentCode := normalNode9201

theorem canonicalSound3574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3574.moment H = canonicalOutput3574.moment H :=
  canonical_of_padded canonicalInput3574 canonicalOutput3574 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3575 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 0, 0], ![1, 0, -1, 0, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput3575 : ExponentCode := normalNode9235

theorem canonicalSound3575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3575.moment H = canonicalOutput3575.moment H :=
  canonical_of_padded canonicalInput3575 canonicalOutput3575 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput3576 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, -1, 0], ![1, 0, -2, 0, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput3576 : ExponentCode := normalNode8443

theorem canonicalSound3576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3576.moment H = canonicalOutput3576.moment H :=
  canonical_of_padded canonicalInput3576 canonicalOutput3576 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput3577 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3577 : ExponentCode := normalNode10028

theorem canonicalSound3577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3577.moment H = canonicalOutput3577.moment H :=
  canonical_of_padded canonicalInput3577 canonicalOutput3577 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput3578 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput3578 : ExponentCode := normalNode10793

theorem canonicalSound3578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3578.moment H = canonicalOutput3578.moment H :=
  canonical_of_padded canonicalInput3578 canonicalOutput3578 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput3579 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput3579 : ExponentCode := normalNode6826

theorem canonicalSound3579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3579.moment H = canonicalOutput3579.moment H :=
  canonical_of_padded canonicalInput3579 canonicalOutput3579 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput3580 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 1, -2, -1, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput3580 : ExponentCode := normalNode6829

theorem canonicalSound3580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3580.moment H = canonicalOutput3580.moment H :=
  canonical_of_padded canonicalInput3580 canonicalOutput3580 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput3581 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 1, -2, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput3581 : ExponentCode := normalNode8463

theorem canonicalSound3581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3581.moment H = canonicalOutput3581.moment H :=
  canonical_of_padded canonicalInput3581 canonicalOutput3581 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput3582 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 1, -2, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput3582 : ExponentCode := normalNode8083

theorem canonicalSound3582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3582.moment H = canonicalOutput3582.moment H :=
  canonical_of_padded canonicalInput3582 canonicalOutput3582 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput3583 : ExponentCode := ⟨4, 5, ![![-2, -1, 0, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput3583 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1373

theorem canonicalSound3583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3583.moment H = canonicalOutput3583.moment H :=
  canonical_of_padded canonicalInput3583 canonicalOutput3583 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
