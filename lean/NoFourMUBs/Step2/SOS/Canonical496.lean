import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31744 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, -1, -1, 3], ![0, 2, -1, -1]]⟩

def canonicalOutput31744 : ExponentCode := normalNode4332

theorem canonicalSound31744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31744.moment H = canonicalOutput31744.moment H :=
  canonical_of_padded canonicalInput31744 canonicalOutput31744 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31745 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, 2, 0, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31745 : ExponentCode := normalNode5311

theorem canonicalSound31745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31745.moment H = canonicalOutput31745.moment H :=
  canonical_of_padded canonicalInput31745 canonicalOutput31745 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31746 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![-1, 3, 0, -2], ![0, -2, -2, 4]]⟩

def canonicalOutput31746 : ExponentCode := normalNode9540

theorem canonicalSound31746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31746.moment H = canonicalOutput31746.moment H :=
  canonical_of_padded canonicalInput31746 canonicalOutput31746 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31747 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 2, 0], ![-2, -1, 0, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31747 : ExponentCode := normalNode1639

theorem canonicalSound31747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31747.moment H = canonicalOutput31747.moment H :=
  canonical_of_padded canonicalInput31747 canonicalOutput31747 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31748 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 2, 0], ![-1, -1, -1, 3], ![-1, 3, -1, -1]]⟩

def canonicalOutput31748 : ExponentCode := normalNode7683

theorem canonicalSound31748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31748.moment H = canonicalOutput31748.moment H :=
  canonical_of_padded canonicalInput31748 canonicalOutput31748 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31749 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-2, -2, 0, 4], ![0, 3, -2, -1]]⟩

def canonicalOutput31749 : ExponentCode := normalNode398

theorem canonicalSound31749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31749.moment H = canonicalOutput31749.moment H :=
  canonical_of_padded canonicalInput31749 canonicalOutput31749 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31750 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-2, -1, 0, 3], ![0, 2, -2, 0]]⟩

def canonicalOutput31750 : ExponentCode := normalNode1838

theorem canonicalSound31750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31750.moment H = canonicalOutput31750.moment H :=
  canonical_of_padded canonicalInput31750 canonicalOutput31750 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31751 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-1, -2, -1, 4], ![-1, 3, -1, -1]]⟩

def canonicalOutput31751 : ExponentCode := normalNode6428

theorem canonicalSound31751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31751.moment H = canonicalOutput31751.moment H :=
  canonical_of_padded canonicalInput31751 canonicalOutput31751 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation303, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31752 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-1, -1, -1, 3], ![-1, 2, -1, 0]]⟩

def canonicalOutput31752 : ExponentCode := normalNode5314

theorem canonicalSound31752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31752.moment H = canonicalOutput31752.moment H :=
  canonical_of_padded canonicalInput31752 canonicalOutput31752 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31753 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, 0, -1], ![1, -1, 0, 0], ![0, -2, 2, 0], ![-2, 0, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31753 : ExponentCode := normalNode1667

theorem canonicalSound31753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31753.moment H = canonicalOutput31753.moment H :=
  canonical_of_padded canonicalInput31753 canonicalOutput31753 (by decide) (by decide)
    ⟨false, false, canonicalPermutation12, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31754 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -3, 2, 1], ![-2, 0, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput31754 : ExponentCode := normalNode1666

theorem canonicalSound31754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31754.moment H = canonicalOutput31754.moment H :=
  canonical_of_padded canonicalInput31754 canonicalOutput31754 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31755 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, 2, 0], ![-2, -1, -1, 4], ![0, 3, -2, -1]]⟩

def canonicalOutput31755 : ExponentCode := normalNode1161

theorem canonicalSound31755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31755.moment H = canonicalOutput31755.moment H :=
  canonical_of_padded canonicalInput31755 canonicalOutput31755 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31756 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, 2, 0], ![-2, 0, -1, 3], ![0, 2, -2, 0]]⟩

