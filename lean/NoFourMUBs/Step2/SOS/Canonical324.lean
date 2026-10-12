import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20736 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![1, 2, 2, -5]]⟩

def canonicalOutput20736 : ExponentCode := normalNode1071

theorem canonicalSound20736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20736.moment H = canonicalOutput20736.moment H :=
  canonical_of_padded canonicalInput20736 canonicalOutput20736 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20737 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 2, -1], ![1, 2, 1, -4]]⟩

def canonicalOutput20737 : ExponentCode := normalNode1364

theorem canonicalSound20737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20737.moment H = canonicalOutput20737.moment H :=
  canonical_of_padded canonicalInput20737 canonicalOutput20737 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20738 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -2, 1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput20738 : ExponentCode := normalNode1023

theorem canonicalSound20738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20738.moment H = canonicalOutput20738.moment H :=
  canonical_of_padded canonicalInput20738 canonicalOutput20738 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20739 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput20739 : ExponentCode := normalNode5277

theorem canonicalSound20739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20739.moment H = canonicalOutput20739.moment H :=
  canonical_of_padded canonicalInput20739 canonicalOutput20739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20740 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![0, 2, 3, -5]]⟩

def canonicalOutput20740 : ExponentCode := normalNode3088

theorem canonicalSound20740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20740.moment H = canonicalOutput20740.moment H :=
  canonical_of_padded canonicalInput20740 canonicalOutput20740 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20741 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![1, 2, 2, -5]]⟩

def canonicalOutput20741 : ExponentCode := normalNode1019

theorem canonicalSound20741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20741.moment H = canonicalOutput20741.moment H :=
  canonical_of_padded canonicalInput20741 canonicalOutput20741 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20742 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -2, 0, 1], ![0, 2, 3, -5]]⟩

def canonicalOutput20742 : ExponentCode := normalNode3054

theorem canonicalSound20742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20742.moment H = canonicalOutput20742.moment H :=
  canonical_of_padded canonicalInput20742 canonicalOutput20742 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20743 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -2, 0, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput20743 : ExponentCode := normalNode3048

theorem canonicalSound20743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20743.moment H = canonicalOutput20743.moment H :=
  canonical_of_padded canonicalInput20743 canonicalOutput20743 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20744 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput20744 : ExponentCode := normalNode5835

theorem canonicalSound20744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20744.moment H = canonicalOutput20744.moment H :=
  canonical_of_padded canonicalInput20744 canonicalOutput20744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20745 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -2, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput20745 : ExponentCode := normalNode5043

theorem canonicalSound20745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20745.moment H = canonicalOutput20745.moment H :=
  canonical_of_padded canonicalInput20745 canonicalOutput20745 (by decide) (by decide)
    ⟨false, true, canonicalPermutation129, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20746 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput20746 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2811⟩

theorem canonicalSound20746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20746.moment H = canonicalOutput20746.moment H :=
  canonical_of_padded canonicalInput20746 canonicalOutput20746 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20747 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput20747 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2817⟩

theorem canonicalSound20747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20747.moment H = canonicalOutput20747.moment H :=
  canonical_of_padded canonicalInput20747 canonicalOutput20747 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20748 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput20748 : ExponentCode := normalNode3825

theorem canonicalSound20748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20748.moment H = canonicalOutput20748.moment H :=
  canonical_of_padded canonicalInput20748 canonicalOutput20748 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20749 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -3, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput20749 : ExponentCode := normalNode3192

theorem canonicalSound20749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20749.moment H = canonicalOutput20749.moment H :=
  canonical_of_padded canonicalInput20749 canonicalOutput20749 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20750 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput20750 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2621⟩

theorem canonicalSound20750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20750.moment H = canonicalOutput20750.moment H :=
  canonical_of_padded canonicalInput20750 canonicalOutput20750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20751 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput20751 : ExponentCode := normalNode10646

theorem canonicalSound20751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20751.moment H = canonicalOutput20751.moment H :=
  canonical_of_padded canonicalInput20751 canonicalOutput20751 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20752 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput20752 : ExponentCode := normalNode6746

theorem canonicalSound20752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20752.moment H = canonicalOutput20752.moment H :=
  canonical_of_padded canonicalInput20752 canonicalOutput20752 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20753 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput20753 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2425⟩

theorem canonicalSound20753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20753.moment H = canonicalOutput20753.moment H :=
  canonical_of_padded canonicalInput20753 canonicalOutput20753 (by decide) (by decide)
    ⟨false, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20754 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput20754 : ExponentCode := normalNode3477

theorem canonicalSound20754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20754.moment H = canonicalOutput20754.moment H :=
  canonical_of_padded canonicalInput20754 canonicalOutput20754 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20755 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput20755 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound20755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20755.moment H = canonicalOutput20755.moment H :=
  canonical_of_padded canonicalInput20755 canonicalOutput20755 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20756 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, -1, 2], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 2, -3, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput20756 : ExponentCode := normalNode3191

theorem canonicalSound20756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20756.moment H = canonicalOutput20756.moment H :=
  canonical_of_padded canonicalInput20756 canonicalOutput20756 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20757 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -3, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput20757 : ExponentCode := normalNode5776

