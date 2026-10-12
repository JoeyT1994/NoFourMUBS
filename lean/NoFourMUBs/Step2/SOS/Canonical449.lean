import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28736 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![1, 1, -1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput28736 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound28736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28736.moment H = canonicalOutput28736.moment H :=
  canonical_of_padded canonicalInput28736 canonicalOutput28736 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput28737 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![0, -2, 0, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput28737 : ExponentCode := normalNode9553

theorem canonicalSound28737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28737.moment H = canonicalOutput28737.moment H :=
  canonical_of_padded canonicalInput28737 canonicalOutput28737 (by decide) (by decide)
    ⟨false, true, canonicalPermutation307, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28738 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput28738 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound28738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28738.moment H = canonicalOutput28738.moment H :=
  canonical_of_padded canonicalInput28738 canonicalOutput28738 (by decide) (by decide)
    ⟨false, true, canonicalPermutation347, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28739 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![1, 0, 1, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput28739 : ExponentCode := normalNode2411

theorem canonicalSound28739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28739.moment H = canonicalOutput28739.moment H :=
  canonical_of_padded canonicalInput28739 canonicalOutput28739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation217, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28740 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![1, 1, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput28740 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2070⟩

theorem canonicalSound28740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28740.moment H = canonicalOutput28740.moment H :=
  canonical_of_padded canonicalInput28740 canonicalOutput28740 (by decide) (by decide)
    ⟨false, false, canonicalPermutation286, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28741 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 2, 0, 0], ![2, 0, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput28741 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1701⟩

theorem canonicalSound28741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28741.moment H = canonicalOutput28741.moment H :=
  canonical_of_padded canonicalInput28741 canonicalOutput28741 (by decide) (by decide)
    ⟨false, true, canonicalPermutation328, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput28742 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput28742 : ExponentCode := normalNode10575

theorem canonicalSound28742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28742.moment H = canonicalOutput28742.moment H :=
  canonical_of_padded canonicalInput28742 canonicalOutput28742 (by decide) (by decide)
    ⟨false, false, canonicalPermutation352, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28743 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput28743 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2631⟩

theorem canonicalSound28743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28743.moment H = canonicalOutput28743.moment H :=
  canonical_of_padded canonicalInput28743 canonicalOutput28743 (by decide) (by decide)
    ⟨false, true, canonicalPermutation308, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28744 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, 0, -2, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput28744 : ExponentCode := normalNode9020

theorem canonicalSound28744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28744.moment H = canonicalOutput28744.moment H :=
  canonical_of_padded canonicalInput28744 canonicalOutput28744 (by decide) (by decide)
    ⟨false, false, canonicalPermutation334, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28745 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput28745 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound28745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28745.moment H = canonicalOutput28745.moment H :=
  canonical_of_padded canonicalInput28745 canonicalOutput28745 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28746 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 2, -1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput28746 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1789⟩

theorem canonicalSound28746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28746.moment H = canonicalOutput28746.moment H :=
  canonical_of_padded canonicalInput28746 canonicalOutput28746 (by decide) (by decide)
    ⟨false, true, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28747 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, -1, 2, 0], ![-1, 2, 0, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput28747 : ExponentCode := normalNode2507

theorem canonicalSound28747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28747.moment H = canonicalOutput28747.moment H :=
  canonical_of_padded canonicalInput28747 canonicalOutput28747 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation215, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28748 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput28748 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound28748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28748.moment H = canonicalOutput28748.moment H :=
  canonical_of_padded canonicalInput28748 canonicalOutput28748 (by decide) (by decide)
    ⟨false, true, canonicalPermutation347, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28749 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -1, -1, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput28749 : ExponentCode := normalNode10722

theorem canonicalSound28749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28749.moment H = canonicalOutput28749.moment H :=
  canonical_of_padded canonicalInput28749 canonicalOutput28749 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation207, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28750 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, 0, -1, -1], ![-1, -1, 3, -1]]⟩

def canonicalOutput28750 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2539⟩

theorem canonicalSound28750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28750.moment H = canonicalOutput28750.moment H :=
  canonical_of_padded canonicalInput28750 canonicalOutput28750 (by decide) (by decide)
    ⟨false, false, canonicalPermutation336, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28751 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![2, -3, 0, 1]]⟩

def canonicalOutput28751 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1639⟩

theorem canonicalSound28751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28751.moment H = canonicalOutput28751.moment H :=
  canonical_of_padded canonicalInput28751 canonicalOutput28751 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation216, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28752 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![2, 0, -1, -1], ![-1, -2, 1, 2]]⟩

