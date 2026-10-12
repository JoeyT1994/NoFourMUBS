import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18688 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 2, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18688 : ExponentCode := normalNode5098

theorem canonicalSound18688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18688.moment H = canonicalOutput18688.moment H :=
  canonical_of_padded canonicalInput18688 canonicalOutput18688 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18689 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, 0, -1, 1], ![0, 1, -1, 1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18689 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2856⟩

theorem canonicalSound18689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18689.moment H = canonicalOutput18689.moment H :=
  canonical_of_padded canonicalInput18689 canonicalOutput18689 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18690 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, 0, 1, -1], ![0, 1, -1, -1, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18690 : ExponentCode := normalNode9381

theorem canonicalSound18690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18690.moment H = canonicalOutput18690.moment H :=
  canonical_of_padded canonicalInput18690 canonicalOutput18690 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18691 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18691 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1840⟩

theorem canonicalSound18691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18691.moment H = canonicalOutput18691.moment H :=
  canonical_of_padded canonicalInput18691 canonicalOutput18691 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18692 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, 0, 2, -2], ![0, 1, -1, -2, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18692 : ExponentCode := normalNode2464

theorem canonicalSound18692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18692.moment H = canonicalOutput18692.moment H :=
  canonical_of_padded canonicalInput18692 canonicalOutput18692 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18693 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput18693 : ExponentCode := normalNode9000

theorem canonicalSound18693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18693.moment H = canonicalOutput18693.moment H :=
  canonical_of_padded canonicalInput18693 canonicalOutput18693 (by decide) (by decide)
    ⟨true, false, canonicalPermutation19, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput18694 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, 0, 2, -2], ![0, 1, -1, 1, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput18694 : ExponentCode := normalNode2464

theorem canonicalSound18694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18694.moment H = canonicalOutput18694.moment H :=
  canonical_of_padded canonicalInput18694 canonicalOutput18694 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18695 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-4, 2, -1, 3], ![5, -1, -1, -3]]⟩

def canonicalOutput18695 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1218

theorem canonicalSound18695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18695.moment H = canonicalOutput18695.moment H :=
  canonical_of_padded canonicalInput18695 canonicalOutput18695 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18696 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-4, 3, -1, 2], ![5, -2, -1, -2]]⟩

def canonicalOutput18696 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1222

theorem canonicalSound18696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18696.moment H = canonicalOutput18696.moment H :=
  canonical_of_padded canonicalInput18696 canonicalOutput18696 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18697 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-4, 3, 0, 1], ![5, -2, -2, -1]]⟩

def canonicalOutput18697 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node205⟩

theorem canonicalSound18697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18697.moment H = canonicalOutput18697.moment H :=
  canonical_of_padded canonicalInput18697 canonicalOutput18697 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18698 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-3, -1, 2, 2], ![4, 2, -4, -2]]⟩

def canonicalOutput18698 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code236

theorem canonicalSound18698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18698.moment H = canonicalOutput18698.moment H :=
  canonical_of_padded canonicalInput18698 canonicalOutput18698 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18699 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-3, 2, 2, -1], ![4, -1, -4, 1]]⟩

def canonicalOutput18699 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node148⟩

theorem canonicalSound18699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18699.moment H = canonicalOutput18699.moment H :=
  canonical_of_padded canonicalInput18699 canonicalOutput18699 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18700 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-3, 3, -1, 1], ![4, -2, -1, -1]]⟩

def canonicalOutput18700 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node228⟩

theorem canonicalSound18700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18700.moment H = canonicalOutput18700.moment H :=
  canonical_of_padded canonicalInput18700 canonicalOutput18700 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18701 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-3, 3, 1, -1], ![4, -2, -3, 1]]⟩

def canonicalOutput18701 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node179⟩

theorem canonicalSound18701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18701.moment H = canonicalOutput18701.moment H :=
  canonical_of_padded canonicalInput18701 canonicalOutput18701 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18702 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-3, 4, 0, -1], ![4, -3, -2, 1]]⟩

def canonicalOutput18702 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node208⟩

theorem canonicalSound18702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18702.moment H = canonicalOutput18702.moment H :=
  canonical_of_padded canonicalInput18702 canonicalOutput18702 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18703 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-2, -2, 2, 2], ![3, 3, -4, -2]]⟩

