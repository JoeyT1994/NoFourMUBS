import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12800 : ExponentCode := ⟨5, 4, ![![-1, -3, 3, 1], ![-1, 2, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12800 : ExponentCode := normalNode10492

theorem canonicalSound12800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12800.moment H = canonicalOutput12800.moment H :=
  canonical_of_padded canonicalInput12800 canonicalOutput12800 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12801 : ExponentCode := ⟨4, 4, ![![-1, -3, 3, 1], ![-1, 2, -2, 1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12801 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1092⟩

theorem canonicalSound12801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12801.moment H = canonicalOutput12801.moment H :=
  canonical_of_padded canonicalInput12801 canonicalOutput12801 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12802 : ExponentCode := ⟨5, 4, ![![-1, -3, 3, 1], ![-1, 2, -1, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12802 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2713⟩

theorem canonicalSound12802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12802.moment H = canonicalOutput12802.moment H :=
  canonical_of_padded canonicalInput12802 canonicalOutput12802 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12803 : ExponentCode := ⟨5, 4, ![![-1, -3, 3, 1], ![-1, 2, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12803 : ExponentCode := normalNode8875

theorem canonicalSound12803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12803.moment H = canonicalOutput12803.moment H :=
  canonical_of_padded canonicalInput12803 canonicalOutput12803 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput12804 : ExponentCode := ⟨4, 4, ![![-1, -3, 3, 1], ![-1, 2, -1, 0], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12804 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node495⟩

theorem canonicalSound12804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12804.moment H = canonicalOutput12804.moment H :=
  canonical_of_padded canonicalInput12804 canonicalOutput12804 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12805 : ExponentCode := ⟨4, 4, ![![-1, -3, 3, 1], ![-1, 2, 0, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput12805 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code469

theorem canonicalSound12805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12805.moment H = canonicalOutput12805.moment H :=
  canonical_of_padded canonicalInput12805 canonicalOutput12805 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12806 : ExponentCode := ⟨5, 4, ![![-1, -3, 3, 1], ![-1, 3, 0, -2], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12806 : ExponentCode := normalNode6094

theorem canonicalSound12806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12806.moment H = canonicalOutput12806.moment H :=
  canonical_of_padded canonicalInput12806 canonicalOutput12806 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12807 : ExponentCode := ⟨4, 4, ![![-1, -3, 3, 1], ![-1, 3, 0, -2], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput12807 : ExponentCode := normalNode7122

theorem canonicalSound12807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12807.moment H = canonicalOutput12807.moment H :=
  canonical_of_padded canonicalInput12807 canonicalOutput12807 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12808 : ExponentCode := ⟨4, 4, ![![-1, -3, 3, 1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput12808 : ExponentCode := normalNode7118

theorem canonicalSound12808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12808.moment H = canonicalOutput12808.moment H :=
  canonical_of_padded canonicalInput12808 canonicalOutput12808 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12809 : ExponentCode := ⟨3, 4, ![![-1, -3, 3, 1], ![0, 1, -3, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput12809 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩

theorem canonicalSound12809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12809.moment H = canonicalOutput12809.moment H :=
  canonical_of_padded canonicalInput12809 canonicalOutput12809 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12810 : ExponentCode := ⟨5, 4, ![![-1, -3, 3, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput12810 : ExponentCode := normalNode6128

theorem canonicalSound12810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12810.moment H = canonicalOutput12810.moment H :=
  canonical_of_padded canonicalInput12810 canonicalOutput12810 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12811 : ExponentCode := ⟨4, 4, ![![-1, -3, 3, 1], ![0, 1, 0, -1], ![0, 2, 0, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput12811 : ExponentCode := normalNode6751

theorem canonicalSound12811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12811.moment H = canonicalOutput12811.moment H :=
  canonical_of_padded canonicalInput12811 canonicalOutput12811 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12812 : ExponentCode := ⟨3, 4, ![![-1, -3, 3, 1], ![0, 3, 0, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput12812 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node92⟩

theorem canonicalSound12812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12812.moment H = canonicalOutput12812.moment H :=
  canonical_of_padded canonicalInput12812 canonicalOutput12812 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12813 : ExponentCode := ⟨3, 4, ![![-1, -3, 3, 1], ![2, -1, 1, -2], ![-1, 4, -4, 1]]⟩

def canonicalOutput12813 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1209

theorem canonicalSound12813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12813.moment H = canonicalOutput12813.moment H :=
  canonical_of_padded canonicalInput12813 canonicalOutput12813 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12814 : ExponentCode := ⟨3, 4, ![![-1, -3, 3, 1], ![2, 1, 0, -3], ![-1, 2, -3, 2]]⟩

def canonicalOutput12814 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound12814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12814.moment H = canonicalOutput12814.moment H :=
  canonical_of_padded canonicalInput12814 canonicalOutput12814 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12815 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-2, 1, 1], ![1, -1, 0], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput12815 : ExponentCode := normalNode5551

theorem canonicalSound12815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12815.moment H = canonicalOutput12815.moment H :=
  canonical_of_padded canonicalInput12815 canonicalOutput12815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12816 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-2, 2, 0], ![1, -1, 0], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput12816 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node629⟩

theorem canonicalSound12816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12816.moment H = canonicalOutput12816.moment H :=
  canonical_of_padded canonicalInput12816 canonicalOutput12816 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12817 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-2, 3, -1], ![1, -1, 0], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput12817 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node540⟩

theorem canonicalSound12817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12817.moment H = canonicalOutput12817.moment H :=
  canonical_of_padded canonicalInput12817 canonicalOutput12817 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12818 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, -1, 2], ![0, 3, -3], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput12818 : ExponentCode := normalNode6256

theorem canonicalSound12818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12818.moment H = canonicalOutput12818.moment H :=
  canonical_of_padded canonicalInput12818 canonicalOutput12818 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12819 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![-1, -1, 2], ![0, 3, -3], ![2, 1, -3]]⟩

def canonicalOutput12819 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code688

theorem canonicalSound12819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12819.moment H = canonicalOutput12819.moment H :=
  canonical_of_padded canonicalInput12819 canonicalOutput12819 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12820 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![-1, -1, 2], ![0, 4, -4], ![2, 0, -2]]⟩

def canonicalOutput12820 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1042

theorem canonicalSound12820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12820.moment H = canonicalOutput12820.moment H :=
  canonical_of_padded canonicalInput12820 canonicalOutput12820 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12821 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![-1, -1, 2], ![1, 3, -4], ![1, 1, -2]]⟩

def canonicalOutput12821 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1290

theorem canonicalSound12821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12821.moment H = canonicalOutput12821.moment H :=
  canonical_of_padded canonicalInput12821 canonicalOutput12821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12822 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![-1, -1, 2], ![1, 4, -5], ![1, 0, -1]]⟩

def canonicalOutput12822 : ExponentCode := normalNode5975

theorem canonicalSound12822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12822.moment H = canonicalOutput12822.moment H :=
  canonical_of_padded canonicalInput12822 canonicalOutput12822 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12823 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 1, 0], ![0, -1, 1], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput12823 : ExponentCode := normalNode6264

theorem canonicalSound12823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12823.moment H = canonicalOutput12823.moment H :=
  canonical_of_padded canonicalInput12823 canonicalOutput12823 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12824 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 1, 0], ![0, 0, 0], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput12824 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node243⟩

theorem canonicalSound12824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12824.moment H = canonicalOutput12824.moment H :=
  canonical_of_padded canonicalInput12824 canonicalOutput12824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12825 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 1, 0], ![1, -1, 0], ![0, 0, 0], ![1, 3, -4]]⟩

def canonicalOutput12825 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node242⟩

theorem canonicalSound12825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12825.moment H = canonicalOutput12825.moment H :=
  canonical_of_padded canonicalInput12825 canonicalOutput12825 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12826 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 1, 0], ![1, -1, 0], ![0, 1, -1], ![1, 2, -3]]⟩

def canonicalOutput12826 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node736⟩

theorem canonicalSound12826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12826.moment H = canonicalOutput12826.moment H :=
  canonical_of_padded canonicalInput12826 canonicalOutput12826 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12827 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 1, 0], ![1, -1, 0], ![1, 0, -1], ![0, 3, -3]]⟩

def canonicalOutput12827 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node740⟩

theorem canonicalSound12827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12827.moment H = canonicalOutput12827.moment H :=
  canonical_of_padded canonicalInput12827 canonicalOutput12827 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12828 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 2, -1], ![0, 0, 0], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput12828 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound12828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12828.moment H = canonicalOutput12828.moment H :=
  canonical_of_padded canonicalInput12828 canonicalOutput12828 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12829 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 2, -1], ![0, 0, 0], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput12829 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound12829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12829.moment H = canonicalOutput12829.moment H :=
  canonical_of_padded canonicalInput12829 canonicalOutput12829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12830 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 2, -1], ![0, 3, -3], ![1, -1, 0], ![1, -1, 0]]⟩

def canonicalOutput12830 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1144⟩

theorem canonicalSound12830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12830.moment H = canonicalOutput12830.moment H :=
  canonical_of_padded canonicalInput12830 canonicalOutput12830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12831 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![-1, 2, -1], ![0, 3, -3], ![2, -2, 0]]⟩

def canonicalOutput12831 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩

theorem canonicalSound12831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12831.moment H = canonicalOutput12831.moment H :=
  canonical_of_padded canonicalInput12831 canonicalOutput12831 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12832 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![-1, 2, -1], ![1, 3, -4], ![1, -2, 1]]⟩

def canonicalOutput12832 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1292

theorem canonicalSound12832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12832.moment H = canonicalOutput12832.moment H :=
  canonical_of_padded canonicalInput12832 canonicalOutput12832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12833 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 3, -2], ![0, 0, 0], ![1, -1, 0], ![1, 1, -2]]⟩

