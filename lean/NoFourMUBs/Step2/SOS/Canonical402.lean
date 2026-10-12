import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25728 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, -1, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput25728 : ExponentCode := normalNode6301

theorem canonicalSound25728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25728.moment H = canonicalOutput25728.moment H :=
  canonical_of_padded canonicalInput25728 canonicalOutput25728 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25729 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput25729 : ExponentCode := normalNode7460

theorem canonicalSound25729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25729.moment H = canonicalOutput25729.moment H :=
  canonical_of_padded canonicalInput25729 canonicalOutput25729 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25730 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 0, -1, 3], ![2, 1, 2, -5]]⟩

def canonicalOutput25730 : ExponentCode := normalNode1017

theorem canonicalSound25730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25730.moment H = canonicalOutput25730.moment H :=
  canonical_of_padded canonicalInput25730 canonicalOutput25730 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25731 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 1, -1, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput25731 : ExponentCode := normalNode3204

theorem canonicalSound25731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25731.moment H = canonicalOutput25731.moment H :=
  canonical_of_padded canonicalInput25731 canonicalOutput25731 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25732 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-2, 2, -1, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput25732 : ExponentCode := normalNode495

theorem canonicalSound25732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25732.moment H = canonicalOutput25732.moment H :=
  canonical_of_padded canonicalInput25732 canonicalOutput25732 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25733 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput25733 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3350⟩

theorem canonicalSound25733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25733.moment H = canonicalOutput25733.moment H :=
  canonical_of_padded canonicalInput25733 canonicalOutput25733 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25734 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-2, 1, -2, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput25734 : ExponentCode := normalNode3169

theorem canonicalSound25734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25734.moment H = canonicalOutput25734.moment H :=
  canonical_of_padded canonicalInput25734 canonicalOutput25734 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25735 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, -2, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput25735 : ExponentCode := normalNode9890

theorem canonicalSound25735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25735.moment H = canonicalOutput25735.moment H :=
  canonical_of_padded canonicalInput25735 canonicalOutput25735 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25736 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 2, 2, -5]]⟩

def canonicalOutput25736 : ExponentCode := normalNode1024

theorem canonicalSound25736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25736.moment H = canonicalOutput25736.moment H :=
  canonical_of_padded canonicalInput25736 canonicalOutput25736 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation388, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25737 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput25737 : ExponentCode := normalNode5033

theorem canonicalSound25737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25737.moment H = canonicalOutput25737.moment H :=
  canonical_of_padded canonicalInput25737 canonicalOutput25737 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25738 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput25738 : ExponentCode := normalNode10262

theorem canonicalSound25738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25738.moment H = canonicalOutput25738.moment H :=
  canonical_of_padded canonicalInput25738 canonicalOutput25738 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25739 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25739 : ExponentCode := normalNode10660

theorem canonicalSound25739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25739.moment H = canonicalOutput25739.moment H :=
  canonical_of_padded canonicalInput25739 canonicalOutput25739 (by decide) (by decide)
    ⟨false, true, canonicalPermutation118, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25740 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![0, 2, -4, 2]]⟩

def canonicalOutput25740 : ExponentCode := normalNode9881

theorem canonicalSound25740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25740.moment H = canonicalOutput25740.moment H :=
  canonical_of_padded canonicalInput25740 canonicalOutput25740 (by decide) (by decide)
    ⟨false, false, canonicalPermutation313, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25741 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput25741 : ExponentCode := normalNode10732

theorem canonicalSound25741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25741.moment H = canonicalOutput25741.moment H :=
  canonical_of_padded canonicalInput25741 canonicalOutput25741 (by decide) (by decide)
    ⟨false, true, canonicalPermutation314, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25742 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput25742 : ExponentCode := normalNode3855

