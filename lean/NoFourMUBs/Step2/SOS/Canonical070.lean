import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
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

def canonicalInput4480 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, 0, -2, 0], ![1, -1, 0, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4480 : ExponentCode := normalNode10106

theorem canonicalSound4480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4480.moment H = canonicalOutput4480.moment H :=
  canonical_of_padded canonicalInput4480 canonicalOutput4480 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput4481 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, 0, -2, 0], ![1, 0, -1, 0, 0], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput4481 : ExponentCode := normalNode8627

theorem canonicalSound4481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4481.moment H = canonicalOutput4481.moment H :=
  canonical_of_padded canonicalInput4481 canonicalOutput4481 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput4482 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, 0, -1, -1], ![1, -1, -1, -1, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4482 : ExponentCode := normalNode10141

theorem canonicalSound4482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4482.moment H = canonicalOutput4482.moment H :=
  canonical_of_padded canonicalInput4482 canonicalOutput4482 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput4483 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, 0, -1, -1], ![1, -1, 0, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4483 : ExponentCode := normalNode9505

theorem canonicalSound4483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4483.moment H = canonicalOutput4483.moment H :=
  canonical_of_padded canonicalInput4483 canonicalOutput4483 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput4484 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, 0, -1, -1], ![1, -1, 0, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4484 : ExponentCode := normalNode10101

theorem canonicalSound4484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4484.moment H = canonicalOutput4484.moment H :=
  canonical_of_padded canonicalInput4484 canonicalOutput4484 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput4485 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, 0, -1, -1], ![1, -1, 1, 1, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput4485 : ExponentCode := normalNode8492

theorem canonicalSound4485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4485.moment H = canonicalOutput4485.moment H :=
  canonical_of_padded canonicalInput4485 canonicalOutput4485 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput4486 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 0, 1], ![0, 2, 0, -1, -1], ![1, 0, -1, -1, 1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput4486 : ExponentCode := normalNode8492

theorem canonicalSound4486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4486.moment H = canonicalOutput4486.moment H :=
  canonical_of_padded canonicalInput4486 canonicalOutput4486 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput4487 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, -1, 1, 0, 0], ![0, 2, 0, -2, 0], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput4487 : ExponentCode := normalNode10768

theorem canonicalSound4487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4487.moment H = canonicalOutput4487.moment H :=
  canonical_of_padded canonicalInput4487 canonicalOutput4487 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4488 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, -1, 0, 1], ![0, 1, 1, 1, -3], ![2, 0, 0, -3, 1]]⟩

def canonicalOutput4488 : ExponentCode := normalNode8747

theorem canonicalSound4488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4488.moment H = canonicalOutput4488.moment H :=
  canonical_of_padded canonicalInput4488 canonicalOutput4488 (by decide) (by decide)
    ⟨true, false, canonicalPermutation50, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput4489 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 0, -1, 1], ![0, 2, 0, -1, -1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput4489 : ExponentCode := normalNode10469

theorem canonicalSound4489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4489.moment H = canonicalOutput4489.moment H :=
  canonical_of_padded canonicalInput4489 canonicalOutput4489 (by decide) (by decide)
    ⟨true, false, canonicalPermutation73, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4490 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput4490 : ExponentCode := normalNode11079

theorem canonicalSound4490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4490.moment H = canonicalOutput4490.moment H :=
  canonical_of_padded canonicalInput4490 canonicalOutput4490 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput4491 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput4491 : ExponentCode := normalNode11078

theorem canonicalSound4491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4491.moment H = canonicalOutput4491.moment H :=
  canonical_of_padded canonicalInput4491 canonicalOutput4491 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput4492 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput4492 : ExponentCode := normalNode10174

theorem canonicalSound4492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4492.moment H = canonicalOutput4492.moment H :=
  canonical_of_padded canonicalInput4492 canonicalOutput4492 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4493 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 0, -1], ![0, 2, 0, -2, 0], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput4493 : ExponentCode := normalNode10470

theorem canonicalSound4493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4493.moment H = canonicalOutput4493.moment H :=
  canonical_of_padded canonicalInput4493 canonicalOutput4493 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4494 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, -1, 1], ![1, -1, 1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4494 : ExponentCode := normalNode8772

theorem canonicalSound4494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4494.moment H = canonicalOutput4494.moment H :=
  canonical_of_padded canonicalInput4494 canonicalOutput4494 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4495 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![0, 0, 1, 1, -2], ![2, 0, 0, -3, 1]]⟩