def canonicalOutput18703 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code237

theorem canonicalSound18703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18703.moment H = canonicalOutput18703.moment H :=
  canonical_of_padded canonicalInput18703 canonicalOutput18703 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18704 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-2, -1, 1, 2], ![3, 2, -3, -2]]⟩

def canonicalOutput18704 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node167⟩

theorem canonicalSound18704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18704.moment H = canonicalOutput18704.moment H :=
  canonical_of_padded canonicalInput18704 canonicalOutput18704 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18705 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-2, -1, 2, 1], ![3, 2, -4, -1]]⟩

def canonicalOutput18705 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node144⟩

theorem canonicalSound18705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18705.moment H = canonicalOutput18705.moment H :=
  canonical_of_padded canonicalInput18705 canonicalOutput18705 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18706 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-2, 2, -3, 3], ![3, -1, 1, -3]]⟩

def canonicalOutput18706 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound18706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18706.moment H = canonicalOutput18706.moment H :=
  canonical_of_padded canonicalInput18706 canonicalOutput18706 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18707 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-2, 2, 2, -2], ![3, -1, -4, 2]]⟩

def canonicalOutput18707 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node152⟩

theorem canonicalSound18707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18707.moment H = canonicalOutput18707.moment H :=
  canonical_of_padded canonicalInput18707 canonicalOutput18707 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18708 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-2, 3, -3, 2], ![3, -2, 1, -2]]⟩

def canonicalOutput18708 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node183⟩

theorem canonicalSound18708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18708.moment H = canonicalOutput18708.moment H :=
  canonical_of_padded canonicalInput18708 canonicalOutput18708 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18709 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-2, 4, 0, -2], ![3, -3, -2, 2]]⟩

def canonicalOutput18709 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node211⟩

theorem canonicalSound18709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18709.moment H = canonicalOutput18709.moment H :=
  canonical_of_padded canonicalInput18709 canonicalOutput18709 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18710 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-1, -3, 0, 4], ![2, 4, -2, -4]]⟩

def canonicalOutput18710 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1042

theorem canonicalSound18710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18710.moment H = canonicalOutput18710.moment H :=
  canonical_of_padded canonicalInput18710 canonicalOutput18710 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18711 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-1, -3, 2, 2], ![2, 4, -4, -2]]⟩

def canonicalOutput18711 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code236

theorem canonicalSound18711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18711.moment H = canonicalOutput18711.moment H :=
  canonical_of_padded canonicalInput18711 canonicalOutput18711 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18712 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-1, -2, -2, 5], ![2, 3, 0, -5]]⟩

def canonicalOutput18712 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1062

theorem canonicalSound18712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18712.moment H = canonicalOutput18712.moment H :=
  canonical_of_padded canonicalInput18712 canonicalOutput18712 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18713 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-1, -2, -1, 4], ![2, 3, -1, -4]]⟩

def canonicalOutput18713 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node219⟩

theorem canonicalSound18713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18713.moment H = canonicalOutput18713.moment H :=
  canonical_of_padded canonicalInput18713 canonicalOutput18713 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18714 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-1, -2, 0, 3], ![2, 3, -2, -3]]⟩

def canonicalOutput18714 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node196⟩

theorem canonicalSound18714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18714.moment H = canonicalOutput18714.moment H :=
  canonical_of_padded canonicalInput18714 canonicalOutput18714 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18715 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-1, -1, -3, 5], ![2, 2, 1, -5]]⟩

def canonicalOutput18715 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code702

theorem canonicalSound18715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18715.moment H = canonicalOutput18715.moment H :=
  canonical_of_padded canonicalInput18715 canonicalOutput18715 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18716 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 1, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput18716 : ExponentCode := normalNode2397

theorem canonicalSound18716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18716.moment H = canonicalOutput18716.moment H :=
  canonical_of_padded canonicalInput18716 canonicalOutput18716 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation171, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18717 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 1, -2, 2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput18717 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1740⟩

theorem canonicalSound18717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18717.moment H = canonicalOutput18717.moment H :=
  canonical_of_padded canonicalInput18717 canonicalOutput18717 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18718 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput18718 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1772⟩

