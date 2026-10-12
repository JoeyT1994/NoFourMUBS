import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13632 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 1, 0], ![3, 0, 0, 0, -3], ![-2, 1, 1, -2, 2]]⟩

def canonicalOutput13632 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code932

theorem canonicalSound13632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13632.moment H = canonicalOutput13632.moment H :=
  canonical_of_padded canonicalInput13632 canonicalOutput13632 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13633 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -2, 2, -1], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput13633 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node376⟩

theorem canonicalSound13633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13633.moment H = canonicalOutput13633.moment H :=
  canonical_of_padded canonicalInput13633 canonicalOutput13633 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13634 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -1, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13634 : ExponentCode := normalNode2809

theorem canonicalSound13634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13634.moment H = canonicalOutput13634.moment H :=
  canonical_of_padded canonicalInput13634 canonicalOutput13634 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13635 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -1, -2, 2], ![0, 1, 1, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13635 : ExponentCode := normalNode2826

theorem canonicalSound13635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13635.moment H = canonicalOutput13635.moment H :=
  canonical_of_padded canonicalInput13635 canonicalOutput13635 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13636 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput13636 : ExponentCode := normalNode8883

theorem canonicalSound13636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13636.moment H = canonicalOutput13636.moment H :=
  canonical_of_padded canonicalInput13636 canonicalOutput13636 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13637 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -1, -1, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput13637 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2631⟩

theorem canonicalSound13637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13637.moment H = canonicalOutput13637.moment H :=
  canonical_of_padded canonicalInput13637 canonicalOutput13637 (by decide) (by decide)
    ⟨true, false, canonicalPermutation23, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13638 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -1, 1, -1], ![0, 1, -1, -2, 2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput13638 : ExponentCode := normalNode2809

theorem canonicalSound13638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13638.moment H = canonicalOutput13638.moment H :=
  canonical_of_padded canonicalInput13638 canonicalOutput13638 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13639 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -1, 1, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput13639 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2631⟩

theorem canonicalSound13639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13639.moment H = canonicalOutput13639.moment H :=
  canonical_of_padded canonicalInput13639 canonicalOutput13639 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13640 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput13640 : ExponentCode := normalNode2711

theorem canonicalSound13640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13640.moment H = canonicalOutput13640.moment H :=
  canonical_of_padded canonicalInput13640 canonicalOutput13640 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput13641 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput13641 : ExponentCode := normalNode9076

theorem canonicalSound13641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13641.moment H = canonicalOutput13641.moment H :=
  canonical_of_padded canonicalInput13641 canonicalOutput13641 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13642 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput13642 : ExponentCode := normalNode4498

theorem canonicalSound13642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13642.moment H = canonicalOutput13642.moment H :=
  canonical_of_padded canonicalInput13642 canonicalOutput13642 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13643 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, 0, -2, 1], ![0, 1, 1, 1, -3], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13643 : ExponentCode := normalNode4211

theorem canonicalSound13643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13643.moment H = canonicalOutput13643.moment H :=
  canonical_of_padded canonicalInput13643 canonicalOutput13643 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13644 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput13644 : ExponentCode := normalNode8991

theorem canonicalSound13644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13644.moment H = canonicalOutput13644.moment H :=
  canonical_of_padded canonicalInput13644 canonicalOutput13644 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13645 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 1, 1], ![0, 2, -2, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput13645 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node705⟩

theorem canonicalSound13645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13645.moment H = canonicalOutput13645.moment H :=
  canonical_of_padded canonicalInput13645 canonicalOutput13645 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13646 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![0, 2, -1, 0, -1], ![-1, 1, 1, -2, 1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput13646 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code606

theorem canonicalSound13646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13646.moment H = canonicalOutput13646.moment H :=
  canonical_of_padded canonicalInput13646 canonicalOutput13646 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13647 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![1, 0, -2, 1, 0], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput13647 : ExponentCode := normalNode4498

theorem canonicalSound13647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13647.moment H = canonicalOutput13647.moment H :=
  canonical_of_padded canonicalInput13647 canonicalOutput13647 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput13648 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![1, 0, -1, -1, 1], ![0, 1, -1, -1, 1], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput13648 : ExponentCode := normalNode7719

theorem canonicalSound13648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13648.moment H = canonicalOutput13648.moment H :=
  canonical_of_padded canonicalInput13648 canonicalOutput13648 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13649 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![1, 0, 0, 1, -2], ![-2, 1, 1, -1, 1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput13649 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code946

theorem canonicalSound13649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13649.moment H = canonicalOutput13649.moment H :=
  canonical_of_padded canonicalInput13649 canonicalOutput13649 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13650 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![1, 0, 0, 1, -2], ![-1, 1, -2, 2, 0], ![1, 1, 1, -4, 1]]⟩

def canonicalOutput13650 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code945

theorem canonicalSound13650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13650.moment H = canonicalOutput13650.moment H :=
  canonical_of_padded canonicalInput13650 canonicalOutput13650 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13651 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![1, 0, 0, 1, -2], ![-1, 2, -2, 1, 0], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput13651 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code952

theorem canonicalSound13651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13651.moment H = canonicalOutput13651.moment H :=
  canonical_of_padded canonicalInput13651 canonicalOutput13651 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13652 : ExponentCode := ⟨3, 5, ![![-1, -2, 1, 1, 1], ![1, 1, -2, 1, -1], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput13652 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node710⟩

theorem canonicalSound13652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13652.moment H = canonicalOutput13652.moment H :=
  canonical_of_padded canonicalInput13652 canonicalOutput13652 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13653 : ExponentCode := ⟨4, 5, ![![-1, -2, 1, 1, 1], ![1, 1, 0, 0, -2], ![-1, 2, -2, 1, 0], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput13653 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code946

theorem canonicalSound13653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13653.moment H = canonicalOutput13653.moment H :=
  canonical_of_padded canonicalInput13653 canonicalOutput13653 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13654 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, -1, 0, 2], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13654 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2680⟩

theorem canonicalSound13654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13654.moment H = canonicalOutput13654.moment H :=
  canonical_of_padded canonicalInput13654 canonicalOutput13654 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13655 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput13655 : ExponentCode := normalNode10482

theorem canonicalSound13655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13655.moment H = canonicalOutput13655.moment H :=
  canonical_of_padded canonicalInput13655 canonicalOutput13655 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13656 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, -1, 1, 1], ![0, 3, 0, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13656 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2840⟩

theorem canonicalSound13656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13656.moment H = canonicalOutput13656.moment H :=
  canonical_of_padded canonicalInput13656 canonicalOutput13656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13657 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, -1, 1, 1], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput13657 : ExponentCode := normalNode6841

theorem canonicalSound13657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13657.moment H = canonicalOutput13657.moment H :=
  canonical_of_padded canonicalInput13657 canonicalOutput13657 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13658 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, -1, 1, 1], ![0, 3, 1, -4], ![2, 0, -3, 1]]⟩