def canonicalOutput4495 : ExponentCode := normalNode9213

theorem canonicalSound4495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4495.moment H = canonicalOutput4495.moment H :=
  canonical_of_padded canonicalInput4495 canonicalOutput4495 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput4496 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![2, -1, 0, -3, 2]]⟩

def canonicalOutput4496 : ExponentCode := normalNode9485

theorem canonicalSound4496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4496.moment H = canonicalOutput4496.moment H :=
  canonical_of_padded canonicalInput4496 canonicalOutput4496 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput4497 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 0, 0], ![1, -1, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4497 : ExponentCode := normalNode8702

theorem canonicalSound4497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4497.moment H = canonicalOutput4497.moment H :=
  canonical_of_padded canonicalInput4497 canonicalOutput4497 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4498 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -3, 2], ![1, 0, -1, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4498 : ExponentCode := normalNode8771

theorem canonicalSound4498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4498.moment H = canonicalOutput4498.moment H :=
  canonical_of_padded canonicalInput4498 canonicalOutput4498 (by decide) (by decide)
    ⟨true, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput4499 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![1, -1, 0, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4499 : ExponentCode := normalNode10081

theorem canonicalSound4499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4499.moment H = canonicalOutput4499.moment H :=
  canonical_of_padded canonicalInput4499 canonicalOutput4499 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput4500 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -1, 0], ![1, -1, 0, 0, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4500 : ExponentCode := normalNode10420

theorem canonicalSound4500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4500.moment H = canonicalOutput4500.moment H :=
  canonical_of_padded canonicalInput4500 canonicalOutput4500 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4501 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4501 : ExponentCode := normalNode10162

theorem canonicalSound4501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4501.moment H = canonicalOutput4501.moment H :=
  canonical_of_padded canonicalInput4501 canonicalOutput4501 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4502 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4502 : ExponentCode := normalNode10150

theorem canonicalSound4502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4502.moment H = canonicalOutput4502.moment H :=
  canonical_of_padded canonicalInput4502 canonicalOutput4502 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4503 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput4503 : ExponentCode := normalNode8619

theorem canonicalSound4503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4503.moment H = canonicalOutput4503.moment H :=
  canonical_of_padded canonicalInput4503 canonicalOutput4503 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput4504 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![1, -1, -1, 0, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput4504 : ExponentCode := normalNode8549

theorem canonicalSound4504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4504.moment H = canonicalOutput4504.moment H :=
  canonical_of_padded canonicalInput4504 canonicalOutput4504 (by decide) (by decide)
    ⟨true, false, canonicalPermutation79, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput4505 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput4505 : ExponentCode := normalNode10078

theorem canonicalSound4505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4505.moment H = canonicalOutput4505.moment H :=
  canonical_of_padded canonicalInput4505 canonicalOutput4505 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput4506 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 2, -1, -3, 2], ![1, -1, 0, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4506 : ExponentCode := normalNode9992

theorem canonicalSound4506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4506.moment H = canonicalOutput4506.moment H :=
  canonical_of_padded canonicalInput4506 canonicalOutput4506 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput4507 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 2, 0, -3, 1], ![1, -1, -1, 0, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput4507 : ExponentCode := normalNode8564

theorem canonicalSound4507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4507.moment H = canonicalOutput4507.moment H :=
  canonical_of_padded canonicalInput4507 canonicalOutput4507 (by decide) (by decide)
    ⟨true, false, canonicalPermutation73, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput4508 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 2, 0, -3, 1], ![1, -1, 0, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4508 : ExponentCode := normalNode9990

theorem canonicalSound4508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4508.moment H = canonicalOutput4508.moment H :=
  canonical_of_padded canonicalInput4508 canonicalOutput4508 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation174⟩ (by decide +kernel) hH

def canonicalInput4509 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 2, 0, -3, 1], ![1, 0, -1, 0, 0], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput4509 : ExponentCode := normalNode8768

theorem canonicalSound4509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4509.moment H = canonicalOutput4509.moment H :=
  canonical_of_padded canonicalInput4509 canonicalOutput4509 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput4510 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 2, 0, -1, -1], ![1, -1, 1, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput4510 : ExponentCode := normalNode8709

theorem canonicalSound4510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4510.moment H = canonicalOutput4510.moment H :=
  canonical_of_padded canonicalInput4510 canonicalOutput4510 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput4511 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 2, 0, 1, -3], ![1, -1, -1, 0, 1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput4511 : ExponentCode := normalNode8562

theorem canonicalSound4511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4511.moment H = canonicalOutput4511.moment H :=
  canonical_of_padded canonicalInput4511 canonicalOutput4511 (by decide) (by decide)
    ⟨true, false, canonicalPermutation79, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput4512 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, -1, 1, 0], ![0, 2, 0, 1, -3], ![1, 0, -1, 0, 0], ![1, -1, 1, -3, 2]]⟩