theorem canonicalSound18718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18718.moment H = canonicalOutput18718.moment H :=
  canonical_of_padded canonicalInput18718 canonicalOutput18718 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18719 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![-1, 1, -2, 2], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput18719 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound18719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18719.moment H = canonicalOutput18719.moment H :=
  canonical_of_padded canonicalInput18719 canonicalOutput18719 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18720 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 1, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput18720 : ExponentCode := normalNode4254

theorem canonicalSound18720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18720.moment H = canonicalOutput18720.moment H :=
  canonical_of_padded canonicalInput18720 canonicalOutput18720 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18721 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput18721 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2645⟩

theorem canonicalSound18721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18721.moment H = canonicalOutput18721.moment H :=
  canonical_of_padded canonicalInput18721 canonicalOutput18721 (by decide) (by decide)
    ⟨false, true, canonicalPermutation37, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18722 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput18722 : ExponentCode := normalNode4293

theorem canonicalSound18722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18722.moment H = canonicalOutput18722.moment H :=
  canonical_of_padded canonicalInput18722 canonicalOutput18722 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18723 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput18723 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound18723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18723.moment H = canonicalOutput18723.moment H :=
  canonical_of_padded canonicalInput18723 canonicalOutput18723 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput18724 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-1, 2, -4, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput18724 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node154⟩

theorem canonicalSound18724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18724.moment H = canonicalOutput18724.moment H :=
  canonical_of_padded canonicalInput18724 canonicalOutput18724 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18725 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-1, 2, 2, -3], ![2, -1, -4, 3]]⟩

def canonicalOutput18725 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node154⟩

theorem canonicalSound18725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18725.moment H = canonicalOutput18725.moment H :=
  canonical_of_padded canonicalInput18725 canonicalOutput18725 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18726 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-1, 3, -3, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput18726 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node180⟩

theorem canonicalSound18726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18726.moment H = canonicalOutput18726.moment H :=
  canonical_of_padded canonicalInput18726 canonicalOutput18726 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18727 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 3, 0, -2], ![0, -2, -2, 4], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput18727 : ExponentCode := normalNode8879

theorem canonicalSound18727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18727.moment H = canonicalOutput18727.moment H :=
  canonical_of_padded canonicalInput18727 canonicalOutput18727 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18728 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 3, 0, -2], ![0, -2, -2, 4], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput18728 : ExponentCode := normalNode3260

theorem canonicalSound18728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18728.moment H = canonicalOutput18728.moment H :=
  canonical_of_padded canonicalInput18728 canonicalOutput18728 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18729 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 3, 0, -2], ![0, -2, -1, 3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput18729 : ExponentCode := normalNode5413

theorem canonicalSound18729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18729.moment H = canonicalOutput18729.moment H :=
  canonical_of_padded canonicalInput18729 canonicalOutput18729 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18730 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 3, 0, -2], ![0, -1, -2, 3], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput18730 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1375

theorem canonicalSound18730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18730.moment H = canonicalOutput18730.moment H :=
  canonical_of_padded canonicalInput18730 canonicalOutput18730 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18731 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 3, 0, -2], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput18731 : ExponentCode := normalNode3535

theorem canonicalSound18731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18731.moment H = canonicalOutput18731.moment H :=
  canonical_of_padded canonicalInput18731 canonicalOutput18731 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18732 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![-1, 3, 0, -2], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput18732 : ExponentCode := normalNode5412

theorem canonicalSound18732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18732.moment H = canonicalOutput18732.moment H :=
  canonical_of_padded canonicalInput18732 canonicalOutput18732 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18733 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![-1, 3, 1, -3], ![0, -2, -2, 4], ![2, 0, -1, -1]]⟩

def canonicalOutput18733 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1145

theorem canonicalSound18733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18733.moment H = canonicalOutput18733.moment H :=
  canonical_of_padded canonicalInput18733 canonicalOutput18733 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18734 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![-1, 3, 1, -3], ![0, -1, -2, 3], ![2, -1, -1, 0]]⟩

def canonicalOutput18734 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1187

theorem canonicalSound18734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18734.moment H = canonicalOutput18734.moment H :=
  canonical_of_padded canonicalInput18734 canonicalOutput18734 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18735 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![-1, 3, 1, -3], ![1, -2, -3, 4], ![1, 0, 0, -1]]⟩