def canonicalOutput31756 : ExponentCode := normalNode3353

theorem canonicalSound31756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31756.moment H = canonicalOutput31756.moment H :=
  canonical_of_padded canonicalInput31756 canonicalOutput31756 (by decide) (by decide)
    ⟨false, false, canonicalPermutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31757 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![2, -2, 2, -2], ![-2, 2, -3, 3]]⟩

def canonicalOutput31757 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node264⟩

theorem canonicalSound31757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31757.moment H = canonicalOutput31757.moment H :=
  canonical_of_padded canonicalInput31757 canonicalOutput31757 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31758 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![3, -4, 1, 0], ![-3, 4, -2, 1]]⟩

def canonicalOutput31758 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node278⟩

theorem canonicalSound31758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31758.moment H = canonicalOutput31758.moment H :=
  canonical_of_padded canonicalInput31758 canonicalOutput31758 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31759 : ExponentCode := ⟨3, 4, ![![0, 0, 1, -1], ![3, -2, 1, -2], ![-3, 2, -2, 3]]⟩

def canonicalOutput31759 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node265⟩

theorem canonicalSound31759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31759.moment H = canonicalOutput31759.moment H :=
  canonical_of_padded canonicalInput31759 canonicalOutput31759 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31760 : ExponentCode := ⟨3, 6, ![![0, 0, 1, -1, -1, 1], ![-2, 1, 0, 1, 1, -1], ![2, -1, -1, 0, 0, 0]]⟩

def canonicalOutput31760 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2137⟩

theorem canonicalSound31760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31760.moment H = canonicalOutput31760.moment H :=
  canonical_of_padded canonicalInput31760 canonicalOutput31760 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31761 : ExponentCode := ⟨3, 6, ![![0, 0, 1, -1, -1, 1], ![-1, 2, 1, 0, 0, -2], ![1, -2, -2, 1, 1, 1]]⟩

def canonicalOutput31761 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2668⟩

