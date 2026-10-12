import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5440 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 2, 0, -1, -1], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5440 : ExponentCode := normalNode8252

theorem canonicalSound5440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5440.moment H = canonicalOutput5440.moment H :=
  canonical_of_padded canonicalInput5440 canonicalOutput5440 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput5441 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 2, 0, 0, -2], ![1, 0, -2, 0, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5441 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code651

theorem canonicalSound5441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5441.moment H = canonicalOutput5441.moment H :=
  canonical_of_padded canonicalInput5441 canonicalOutput5441 (by decide) (by decide)
    ⟨true, true, canonicalPermutation65, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput5442 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 2, 0, 0, -2], ![1, 0, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput5442 : ExponentCode := normalNode8259

theorem canonicalSound5442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5442.moment H = canonicalOutput5442.moment H :=
  canonical_of_padded canonicalInput5442 canonicalOutput5442 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput5443 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, -1, 2], ![0, 2, 1, -1, -2], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5443 : ExponentCode := normalNode8440

theorem canonicalSound5443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5443.moment H = canonicalOutput5443.moment H :=
  canonical_of_padded canonicalInput5443 canonicalOutput5443 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput5444 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, 0, 1], ![0, 1, -1, -1, 1], ![1, 0, 0, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5444 : ExponentCode := normalNode10097

theorem canonicalSound5444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5444.moment H = canonicalOutput5444.moment H :=
  canonical_of_padded canonicalInput5444 canonicalOutput5444 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput5445 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, 0, 1], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput5445 : ExponentCode := normalNode10129

theorem canonicalSound5445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5445.moment H = canonicalOutput5445.moment H :=
  canonical_of_padded canonicalInput5445 canonicalOutput5445 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput5446 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5446 : ExponentCode := normalNode10362

theorem canonicalSound5446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5446.moment H = canonicalOutput5446.moment H :=
  canonical_of_padded canonicalInput5446 canonicalOutput5446 (by decide) (by decide)
    ⟨true, true, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput5447 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, 0, 1], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5447 : ExponentCode := normalNode10105

theorem canonicalSound5447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5447.moment H = canonicalOutput5447.moment H :=
  canonical_of_padded canonicalInput5447 canonicalOutput5447 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput5448 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, 0, 1], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput5448 : ExponentCode := normalNode10134

theorem canonicalSound5448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5448.moment H = canonicalOutput5448.moment H :=
  canonical_of_padded canonicalInput5448 canonicalOutput5448 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput5449 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, -1, 0, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput5449 : ExponentCode := normalNode11076

theorem canonicalSound5449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5449.moment H = canonicalOutput5449.moment H :=
  canonical_of_padded canonicalInput5449 canonicalOutput5449 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput5450 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput5450 : ExponentCode := normalNode8728

theorem canonicalSound5450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5450.moment H = canonicalOutput5450.moment H :=
  canonical_of_padded canonicalInput5450 canonicalOutput5450 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput5451 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5451 : ExponentCode := normalNode8298

theorem canonicalSound5451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5451.moment H = canonicalOutput5451.moment H :=
  canonical_of_padded canonicalInput5451 canonicalOutput5451 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput5452 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput5452 : ExponentCode := normalNode10811

theorem canonicalSound5452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5452.moment H = canonicalOutput5452.moment H :=
  canonical_of_padded canonicalInput5452 canonicalOutput5452 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput5453 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput5453 : ExponentCode := normalNode8509

theorem canonicalSound5453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5453.moment H = canonicalOutput5453.moment H :=
  canonical_of_padded canonicalInput5453 canonicalOutput5453 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput5454 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput5454 : ExponentCode := normalNode7084

theorem canonicalSound5454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5454.moment H = canonicalOutput5454.moment H :=
  canonical_of_padded canonicalInput5454 canonicalOutput5454 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput5455 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5455 : ExponentCode := normalNode10032