def canonicalOutput18735 : ExponentCode := normalNode9723

theorem canonicalSound18735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18735.moment H = canonicalOutput18735.moment H :=
  canonical_of_padded canonicalInput18735 canonicalOutput18735 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18736 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![-1, 3, 1, -3], ![1, -1, -2, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput18736 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1237

theorem canonicalSound18736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18736.moment H = canonicalOutput18736.moment H :=
  canonical_of_padded canonicalInput18736 canonicalOutput18736 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18737 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![-1, 4, 0, -3], ![2, -3, -2, 3]]⟩

def canonicalOutput18737 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩

theorem canonicalSound18737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18737.moment H = canonicalOutput18737.moment H :=
  canonical_of_padded canonicalInput18737 canonicalOutput18737 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18738 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![0, -3, -1, 4], ![1, 4, -1, -4]]⟩

def canonicalOutput18738 : ExponentCode := normalNode5583

theorem canonicalSound18738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18738.moment H = canonicalOutput18738.moment H :=
  canonical_of_padded canonicalInput18738 canonicalOutput18738 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18739 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![0, -3, 0, 3], ![1, 4, -2, -3]]⟩

def canonicalOutput18739 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node195⟩

theorem canonicalSound18739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18739.moment H = canonicalOutput18739.moment H :=
  canonical_of_padded canonicalInput18739 canonicalOutput18739 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18740 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![0, -3, 2, 1], ![1, 4, -4, -1]]⟩

def canonicalOutput18740 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node143⟩

theorem canonicalSound18740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18740.moment H = canonicalOutput18740.moment H :=
  canonical_of_padded canonicalInput18740 canonicalOutput18740 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18741 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![0, -2, -2, 4], ![1, 3, 0, -4]]⟩

def canonicalOutput18741 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node217⟩

theorem canonicalSound18741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18741.moment H = canonicalOutput18741.moment H :=
  canonical_of_padded canonicalInput18741 canonicalOutput18741 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18742 : ExponentCode := ⟨3, 4, ![![-1, -1, 2, 0], ![0, -2, 3, -1], ![1, 3, -5, 1]]⟩

def canonicalOutput18742 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node123⟩

theorem canonicalSound18742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18742.moment H = canonicalOutput18742.moment H :=
  canonical_of_padded canonicalInput18742 canonicalOutput18742 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18743 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, -1, -2, 3], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput18743 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound18743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18743.moment H = canonicalOutput18743.moment H :=
  canonical_of_padded canonicalInput18743 canonicalOutput18743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18744 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput18744 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound18744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18744.moment H = canonicalOutput18744.moment H :=
  canonical_of_padded canonicalInput18744 canonicalOutput18744 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18745 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput18745 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound18745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18745.moment H = canonicalOutput18745.moment H :=
  canonical_of_padded canonicalInput18745 canonicalOutput18745 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18746 : ExponentCode := ⟨5, 4, ![![-1, -1, 2, 0], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput18746 : ExponentCode := normalNode10297

theorem canonicalSound18746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18746.moment H = canonicalOutput18746.moment H :=
  canonical_of_padded canonicalInput18746 canonicalOutput18746 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18747 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput18747 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1006⟩

theorem canonicalSound18747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18747.moment H = canonicalOutput18747.moment H :=
  canonical_of_padded canonicalInput18747 canonicalOutput18747 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18748 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, -1, -1, 2], ![0, 2, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput18748 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound18748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18748.moment H = canonicalOutput18748.moment H :=
  canonical_of_padded canonicalInput18748 canonicalOutput18748 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18749 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput18749 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound18749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18749.moment H = canonicalOutput18749.moment H :=
  canonical_of_padded canonicalInput18749 canonicalOutput18749 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18750 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, -1, -1, 2], ![0, 2, 1, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput18750 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound18750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18750.moment H = canonicalOutput18750.moment H :=
  canonical_of_padded canonicalInput18750 canonicalOutput18750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18751 : ExponentCode := ⟨4, 4, ![![-1, -1, 2, 0], ![0, -1, -1, 2], ![0, 3, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput18751 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound18751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18751.moment H = canonicalOutput18751.moment H :=
  canonical_of_padded canonicalInput18751 canonicalOutput18751 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