theorem canonicalSound25742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25742.moment H = canonicalOutput25742.moment H :=
  canonical_of_padded canonicalInput25742 canonicalOutput25742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25743 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![-2, 1, 0, 1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput25743 : ExponentCode := normalNode5313

theorem canonicalSound25743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25743.moment H = canonicalOutput25743.moment H :=
  canonical_of_padded canonicalInput25743 canonicalOutput25743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25744 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![-2, 1, 0, 1], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput25744 : ExponentCode := normalNode5314

theorem canonicalSound25744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25744.moment H = canonicalOutput25744.moment H :=
  canonical_of_padded canonicalInput25744 canonicalOutput25744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25745 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![-1, 0, -2, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput25745 : ExponentCode := normalNode1345

theorem canonicalSound25745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25745.moment H = canonicalOutput25745.moment H :=
  canonical_of_padded canonicalInput25745 canonicalOutput25745 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25746 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, -1, 0, 1], ![1, 1, 1, -3], ![-1, 2, -3, 2]]⟩

def canonicalOutput25746 : ExponentCode := normalNode6223

theorem canonicalSound25746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25746.moment H = canonicalOutput25746.moment H :=
  canonical_of_padded canonicalInput25746 canonicalOutput25746 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25747 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, -1, 1, 0], ![-2, 1, -1, 2], ![2, 2, -2, -2]]⟩

def canonicalOutput25747 : ExponentCode := normalNode870

theorem canonicalSound25747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25747.moment H = canonicalOutput25747.moment H :=
  canonical_of_padded canonicalInput25747 canonicalOutput25747 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25748 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, -1, 3], ![2, 2, -2, -2]]⟩

def canonicalOutput25748 : ExponentCode := normalNode829

theorem canonicalSound25748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25748.moment H = canonicalOutput25748.moment H :=
  canonical_of_padded canonicalInput25748 canonicalOutput25748 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25749 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 1, -1, 2], ![2, 1, -2, -1]]⟩

def canonicalOutput25749 : ExponentCode := normalNode2727

theorem canonicalSound25749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25749.moment H = canonicalOutput25749.moment H :=
  canonical_of_padded canonicalInput25749 canonicalOutput25749 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25750 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 0, -2, 4], ![2, 1, 1, -4]]⟩

def canonicalOutput25750 : ExponentCode := normalNode1240

theorem canonicalSound25750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25750.moment H = canonicalOutput25750.moment H :=
  canonical_of_padded canonicalInput25750 canonicalOutput25750 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25751 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, -2, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput25751 : ExponentCode := normalNode7881

theorem canonicalSound25751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25751.moment H = canonicalOutput25751.moment H :=
  canonical_of_padded canonicalInput25751 canonicalOutput25751 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25752 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 1, 1, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput25752 : ExponentCode := normalNode6231

theorem canonicalSound25752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25752.moment H = canonicalOutput25752.moment H :=
  canonical_of_padded canonicalInput25752 canonicalOutput25752 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25753 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 1, -3], ![-2, 2, -3, 3]]⟩

def canonicalOutput25753 : ExponentCode := normalNode267

theorem canonicalSound25753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25753.moment H = canonicalOutput25753.moment H :=
  canonical_of_padded canonicalInput25753 canonicalOutput25753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25754 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![-1, 0, -2, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput25754 : ExponentCode := normalNode3213

theorem canonicalSound25754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25754.moment H = canonicalOutput25754.moment H :=
  canonical_of_padded canonicalInput25754 canonicalOutput25754 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25755 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, -1, 0, 1], ![-1, 1, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput25755 : ExponentCode := normalNode6434

theorem canonicalSound25755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25755.moment H = canonicalOutput25755.moment H :=
  canonical_of_padded canonicalInput25755 canonicalOutput25755 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25756 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25756 : ExponentCode := normalNode9688

theorem canonicalSound25756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25756.moment H = canonicalOutput25756.moment H :=
  canonical_of_padded canonicalInput25756 canonicalOutput25756 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25757 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, -2, 4], ![2, 0, 2, -4]]⟩

def canonicalOutput25757 : ExponentCode := normalNode3162

theorem canonicalSound25757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25757.moment H = canonicalOutput25757.moment H :=
  canonical_of_padded canonicalInput25757 canonicalOutput25757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25758 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -2, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput25758 : ExponentCode := normalNode9877

theorem canonicalSound25758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25758.moment H = canonicalOutput25758.moment H :=
  canonical_of_padded canonicalInput25758 canonicalOutput25758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25759 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 1, -1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput25759 : ExponentCode := normalNode2442