def canonicalOutput28752 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1774⟩

theorem canonicalSound28752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28752.moment H = canonicalOutput28752.moment H :=
  canonical_of_padded canonicalInput28752 canonicalOutput28752 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation218, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28753 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, 2, -1, 0], ![2, -1, 0, -1], ![-1, -2, 2, 1]]⟩

def canonicalOutput28753 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1818⟩

theorem canonicalSound28753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28753.moment H = canonicalOutput28753.moment H :=
  canonical_of_padded canonicalInput28753 canonicalOutput28753 (by decide) (by decide)
    ⟨false, true, canonicalPermutation225, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput28754 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-1, 2, 0, -1], ![2, -1, -1, 0], ![-1, -2, 2, 1]]⟩

def canonicalOutput28754 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound28754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28754.moment H = canonicalOutput28754.moment H :=
  canonical_of_padded canonicalInput28754 canonicalOutput28754 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput28755 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput28755 : ExponentCode := normalNode2934

theorem canonicalSound28755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28755.moment H = canonicalOutput28755.moment H :=
  canonical_of_padded canonicalInput28755 canonicalOutput28755 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28756 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, -2, 1, 1], ![2, -1, -1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput28756 : ExponentCode := normalNode2397

theorem canonicalSound28756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28756.moment H = canonicalOutput28756.moment H :=
  canonical_of_padded canonicalInput28756 canonicalOutput28756 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28757 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, -1, 0, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput28757 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1842⟩

theorem canonicalSound28757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28757.moment H = canonicalOutput28757.moment H :=
  canonical_of_padded canonicalInput28757 canonicalOutput28757 (by decide) (by decide)
    ⟨false, true, canonicalPermutation346, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28758 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, -2, 0, 0], ![-2, 2, -1, 1]]⟩

def canonicalOutput28758 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1742⟩

theorem canonicalSound28758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28758.moment H = canonicalOutput28758.moment H :=
  canonical_of_padded canonicalInput28758 canonicalOutput28758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28759 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 3, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput28759 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1956⟩

theorem canonicalSound28759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28759.moment H = canonicalOutput28759.moment H :=
  canonical_of_padded canonicalInput28759 canonicalOutput28759 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28760 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, -2, 0, 0], ![-2, -1, 2, 1]]⟩

def canonicalOutput28760 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1844⟩

theorem canonicalSound28760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28760.moment H = canonicalOutput28760.moment H :=
  canonical_of_padded canonicalInput28760 canonicalOutput28760 (by decide) (by decide)
    ⟨false, true, canonicalPermutation225, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput28761 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, -1, 1, -1], ![-2, 2, -1, 1]]⟩

def canonicalOutput28761 : ExponentCode := normalNode2461

theorem canonicalSound28761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28761.moment H = canonicalOutput28761.moment H :=
  canonical_of_padded canonicalInput28761 canonicalOutput28761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation216, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28762 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput28762 : ExponentCode := normalNode7872

theorem canonicalSound28762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28762.moment H = canonicalOutput28762.moment H :=
  canonical_of_padded canonicalInput28762 canonicalOutput28762 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28763 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput28763 : ExponentCode := normalNode2378

theorem canonicalSound28763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28763.moment H = canonicalOutput28763.moment H :=
  canonical_of_padded canonicalInput28763 canonicalOutput28763 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28764 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput28764 : ExponentCode := normalNode2378

theorem canonicalSound28764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28764.moment H = canonicalOutput28764.moment H :=
  canonical_of_padded canonicalInput28764 canonicalOutput28764 (by decide) (by decide)
    ⟨false, true, canonicalPermutation328, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput28765 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput28765 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2190⟩

theorem canonicalSound28765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28765.moment H = canonicalOutput28765.moment H :=
  canonical_of_padded canonicalInput28765 canonicalOutput28765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28766 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-2, -1, 2, 1]]⟩

def canonicalOutput28766 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1790⟩

theorem canonicalSound28766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28766.moment H = canonicalOutput28766.moment H :=
  canonical_of_padded canonicalInput28766 canonicalOutput28766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28767 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2], ![-2, -1, 1, 2]]⟩

def canonicalOutput28767 : ExponentCode := normalNode10646