def canonicalOutput13658 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1066

theorem canonicalSound13658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13658.moment H = canonicalOutput13658.moment H :=
  canonical_of_padded canonicalInput13658 canonicalOutput13658 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13659 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, -1, 1, 1], ![1, 3, 0, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput13659 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node693⟩

theorem canonicalSound13659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13659.moment H = canonicalOutput13659.moment H :=
  canonical_of_padded canonicalInput13659 canonicalOutput13659 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13660 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, -1, 2, 0], ![0, 1, -2, 1], ![2, 2, -1, -3]]⟩

def canonicalOutput13660 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1261

theorem canonicalSound13660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13660.moment H = canonicalOutput13660.moment H :=
  canonical_of_padded canonicalInput13660 canonicalOutput13660 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13661 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput13661 : ExponentCode := normalNode5098

theorem canonicalSound13661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13661.moment H = canonicalOutput13661.moment H :=
  canonical_of_padded canonicalInput13661 canonicalOutput13661 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13662 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, -1, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput13662 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2237⟩

theorem canonicalSound13662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13662.moment H = canonicalOutput13662.moment H :=
  canonical_of_padded canonicalInput13662 canonicalOutput13662 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13663 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, -1, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput13663 : ExponentCode := normalNode5110

theorem canonicalSound13663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13663.moment H = canonicalOutput13663.moment H :=
  canonical_of_padded canonicalInput13663 canonicalOutput13663 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13664 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, -1, 2, 0], ![0, 2, -3, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput13664 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code404

theorem canonicalSound13664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13664.moment H = canonicalOutput13664.moment H :=
  canonical_of_padded canonicalInput13664 canonicalOutput13664 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13665 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13665 : ExponentCode := normalNode5109

theorem canonicalSound13665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13665.moment H = canonicalOutput13665.moment H :=
  canonical_of_padded canonicalInput13665 canonicalOutput13665 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13666 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13666 : ExponentCode := normalNode3516

theorem canonicalSound13666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13666.moment H = canonicalOutput13666.moment H :=
  canonical_of_padded canonicalInput13666 canonicalOutput13666 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13667 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, -1, 2, 0], ![1, 1, -3, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput13667 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code405

theorem canonicalSound13667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13667.moment H = canonicalOutput13667.moment H :=
  canonical_of_padded canonicalInput13667 canonicalOutput13667 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput13668 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, -1, 2, 0], ![1, 1, -2, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput13668 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node678⟩

theorem canonicalSound13668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13668.moment H = canonicalOutput13668.moment H :=
  canonical_of_padded canonicalInput13668 canonicalOutput13668 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13669 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, -1, 2, 0], ![1, 2, -3, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput13669 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node603⟩

theorem canonicalSound13669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13669.moment H = canonicalOutput13669.moment H :=
  canonical_of_padded canonicalInput13669 canonicalOutput13669 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13670 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput13670 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1728⟩

theorem canonicalSound13670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13670.moment H = canonicalOutput13670.moment H :=
  canonical_of_padded canonicalInput13670 canonicalOutput13670 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13671 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, -1, 2], ![0, 2, 2, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13671 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1725⟩

theorem canonicalSound13671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13671.moment H = canonicalOutput13671.moment H :=
  canonical_of_padded canonicalInput13671 canonicalOutput13671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13672 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, -1, 2], ![0, 3, 1, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13672 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2567⟩

theorem canonicalSound13672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13672.moment H = canonicalOutput13672.moment H :=
  canonical_of_padded canonicalInput13672 canonicalOutput13672 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13673 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, -1, 2], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput13673 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2567⟩

