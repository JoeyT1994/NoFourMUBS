import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23744 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23744 : ExponentCode := normalNode11165

theorem canonicalSound23744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23744.moment H = canonicalOutput23744.moment H :=
  canonical_of_padded canonicalInput23744 canonicalOutput23744 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23745 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23745 : ExponentCode := normalNode10869

theorem canonicalSound23745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23745.moment H = canonicalOutput23745.moment H :=
  canonical_of_padded canonicalInput23745 canonicalOutput23745 (by decide) (by decide)
    ⟨false, true, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23746 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23746 : ExponentCode := normalNode10869

theorem canonicalSound23746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23746.moment H = canonicalOutput23746.moment H :=
  canonical_of_padded canonicalInput23746 canonicalOutput23746 (by decide) (by decide)
    ⟨false, true, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23747 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23747 : ExponentCode := normalNode11165

theorem canonicalSound23747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23747.moment H = canonicalOutput23747.moment H :=
  canonical_of_padded canonicalInput23747 canonicalOutput23747 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput23748 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23748 : ExponentCode := normalNode8064

theorem canonicalSound23748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23748.moment H = canonicalOutput23748.moment H :=
  canonical_of_padded canonicalInput23748 canonicalOutput23748 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput23749 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23749 : ExponentCode := normalNode3656

theorem canonicalSound23749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23749.moment H = canonicalOutput23749.moment H :=
  canonical_of_padded canonicalInput23749 canonicalOutput23749 (by decide) (by decide)
    ⟨false, true, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23750 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23750 : ExponentCode := normalNode8064

theorem canonicalSound23750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23750.moment H = canonicalOutput23750.moment H :=
  canonical_of_padded canonicalInput23750 canonicalOutput23750 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23751 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23751 : ExponentCode := normalNode8064

theorem canonicalSound23751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23751.moment H = canonicalOutput23751.moment H :=
  canonical_of_padded canonicalInput23751 canonicalOutput23751 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23752 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23752 : ExponentCode := normalNode3656

theorem canonicalSound23752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23752.moment H = canonicalOutput23752.moment H :=
  canonical_of_padded canonicalInput23752 canonicalOutput23752 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput23753 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput23753 : ExponentCode := normalNode8063

theorem canonicalSound23753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23753.moment H = canonicalOutput23753.moment H :=
  canonical_of_padded canonicalInput23753 canonicalOutput23753 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23754 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput23754 : ExponentCode := normalNode6527

theorem canonicalSound23754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23754.moment H = canonicalOutput23754.moment H :=
  canonical_of_padded canonicalInput23754 canonicalOutput23754 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput23755 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput23755 : ExponentCode := normalNode8237

theorem canonicalSound23755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23755.moment H = canonicalOutput23755.moment H :=
  canonical_of_padded canonicalInput23755 canonicalOutput23755 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation392⟩ (by decide +kernel) hH

