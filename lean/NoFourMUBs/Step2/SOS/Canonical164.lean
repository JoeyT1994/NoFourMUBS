import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10496 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput10496 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound10496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10496.moment H = canonicalOutput10496.moment H :=
  canonical_of_padded canonicalInput10496 canonicalOutput10496 (by decide) (by decide)
    ⟨false, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10497 : ExponentCode := ⟨6, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput10497 : ExponentCode := normalNode5356

theorem canonicalSound10497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10497.moment H = canonicalOutput10497.moment H :=
  canonical_of_padded canonicalInput10497 canonicalOutput10497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10498 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10498 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound10498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10498.moment H = canonicalOutput10498.moment H :=
  canonical_of_padded canonicalInput10498 canonicalOutput10498 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10499 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput10499 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound10499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10499.moment H = canonicalOutput10499.moment H :=
  canonical_of_padded canonicalInput10499 canonicalOutput10499 (by decide) (by decide)
    ⟨false, true, canonicalPermutation42, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10500 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![0, 1, 2, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput10500 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound10500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10500.moment H = canonicalOutput10500.moment H :=
  canonical_of_padded canonicalInput10500 canonicalOutput10500 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10501 : ExponentCode := ⟨6, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![0, 0, 2, -2], ![0, 0, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput10501 : ExponentCode := normalNode5330

theorem canonicalSound10501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10501.moment H = canonicalOutput10501.moment H :=
  canonical_of_padded canonicalInput10501 canonicalOutput10501 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10502 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 0, 1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput10502 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound10502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10502.moment H = canonicalOutput10502.moment H :=
  canonical_of_padded canonicalInput10502 canonicalOutput10502 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10503 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, -1, -2, 3], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput10503 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1678⟩

theorem canonicalSound10503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10503.moment H = canonicalOutput10503.moment H :=
  canonical_of_padded canonicalInput10503 canonicalOutput10503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10504 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput10504 : ExponentCode := normalNode5281

theorem canonicalSound10504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10504.moment H = canonicalOutput10504.moment H :=
  canonical_of_padded canonicalInput10504 canonicalOutput10504 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10505 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput10505 : ExponentCode := normalNode5282

theorem canonicalSound10505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10505.moment H = canonicalOutput10505.moment H :=
  canonical_of_padded canonicalInput10505 canonicalOutput10505 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10506 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 0, 3, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput10506 : ExponentCode := normalNode5283

theorem canonicalSound10506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10506.moment H = canonicalOutput10506.moment H :=
  canonical_of_padded canonicalInput10506 canonicalOutput10506 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10507 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10507 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound10507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10507.moment H = canonicalOutput10507.moment H :=
  canonical_of_padded canonicalInput10507 canonicalOutput10507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10508 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput10508 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2064⟩

theorem canonicalSound10508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10508.moment H = canonicalOutput10508.moment H :=
  canonical_of_padded canonicalInput10508 canonicalOutput10508 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10509 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput10509 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2315⟩

theorem canonicalSound10509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10509.moment H = canonicalOutput10509.moment H :=
  canonical_of_padded canonicalInput10509 canonicalOutput10509 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10510 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, -3, 3], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput10510 : ExponentCode := normalNode10851

theorem canonicalSound10510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10510.moment H = canonicalOutput10510.moment H :=
  canonical_of_padded canonicalInput10510 canonicalOutput10510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10511 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput10511 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1993⟩

theorem canonicalSound10511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10511.moment H = canonicalOutput10511.moment H :=
  canonical_of_padded canonicalInput10511 canonicalOutput10511 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10512 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10512 : ExponentCode := normalNode10726

theorem canonicalSound10512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10512.moment H = canonicalOutput10512.moment H :=
  canonical_of_padded canonicalInput10512 canonicalOutput10512 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10513 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10513 : ExponentCode := normalNode10855

theorem canonicalSound10513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10513.moment H = canonicalOutput10513.moment H :=
  canonical_of_padded canonicalInput10513 canonicalOutput10513 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10514 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10514 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2070⟩

theorem canonicalSound10514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10514.moment H = canonicalOutput10514.moment H :=
  canonical_of_padded canonicalInput10514 canonicalOutput10514 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10515 : ExponentCode := ⟨6, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput10515 : ExponentCode := normalNode5383

theorem canonicalSound10515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10515.moment H = canonicalOutput10515.moment H :=
  canonical_of_padded canonicalInput10515 canonicalOutput10515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10516 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput10516 : ExponentCode := normalNode2411

