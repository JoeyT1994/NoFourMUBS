import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8448 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![1, 0, -3, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput8448 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node902⟩

theorem canonicalSound8448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8448.moment H = canonicalOutput8448.moment H :=
  canonical_of_padded canonicalInput8448 canonicalOutput8448 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8449 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 0, 1], ![1, 1, -3, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput8449 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node952⟩

theorem canonicalSound8449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8449.moment H = canonicalOutput8449.moment H :=
  canonical_of_padded canonicalInput8449 canonicalOutput8449 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8450 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, -1, -2, 3], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput8450 : ExponentCode := normalNode4220

theorem canonicalSound8450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8450.moment H = canonicalOutput8450.moment H :=
  canonical_of_padded canonicalInput8450 canonicalOutput8450 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8451 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, -1, 1, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput8451 : ExponentCode := normalNode4251

theorem canonicalSound8451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8451.moment H = canonicalOutput8451.moment H :=
  canonical_of_padded canonicalInput8451 canonicalOutput8451 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8452 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 1, -3, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput8452 : ExponentCode := normalNode4252

theorem canonicalSound8452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8452.moment H = canonicalOutput8452.moment H :=
  canonical_of_padded canonicalInput8452 canonicalOutput8452 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8453 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput8453 : ExponentCode := normalNode4253

theorem canonicalSound8453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8453.moment H = canonicalOutput8453.moment H :=
  canonical_of_padded canonicalInput8453 canonicalOutput8453 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8454 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput8454 : ExponentCode := normalNode4254

theorem canonicalSound8454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8454.moment H = canonicalOutput8454.moment H :=
  canonical_of_padded canonicalInput8454 canonicalOutput8454 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8455 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, -1, -2, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput8455 : ExponentCode := normalNode4327

theorem canonicalSound8455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8455.moment H = canonicalOutput8455.moment H :=
  canonical_of_padded canonicalInput8455 canonicalOutput8455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8456 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -3, 3], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput8456 : ExponentCode := normalNode7868

theorem canonicalSound8456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8456.moment H = canonicalOutput8456.moment H :=
  canonical_of_padded canonicalInput8456 canonicalOutput8456 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8457 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput8457 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1816⟩

theorem canonicalSound8457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8457.moment H = canonicalOutput8457.moment H :=
  canonical_of_padded canonicalInput8457 canonicalOutput8457 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8458 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput8458 : ExponentCode := normalNode7413

theorem canonicalSound8458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8458.moment H = canonicalOutput8458.moment H :=
  canonical_of_padded canonicalInput8458 canonicalOutput8458 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8459 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput8459 : ExponentCode := normalNode7891

theorem canonicalSound8459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8459.moment H = canonicalOutput8459.moment H :=
  canonical_of_padded canonicalInput8459 canonicalOutput8459 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8460 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput8460 : ExponentCode := normalNode8949

theorem canonicalSound8460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8460.moment H = canonicalOutput8460.moment H :=
  canonical_of_padded canonicalInput8460 canonicalOutput8460 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8461 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput8461 : ExponentCode := normalNode9011

theorem canonicalSound8461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8461.moment H = canonicalOutput8461.moment H :=
  canonical_of_padded canonicalInput8461 canonicalOutput8461 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8462 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput8462 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2193⟩

theorem canonicalSound8462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8462.moment H = canonicalOutput8462.moment H :=
  canonical_of_padded canonicalInput8462 canonicalOutput8462 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8463 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput8463 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1774⟩

theorem canonicalSound8463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8463.moment H = canonicalOutput8463.moment H :=
  canonical_of_padded canonicalInput8463 canonicalOutput8463 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8464 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -3, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput8464 : ExponentCode := normalNode7424

theorem canonicalSound8464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8464.moment H = canonicalOutput8464.moment H :=
  canonical_of_padded canonicalInput8464 canonicalOutput8464 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8465 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8465 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2539⟩

theorem canonicalSound8465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8465.moment H = canonicalOutput8465.moment H :=
  canonical_of_padded canonicalInput8465 canonicalOutput8465 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8466 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 1, -3, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput8466 : ExponentCode := normalNode7911

theorem canonicalSound8466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8466.moment H = canonicalOutput8466.moment H :=
  canonical_of_padded canonicalInput8466 canonicalOutput8466 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8467 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8467 : ExponentCode := normalNode8991

theorem canonicalSound8467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8467.moment H = canonicalOutput8467.moment H :=
  canonical_of_padded canonicalInput8467 canonicalOutput8467 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8468 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput8468 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2630⟩