theorem canonicalSound31761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31761.moment H = canonicalOutput31761.moment H :=
  canonical_of_padded canonicalInput31761 canonicalOutput31761 (by decide) (by decide)
    ⟨true, true, canonicalPermutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31762 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -1, 0, 0], ![0, -3, 1, 2, 0, 0], ![0, 3, -2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31762 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound31762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31762.moment H = canonicalOutput31762.moment H :=
  canonical_of_padded canonicalInput31762 canonicalOutput31762 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput31763 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -1, 0, 0], ![0, -3, 1, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31763 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound31763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31763.moment H = canonicalOutput31763.moment H :=
  canonical_of_padded canonicalInput31763 canonicalOutput31763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation303, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput31764 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -1, 0, 0], ![0, 0, 1, -1, 0, 0], ![0, 0, -2, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31764 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound31764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31764.moment H = canonicalOutput31764.moment H :=
  canonical_of_padded canonicalInput31764 canonicalOutput31764 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput31765 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -1, 0, 0], ![0, 0, 1, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31765 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1045⟩

theorem canonicalSound31765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31765.moment H = canonicalOutput31765.moment H :=
  canonical_of_padded canonicalInput31765 canonicalOutput31765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation303, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput31766 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, -2, 2, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31766 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1002⟩

theorem canonicalSound31766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31766.moment H = canonicalOutput31766.moment H :=
  canonical_of_padded canonicalInput31766 canonicalOutput31766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation304, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput31767 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 3, -2, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31767 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound31767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31767.moment H = canonicalOutput31767.moment H :=
  canonical_of_padded canonicalInput31767 canonicalOutput31767 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation297⟩ (by decide +kernel) hH

def canonicalInput31768 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 0, 2, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31768 : ExponentCode := normalNode4310

theorem canonicalSound31768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31768.moment H = canonicalOutput31768.moment H :=
  canonical_of_padded canonicalInput31768 canonicalOutput31768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput31769 : ExponentCode := ⟨6, 6, ![![0, 0, 1, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, 0, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput31769 : ExponentCode := normalNode4310

theorem canonicalSound31769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31769.moment H = canonicalOutput31769.moment H :=
  canonical_of_padded canonicalInput31769 canonicalOutput31769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput31770 : ExponentCode := ⟨3, 5, ![![0, 0, 1, 1, -2], ![-2, -2, 1, 1, 2], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput31770 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1056

theorem canonicalSound31770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31770.moment H = canonicalOutput31770.moment H :=
  canonical_of_padded canonicalInput31770 canonicalOutput31770 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31771 : ExponentCode := ⟨4, 5, ![![0, 0, 1, 1, -2], ![-2, -1, -1, 3, 1], ![0, 2, 1, -3, 0], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput31771 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code991

theorem canonicalSound31771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31771.moment H = canonicalOutput31771.moment H :=
  canonical_of_padded canonicalInput31771 canonicalOutput31771 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31772 : ExponentCode := ⟨3, 5, ![![0, 0, 1, 1, -2], ![-2, 2, -2, 1, 1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput31772 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound31772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31772.moment H = canonicalOutput31772.moment H :=
  canonical_of_padded canonicalInput31772 canonicalOutput31772 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31773 : ExponentCode := ⟨3, 5, ![![0, 0, 1, 1, -2], ![-1, -2, 1, 1, 1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput31773 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node703⟩

theorem canonicalSound31773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31773.moment H = canonicalOutput31773.moment H :=
  canonical_of_padded canonicalInput31773 canonicalOutput31773 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31774 : ExponentCode := ⟨4, 5, ![![0, 0, 1, 1, -2], ![-1, -1, -1, 3, 0], ![-1, 2, 1, -3, 1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput31774 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code962

theorem canonicalSound31774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31774.moment H = canonicalOutput31774.moment H :=
  canonical_of_padded canonicalInput31774 canonicalOutput31774 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31775 : ExponentCode := ⟨4, 5, ![![0, 0, 1, 1, -2], ![-1, -1, -1, 3, 0], ![0, 2, 1, -3, 0], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput31775 : ExponentCode := normalNode3876

theorem canonicalSound31775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31775.moment H = canonicalOutput31775.moment H :=
  canonical_of_padded canonicalInput31775 canonicalOutput31775 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31776 : ExponentCode := ⟨3, 5, ![![0, 0, 1, 1, -2], ![-1, 2, -2, 1, 0], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput31776 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node660⟩

theorem canonicalSound31776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31776.moment H = canonicalOutput31776.moment H :=
  canonical_of_padded canonicalInput31776 canonicalOutput31776 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31777 : ExponentCode := ⟨4, 5, ![![0, 0, 1, 1, -2], ![0, -2, 0, 1, 1], ![-2, 1, 1, -1, 1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput31777 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code986

theorem canonicalSound31777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31777.moment H = canonicalOutput31777.moment H :=
  canonical_of_padded canonicalInput31777 canonicalOutput31777 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31778 : ExponentCode := ⟨4, 5, ![![0, 0, 1, 1, -2], ![1, -2, 0, 1, 0], ![-3, 1, 1, -1, 2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput31778 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code856

theorem canonicalSound31778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31778.moment H = canonicalOutput31778.moment H :=
  canonical_of_padded canonicalInput31778 canonicalOutput31778 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31779 : ExponentCode := ⟨4, 5, ![![0, 0, 1, 1, -2], ![1, -2, 0, 1, 0], ![-2, 1, 1, -1, 1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput31779 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound31779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31779.moment H = canonicalOutput31779.moment H :=
  canonical_of_padded canonicalInput31779 canonicalOutput31779 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31780 : ExponentCode := ⟨4, 5, ![![0, 0, 1, 1, -2], ![1, -1, -1, 0, 1], ![-1, -2, 1, 1, 1], ![0, 3, -1, -2, 0]]⟩

def canonicalOutput31780 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2266⟩

theorem canonicalSound31780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31780.moment H = canonicalOutput31780.moment H :=
  canonical_of_padded canonicalInput31780 canonicalOutput31780 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31781 : ExponentCode := ⟨4, 5, ![![0, 0, 1, 1, -2], ![2, -1, -1, 0, 0], ![-2, -2, 1, 1, 2], ![0, 3, -1, -2, 0]]⟩

def canonicalOutput31781 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code892

theorem canonicalSound31781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31781.moment H = canonicalOutput31781.moment H :=
  canonical_of_padded canonicalInput31781 canonicalOutput31781 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31782 : ExponentCode := ⟨4, 5, ![![0, 0, 1, 1, -2], ![2, -1, -1, 0, 0], ![-1, -2, 1, 1, 1], ![-1, 3, -1, -2, 1]]⟩

def canonicalOutput31782 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code961

theorem canonicalSound31782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31782.moment H = canonicalOutput31782.moment H :=
  canonical_of_padded canonicalInput31782 canonicalOutput31782 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31783 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-5, 2, 0, 3], ![5, -2, -2, -1]]⟩

def canonicalOutput31783 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code693

theorem canonicalSound31783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31783.moment H = canonicalOutput31783.moment H :=
  canonical_of_padded canonicalInput31783 canonicalOutput31783 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31784 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-5, 2, 1, 2], ![5, -2, -3, 0]]⟩

def canonicalOutput31784 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code693

theorem canonicalSound31784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31784.moment H = canonicalOutput31784.moment H :=
  canonical_of_padded canonicalInput31784 canonicalOutput31784 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31785 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-4, 2, 1, 1], ![4, -2, -3, 1]]⟩

def canonicalOutput31785 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node164⟩

theorem canonicalSound31785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31785.moment H = canonicalOutput31785.moment H :=
  canonical_of_padded canonicalInput31785 canonicalOutput31785 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31786 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-4, 4, -1, 1], ![4, -4, -1, 1]]⟩

def canonicalOutput31786 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1213

theorem canonicalSound31786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31786.moment H = canonicalOutput31786.moment H :=
  canonical_of_padded canonicalInput31786 canonicalOutput31786 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31787 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-3, -2, 2, 3], ![3, 2, -4, -1]]⟩

def canonicalOutput31787 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code239

theorem canonicalSound31787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31787.moment H = canonicalOutput31787.moment H :=
  canonical_of_padded canonicalInput31787 canonicalOutput31787 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31788 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-3, 2, 1, 0], ![3, -2, -3, 2]]⟩

def canonicalOutput31788 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node163⟩

theorem canonicalSound31788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31788.moment H = canonicalOutput31788.moment H :=
  canonical_of_padded canonicalInput31788 canonicalOutput31788 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31789 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-3, 4, -1, 0], ![3, -4, -1, 2]]⟩

def canonicalOutput31789 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node193⟩

theorem canonicalSound31789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31789.moment H = canonicalOutput31789.moment H :=
  canonical_of_padded canonicalInput31789 canonicalOutput31789 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31790 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-2, -3, 2, 3], ![2, 3, -4, -1]]⟩

def canonicalOutput31790 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code239

theorem canonicalSound31790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31790.moment H = canonicalOutput31790.moment H :=
  canonical_of_padded canonicalInput31790 canonicalOutput31790 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31791 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-2, -3, 3, 2], ![2, 3, -5, 0]]⟩

def canonicalOutput31791 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code103

theorem canonicalSound31791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31791.moment H = canonicalOutput31791.moment H :=
  canonical_of_padded canonicalInput31791 canonicalOutput31791 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31792 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-2, 4, -1, -1], ![2, -4, -1, 3]]⟩