theorem canonicalSound28767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28767.moment H = canonicalOutput28767.moment H :=
  canonical_of_padded canonicalInput28767 canonicalOutput28767 (by decide) (by decide)
    ⟨false, false, canonicalPermutation203, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28768 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1], ![-2, -1, 1, 2]]⟩

def canonicalOutput28768 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1771⟩

theorem canonicalSound28768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28768.moment H = canonicalOutput28768.moment H :=
  canonical_of_padded canonicalInput28768 canonicalOutput28768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28769 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, 0, -2], ![-2, -1, 0, 3]]⟩

def canonicalOutput28769 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2621⟩

theorem canonicalSound28769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28769.moment H = canonicalOutput28769.moment H :=
  canonical_of_padded canonicalInput28769 canonicalOutput28769 (by decide) (by decide)
    ⟨false, true, canonicalPermutation353, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28770 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, 1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput28770 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1739⟩

theorem canonicalSound28770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28770.moment H = canonicalOutput28770.moment H :=
  canonical_of_padded canonicalInput28770 canonicalOutput28770 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28771 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, -1, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput28771 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2189⟩

theorem canonicalSound28771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28771.moment H = canonicalOutput28771.moment H :=
  canonical_of_padded canonicalInput28771 canonicalOutput28771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation216, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28772 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput28772 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound28772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28772.moment H = canonicalOutput28772.moment H :=
  canonical_of_padded canonicalInput28772 canonicalOutput28772 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28773 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput28773 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1520⟩

theorem canonicalSound28773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28773.moment H = canonicalOutput28773.moment H :=
  canonical_of_padded canonicalInput28773 canonicalOutput28773 (by decide) (by decide)
    ⟨false, false, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28774 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput28774 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1498⟩

theorem canonicalSound28774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28774.moment H = canonicalOutput28774.moment H :=
  canonical_of_padded canonicalInput28774 canonicalOutput28774 (by decide) (by decide)
    ⟨false, false, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28775 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, -3, 2, 0]]⟩

def canonicalOutput28775 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1634⟩

theorem canonicalSound28775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28775.moment H = canonicalOutput28775.moment H :=
  canonical_of_padded canonicalInput28775 canonicalOutput28775 (by decide) (by decide)
    ⟨false, true, canonicalPermutation328, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput28776 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput28776 : ExponentCode := normalNode892

theorem canonicalSound28776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28776.moment H = canonicalOutput28776.moment H :=
  canonical_of_padded canonicalInput28776 canonicalOutput28776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28777 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput28777 : ExponentCode := normalNode10724

theorem canonicalSound28777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28777.moment H = canonicalOutput28777.moment H :=
  canonical_of_padded canonicalInput28777 canonicalOutput28777 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation202, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28778 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0], ![-2, -2, 2, 2]]⟩

def canonicalOutput28778 : ExponentCode := normalNode893

theorem canonicalSound28778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28778.moment H = canonicalOutput28778.moment H :=
  canonical_of_padded canonicalInput28778 canonicalOutput28778 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28779 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 1, -2, 0], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput28779 : ExponentCode := normalNode2706

theorem canonicalSound28779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28779.moment H = canonicalOutput28779.moment H :=
  canonical_of_padded canonicalInput28779 canonicalOutput28779 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28780 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput28780 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1804⟩

theorem canonicalSound28780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28780.moment H = canonicalOutput28780.moment H :=
  canonical_of_padded canonicalInput28780 canonicalOutput28780 (by decide) (by decide)
    ⟨false, true, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28781 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput28781 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2633⟩

theorem canonicalSound28781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28781.moment H = canonicalOutput28781.moment H :=
  canonical_of_padded canonicalInput28781 canonicalOutput28781 (by decide) (by decide)
    ⟨false, true, canonicalPermutation223, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28782 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput28782 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2085⟩

theorem canonicalSound28782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28782.moment H = canonicalOutput28782.moment H :=
  canonical_of_padded canonicalInput28782 canonicalOutput28782 (by decide) (by decide)
    ⟨false, false, canonicalPermutation354, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28783 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput28783 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1784⟩

theorem canonicalSound28783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28783.moment H = canonicalOutput28783.moment H :=
  canonical_of_padded canonicalInput28783 canonicalOutput28783 (by decide) (by decide)
    ⟨false, false, canonicalPermutation237, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput28784 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput28784 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1784⟩