theorem canonicalSound20757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20757.moment H = canonicalOutput20757.moment H :=
  canonical_of_padded canonicalInput20757 canonicalOutput20757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20758 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, 1, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput20758 : ExponentCode := normalNode4819

theorem canonicalSound20758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20758.moment H = canonicalOutput20758.moment H :=
  canonical_of_padded canonicalInput20758 canonicalOutput20758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20759 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 3, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput20759 : ExponentCode := normalNode5773

theorem canonicalSound20759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20759.moment H = canonicalOutput20759.moment H :=
  canonical_of_padded canonicalInput20759 canonicalOutput20759 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20760 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput20760 : ExponentCode := normalNode7302

theorem canonicalSound20760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20760.moment H = canonicalOutput20760.moment H :=
  canonical_of_padded canonicalInput20760 canonicalOutput20760 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20761 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput20761 : ExponentCode := normalNode9789

theorem canonicalSound20761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20761.moment H = canonicalOutput20761.moment H :=
  canonical_of_padded canonicalInput20761 canonicalOutput20761 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20762 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 0, 4, -3], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput20762 : ExponentCode := normalNode9907

theorem canonicalSound20762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20762.moment H = canonicalOutput20762.moment H :=
  canonical_of_padded canonicalInput20762 canonicalOutput20762 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20763 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![-1, 1, -3, 3], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput20763 : ExponentCode := normalNode9748

theorem canonicalSound20763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20763.moment H = canonicalOutput20763.moment H :=
  canonical_of_padded canonicalInput20763 canonicalOutput20763 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20764 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![-1, 1, -3, 3], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput20764 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1363⟩

theorem canonicalSound20764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20764.moment H = canonicalOutput20764.moment H :=
  canonical_of_padded canonicalInput20764 canonicalOutput20764 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20765 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![-1, 1, -3, 3], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput20765 : ExponentCode := normalNode10996

theorem canonicalSound20765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20765.moment H = canonicalOutput20765.moment H :=
  canonical_of_padded canonicalInput20765 canonicalOutput20765 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput20766 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 1, -2, 2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput20766 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2821⟩

theorem canonicalSound20766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20766.moment H = canonicalOutput20766.moment H :=
  canonical_of_padded canonicalInput20766 canonicalOutput20766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20767 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![-1, 1, -2, 2], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput20767 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩

theorem canonicalSound20767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20767.moment H = canonicalOutput20767.moment H :=
  canonical_of_padded canonicalInput20767 canonicalOutput20767 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20768 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![-1, 1, -2, 2], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput20768 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound20768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20768.moment H = canonicalOutput20768.moment H :=
  canonical_of_padded canonicalInput20768 canonicalOutput20768 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20769 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![-1, 1, -2, 2], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput20769 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1362⟩

theorem canonicalSound20769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20769.moment H = canonicalOutput20769.moment H :=
  canonical_of_padded canonicalInput20769 canonicalOutput20769 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20770 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![-1, 1, -2, 2], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput20770 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1335⟩

theorem canonicalSound20770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20770.moment H = canonicalOutput20770.moment H :=
  canonical_of_padded canonicalInput20770 canonicalOutput20770 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput20771 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 1, -1, 1], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput20771 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1683⟩

theorem canonicalSound20771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20771.moment H = canonicalOutput20771.moment H :=
  canonical_of_padded canonicalInput20771 canonicalOutput20771 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20772 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![-1, 1, -1, 1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput20772 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound20772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20772.moment H = canonicalOutput20772.moment H :=
  canonical_of_padded canonicalInput20772 canonicalOutput20772 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20773 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput20773 : ExponentCode := normalNode9799

theorem canonicalSound20773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20773.moment H = canonicalOutput20773.moment H :=
  canonical_of_padded canonicalInput20773 canonicalOutput20773 (by decide) (by decide)
    ⟨false, true, canonicalPermutation137, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20774 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput20774 : ExponentCode := normalNode9627

theorem canonicalSound20774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20774.moment H = canonicalOutput20774.moment H :=
  canonical_of_padded canonicalInput20774 canonicalOutput20774 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20775 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 1, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput20775 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound20775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20775.moment H = canonicalOutput20775.moment H :=
  canonical_of_padded canonicalInput20775 canonicalOutput20775 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20776 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput20776 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound20776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20776.moment H = canonicalOutput20776.moment H :=
  canonical_of_padded canonicalInput20776 canonicalOutput20776 (by decide) (by decide)
    ⟨false, true, canonicalPermutation78, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput20777 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput20777 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1790⟩

theorem canonicalSound20777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20777.moment H = canonicalOutput20777.moment H :=
  canonical_of_padded canonicalInput20777 canonicalOutput20777 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput20778 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput20778 : ExponentCode := normalNode2367

theorem canonicalSound20778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20778.moment H = canonicalOutput20778.moment H :=
  canonical_of_padded canonicalInput20778 canonicalOutput20778 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput20779 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![0, -4, 4, 0], ![1, 4, -4, -1]]⟩

def canonicalOutput20779 : ExponentCode := normalNode10777