def canonicalOutput31792 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node164⟩

theorem canonicalSound31792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31792.moment H = canonicalOutput31792.moment H :=
  canonical_of_padded canonicalInput31792 canonicalOutput31792 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31793 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-1, -3, 2, 2], ![1, 3, -4, 0]]⟩

def canonicalOutput31793 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node147⟩

theorem canonicalSound31793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31793.moment H = canonicalOutput31793.moment H :=
  canonical_of_padded canonicalInput31793 canonicalOutput31793 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31794 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-1, -3, 3, 1], ![1, 3, -5, 1]]⟩

def canonicalOutput31794 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node121⟩

theorem canonicalSound31794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31794.moment H = canonicalOutput31794.moment H :=
  canonical_of_padded canonicalInput31794 canonicalOutput31794 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31795 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![-1, 1, -3, 3], ![0, 1, 0, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput31795 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node803⟩

theorem canonicalSound31795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31795.moment H = canonicalOutput31795.moment H :=
  canonical_of_padded canonicalInput31795 canonicalOutput31795 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput31796 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![-1, 1, -3, 3], ![0, 1, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput31796 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound31796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31796.moment H = canonicalOutput31796.moment H :=
  canonical_of_padded canonicalInput31796 canonicalOutput31796 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31797 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![-1, 1, -2, 2], ![0, 1, 1, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput31797 : ExponentCode := normalNode11072

theorem canonicalSound31797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31797.moment H = canonicalOutput31797.moment H :=
  canonical_of_padded canonicalInput31797 canonicalOutput31797 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31798 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput31798 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1351⟩

theorem canonicalSound31798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31798.moment H = canonicalOutput31798.moment H :=
  canonical_of_padded canonicalInput31798 canonicalOutput31798 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31799 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -2, -3, 4]]⟩

def canonicalOutput31799 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node764⟩

theorem canonicalSound31799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31799.moment H = canonicalOutput31799.moment H :=
  canonical_of_padded canonicalInput31799 canonicalOutput31799 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput31800 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-1, 4, -2, -1], ![1, -4, 0, 3]]⟩