def canonicalOutput12833 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩

theorem canonicalSound12833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12833.moment H = canonicalOutput12833.moment H :=
  canonical_of_padded canonicalInput12833 canonicalOutput12833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12834 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 3, -2], ![0, 2, -2], ![1, -1, 0], ![1, -1, 0]]⟩

def canonicalOutput12834 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node877⟩

theorem canonicalSound12834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12834.moment H = canonicalOutput12834.moment H :=
  canonical_of_padded canonicalInput12834 canonicalOutput12834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12835 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![-1, 3, -2], ![0, 2, -2], ![2, -2, 0]]⟩

def canonicalOutput12835 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node211⟩

theorem canonicalSound12835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12835.moment H = canonicalOutput12835.moment H :=
  canonical_of_padded canonicalInput12835 canonicalOutput12835 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12836 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 3, -2], ![1, -1, 0], ![0, 0, 0], ![1, 1, -2]]⟩

def canonicalOutput12836 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩

theorem canonicalSound12836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12836.moment H = canonicalOutput12836.moment H :=
  canonical_of_padded canonicalInput12836 canonicalOutput12836 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12837 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 3, -2], ![1, -1, 0], ![1, 0, -1], ![0, 1, -1]]⟩

def canonicalOutput12837 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node744⟩

theorem canonicalSound12837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12837.moment H = canonicalOutput12837.moment H :=
  canonical_of_padded canonicalInput12837 canonicalOutput12837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12838 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![-1, 3, -2], ![1, 2, -3], ![1, -2, 1]]⟩