theorem canonicalSound25759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25759.moment H = canonicalOutput25759.moment H :=
  canonical_of_padded canonicalInput25759 canonicalOutput25759 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25760 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput25760 : ExponentCode := normalNode492

theorem canonicalSound25760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25760.moment H = canonicalOutput25760.moment H :=
  canonical_of_padded canonicalInput25760 canonicalOutput25760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25761 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput25761 : ExponentCode := normalNode6936

theorem canonicalSound25761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25761.moment H = canonicalOutput25761.moment H :=
  canonical_of_padded canonicalInput25761 canonicalOutput25761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25762 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 1, -2, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput25762 : ExponentCode := normalNode4822

theorem canonicalSound25762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25762.moment H = canonicalOutput25762.moment H :=
  canonical_of_padded canonicalInput25762 canonicalOutput25762 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25763 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput25763 : ExponentCode := normalNode5041

theorem canonicalSound25763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25763.moment H = canonicalOutput25763.moment H :=
  canonical_of_padded canonicalInput25763 canonicalOutput25763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25764 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput25764 : ExponentCode := normalNode10610

theorem canonicalSound25764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25764.moment H = canonicalOutput25764.moment H :=
  canonical_of_padded canonicalInput25764 canonicalOutput25764 (by decide) (by decide)
    ⟨false, true, canonicalPermutation240, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25765 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![-1, 0, 3, -2], ![2, 0, -4, 2]]⟩

def canonicalOutput25765 : ExponentCode := normalNode3213

theorem canonicalSound25765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25765.moment H = canonicalOutput25765.moment H :=
  canonical_of_padded canonicalInput25765 canonicalOutput25765 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25766 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, -1, 1], ![-1, 0, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput25766 : ExponentCode := normalNode7379

theorem canonicalSound25766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25766.moment H = canonicalOutput25766.moment H :=
  canonical_of_padded canonicalInput25766 canonicalOutput25766 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25767 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25767 : ExponentCode := normalNode9913

theorem canonicalSound25767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25767.moment H = canonicalOutput25767.moment H :=
  canonical_of_padded canonicalInput25767 canonicalOutput25767 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25768 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, 0, 0], ![-1, 0, 3, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput25768 : ExponentCode := normalNode7403

theorem canonicalSound25768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25768.moment H = canonicalOutput25768.moment H :=
  canonical_of_padded canonicalInput25768 canonicalOutput25768 (by decide) (by decide)
    ⟨false, true, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25769 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 0, 2, -3], ![-1, 1, -3, 3]]⟩

def canonicalOutput25769 : ExponentCode := normalNode9906

theorem canonicalSound25769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25769.moment H = canonicalOutput25769.moment H :=
  canonical_of_padded canonicalInput25769 canonicalOutput25769 (by decide) (by decide)
    ⟨false, true, canonicalPermutation118, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25770 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 3, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput25770 : ExponentCode := normalNode3181

theorem canonicalSound25770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25770.moment H = canonicalOutput25770.moment H :=
  canonical_of_padded canonicalInput25770 canonicalOutput25770 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25771 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![1, 0, -4, 3]]⟩

def canonicalOutput25771 : ExponentCode := normalNode9680

theorem canonicalSound25771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25771.moment H = canonicalOutput25771.moment H :=
  canonical_of_padded canonicalInput25771 canonicalOutput25771 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25772 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, -2, 4], ![1, 1, 2, -4]]⟩

def canonicalOutput25772 : ExponentCode := normalNode3166

theorem canonicalSound25772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25772.moment H = canonicalOutput25772.moment H :=
  canonical_of_padded canonicalInput25772 canonicalOutput25772 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25773 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput25773 : ExponentCode := normalNode9880

theorem canonicalSound25773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25773.moment H = canonicalOutput25773.moment H :=
  canonical_of_padded canonicalInput25773 canonicalOutput25773 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25774 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 0, -3, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput25774 : ExponentCode := normalNode10626

theorem canonicalSound25774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25774.moment H = canonicalOutput25774.moment H :=
  canonical_of_padded canonicalInput25774 canonicalOutput25774 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation247, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25775 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -3, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput25775 : ExponentCode := normalNode4823