def canonicalOutput31800 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node171⟩

theorem canonicalSound31800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31800.moment H = canonicalOutput31800.moment H :=
  canonical_of_padded canonicalInput31800 canonicalOutput31800 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31801 : ExponentCode := ⟨3, 4, ![![0, 0, 2, -2], ![-1, 4, -1, -2], ![1, -4, -1, 4]]⟩

def canonicalOutput31801 : ExponentCode := normalNode1002

theorem canonicalSound31801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31801.moment H = canonicalOutput31801.moment H :=
  canonical_of_padded canonicalInput31801 canonicalOutput31801 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31802 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![0, 1, -3, 2], ![-1, 1, 0, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput31802 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound31802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31802.moment H = canonicalOutput31802.moment H :=
  canonical_of_padded canonicalInput31802 canonicalOutput31802 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31803 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![0, 1, -3, 2], ![-1, 1, 1, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput31803 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound31803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31803.moment H = canonicalOutput31803.moment H :=
  canonical_of_padded canonicalInput31803 canonicalOutput31803 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31804 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![0, -2, 1, 1]]⟩

def canonicalOutput31804 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound31804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31804.moment H = canonicalOutput31804.moment H :=
  canonical_of_padded canonicalInput31804 canonicalOutput31804 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31805 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![0, 1, -3, 2], ![0, 1, 1, -2], ![0, -2, 0, 2]]⟩

def canonicalOutput31805 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound31805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31805.moment H = canonicalOutput31805.moment H :=
  canonical_of_padded canonicalInput31805 canonicalOutput31805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31806 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![0, 1, -2, 1], ![-1, 1, 1, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput31806 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound31806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31806.moment H = canonicalOutput31806.moment H :=
  canonical_of_padded canonicalInput31806 canonicalOutput31806 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31807 : ExponentCode := ⟨4, 4, ![![0, 0, 2, -2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![0, -2, -1, 3]]⟩

def canonicalOutput31807 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound31807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31807.moment H = canonicalOutput31807.moment H :=
  canonical_of_padded canonicalInput31807 canonicalOutput31807 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