theorem canonicalSound5455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5455.moment H = canonicalOutput5455.moment H :=
  canonical_of_padded canonicalInput5455 canonicalOutput5455 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput5456 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![1, -1, 0, -1, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5456 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code650

theorem canonicalSound5456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5456.moment H = canonicalOutput5456.moment H :=
  canonical_of_padded canonicalInput5456 canonicalOutput5456 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput5457 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 1, 1, -1, -1], ![1, 0, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5457 : ExponentCode := normalNode8321

theorem canonicalSound5457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5457.moment H = canonicalOutput5457.moment H :=
  canonical_of_padded canonicalInput5457 canonicalOutput5457 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5458 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 2, 0, 0, -2], ![1, -1, 0, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5458 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code649

theorem canonicalSound5458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5458.moment H = canonicalOutput5458.moment H :=
  canonical_of_padded canonicalInput5458 canonicalOutput5458 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput5459 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -2, 0, 2], ![0, 2, 1, -1, -2], ![1, -1, 0, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5459 : ExponentCode := normalNode8455

theorem canonicalSound5459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5459.moment H = canonicalOutput5459.moment H :=
  canonical_of_padded canonicalInput5459 canonicalOutput5459 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation201⟩ (by decide +kernel) hH

def canonicalInput5460 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -1, -1, 2], ![0, 0, -1, 0, 1], ![1, 0, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5460 : ExponentCode := normalNode7085

theorem canonicalSound5460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5460.moment H = canonicalOutput5460.moment H :=
  canonical_of_padded canonicalInput5460 canonicalOutput5460 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput5461 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![1, -1, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5461 : ExponentCode := normalNode8504

theorem canonicalSound5461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5461.moment H = canonicalOutput5461.moment H :=
  canonical_of_padded canonicalInput5461 canonicalOutput5461 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput5462 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5462 : ExponentCode := normalNode10043

theorem canonicalSound5462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5462.moment H = canonicalOutput5462.moment H :=
  canonical_of_padded canonicalInput5462 canonicalOutput5462 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput5463 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -1, 0, 1], ![0, 0, -1, -1, 2], ![1, 0, 1, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5463 : ExponentCode := normalNode7085

theorem canonicalSound5463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5463.moment H = canonicalOutput5463.moment H :=
  canonical_of_padded canonicalInput5463 canonicalOutput5463 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput5464 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -1, 0, 1], ![0, 1, -1, -1, 1], ![1, -1, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5464 : ExponentCode := normalNode8502

theorem canonicalSound5464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5464.moment H = canonicalOutput5464.moment H :=
  canonical_of_padded canonicalInput5464 canonicalOutput5464 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput5465 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -1, 0, 1], ![0, 1, -1, -1, 1], ![1, 0, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5465 : ExponentCode := normalNode10123

theorem canonicalSound5465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5465.moment H = canonicalOutput5465.moment H :=
  canonical_of_padded canonicalInput5465 canonicalOutput5465 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput5466 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5466 : ExponentCode := normalNode10165

theorem canonicalSound5466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5466.moment H = canonicalOutput5466.moment H :=
  canonical_of_padded canonicalInput5466 canonicalOutput5466 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput5467 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, 0, -1, 1], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5467 : ExponentCode := normalNode10117

theorem canonicalSound5467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5467.moment H = canonicalOutput5467.moment H :=
  canonical_of_padded canonicalInput5467 canonicalOutput5467 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation191⟩ (by decide +kernel) hH

def canonicalInput5468 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, 0, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5468 : ExponentCode := normalNode10140

theorem canonicalSound5468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5468.moment H = canonicalOutput5468.moment H :=
  canonical_of_padded canonicalInput5468 canonicalOutput5468 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput5469 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 0, 0, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5469 : ExponentCode := normalNode10126

theorem canonicalSound5469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5469.moment H = canonicalOutput5469.moment H :=
  canonical_of_padded canonicalInput5469 canonicalOutput5469 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput5470 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput5470 : ExponentCode := normalNode8664

theorem canonicalSound5470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5470.moment H = canonicalOutput5470.moment H :=
  canonical_of_padded canonicalInput5470 canonicalOutput5470 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput5471 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput5471 : ExponentCode := normalNode8680

theorem canonicalSound5471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5471.moment H = canonicalOutput5471.moment H :=
  canonical_of_padded canonicalInput5471 canonicalOutput5471 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput5472 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 1, -2, 0, 1], ![0, 1, 1, -1, -1], ![1, -1, 0, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput5472 : ExponentCode := normalNode8398

theorem canonicalSound5472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5472.moment H = canonicalOutput5472.moment H :=
  canonical_of_padded canonicalInput5472 canonicalOutput5472 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput5473 : ExponentCode := ⟨5, 5, ![![-2, -1, 1, 2, 0], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput5473 : ExponentCode := normalNode8130

theorem canonicalSound5473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5473.moment H = canonicalOutput5473.moment H :=
  canonical_of_padded canonicalInput5473 canonicalOutput5473 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput5474 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 2, 0], ![0, 2, -2, -1, 1], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput5474 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound5474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5474.moment H = canonicalOutput5474.moment H :=
  canonical_of_padded canonicalInput5474 canonicalOutput5474 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5475 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 2, 0], ![0, 2, -2, 1, -1], ![2, -1, 1, -3, 1]]⟩