theorem canonicalSound20779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20779.moment H = canonicalOutput20779.moment H :=
  canonical_of_padded canonicalInput20779 canonicalOutput20779 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20780 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -3, 1, 2], ![0, 1, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput20780 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node902⟩

theorem canonicalSound20780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20780.moment H = canonicalOutput20780.moment H :=
  canonical_of_padded canonicalInput20780 canonicalOutput20780 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20781 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -3, 1, 2], ![0, 1, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput20781 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1286⟩

theorem canonicalSound20781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20781.moment H = canonicalOutput20781.moment H :=
  canonical_of_padded canonicalInput20781 canonicalOutput20781 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20782 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -3, 1, 2], ![0, 2, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput20782 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node951⟩

theorem canonicalSound20782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20782.moment H = canonicalOutput20782.moment H :=
  canonical_of_padded canonicalInput20782 canonicalOutput20782 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20783 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -3, 1, 2], ![0, 2, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput20783 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound20783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20783.moment H = canonicalOutput20783.moment H :=
  canonical_of_padded canonicalInput20783 canonicalOutput20783 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20784 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -3, 1, 2], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput20784 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound20784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20784.moment H = canonicalOutput20784.moment H :=
  canonical_of_padded canonicalInput20784 canonicalOutput20784 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20785 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -3, 2, 1], ![0, 1, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput20785 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound20785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20785.moment H = canonicalOutput20785.moment H :=
  canonical_of_padded canonicalInput20785 canonicalOutput20785 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20786 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -3, 2, 1], ![0, 3, -3, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput20786 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1355⟩

theorem canonicalSound20786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20786.moment H = canonicalOutput20786.moment H :=
  canonical_of_padded canonicalInput20786 canonicalOutput20786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput20787 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -3, 3, 0], ![0, 1, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput20787 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound20787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20787.moment H = canonicalOutput20787.moment H :=
  canonical_of_padded canonicalInput20787 canonicalOutput20787 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20788 : ExponentCode := ⟨3, 4, ![![-1, 0, 0, 1], ![0, -3, 5, -2], ![1, 3, -5, 1]]⟩

def canonicalOutput20788 : ExponentCode := normalNode9524

theorem canonicalSound20788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20788.moment H = canonicalOutput20788.moment H :=
  canonical_of_padded canonicalInput20788 canonicalOutput20788 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20789 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -2, 0, 2], ![0, 3, -2, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput20789 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node843⟩

theorem canonicalSound20789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20789.moment H = canonicalOutput20789.moment H :=
  canonical_of_padded canonicalInput20789 canonicalOutput20789 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20790 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -2, 1, 1], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput20790 : ExponentCode := normalNode4379

theorem canonicalSound20790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20790.moment H = canonicalOutput20790.moment H :=
  canonical_of_padded canonicalInput20790 canonicalOutput20790 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation206, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20791 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -2, 1, 1], ![0, 1, -3, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput20791 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node902⟩

theorem canonicalSound20791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20791.moment H = canonicalOutput20791.moment H :=
  canonical_of_padded canonicalInput20791 canonicalOutput20791 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20792 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![-1, 1, 2, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput20792 : ExponentCode := normalNode4381

theorem canonicalSound20792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20792.moment H = canonicalOutput20792.moment H :=
  canonical_of_padded canonicalInput20792 canonicalOutput20792 (by decide) (by decide)
    ⟨false, false, canonicalPermutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20793 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![0, 0, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput20793 : ExponentCode := normalNode10249

theorem canonicalSound20793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20793.moment H = canonicalOutput20793.moment H :=
  canonical_of_padded canonicalInput20793 canonicalOutput20793 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation388, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20794 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![0, 0, 2, -2]]⟩

def canonicalOutput20794 : ExponentCode := normalNode10250

theorem canonicalSound20794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20794.moment H = canonicalOutput20794.moment H :=
  canonical_of_padded canonicalInput20794 canonicalOutput20794 (by decide) (by decide)
    ⟨false, true, canonicalPermutation129, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20795 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput20795 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node945⟩

theorem canonicalSound20795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20795.moment H = canonicalOutput20795.moment H :=
  canonical_of_padded canonicalInput20795 canonicalOutput20795 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20796 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput20796 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node952⟩

theorem canonicalSound20796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20796.moment H = canonicalOutput20796.moment H :=
  canonical_of_padded canonicalInput20796 canonicalOutput20796 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20797 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -2, 1, 1], ![0, 2, -3, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput20797 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node951⟩

theorem canonicalSound20797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20797.moment H = canonicalOutput20797.moment H :=
  canonical_of_padded canonicalInput20797 canonicalOutput20797 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20798 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -2, 2, 0], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput20798 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node951⟩

theorem canonicalSound20798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20798.moment H = canonicalOutput20798.moment H :=
  canonical_of_padded canonicalInput20798 canonicalOutput20798 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20799 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, -2, 3, -1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput20799 : ExponentCode := normalNode10527

theorem canonicalSound20799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20799.moment H = canonicalOutput20799.moment H :=
  canonical_of_padded canonicalInput20799 canonicalOutput20799 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