theorem canonicalSound10516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10516.moment H = canonicalOutput10516.moment H :=
  canonical_of_padded canonicalInput10516 canonicalOutput10516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10517 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput10517 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2319⟩

theorem canonicalSound10517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10517.moment H = canonicalOutput10517.moment H :=
  canonical_of_padded canonicalInput10517 canonicalOutput10517 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10518 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput10518 : ExponentCode := normalNode10722

theorem canonicalSound10518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10518.moment H = canonicalOutput10518.moment H :=
  canonical_of_padded canonicalInput10518 canonicalOutput10518 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10519 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput10519 : ExponentCode := normalNode10722

theorem canonicalSound10519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10519.moment H = canonicalOutput10519.moment H :=
  canonical_of_padded canonicalInput10519 canonicalOutput10519 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10520 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 3, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput10520 : ExponentCode := normalNode10720

theorem canonicalSound10520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10520.moment H = canonicalOutput10520.moment H :=
  canonical_of_padded canonicalInput10520 canonicalOutput10520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10521 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput10521 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound10521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10521.moment H = canonicalOutput10521.moment H :=
  canonical_of_padded canonicalInput10521 canonicalOutput10521 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10522 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput10522 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2318⟩

theorem canonicalSound10522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10522.moment H = canonicalOutput10522.moment H :=
  canonical_of_padded canonicalInput10522 canonicalOutput10522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10523 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10523 : ExponentCode := normalNode10706

theorem canonicalSound10523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10523.moment H = canonicalOutput10523.moment H :=
  canonical_of_padded canonicalInput10523 canonicalOutput10523 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10524 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput10524 : ExponentCode := normalNode10706

theorem canonicalSound10524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10524.moment H = canonicalOutput10524.moment H :=
  canonical_of_padded canonicalInput10524 canonicalOutput10524 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10525 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput10525 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2007⟩

theorem canonicalSound10525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10525.moment H = canonicalOutput10525.moment H :=
  canonical_of_padded canonicalInput10525 canonicalOutput10525 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10526 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10526 : ExponentCode := normalNode10691

theorem canonicalSound10526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10526.moment H = canonicalOutput10526.moment H :=
  canonical_of_padded canonicalInput10526 canonicalOutput10526 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10527 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10527 : ExponentCode := normalNode9550

theorem canonicalSound10527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10527.moment H = canonicalOutput10527.moment H :=
  canonical_of_padded canonicalInput10527 canonicalOutput10527 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10528 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput10528 : ExponentCode := normalNode10691

theorem canonicalSound10528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10528.moment H = canonicalOutput10528.moment H :=
  canonical_of_padded canonicalInput10528 canonicalOutput10528 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10529 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput10529 : ExponentCode := normalNode5404

theorem canonicalSound10529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10529.moment H = canonicalOutput10529.moment H :=
  canonical_of_padded canonicalInput10529 canonicalOutput10529 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10530 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10530 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound10530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10530.moment H = canonicalOutput10530.moment H :=
  canonical_of_padded canonicalInput10530 canonicalOutput10530 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10531 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput10531 : ExponentCode := normalNode2380

theorem canonicalSound10531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10531.moment H = canonicalOutput10531.moment H :=
  canonical_of_padded canonicalInput10531 canonicalOutput10531 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10532 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10532 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound10532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10532.moment H = canonicalOutput10532.moment H :=
  canonical_of_padded canonicalInput10532 canonicalOutput10532 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput10533 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput10533 : ExponentCode := normalNode2408

theorem canonicalSound10533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10533.moment H = canonicalOutput10533.moment H :=
  canonical_of_padded canonicalInput10533 canonicalOutput10533 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10534 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10534 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1784⟩

theorem canonicalSound10534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10534.moment H = canonicalOutput10534.moment H :=
  canonical_of_padded canonicalInput10534 canonicalOutput10534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10535 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10535 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound10535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10535.moment H = canonicalOutput10535.moment H :=
  canonical_of_padded canonicalInput10535 canonicalOutput10535 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput10536 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput10536 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound10536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10536.moment H = canonicalOutput10536.moment H :=
  canonical_of_padded canonicalInput10536 canonicalOutput10536 (by decide) (by decide)
    ⟨false, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput10537 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput10537 : ExponentCode := normalNode5409

theorem canonicalSound10537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10537.moment H = canonicalOutput10537.moment H :=
  canonical_of_padded canonicalInput10537 canonicalOutput10537 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10538 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput10538 : ExponentCode := normalNode5412