theorem canonicalSound25775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25775.moment H = canonicalOutput25775.moment H :=
  canonical_of_padded canonicalInput25775 canonicalOutput25775 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25776 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, 3, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput25776 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3124⟩

theorem canonicalSound25776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25776.moment H = canonicalOutput25776.moment H :=
  canonical_of_padded canonicalInput25776 canonicalOutput25776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25777 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![0, 1, -4, 3]]⟩

def canonicalOutput25777 : ExponentCode := normalNode9879

theorem canonicalSound25777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25777.moment H = canonicalOutput25777.moment H :=
  canonical_of_padded canonicalInput25777 canonicalOutput25777 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25778 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 0, 2, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput25778 : ExponentCode := normalNode10591

theorem canonicalSound25778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25778.moment H = canonicalOutput25778.moment H :=
  canonical_of_padded canonicalInput25778 canonicalOutput25778 (by decide) (by decide)
    ⟨false, true, canonicalPermutation304, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25779 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 2, -3], ![-2, 1, -3, 4]]⟩

def canonicalOutput25779 : ExponentCode := normalNode4720

theorem canonicalSound25779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25779.moment H = canonicalOutput25779.moment H :=
  canonical_of_padded canonicalInput25779 canonicalOutput25779 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25780 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput25780 : ExponentCode := normalNode6916

theorem canonicalSound25780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25780.moment H = canonicalOutput25780.moment H :=
  canonical_of_padded canonicalInput25780 canonicalOutput25780 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25781 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, 1, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput25781 : ExponentCode := normalNode4342

theorem canonicalSound25781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25781.moment H = canonicalOutput25781.moment H :=
  canonical_of_padded canonicalInput25781 canonicalOutput25781 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25782 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput25782 : ExponentCode := normalNode4477

theorem canonicalSound25782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25782.moment H = canonicalOutput25782.moment H :=
  canonical_of_padded canonicalInput25782 canonicalOutput25782 (by decide) (by decide)
    ⟨false, false, canonicalPermutation315, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25783 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![1, 1, 0, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput25783 : ExponentCode := normalNode6187

theorem canonicalSound25783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25783.moment H = canonicalOutput25783.moment H :=
  canonical_of_padded canonicalInput25783 canonicalOutput25783 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput25784 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput25784 : ExponentCode := normalNode6177

theorem canonicalSound25784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25784.moment H = canonicalOutput25784.moment H :=
  canonical_of_padded canonicalInput25784 canonicalOutput25784 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput25785 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![0, 0, 0, 0], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25785 : ExponentCode := normalNode10561

theorem canonicalSound25785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25785.moment H = canonicalOutput25785.moment H :=
  canonical_of_padded canonicalInput25785 canonicalOutput25785 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation247, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25786 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput25786 : ExponentCode := normalNode6177

theorem canonicalSound25786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25786.moment H = canonicalOutput25786.moment H :=
  canonical_of_padded canonicalInput25786 canonicalOutput25786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25787 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput25787 : ExponentCode := normalNode4824

theorem canonicalSound25787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25787.moment H = canonicalOutput25787.moment H :=
  canonical_of_padded canonicalInput25787 canonicalOutput25787 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation388, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25788 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -3, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput25788 : ExponentCode := normalNode10475

theorem canonicalSound25788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25788.moment H = canonicalOutput25788.moment H :=
  canonical_of_padded canonicalInput25788 canonicalOutput25788 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25789 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![-1, 1, 2, -2]]⟩

def canonicalOutput25789 : ExponentCode := normalNode10476

theorem canonicalSound25789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25789.moment H = canonicalOutput25789.moment H :=
  canonical_of_padded canonicalInput25789 canonicalOutput25789 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25790 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput25790 : ExponentCode := normalNode4824

theorem canonicalSound25790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25790.moment H = canonicalOutput25790.moment H :=
  canonical_of_padded canonicalInput25790 canonicalOutput25790 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation336, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25791 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![0, 0, 0, 0], ![-1, 0, 3, -2], ![0, 2, -4, 2]]⟩

def canonicalOutput25791 : ExponentCode := normalNode9881

theorem canonicalSound25791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25791.moment H = canonicalOutput25791.moment H :=
  canonical_of_padded canonicalInput25791 canonicalOutput25791 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation250, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