def canonicalOutput12838 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1293

theorem canonicalSound12838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12838.moment H = canonicalOutput12838.moment H :=
  canonical_of_padded canonicalInput12838 canonicalOutput12838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12839 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 4, -3], ![0, 0, 0], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput12839 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node249⟩

theorem canonicalSound12839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12839.moment H = canonicalOutput12839.moment H :=
  canonical_of_padded canonicalInput12839 canonicalOutput12839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12840 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 4, -3], ![0, 1, -1], ![1, -2, 1], ![1, 0, -1]]⟩

def canonicalOutput12840 : ExponentCode := normalNode6282

theorem canonicalSound12840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12840.moment H = canonicalOutput12840.moment H :=
  canonical_of_padded canonicalInput12840 canonicalOutput12840 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12841 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![-1, 4, -3], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0]]⟩

def canonicalOutput12841 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node745⟩

theorem canonicalSound12841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12841.moment H = canonicalOutput12841.moment H :=
  canonical_of_padded canonicalInput12841 canonicalOutput12841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12842 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, -1, 1], ![-1, 1, 0], ![1, 1, -2], ![1, 2, -3]]⟩

def canonicalOutput12842 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node735⟩

theorem canonicalSound12842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12842.moment H = canonicalOutput12842.moment H :=
  canonical_of_padded canonicalInput12842 canonicalOutput12842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12843 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, -1, 1], ![-1, 4, -3], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput12843 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node745⟩