theorem canonicalSound13673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13673.moment H = canonicalOutput13673.moment H :=
  canonical_of_padded canonicalInput13673 canonicalOutput13673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13674 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, 0, 1], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput13674 : ExponentCode := normalNode2380

theorem canonicalSound13674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13674.moment H = canonicalOutput13674.moment H :=
  canonical_of_padded canonicalInput13674 canonicalOutput13674 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13675 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput13675 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1739⟩

theorem canonicalSound13675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13675.moment H = canonicalOutput13675.moment H :=
  canonical_of_padded canonicalInput13675 canonicalOutput13675 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13676 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, 0, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput13676 : ExponentCode := normalNode10206

theorem canonicalSound13676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13676.moment H = canonicalOutput13676.moment H :=
  canonical_of_padded canonicalInput13676 canonicalOutput13676 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13677 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, 1, 0], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13677 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1630⟩

theorem canonicalSound13677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13677.moment H = canonicalOutput13677.moment H :=
  canonical_of_padded canonicalInput13677 canonicalOutput13677 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13678 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 0, 1, 0], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput13678 : ExponentCode := normalNode7838

theorem canonicalSound13678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13678.moment H = canonicalOutput13678.moment H :=
  canonical_of_padded canonicalInput13678 canonicalOutput13678 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput13679 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13679 : ExponentCode := normalNode2568

theorem canonicalSound13679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13679.moment H = canonicalOutput13679.moment H :=
  canonical_of_padded canonicalInput13679 canonicalOutput13679 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13680 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13680 : ExponentCode := normalNode2920

theorem canonicalSound13680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13680.moment H = canonicalOutput13680.moment H :=
  canonical_of_padded canonicalInput13680 canonicalOutput13680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput13681 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13681 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound13681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13681.moment H = canonicalOutput13681.moment H :=
  canonical_of_padded canonicalInput13681 canonicalOutput13681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput13682 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput13682 : ExponentCode := normalNode2557

theorem canonicalSound13682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13682.moment H = canonicalOutput13682.moment H :=
  canonical_of_padded canonicalInput13682 canonicalOutput13682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13683 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput13683 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound13683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13683.moment H = canonicalOutput13683.moment H :=
  canonical_of_padded canonicalInput13683 canonicalOutput13683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput13684 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13684 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩

theorem canonicalSound13684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13684.moment H = canonicalOutput13684.moment H :=
  canonical_of_padded canonicalInput13684 canonicalOutput13684 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput13685 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13685 : ExponentCode := normalNode5045

theorem canonicalSound13685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13685.moment H = canonicalOutput13685.moment H :=
  canonical_of_padded canonicalInput13685 canonicalOutput13685 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput13686 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput13686 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code631

theorem canonicalSound13686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13686.moment H = canonicalOutput13686.moment H :=
  canonical_of_padded canonicalInput13686 canonicalOutput13686 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13687 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![1, -1, -1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput13687 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1144

theorem canonicalSound13687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13687.moment H = canonicalOutput13687.moment H :=
  canonical_of_padded canonicalInput13687 canonicalOutput13687 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13688 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput13688 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node503⟩

theorem canonicalSound13688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13688.moment H = canonicalOutput13688.moment H :=
  canonical_of_padded canonicalInput13688 canonicalOutput13688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13689 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput13689 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound13689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13689.moment H = canonicalOutput13689.moment H :=
  canonical_of_padded canonicalInput13689 canonicalOutput13689 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13690 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput13690 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1056⟩

theorem canonicalSound13690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13690.moment H = canonicalOutput13690.moment H :=
  canonical_of_padded canonicalInput13690 canonicalOutput13690 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13691 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput13691 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩

theorem canonicalSound13691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13691.moment H = canonicalOutput13691.moment H :=
  canonical_of_padded canonicalInput13691 canonicalOutput13691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13692 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13692 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound13692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13692.moment H = canonicalOutput13692.moment H :=
  canonical_of_padded canonicalInput13692 canonicalOutput13692 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput13693 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![1, 2, -1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput13693 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node503⟩

theorem canonicalSound13693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13693.moment H = canonicalOutput13693.moment H :=
  canonical_of_padded canonicalInput13693 canonicalOutput13693 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13694 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![-1, 0, 2, -1], ![1, 3, -2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput13694 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1144

theorem canonicalSound13694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13694.moment H = canonicalOutput13694.moment H :=
  canonical_of_padded canonicalInput13694 canonicalOutput13694 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13695 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput13695 : ExponentCode := normalNode2753

theorem canonicalSound13695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13695.moment H = canonicalOutput13695.moment H :=
  canonical_of_padded canonicalInput13695 canonicalOutput13695 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