def canonicalOutput4512 : ExponentCode := normalNode8578

theorem canonicalSound4512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4512.moment H = canonicalOutput4512.moment H :=
  canonical_of_padded canonicalInput4512 canonicalOutput4512 (by decide) (by decide)
    ⟨true, false, canonicalPermutation77, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput4513 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, 0, 1, -2], ![1, 0, -2, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput4513 : ExponentCode := normalNode6835

theorem canonicalSound4513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4513.moment H = canonicalOutput4513.moment H :=
  canonical_of_padded canonicalInput4513 canonicalOutput4513 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput4514 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4514 : ExponentCode := normalNode10468

theorem canonicalSound4514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4514.moment H = canonicalOutput4514.moment H :=
  canonical_of_padded canonicalInput4514 canonicalOutput4514 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput4515 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4515 : ExponentCode := normalNode10125

theorem canonicalSound4515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4515.moment H = canonicalOutput4515.moment H :=
  canonical_of_padded canonicalInput4515 canonicalOutput4515 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput4516 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, -1, 1], ![0, 2, -2, 0, 0], ![1, -1, 1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4516 : ExponentCode := normalNode8627

theorem canonicalSound4516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4516.moment H = canonicalOutput4516.moment H :=
  canonical_of_padded canonicalInput4516 canonicalOutput4516 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput4517 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, -1, 1], ![0, 2, -1, 0, -1], ![1, -1, 0, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4517 : ExponentCode := normalNode8709

theorem canonicalSound4517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4517.moment H = canonicalOutput4517.moment H :=
  canonical_of_padded canonicalInput4517 canonicalOutput4517 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation199⟩ (by decide +kernel) hH

def canonicalInput4518 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, -1, 1], ![0, 2, -1, 0, -1], ![1, -1, 1, 1, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput4518 : ExponentCode := normalNode8492

theorem canonicalSound4518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4518.moment H = canonicalOutput4518.moment H :=
  canonical_of_padded canonicalInput4518 canonicalOutput4518 (by decide) (by decide)
    ⟨true, false, canonicalPermutation53, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput4519 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, -1, 1, 0, 0], ![0, 2, -2, 0, 0], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput4519 : ExponentCode := normalNode10458

theorem canonicalSound4519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4519.moment H = canonicalOutput4519.moment H :=
  canonical_of_padded canonicalInput4519 canonicalOutput4519 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4520 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput4520 : ExponentCode := normalNode8752

theorem canonicalSound4520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4520.moment H = canonicalOutput4520.moment H :=
  canonical_of_padded canonicalInput4520 canonicalOutput4520 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4521 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![2, -1, 0, -2, 1]]⟩

def canonicalOutput4521 : ExponentCode := normalNode8728