theorem canonicalSound12843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12843.moment H = canonicalOutput12843.moment H :=
  canonical_of_padded canonicalInput12843 canonicalOutput12843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12844 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, -1, 1], ![-1, 5, -4], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput12844 : ExponentCode := normalNode5990

theorem canonicalSound12844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12844.moment H = canonicalOutput12844.moment H :=
  canonical_of_padded canonicalInput12844 canonicalOutput12844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12845 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![0, 2, -2]]⟩

def canonicalOutput12845 : ExponentCode := normalNode6287

theorem canonicalSound12845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12845.moment H = canonicalOutput12845.moment H :=
  canonical_of_padded canonicalInput12845 canonicalOutput12845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12846 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, -1, 1], ![0, 3, -3], ![0, 1, -1], ![1, 0, -1]]⟩

def canonicalOutput12846 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node747⟩

theorem canonicalSound12846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12846.moment H = canonicalOutput12846.moment H :=
  canonical_of_padded canonicalInput12846 canonicalOutput12846 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12847 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, -1, 1], ![0, 3, -3], ![1, 0, -1], ![0, 1, -1]]⟩

def canonicalOutput12847 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node747⟩

theorem canonicalSound12847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12847.moment H = canonicalOutput12847.moment H :=
  canonical_of_padded canonicalInput12847 canonicalOutput12847 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12848 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, -1, 1], ![0, 4, -4], ![0, 0, 0], ![1, 0, -1]]⟩

def canonicalOutput12848 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node252⟩

theorem canonicalSound12848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12848.moment H = canonicalOutput12848.moment H :=
  canonical_of_padded canonicalInput12848 canonicalOutput12848 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12849 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, -1, 1], ![0, 4, -4], ![1, -1, 0], ![0, 1, -1]]⟩

def canonicalOutput12849 : ExponentCode := normalNode6288

theorem canonicalSound12849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12849.moment H = canonicalOutput12849.moment H :=
  canonical_of_padded canonicalInput12849 canonicalOutput12849 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12850 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, -1, 1], ![0, 4, -4], ![1, 0, -1], ![0, 0, 0]]⟩

def canonicalOutput12850 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node252⟩

theorem canonicalSound12850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12850.moment H = canonicalOutput12850.moment H :=
  canonical_of_padded canonicalInput12850 canonicalOutput12850 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12851 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, 0, 0], ![0, 1, -1], ![0, 3, -3], ![1, -1, 0]]⟩

def canonicalOutput12851 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node255⟩