def canonicalOutput5475 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node536⟩

theorem canonicalSound5475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5475.moment H = canonicalOutput5475.moment H :=
  canonical_of_padded canonicalInput5475 canonicalOutput5475 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5476 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 2, 0], ![0, 2, 1, -2, -1], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput5476 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node624⟩

theorem canonicalSound5476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5476.moment H = canonicalOutput5476.moment H :=
  canonical_of_padded canonicalInput5476 canonicalOutput5476 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput5477 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 2, 0], ![0, 2, 1, -1, -2], ![2, -1, -2, -1, 2]]⟩

def canonicalOutput5477 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node625⟩

theorem canonicalSound5477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5477.moment H = canonicalOutput5477.moment H :=
  canonical_of_padded canonicalInput5477 canonicalOutput5477 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5478 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 2, 0], ![0, 3, -2, 0, -1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput5478 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node358⟩

theorem canonicalSound5478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5478.moment H = canonicalOutput5478.moment H :=
  canonical_of_padded canonicalInput5478 canonicalOutput5478 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5479 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 2, 0], ![1, -2, 1, -1, 1], ![1, 3, -2, -1, -1]]⟩

def canonicalOutput5479 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node539⟩

theorem canonicalSound5479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5479.moment H = canonicalOutput5479.moment H :=
  canonical_of_padded canonicalInput5479 canonicalOutput5479 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5480 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 2, 0], ![1, -1, -2, -1, 3], ![1, 2, 1, -1, -3]]⟩

def canonicalOutput5480 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound5480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5480.moment H = canonicalOutput5480.moment H :=
  canonical_of_padded canonicalInput5480 canonicalOutput5480 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5481 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 2, 0], ![1, -1, 1, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput5481 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound5481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5481.moment H = canonicalOutput5481.moment H :=
  canonical_of_padded canonicalInput5481 canonicalOutput5481 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5482 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 2, 0], ![1, -1, 2, -1, -1], ![1, 2, -3, -1, 1]]⟩

def canonicalOutput5482 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node539⟩

theorem canonicalSound5482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5482.moment H = canonicalOutput5482.moment H :=
  canonical_of_padded canonicalInput5482 canonicalOutput5482 (by decide) (by decide)
    ⟨true, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5483 : ExponentCode := ⟨3, 5, ![![-2, -1, 1, 2, 0], ![2, -1, 1, 0, -2], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput5483 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node622⟩

theorem canonicalSound5483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5483.moment H = canonicalOutput5483.moment H :=
  canonical_of_padded canonicalInput5483 canonicalOutput5483 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5484 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 0, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput5484 : ExponentCode := normalNode6630

theorem canonicalSound5484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5484.moment H = canonicalOutput5484.moment H :=
  canonical_of_padded canonicalInput5484 canonicalOutput5484 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput5485 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 0, 1], ![0, -1, -1, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput5485 : ExponentCode := normalNode8586

theorem canonicalSound5485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5485.moment H = canonicalOutput5485.moment H :=
  canonical_of_padded canonicalInput5485 canonicalOutput5485 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput5486 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 0, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput5486 : ExponentCode := normalNode8732

theorem canonicalSound5486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5486.moment H = canonicalOutput5486.moment H :=
  canonical_of_padded canonicalInput5486 canonicalOutput5486 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput5487 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 0, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, -1, 0], ![1, -1, 0, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5487 : ExponentCode := normalNode10136

theorem canonicalSound5487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5487.moment H = canonicalOutput5487.moment H :=
  canonical_of_padded canonicalInput5487 canonicalOutput5487 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput5488 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 0, 1], ![0, 0, -2, 1, 1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput5488 : ExponentCode := normalNode8713

theorem canonicalSound5488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5488.moment H = canonicalOutput5488.moment H :=
  canonical_of_padded canonicalInput5488 canonicalOutput5488 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput5489 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 0, 1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput5489 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code383

theorem canonicalSound5489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5489.moment H = canonicalOutput5489.moment H :=
  canonical_of_padded canonicalInput5489 canonicalOutput5489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5490 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-3, 2, -1, 2], ![5, -1, -1, -3]]⟩