theorem canonicalSound8468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8468.moment H = canonicalOutput8468.moment H :=
  canonical_of_padded canonicalInput8468 canonicalOutput8468 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8469 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8469 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound8469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8469.moment H = canonicalOutput8469.moment H :=
  canonical_of_padded canonicalInput8469 canonicalOutput8469 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8470 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput8470 : ExponentCode := normalNode2718

theorem canonicalSound8470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8470.moment H = canonicalOutput8470.moment H :=
  canonical_of_padded canonicalInput8470 canonicalOutput8470 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8471 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput8471 : ExponentCode := normalNode9021

theorem canonicalSound8471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8471.moment H = canonicalOutput8471.moment H :=
  canonical_of_padded canonicalInput8471 canonicalOutput8471 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8472 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput8472 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2075⟩

theorem canonicalSound8472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8472.moment H = canonicalOutput8472.moment H :=
  canonical_of_padded canonicalInput8472 canonicalOutput8472 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8473 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -3, 2], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput8473 : ExponentCode := normalNode4398

theorem canonicalSound8473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8473.moment H = canonicalOutput8473.moment H :=
  canonical_of_padded canonicalInput8473 canonicalOutput8473 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8474 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput8474 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2702⟩

theorem canonicalSound8474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8474.moment H = canonicalOutput8474.moment H :=
  canonical_of_padded canonicalInput8474 canonicalOutput8474 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8475 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput8475 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2239⟩

theorem canonicalSound8475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8475.moment H = canonicalOutput8475.moment H :=
  canonical_of_padded canonicalInput8475 canonicalOutput8475 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8476 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8476 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2074⟩

theorem canonicalSound8476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8476.moment H = canonicalOutput8476.moment H :=
  canonical_of_padded canonicalInput8476 canonicalOutput8476 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8477 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8477 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound8477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8477.moment H = canonicalOutput8477.moment H :=
  canonical_of_padded canonicalInput8477 canonicalOutput8477 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8478 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput8478 : ExponentCode := normalNode4396

theorem canonicalSound8478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8478.moment H = canonicalOutput8478.moment H :=
  canonical_of_padded canonicalInput8478 canonicalOutput8478 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8479 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8479 : ExponentCode := normalNode8991

theorem canonicalSound8479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8479.moment H = canonicalOutput8479.moment H :=
  canonical_of_padded canonicalInput8479 canonicalOutput8479 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8480 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput8480 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2587⟩

theorem canonicalSound8480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8480.moment H = canonicalOutput8480.moment H :=
  canonical_of_padded canonicalInput8480 canonicalOutput8480 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8481 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput8481 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound8481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8481.moment H = canonicalOutput8481.moment H :=
  canonical_of_padded canonicalInput8481 canonicalOutput8481 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput8482 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput8482 : ExponentCode := normalNode4394

theorem canonicalSound8482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8482.moment H = canonicalOutput8482.moment H :=
  canonical_of_padded canonicalInput8482 canonicalOutput8482 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8483 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8483 : ExponentCode := normalNode10529

theorem canonicalSound8483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8483.moment H = canonicalOutput8483.moment H :=
  canonical_of_padded canonicalInput8483 canonicalOutput8483 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8484 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput8484 : ExponentCode := normalNode4374

theorem canonicalSound8484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8484.moment H = canonicalOutput8484.moment H :=
  canonical_of_padded canonicalInput8484 canonicalOutput8484 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8485 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput8485 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound8485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8485.moment H = canonicalOutput8485.moment H :=
  canonical_of_padded canonicalInput8485 canonicalOutput8485 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8486 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput8486 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2070⟩

theorem canonicalSound8486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8486.moment H = canonicalOutput8486.moment H :=
  canonical_of_padded canonicalInput8486 canonicalOutput8486 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8487 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8487 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound8487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8487.moment H = canonicalOutput8487.moment H :=
  canonical_of_padded canonicalInput8487 canonicalOutput8487 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8488 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput8488 : ExponentCode := normalNode4386

theorem canonicalSound8488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8488.moment H = canonicalOutput8488.moment H :=
  canonical_of_padded canonicalInput8488 canonicalOutput8488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8489 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput8489 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound8489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8489.moment H = canonicalOutput8489.moment H :=
  canonical_of_padded canonicalInput8489 canonicalOutput8489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8490 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput8490 : ExponentCode := normalNode10264

theorem canonicalSound8490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8490.moment H = canonicalOutput8490.moment H :=
  canonical_of_padded canonicalInput8490 canonicalOutput8490 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8491 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 2, -3, 1], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8491 : ExponentCode := normalNode4404