theorem canonicalSound12851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12851.moment H = canonicalOutput12851.moment H :=
  canonical_of_padded canonicalInput12851 canonicalOutput12851 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12852 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![0, 0, 0], ![0, 2, -2], ![1, 1, -2]]⟩

def canonicalOutput12852 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node52⟩

theorem canonicalSound12852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12852.moment H = canonicalOutput12852.moment H :=
  canonical_of_padded canonicalInput12852 canonicalOutput12852 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12853 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![0, 0, 0], ![0, 4, -4], ![1, -1, 0]]⟩

def canonicalOutput12853 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node54⟩

theorem canonicalSound12853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12853.moment H = canonicalOutput12853.moment H :=
  canonical_of_padded canonicalInput12853 canonicalOutput12853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12854 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, 1, -1], ![-1, 1, 0], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput12854 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node736⟩

theorem canonicalSound12854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12854.moment H = canonicalOutput12854.moment H :=
  canonical_of_padded canonicalInput12854 canonicalOutput12854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12855 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![0, 1, -1], ![0, -1, 1], ![1, 3, -4]]⟩

def canonicalOutput12855 : ExponentCode := normalNode6289

theorem canonicalSound12855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12855.moment H = canonicalOutput12855.moment H :=
  canonical_of_padded canonicalInput12855 canonicalOutput12855 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12856 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, 1, -1], ![0, 0, 0], ![0, 3, -3], ![1, -1, 0]]⟩

def canonicalOutput12856 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node255⟩

theorem canonicalSound12856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12856.moment H = canonicalOutput12856.moment H :=
  canonical_of_padded canonicalInput12856 canonicalOutput12856 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12857 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, 1, -1], ![0, 1, -1], ![0, -1, 1], ![1, 2, -3]]⟩

def canonicalOutput12857 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node746⟩

theorem canonicalSound12857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12857.moment H = canonicalOutput12857.moment H :=
  canonical_of_padded canonicalInput12857 canonicalOutput12857 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12858 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, 1, -1], ![0, 3, -3], ![0, -1, 1], ![1, 0, -1]]⟩

def canonicalOutput12858 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node747⟩

theorem canonicalSound12858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12858.moment H = canonicalOutput12858.moment H :=
  canonical_of_padded canonicalInput12858 canonicalOutput12858 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12859 : ExponentCode := ⟨5, 3, ![![-1, -3, 4], ![0, 1, -1], ![0, 3, -3], ![1, -1, 0], ![0, 0, 0]]⟩

def canonicalOutput12859 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node255⟩

theorem canonicalSound12859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12859.moment H = canonicalOutput12859.moment H :=
  canonical_of_padded canonicalInput12859 canonicalOutput12859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12860 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![0, 3, -3], ![0, 2, -2], ![1, -2, 1]]⟩

def canonicalOutput12860 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node257⟩

theorem canonicalSound12860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12860.moment H = canonicalOutput12860.moment H :=
  canonical_of_padded canonicalInput12860 canonicalOutput12860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12861 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![0, 4, -4], ![0, -1, 1], ![1, 0, -1]]⟩

def canonicalOutput12861 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node252⟩

theorem canonicalSound12861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12861.moment H = canonicalOutput12861.moment H :=
  canonical_of_padded canonicalInput12861 canonicalOutput12861 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12862 : ExponentCode := ⟨4, 3, ![![-1, -3, 4], ![0, 4, -4], ![1, -1, 0], ![0, 0, 0]]⟩

def canonicalOutput12862 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node54⟩

theorem canonicalSound12862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12862.moment H = canonicalOutput12862.moment H :=
  canonical_of_padded canonicalInput12862 canonicalOutput12862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12863 : ExponentCode := ⟨5, 5, ![![-1, -2, -2, 2, 3], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput12863 : ExponentCode := normalNode7230

theorem canonicalSound12863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12863.moment H = canonicalOutput12863.moment H :=
  canonical_of_padded canonicalInput12863 canonicalOutput12863 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