theorem canonicalSound4521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4521.moment H = canonicalOutput4521.moment H :=
  canonical_of_padded canonicalInput4521 canonicalOutput4521 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput4522 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, -2, 0, 1], ![1, -1, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4522 : ExponentCode := normalNode8770

theorem canonicalSound4522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4522.moment H = canonicalOutput4522.moment H :=
  canonical_of_padded canonicalInput4522 canonicalOutput4522 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput4523 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![1, -1, 0, -1, 1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput4523 : ExponentCode := normalNode10150

theorem canonicalSound4523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4523.moment H = canonicalOutput4523.moment H :=
  canonical_of_padded canonicalInput4523 canonicalOutput4523 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput4524 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![1, -1, 1, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4524 : ExponentCode := normalNode10149

theorem canonicalSound4524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4524.moment H = canonicalOutput4524.moment H :=
  canonical_of_padded canonicalInput4524 canonicalOutput4524 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4525 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput4525 : ExponentCode := normalNode8702

theorem canonicalSound4525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4525.moment H = canonicalOutput4525.moment H :=
  canonical_of_padded canonicalInput4525 canonicalOutput4525 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput4526 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput4526 : ExponentCode := normalNode8764

theorem canonicalSound4526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4526.moment H = canonicalOutput4526.moment H :=
  canonical_of_padded canonicalInput4526 canonicalOutput4526 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput4527 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, 2, -1, -1, 0], ![1, -1, -1, -1, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput4527 : ExponentCode := normalNode6611

theorem canonicalSound4527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4527.moment H = canonicalOutput4527.moment H :=
  canonical_of_padded canonicalInput4527 canonicalOutput4527 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput4528 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, 2, -1, -1, 0], ![1, -1, 1, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput4528 : ExponentCode := normalNode10101

theorem canonicalSound4528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4528.moment H = canonicalOutput4528.moment H :=
  canonical_of_padded canonicalInput4528 canonicalOutput4528 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput4529 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, 2, 0, -1, -1], ![1, -1, 0, -1, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput4529 : ExponentCode := normalNode10100

theorem canonicalSound4529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4529.moment H = canonicalOutput4529.moment H :=
  canonical_of_padded canonicalInput4529 canonicalOutput4529 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput4530 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 0, 1, -1], ![0, 2, 0, -1, -1], ![1, -1, 1, -1, 0], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput4530 : ExponentCode := normalNode8767

theorem canonicalSound4530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4530.moment H = canonicalOutput4530.moment H :=
  canonical_of_padded canonicalInput4530 canonicalOutput4530 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput4531 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![1, -1, -1, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4531 : ExponentCode := normalNode8767

theorem canonicalSound4531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4531.moment H = canonicalOutput4531.moment H :=
  canonical_of_padded canonicalInput4531 canonicalOutput4531 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput4532 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput4532 : ExponentCode := normalNode10156

theorem canonicalSound4532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4532.moment H = canonicalOutput4532.moment H :=
  canonical_of_padded canonicalInput4532 canonicalOutput4532 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput4533 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![1, -1, 0, 1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput4533 : ExponentCode := normalNode8550

theorem canonicalSound4533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4533.moment H = canonicalOutput4533.moment H :=
  canonical_of_padded canonicalInput4533 canonicalOutput4533 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput4534 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 0, -1], ![0, 2, -2, 0, 0], ![1, -1, 0, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput4534 : ExponentCode := normalNode8576

theorem canonicalSound4534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4534.moment H = canonicalOutput4534.moment H :=
  canonical_of_padded canonicalInput4534 canonicalOutput4534 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput4535 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 0, -1], ![0, 2, -2, 1, -1], ![1, -1, 0, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput4535 : ExponentCode := normalNode10080

theorem canonicalSound4535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4535.moment H = canonicalOutput4535.moment H :=
  canonical_of_padded canonicalInput4535 canonicalOutput4535 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput4536 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, -1, -1, -1, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput4536 : ExponentCode := normalNode6611

theorem canonicalSound4536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4536.moment H = canonicalOutput4536.moment H :=
  canonical_of_padded canonicalInput4536 canonicalOutput4536 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation38⟩ (by decide +kernel) hH

def canonicalInput4537 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![1, -1, 0, 0, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput4537 : ExponentCode := normalNode8394

theorem canonicalSound4537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4537.moment H = canonicalOutput4537.moment H :=
  canonical_of_padded canonicalInput4537 canonicalOutput4537 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput4538 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![1, 0, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput4538 : ExponentCode := normalNode6836

theorem canonicalSound4538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4538.moment H = canonicalOutput4538.moment H :=
  canonical_of_padded canonicalInput4538 canonicalOutput4538 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput4539 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![1, 0, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4539 : ExponentCode := normalNode8319

theorem canonicalSound4539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4539.moment H = canonicalOutput4539.moment H :=
  canonical_of_padded canonicalInput4539 canonicalOutput4539 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4540 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput4540 : ExponentCode := normalNode6836

theorem canonicalSound4540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4540.moment H = canonicalOutput4540.moment H :=
  canonical_of_padded canonicalInput4540 canonicalOutput4540 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput4541 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, -1, 0, -1, 1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput4541 : ExponentCode := normalNode8169

theorem canonicalSound4541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4541.moment H = canonicalOutput4541.moment H :=
  canonical_of_padded canonicalInput4541 canonicalOutput4541 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput4542 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, -1, 0, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput4542 : ExponentCode := normalNode8173

theorem canonicalSound4542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4542.moment H = canonicalOutput4542.moment H :=
  canonical_of_padded canonicalInput4542 canonicalOutput4542 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput4543 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 1, 1], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0], ![1, 0, 0, -1, 0], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput4543 : ExponentCode := normalNode8169

theorem canonicalSound4543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4543.moment H = canonicalOutput4543.moment H :=
  canonical_of_padded canonicalInput4543 canonicalOutput4543 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, canonicalPermutation52⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