def canonicalInput23756 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23756 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound23756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23756.moment H = canonicalOutput23756.moment H :=
  canonical_of_padded canonicalInput23756 canonicalOutput23756 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput23757 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23757 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound23757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23757.moment H = canonicalOutput23757.moment H :=
  canonical_of_padded canonicalInput23757 canonicalOutput23757 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23758 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23758 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound23758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23758.moment H = canonicalOutput23758.moment H :=
  canonical_of_padded canonicalInput23758 canonicalOutput23758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput23759 : ExponentCode := ⟨6, 6, ![![-1, 2, -1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23759 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound23759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23759.moment H = canonicalOutput23759.moment H :=
  canonical_of_padded canonicalInput23759 canonicalOutput23759 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput23760 : ExponentCode := ⟨4, 4, ![![-1, 2, 0, -1], ![0, -1, -3, 4], ![0, -1, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput23760 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node920⟩

theorem canonicalSound23760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23760.moment H = canonicalOutput23760.moment H :=
  canonical_of_padded canonicalInput23760 canonicalOutput23760 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput23761 : ExponentCode := ⟨4, 4, ![![-1, 2, 0, -1], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput23761 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1365⟩

theorem canonicalSound23761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23761.moment H = canonicalOutput23761.moment H :=
  canonical_of_padded canonicalInput23761 canonicalOutput23761 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23762 : ExponentCode := ⟨5, 4, ![![-1, 2, 0, -1], ![0, -1, -1, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput23762 : ExponentCode := normalNode10727

theorem canonicalSound23762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23762.moment H = canonicalOutput23762.moment H :=
  canonical_of_padded canonicalInput23762 canonicalOutput23762 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23763 : ExponentCode := ⟨4, 4, ![![-1, 2, 0, -1], ![0, -1, -1, 2], ![0, 0, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput23763 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound23763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23763.moment H = canonicalOutput23763.moment H :=
  canonical_of_padded canonicalInput23763 canonicalOutput23763 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23764 : ExponentCode := ⟨4, 4, ![![-1, 2, 0, -1], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput23764 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1369⟩

theorem canonicalSound23764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23764.moment H = canonicalOutput23764.moment H :=
  canonical_of_padded canonicalInput23764 canonicalOutput23764 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23765 : ExponentCode := ⟨4, 4, ![![-1, 2, 0, -1], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput23765 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1374⟩

theorem canonicalSound23765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23765.moment H = canonicalOutput23765.moment H :=
  canonical_of_padded canonicalInput23765 canonicalOutput23765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23766 : ExponentCode := ⟨4, 4, ![![-1, 2, 0, -1], ![0, 0, -2, 2], ![0, 0, 2, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput23766 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound23766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23766.moment H = canonicalOutput23766.moment H :=
  canonical_of_padded canonicalInput23766 canonicalOutput23766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23767 : ExponentCode := ⟨4, 4, ![![-1, 2, 1, -2], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput23767 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1366⟩

theorem canonicalSound23767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23767.moment H = canonicalOutput23767.moment H :=
  canonical_of_padded canonicalInput23767 canonicalOutput23767 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23768 : ExponentCode := ⟨4, 4, ![![-1, 2, 1, -2], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput23768 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1376⟩

theorem canonicalSound23768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23768.moment H = canonicalOutput23768.moment H :=
  canonical_of_padded canonicalInput23768 canonicalOutput23768 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23769 : ExponentCode := ⟨4, 4, ![![-1, 2, 1, -2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput23769 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node268⟩

theorem canonicalSound23769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23769.moment H = canonicalOutput23769.moment H :=
  canonical_of_padded canonicalInput23769 canonicalOutput23769 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput23770 : ExponentCode := ⟨4, 4, ![![-1, 2, 1, -2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput23770 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node268⟩

theorem canonicalSound23770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23770.moment H = canonicalOutput23770.moment H :=
  canonical_of_padded canonicalInput23770 canonicalOutput23770 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput23771 : ExponentCode := ⟨6, 6, ![![-1, 2, 1, -2, 0, 0], ![-1, -1, 1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23771 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound23771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23771.moment H = canonicalOutput23771.moment H :=
  canonical_of_padded canonicalInput23771 canonicalOutput23771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation304⟩ (by decide +kernel) hH

def canonicalInput23772 : ExponentCode := ⟨6, 6, ![![-1, 2, 1, -2, 0, 0], ![-1, -1, 1, 1, 0, 0], ![2, -1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23772 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound23772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23772.moment H = canonicalOutput23772.moment H :=
  canonical_of_padded canonicalInput23772 canonicalOutput23772 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput23773 : ExponentCode := ⟨6, 6, ![![-1, 2, 1, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 2, -2, 1, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23773 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound23773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23773.moment H = canonicalOutput23773.moment H :=
  canonical_of_padded canonicalInput23773 canonicalOutput23773 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, canonicalPermutation111⟩ (by decide +kernel) hH

def canonicalInput23774 : ExponentCode := ⟨6, 6, ![![-1, 2, 1, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 0, 1, 0, 0], ![1, -2, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23774 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound23774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23774.moment H = canonicalOutput23774.moment H :=
  canonical_of_padded canonicalInput23774 canonicalOutput23774 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput23775 : ExponentCode := ⟨6, 6, ![![-1, 2, 1, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, -2, 0, 1, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23775 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound23775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23775.moment H = canonicalOutput23775.moment H :=
  canonical_of_padded canonicalInput23775 canonicalOutput23775 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput23776 : ExponentCode := ⟨6, 6, ![![-1, 2, 1, -2, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, -1, -2, 1, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23776 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node686⟩

theorem canonicalSound23776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23776.moment H = canonicalOutput23776.moment H :=
  canonical_of_padded canonicalInput23776 canonicalOutput23776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput23777 : ExponentCode := ⟨6, 6, ![![-1, 2, 1, -2, 0, 0], ![2, -4, 1, 1, 0, 0], ![-1, 2, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23777 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound23777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23777.moment H = canonicalOutput23777.moment H :=
  canonical_of_padded canonicalInput23777 canonicalOutput23777 (by decide) (by decide)
    ⟨true, true, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23778 : ExponentCode := ⟨6, 6, ![![-1, 2, 1, -2, 0, 0], ![2, -4, 1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 0, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23778 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound23778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23778.moment H = canonicalOutput23778.moment H :=
  canonical_of_padded canonicalInput23778 canonicalOutput23778 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput23779 : ExponentCode := ⟨4, 6, ![![-1, 2, 2, -1, -1, -1], ![0, -2, 0, 0, 0, 2], ![0, 0, 0, -1, 2, -1], ![1, 0, -2, 2, -1, 0]]⟩

def canonicalOutput23779 : ExponentCode := normalNode3970

theorem canonicalSound23779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23779.moment H = canonicalOutput23779.moment H :=
  canonical_of_padded canonicalInput23779 canonicalOutput23779 (by decide) (by decide)
    ⟨true, false, canonicalPermutation286, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput23780 : ExponentCode := ⟨3, 4, ![![-1, 2, 3, -4], ![0, 0, -3, 3], ![1, -2, 0, 1]]⟩

def canonicalOutput23780 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node195⟩

theorem canonicalSound23780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23780.moment H = canonicalOutput23780.moment H :=
  canonical_of_padded canonicalInput23780 canonicalOutput23780 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23781 : ExponentCode := ⟨4, 3, ![![-1, 3, -2], ![-1, -4, 5], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput23781 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node235⟩

theorem canonicalSound23781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23781.moment H = canonicalOutput23781.moment H :=
  canonical_of_padded canonicalInput23781 canonicalOutput23781 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23782 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23782 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound23782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23782.moment H = canonicalOutput23782.moment H :=
  canonical_of_padded canonicalInput23782 canonicalOutput23782 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23783 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23783 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound23783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23783.moment H = canonicalOutput23783.moment H :=
  canonical_of_padded canonicalInput23783 canonicalOutput23783 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23784 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23784 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound23784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23784.moment H = canonicalOutput23784.moment H :=
  canonical_of_padded canonicalInput23784 canonicalOutput23784 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23785 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23785 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound23785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23785.moment H = canonicalOutput23785.moment H :=
  canonical_of_padded canonicalInput23785 canonicalOutput23785 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23786 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23786 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound23786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23786.moment H = canonicalOutput23786.moment H :=
  canonical_of_padded canonicalInput23786 canonicalOutput23786 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput23787 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23787 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound23787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23787.moment H = canonicalOutput23787.moment H :=
  canonical_of_padded canonicalInput23787 canonicalOutput23787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23788 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23788 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound23788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23788.moment H = canonicalOutput23788.moment H :=
  canonical_of_padded canonicalInput23788 canonicalOutput23788 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23789 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23789 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound23789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23789.moment H = canonicalOutput23789.moment H :=
  canonical_of_padded canonicalInput23789 canonicalOutput23789 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23790 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23790 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound23790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23790.moment H = canonicalOutput23790.moment H :=
  canonical_of_padded canonicalInput23790 canonicalOutput23790 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput23791 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23791 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound23791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23791.moment H = canonicalOutput23791.moment H :=
  canonical_of_padded canonicalInput23791 canonicalOutput23791 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput23792 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23792 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound23792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23792.moment H = canonicalOutput23792.moment H :=
  canonical_of_padded canonicalInput23792 canonicalOutput23792 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23793 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23793 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound23793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23793.moment H = canonicalOutput23793.moment H :=
  canonical_of_padded canonicalInput23793 canonicalOutput23793 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23794 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23794 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound23794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23794.moment H = canonicalOutput23794.moment H :=
  canonical_of_padded canonicalInput23794 canonicalOutput23794 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23795 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23795 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound23795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23795.moment H = canonicalOutput23795.moment H :=
  canonical_of_padded canonicalInput23795 canonicalOutput23795 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23796 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23796 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound23796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23796.moment H = canonicalOutput23796.moment H :=
  canonical_of_padded canonicalInput23796 canonicalOutput23796 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23797 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23797 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound23797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23797.moment H = canonicalOutput23797.moment H :=
  canonical_of_padded canonicalInput23797 canonicalOutput23797 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23798 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23798 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound23798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23798.moment H = canonicalOutput23798.moment H :=
  canonical_of_padded canonicalInput23798 canonicalOutput23798 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23799 : ExponentCode := ⟨6, 6, ![![-1, 3, -2, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23799 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound23799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23799.moment H = canonicalOutput23799.moment H :=
  canonical_of_padded canonicalInput23799 canonicalOutput23799 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23800 : ExponentCode := ⟨4, 3, ![![-1, 4, -3], ![-1, -4, 5], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput23800 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node236⟩

theorem canonicalSound23800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23800.moment H = canonicalOutput23800.moment H :=
  canonical_of_padded canonicalInput23800 canonicalOutput23800 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23801 : ExponentCode := ⟨5, 3, ![![-1, 4, -3], ![-1, -2, 3], ![0, -2, 2], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput23801 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node877⟩

theorem canonicalSound23801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23801.moment H = canonicalOutput23801.moment H :=
  canonical_of_padded canonicalInput23801 canonicalOutput23801 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23802 : ExponentCode := ⟨5, 3, ![![-1, 4, -3], ![-1, -1, 2], ![0, -3, 3], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput23802 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1144⟩

theorem canonicalSound23802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23802.moment H = canonicalOutput23802.moment H :=
  canonical_of_padded canonicalInput23802 canonicalOutput23802 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23803 : ExponentCode := ⟨4, 3, ![![0, -5, 5], ![-1, 2, -1], ![0, 3, -3], ![1, 0, -1]]⟩

def canonicalOutput23803 : ExponentCode := normalNode9524

theorem canonicalSound23803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23803.moment H = canonicalOutput23803.moment H :=
  canonical_of_padded canonicalInput23803 canonicalOutput23803 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23804 : ExponentCode := ⟨3, 3, ![![0, -5, 5], ![-1, 2, -1], ![1, 3, -4]]⟩

def canonicalOutput23804 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node55⟩

theorem canonicalSound23804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23804.moment H = canonicalOutput23804.moment H :=
  canonical_of_padded canonicalInput23804 canonicalOutput23804 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23805 : ExponentCode := ⟨4, 3, ![![0, -5, 5], ![-1, 3, -2], ![0, 2, -2], ![1, 0, -1]]⟩

def canonicalOutput23805 : ExponentCode := normalNode7141

theorem canonicalSound23805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23805.moment H = canonicalOutput23805.moment H :=
  canonical_of_padded canonicalInput23805 canonicalOutput23805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23806 : ExponentCode := ⟨3, 3, ![![0, -5, 5], ![-1, 3, -2], ![1, 2, -3]]⟩

def canonicalOutput23806 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node60⟩

theorem canonicalSound23806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23806.moment H = canonicalOutput23806.moment H :=
  canonical_of_padded canonicalInput23806 canonicalOutput23806 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23807 : ExponentCode := ⟨3, 3, ![![0, -5, 5], ![-1, 4, -3], ![1, 1, -2]]⟩

def canonicalOutput23807 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node55⟩

theorem canonicalSound23807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23807.moment H = canonicalOutput23807.moment H :=
  canonical_of_padded canonicalInput23807 canonicalOutput23807 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