theorem canonicalSound10538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10538.moment H = canonicalOutput10538.moment H :=
  canonical_of_padded canonicalInput10538 canonicalOutput10538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10539 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![1, -1, -3, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput10539 : ExponentCode := normalNode9945

theorem canonicalSound10539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10539.moment H = canonicalOutput10539.moment H :=
  canonical_of_padded canonicalInput10539 canonicalOutput10539 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10540 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![1, -1, 3, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput10540 : ExponentCode := normalNode9722

theorem canonicalSound10540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10540.moment H = canonicalOutput10540.moment H :=
  canonical_of_padded canonicalInput10540 canonicalOutput10540 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10541 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![1, 0, -3, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput10541 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound10541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10541.moment H = canonicalOutput10541.moment H :=
  canonical_of_padded canonicalInput10541 canonicalOutput10541 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10542 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 1, 0], ![1, 0, 2, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput10542 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound10542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10542.moment H = canonicalOutput10542.moment H :=
  canonical_of_padded canonicalInput10542 canonicalOutput10542 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10543 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, -1, -1, 2], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10543 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1157

theorem canonicalSound10543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10543.moment H = canonicalOutput10543.moment H :=
  canonical_of_padded canonicalInput10543 canonicalOutput10543 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10544 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, -1, -1, 2], ![1, 0, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput10544 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1159

theorem canonicalSound10544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10544.moment H = canonicalOutput10544.moment H :=
  canonical_of_padded canonicalInput10544 canonicalOutput10544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10545 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, -1, 1, 0], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput10545 : ExponentCode := normalNode5369

theorem canonicalSound10545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10545.moment H = canonicalOutput10545.moment H :=
  canonical_of_padded canonicalInput10545 canonicalOutput10545 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10546 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput10546 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2315⟩

theorem canonicalSound10546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10546.moment H = canonicalOutput10546.moment H :=
  canonical_of_padded canonicalInput10546 canonicalOutput10546 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10547 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 0, -3, 3], ![2, 0, 1, -3]]⟩

def canonicalOutput10547 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1313⟩

theorem canonicalSound10547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10547.moment H = canonicalOutput10547.moment H :=
  canonical_of_padded canonicalInput10547 canonicalOutput10547 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10548 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput10548 : ExponentCode := normalNode3773

theorem canonicalSound10548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10548.moment H = canonicalOutput10548.moment H :=
  canonical_of_padded canonicalInput10548 canonicalOutput10548 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10549 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10549 : ExponentCode := normalNode10345

theorem canonicalSound10549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10549.moment H = canonicalOutput10549.moment H :=
  canonical_of_padded canonicalInput10549 canonicalOutput10549 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10550 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 0, -2, 2], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput10550 : ExponentCode := normalNode10345

theorem canonicalSound10550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10550.moment H = canonicalOutput10550.moment H :=
  canonical_of_padded canonicalInput10550 canonicalOutput10550 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10551 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput10551 : ExponentCode := normalNode4311

theorem canonicalSound10551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10551.moment H = canonicalOutput10551.moment H :=
  canonical_of_padded canonicalInput10551 canonicalOutput10551 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10552 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput10552 : ExponentCode := normalNode5624

theorem canonicalSound10552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10552.moment H = canonicalOutput10552.moment H :=
  canonical_of_padded canonicalInput10552 canonicalOutput10552 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10553 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10553 : ExponentCode := normalNode10342

theorem canonicalSound10553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10553.moment H = canonicalOutput10553.moment H :=
  canonical_of_padded canonicalInput10553 canonicalOutput10553 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10554 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput10554 : ExponentCode := normalNode10340

theorem canonicalSound10554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10554.moment H = canonicalOutput10554.moment H :=
  canonical_of_padded canonicalInput10554 canonicalOutput10554 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10555 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput10555 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2315⟩

theorem canonicalSound10555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10555.moment H = canonicalOutput10555.moment H :=
  canonical_of_padded canonicalInput10555 canonicalOutput10555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput10556 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10556 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2732⟩

theorem canonicalSound10556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10556.moment H = canonicalOutput10556.moment H :=
  canonical_of_padded canonicalInput10556 canonicalOutput10556 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10557 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput10557 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2732⟩

theorem canonicalSound10557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10557.moment H = canonicalOutput10557.moment H :=
  canonical_of_padded canonicalInput10557 canonicalOutput10557 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10558 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 1, -4, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput10558 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code747

theorem canonicalSound10558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10558.moment H = canonicalOutput10558.moment H :=
  canonical_of_padded canonicalInput10558 canonicalOutput10558 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10559 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 1, -3, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput10559 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node603⟩

theorem canonicalSound10559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10559.moment H = canonicalOutput10559.moment H :=
  canonical_of_padded canonicalInput10559 canonicalOutput10559 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