theorem canonicalSound28784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28784.moment H = canonicalOutput28784.moment H :=
  canonical_of_padded canonicalInput28784 canonicalOutput28784 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation217, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28785 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput28785 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2625⟩

theorem canonicalSound28785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28785.moment H = canonicalOutput28785.moment H :=
  canonical_of_padded canonicalInput28785 canonicalOutput28785 (by decide) (by decide)
    ⟨false, true, canonicalPermutation222, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28786 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput28786 : ExponentCode := normalNode9326

theorem canonicalSound28786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28786.moment H = canonicalOutput28786.moment H :=
  canonical_of_padded canonicalInput28786 canonicalOutput28786 (by decide) (by decide)
    ⟨false, false, canonicalPermutation226, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28787 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, -1, 1, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput28787 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2512⟩

theorem canonicalSound28787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28787.moment H = canonicalOutput28787.moment H :=
  canonical_of_padded canonicalInput28787 canonicalOutput28787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput28788 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 1, -1, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput28788 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1826⟩

theorem canonicalSound28788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28788.moment H = canonicalOutput28788.moment H :=
  canonical_of_padded canonicalInput28788 canonicalOutput28788 (by decide) (by decide)
    ⟨false, false, canonicalPermutation230, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28789 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![0, -1, -1, 2], ![1, 1, 0, -2], ![-2, 1, 2, -1]]⟩

def canonicalOutput28789 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound28789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28789.moment H = canonicalOutput28789.moment H :=
  canonical_of_padded canonicalInput28789 canonicalOutput28789 (by decide) (by decide)
    ⟨false, true, canonicalPermutation225, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28790 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, 1, 0, -2], ![-2, 1, -1, 2]]⟩

def canonicalOutput28790 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1741⟩

theorem canonicalSound28790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28790.moment H = canonicalOutput28790.moment H :=
  canonical_of_padded canonicalInput28790 canonicalOutput28790 (by decide) (by decide)
    ⟨false, false, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28791 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![0, 2, -1, -1], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput28791 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound28791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28791.moment H = canonicalOutput28791.moment H :=
  canonical_of_padded canonicalInput28791 canonicalOutput28791 (by decide) (by decide)
    ⟨false, false, canonicalPermutation309, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28792 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![0, 3, -1, -2]]⟩

def canonicalOutput28792 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩

theorem canonicalSound28792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28792.moment H = canonicalOutput28792.moment H :=
  canonical_of_padded canonicalInput28792 canonicalOutput28792 (by decide) (by decide)
    ⟨false, false, canonicalPermutation237, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput28793 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput28793 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1716⟩

theorem canonicalSound28793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28793.moment H = canonicalOutput28793.moment H :=
  canonical_of_padded canonicalInput28793 canonicalOutput28793 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation219, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28794 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![-1, 1, 2, -2]]⟩

def canonicalOutput28794 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1823⟩

theorem canonicalSound28794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28794.moment H = canonicalOutput28794.moment H :=
  canonical_of_padded canonicalInput28794 canonicalOutput28794 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation219, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput28795 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput28795 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2848⟩

theorem canonicalSound28795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28795.moment H = canonicalOutput28795.moment H :=
  canonical_of_padded canonicalInput28795 canonicalOutput28795 (by decide) (by decide)
    ⟨false, false, canonicalPermutation355, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28796 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 3, 0, -2]]⟩

def canonicalOutput28796 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1718⟩

theorem canonicalSound28796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28796.moment H = canonicalOutput28796.moment H :=
  canonical_of_padded canonicalInput28796 canonicalOutput28796 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation220, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput28797 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 2, 1, -3]]⟩

def canonicalOutput28797 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2416⟩

theorem canonicalSound28797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28797.moment H = canonicalOutput28797.moment H :=
  canonical_of_padded canonicalInput28797 canonicalOutput28797 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation220, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput28798 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 3, -1, -1]]⟩

def canonicalOutput28798 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1768⟩

theorem canonicalSound28798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28798.moment H = canonicalOutput28798.moment H :=
  canonical_of_padded canonicalInput28798 canonicalOutput28798 (by decide) (by decide)
    ⟨false, true, canonicalPermutation356, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput28799 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-2, 2, -1, 1]]⟩

def canonicalOutput28799 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound28799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28799.moment H = canonicalOutput28799.moment H :=
  canonical_of_padded canonicalInput28799 canonicalOutput28799 (by decide) (by decide)
    ⟨false, true, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