def canonicalOutput5490 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code100

theorem canonicalSound5490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5490.moment H = canonicalOutput5490.moment H :=
  canonical_of_padded canonicalInput5490 canonicalOutput5490 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5491 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-3, 2, 1, 0], ![5, -1, -3, -1]]⟩

def canonicalOutput5491 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node72⟩

theorem canonicalSound5491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5491.moment H = canonicalOutput5491.moment H :=
  canonical_of_padded canonicalInput5491 canonicalOutput5491 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5492 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-3, 3, -1, 1], ![5, -2, -1, -2]]⟩

def canonicalOutput5492 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code101

theorem canonicalSound5492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5492.moment H = canonicalOutput5492.moment H :=
  canonical_of_padded canonicalInput5492 canonicalOutput5492 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5493 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-3, 3, 0, 0], ![5, -2, -2, -1]]⟩

def canonicalOutput5493 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node70⟩

theorem canonicalSound5493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5493.moment H = canonicalOutput5493.moment H :=
  canonical_of_padded canonicalInput5493 canonicalOutput5493 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5494 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-2, -1, 2, 1], ![4, 2, -4, -2]]⟩

def canonicalOutput5494 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code225

theorem canonicalSound5494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5494.moment H = canonicalOutput5494.moment H :=
  canonical_of_padded canonicalInput5494 canonicalOutput5494 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5495 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-2, 2, 2, -2], ![4, -1, -4, 1]]⟩

def canonicalOutput5495 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code227

theorem canonicalSound5495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5495.moment H = canonicalOutput5495.moment H :=
  canonical_of_padded canonicalInput5495 canonicalOutput5495 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5496 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-2, 3, -1, 0], ![4, -2, -1, -1]]⟩

def canonicalOutput5496 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node106⟩

theorem canonicalSound5496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5496.moment H = canonicalOutput5496.moment H :=
  canonical_of_padded canonicalInput5496 canonicalOutput5496 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5497 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-2, 3, 0, -1], ![4, -2, -2, 0]]⟩

def canonicalOutput5497 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node102⟩

theorem canonicalSound5497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5497.moment H = canonicalOutput5497.moment H :=
  canonical_of_padded canonicalInput5497 canonicalOutput5497 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5498 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-2, 4, -1, -1], ![4, -3, -1, 0]]⟩

def canonicalOutput5498 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node137⟩

theorem canonicalSound5498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5498.moment H = canonicalOutput5498.moment H :=
  canonical_of_padded canonicalInput5498 canonicalOutput5498 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5499 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-2, 4, 0, -2], ![4, -3, -2, 1]]⟩

def canonicalOutput5499 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code232

theorem canonicalSound5499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5499.moment H = canonicalOutput5499.moment H :=
  canonical_of_padded canonicalInput5499 canonicalOutput5499 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5500 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-1, -2, 2, 1], ![3, 3, -4, -2]]⟩

def canonicalOutput5500 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code226

theorem canonicalSound5500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5500.moment H = canonicalOutput5500.moment H :=
  canonical_of_padded canonicalInput5500 canonicalOutput5500 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5501 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![-1, -1, 3, -1], ![3, 2, -5, 0]]⟩

def canonicalOutput5501 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node78⟩

theorem canonicalSound5501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5501.moment H = canonicalOutput5501.moment H :=
  canonical_of_padded canonicalInput5501 canonicalOutput5501 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5502 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput5502 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1380

theorem canonicalSound5502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5502.moment H = canonicalOutput5502.moment H :=
  canonical_of_padded canonicalInput5502 canonicalOutput5502 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5503 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![-1, 1, -1, 1], ![1, 1, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput5503 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code611

theorem canonicalSound5503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5503.moment H = canonicalOutput5503.moment H :=
  canonical_of_padded canonicalInput5503 canonicalOutput5503 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, canonicalPermutation8⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