theorem canonicalSound8491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8491.moment H = canonicalOutput8491.moment H :=
  canonical_of_padded canonicalInput8491 canonicalOutput8491 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8492 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 2, -3, 1], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8492 : ExponentCode := normalNode5508

theorem canonicalSound8492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8492.moment H = canonicalOutput8492.moment H :=
  canonical_of_padded canonicalInput8492 canonicalOutput8492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8493 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8493 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound8493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8493.moment H = canonicalOutput8493.moment H :=
  canonical_of_padded canonicalInput8493 canonicalOutput8493 (by decide) (by decide)
    ⟨false, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8494 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 2, -3, 1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput8494 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound8494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8494.moment H = canonicalOutput8494.moment H :=
  canonical_of_padded canonicalInput8494 canonicalOutput8494 (by decide) (by decide)
    ⟨false, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8495 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 2, -2, 0], ![1, -2, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput8495 : ExponentCode := normalNode4403

theorem canonicalSound8495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8495.moment H = canonicalOutput8495.moment H :=
  canonical_of_padded canonicalInput8495 canonicalOutput8495 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8496 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8496 : ExponentCode := normalNode3994

theorem canonicalSound8496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8496.moment H = canonicalOutput8496.moment H :=
  canonical_of_padded canonicalInput8496 canonicalOutput8496 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8497 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, -2, 0, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput8497 : ExponentCode := normalNode4402

theorem canonicalSound8497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8497.moment H = canonicalOutput8497.moment H :=
  canonical_of_padded canonicalInput8497 canonicalOutput8497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8498 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 2, 1, -3], ![2, -1, -3, 2]]⟩

def canonicalOutput8498 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node953⟩

theorem canonicalSound8498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8498.moment H = canonicalOutput8498.moment H :=
  canonical_of_padded canonicalInput8498 canonicalOutput8498 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8499 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 3, -2, -1], ![1, -2, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput8499 : ExponentCode := normalNode4405

theorem canonicalSound8499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8499.moment H = canonicalOutput8499.moment H :=
  canonical_of_padded canonicalInput8499 canonicalOutput8499 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8500 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 3, -2, -1], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput8500 : ExponentCode := normalNode5440

theorem canonicalSound8500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8500.moment H = canonicalOutput8500.moment H :=
  canonical_of_padded canonicalInput8500 canonicalOutput8500 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8501 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![1, 0, -4, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput8501 : ExponentCode := normalNode7436

theorem canonicalSound8501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8501.moment H = canonicalOutput8501.moment H :=
  canonical_of_padded canonicalInput8501 canonicalOutput8501 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8502 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput8502 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node952⟩

theorem canonicalSound8502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8502.moment H = canonicalOutput8502.moment H :=
  canonical_of_padded canonicalInput8502 canonicalOutput8502 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8503 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8503 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1262⟩

theorem canonicalSound8503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8503.moment H = canonicalOutput8503.moment H :=
  canonical_of_padded canonicalInput8503 canonicalOutput8503 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput8504 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![1, 1, -4, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput8504 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node902⟩

theorem canonicalSound8504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8504.moment H = canonicalOutput8504.moment H :=
  canonical_of_padded canonicalInput8504 canonicalOutput8504 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8505 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8505 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node945⟩

theorem canonicalSound8505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8505.moment H = canonicalOutput8505.moment H :=
  canonical_of_padded canonicalInput8505 canonicalOutput8505 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8506 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, 1, 0], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput8506 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1262⟩

theorem canonicalSound8506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8506.moment H = canonicalOutput8506.moment H :=
  canonical_of_padded canonicalInput8506 canonicalOutput8506 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput8507 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput8507 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound8507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8507.moment H = canonicalOutput8507.moment H :=
  canonical_of_padded canonicalInput8507 canonicalOutput8507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8508 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput8508 : ExponentCode := normalNode9417

theorem canonicalSound8508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8508.moment H = canonicalOutput8508.moment H :=
  canonical_of_padded canonicalInput8508 canonicalOutput8508 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8509 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8509 : ExponentCode := normalNode4308

theorem canonicalSound8509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8509.moment H = canonicalOutput8509.moment H :=
  canonical_of_padded canonicalInput8509 canonicalOutput8509 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8510 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput8510 : ExponentCode := normalNode4286

theorem canonicalSound8510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8510.moment H = canonicalOutput8510.moment H :=
  canonical_of_padded canonicalInput8510 canonicalOutput8510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8511 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8511 : ExponentCode := normalNode4307

theorem canonicalSound8511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8511.moment H = canonicalOutput8511.moment H :=
  canonical_of_padded canonicalInput8511 canonicalOutput8511 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
