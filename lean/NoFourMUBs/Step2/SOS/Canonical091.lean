import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical155
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5824 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput5824 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node560⟩

theorem canonicalSound5824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5824.moment H = canonicalOutput5824.moment H :=
  canonical_of_padded canonicalInput5824 canonicalOutput5824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5825 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, -1, 1], ![0, 2, -2], ![0, -1, 1], ![2, 1, -3]]⟩

def canonicalOutput5825 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node541⟩

theorem canonicalSound5825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5825.moment H = canonicalOutput5825.moment H :=
  canonical_of_padded canonicalInput5825 canonicalOutput5825 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5826 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, -1, 1], ![0, 5, -5], ![1, -1, 0], ![1, -2, 1]]⟩

def canonicalOutput5826 : ExponentCode := normalNode3028

theorem canonicalSound5826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5826.moment H = canonicalOutput5826.moment H :=
  canonical_of_padded canonicalInput5826 canonicalOutput5826 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5827 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, -1, 1], ![1, -1, 0], ![0, -1, 1], ![1, 4, -5]]⟩

def canonicalOutput5827 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node552⟩

theorem canonicalSound5827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5827.moment H = canonicalOutput5827.moment H :=
  canonical_of_padded canonicalInput5827 canonicalOutput5827 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5828 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, -1, 1], ![1, -1, 0], ![0, 0, 0], ![1, 3, -4]]⟩

def canonicalOutput5828 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node173⟩

theorem canonicalSound5828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5828.moment H = canonicalOutput5828.moment H :=
  canonical_of_padded canonicalInput5828 canonicalOutput5828 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5829 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![0, 4, -4]]⟩

def canonicalOutput5829 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node565⟩

theorem canonicalSound5829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5829.moment H = canonicalOutput5829.moment H :=
  canonical_of_padded canonicalInput5829 canonicalOutput5829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5830 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, 0, 0], ![0, 4, -4], ![1, -2, 1], ![1, -1, 0]]⟩

def canonicalOutput5830 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node190⟩

theorem canonicalSound5830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5830.moment H = canonicalOutput5830.moment H :=
  canonical_of_padded canonicalInput5830 canonicalOutput5830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5831 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, 1, -1], ![-1, 3, -2], ![1, -2, 1], ![2, -1, -1]]⟩

def canonicalOutput5831 : ExponentCode := normalNode3007

theorem canonicalSound5831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5831.moment H = canonicalOutput5831.moment H :=
  canonical_of_padded canonicalInput5831 canonicalOutput5831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5832 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, 1, -1], ![0, -1, 1], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput5832 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node560⟩

theorem canonicalSound5832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5832.moment H = canonicalOutput5832.moment H :=
  canonical_of_padded canonicalInput5832 canonicalOutput5832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5833 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, 1, -1], ![0, 1, -1], ![0, -1, 1], ![2, 0, -2]]⟩

def canonicalOutput5833 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node555⟩

theorem canonicalSound5833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5833.moment H = canonicalOutput5833.moment H :=
  canonical_of_padded canonicalInput5833 canonicalOutput5833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5834 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, 1, -1], ![0, 2, -2], ![0, -1, 1], ![2, -1, -1]]⟩

def canonicalOutput5834 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node556⟩

theorem canonicalSound5834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5834.moment H = canonicalOutput5834.moment H :=
  canonical_of_padded canonicalInput5834 canonicalOutput5834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5835 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, 1, -1], ![1, -2, 1], ![0, 1, -1], ![1, 1, -2]]⟩

def canonicalOutput5835 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node569⟩

theorem canonicalSound5835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5835.moment H = canonicalOutput5835.moment H :=
  canonical_of_padded canonicalInput5835 canonicalOutput5835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5836 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, 1, -1], ![1, -2, 1], ![1, 0, -1], ![0, 2, -2]]⟩

def canonicalOutput5836 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node572⟩

theorem canonicalSound5836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5836.moment H = canonicalOutput5836.moment H :=
  canonical_of_padded canonicalInput5836 canonicalOutput5836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5837 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, 3, -3], ![0, -2, 2], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput5837 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node549⟩

theorem canonicalSound5837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5837.moment H = canonicalOutput5837.moment H :=
  canonical_of_padded canonicalInput5837 canonicalOutput5837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5838 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![0, 3, -3], ![0, -1, 1], ![2, -1, -1]]⟩

def canonicalOutput5838 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node170⟩

theorem canonicalSound5838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5838.moment H = canonicalOutput5838.moment H :=
  canonical_of_padded canonicalInput5838 canonicalOutput5838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5839 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![0, 4, -4], ![0, -2, 2], ![2, -1, -1]]⟩

def canonicalOutput5839 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node164⟩

theorem canonicalSound5839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5839.moment H = canonicalOutput5839.moment H :=
  canonical_of_padded canonicalInput5839 canonicalOutput5839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5840 : ExponentCode := ⟨3, 3, ![![-2, -1, 3], ![0, 5, -5], ![2, -4, 2]]⟩

def canonicalOutput5840 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code245

theorem canonicalSound5840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5840.moment H = canonicalOutput5840.moment H :=
  canonical_of_padded canonicalInput5840 canonicalOutput5840 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5841 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![1, -3, 2], ![0, 5, -5], ![1, -1, 0]]⟩

def canonicalOutput5841 : ExponentCode := normalNode3031

theorem canonicalSound5841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5841.moment H = canonicalOutput5841.moment H :=
  canonical_of_padded canonicalInput5841 canonicalOutput5841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5842 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![1, -2, 1], ![0, 0, 0], ![1, 3, -4]]⟩

def canonicalOutput5842 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node40⟩

theorem canonicalSound5842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5842.moment H = canonicalOutput5842.moment H :=
  canonical_of_padded canonicalInput5842 canonicalOutput5842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5843 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![1, -2, 1], ![1, -1, 0], ![0, 4, -4]]⟩

def canonicalOutput5843 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node190⟩

theorem canonicalSound5843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5843.moment H = canonicalOutput5843.moment H :=
  canonical_of_padded canonicalInput5843 canonicalOutput5843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5844 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.raw4971step0⟩

def canonicalOutput5844 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound5844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5844.moment H = canonicalOutput5844.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw4971step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw4971step0 = OAI.MUB6.Certificate.PairSemantics.raw4971.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw4971).trans (OAI.MUB6.Certificate.PairSemantics.canonical4971 hH)

def canonicalInput5845 : ExponentCode := ⟨6, 3, ![![-2, -1, 3], ![1, -1, 0], ![2, -1, -1], ![-1, 1, 0], ![-1, 1, 0], ![1, 1, -2]]⟩

def canonicalOutput5845 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1423⟩

theorem canonicalSound5845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5845.moment H = canonicalOutput5845.moment H :=
  canonical_of_padded canonicalInput5845 canonicalOutput5845 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5846 : ExponentCode := ⟨6, 3, ![![-2, -1, 3], ![1, -1, 0], ![2, -1, -1], ![-1, 1, 0], ![0, 1, -1], ![0, 1, -1]]⟩

def canonicalOutput5846 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1430⟩

theorem canonicalSound5846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5846.moment H = canonicalOutput5846.moment H :=
  canonical_of_padded canonicalInput5846 canonicalOutput5846 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5847 : ExponentCode := ⟨6, 3, ![![-2, -1, 3], ![1, -1, 0], ![3, -1, -2], ![-1, 1, 0], ![-1, 1, 0], ![0, 1, -1]]⟩

def canonicalOutput5847 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1422⟩

theorem canonicalSound5847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5847.moment H = canonicalOutput5847.moment H :=
  canonical_of_padded canonicalInput5847 canonicalOutput5847 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5848 : ExponentCode := ⟨6, 3, ![![-2, -1, 3], ![1, -1, 0], ![4, -1, -3], ![-1, 1, 0], ![-1, 1, 0], ![-1, 1, 0]]⟩

def canonicalOutput5848 : ExponentCode := normalNode113

theorem canonicalSound5848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5848.moment H = canonicalOutput5848.moment H :=
  canonical_of_padded canonicalInput5848 canonicalOutput5848 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation227, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5849 : ExponentCode := ⟨6, 3, ![![-2, -1, 3], ![2, -1, -1], ![2, -1, -1], ![-1, 1, 0], ![-1, 1, 0], ![0, 1, -1]]⟩

def canonicalOutput5849 : ExponentCode := normalNode208

theorem canonicalSound5849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5849.moment H = canonicalOutput5849.moment H :=
  canonical_of_padded canonicalInput5849 canonicalOutput5849 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5850 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![-3, 2, -1, 2], ![5, -1, -2, -2]]⟩

def canonicalOutput5850 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code75

theorem canonicalSound5850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5850.moment H = canonicalOutput5850.moment H :=
  canonical_of_padded canonicalInput5850 canonicalOutput5850 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5851 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![-2, 2, -1, 1], ![4, -1, -2, -1]]⟩

def canonicalOutput5851 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node106⟩

theorem canonicalSound5851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5851.moment H = canonicalOutput5851.moment H :=
  canonical_of_padded canonicalInput5851 canonicalOutput5851 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5852 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![-2, 2, 1, -1], ![4, -1, -4, 1]]⟩

def canonicalOutput5852 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node82⟩

theorem canonicalSound5852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5852.moment H = canonicalOutput5852.moment H :=
  canonical_of_padded canonicalInput5852 canonicalOutput5852 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5853 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![-2, 3, -3, 2], ![4, -2, 0, -2]]⟩

def canonicalOutput5853 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code57

theorem canonicalSound5853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5853.moment H = canonicalOutput5853.moment H :=
  canonical_of_padded canonicalInput5853 canonicalOutput5853 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5854 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![-2, 3, -2, 1], ![4, -2, -1, -1]]⟩

def canonicalOutput5854 : ExponentCode := normalNode235

theorem canonicalSound5854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5854.moment H = canonicalOutput5854.moment H :=
  canonical_of_padded canonicalInput5854 canonicalOutput5854 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5855 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![-1, 2, -3, 2], ![3, -1, 0, -2]]⟩

def canonicalOutput5855 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound5855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5855.moment H = canonicalOutput5855.moment H :=
  canonical_of_padded canonicalInput5855 canonicalOutput5855 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5856 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![-1, 2, 1, -2], ![3, -1, -4, 2]]⟩

def canonicalOutput5856 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node84⟩

theorem canonicalSound5856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5856.moment H = canonicalOutput5856.moment H :=
  canonical_of_padded canonicalInput5856 canonicalOutput5856 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5857 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![-1, 3, -4, 2], ![3, -2, 1, -2]]⟩

def canonicalOutput5857 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code39

theorem canonicalSound5857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5857.moment H = canonicalOutput5857.moment H :=
  canonical_of_padded canonicalInput5857 canonicalOutput5857 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5858 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![-1, 3, -3, 1], ![3, -2, 0, -1]]⟩

def canonicalOutput5858 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩

theorem canonicalSound5858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5858.moment H = canonicalOutput5858.moment H :=
  canonical_of_padded canonicalInput5858 canonicalOutput5858 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5859 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![-1, 3, -1, -1], ![3, -2, -2, 1]]⟩

def canonicalOutput5859 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound5859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5859.moment H = canonicalOutput5859.moment H :=
  canonical_of_padded canonicalInput5859 canonicalOutput5859 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5860 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![-1, 4, -2, -1], ![3, -3, -1, 1]]⟩

def canonicalOutput5860 : ExponentCode := normalNode216

theorem canonicalSound5860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5860.moment H = canonicalOutput5860.moment H :=
  canonical_of_padded canonicalInput5860 canonicalOutput5860 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5861 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -2, -1, 3], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput5861 : ExponentCode := normalNode9578

theorem canonicalSound5861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5861.moment H = canonicalOutput5861.moment H :=
  canonical_of_padded canonicalInput5861 canonicalOutput5861 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5862 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -2, -1, 3], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput5862 : ExponentCode := normalNode10905

theorem canonicalSound5862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5862.moment H = canonicalOutput5862.moment H :=
  canonical_of_padded canonicalInput5862 canonicalOutput5862 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5863 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -2, -1, 3], ![1, 1, -2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput5863 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code406

theorem canonicalSound5863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5863.moment H = canonicalOutput5863.moment H :=
  canonical_of_padded canonicalInput5863 canonicalOutput5863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5864 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -2, 0, 2], ![1, 0, -2, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput5864 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code421

theorem canonicalSound5864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5864.moment H = canonicalOutput5864.moment H :=
  canonical_of_padded canonicalInput5864 canonicalOutput5864 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5865 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput5865 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code395

theorem canonicalSound5865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5865.moment H = canonicalOutput5865.moment H :=
  canonical_of_padded canonicalInput5865 canonicalOutput5865 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5866 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, -3, 4], ![0, 1, 0, -1], ![1, 1, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput5866 : ExponentCode := normalNode3034

theorem canonicalSound5866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5866.moment H = canonicalOutput5866.moment H :=
  canonical_of_padded canonicalInput5866 canonicalOutput5866 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5867 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -1, -3, 4], ![0, 1, 0, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput5867 : ExponentCode := normalNode6012

theorem canonicalSound5867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5867.moment H = canonicalOutput5867.moment H :=
  canonical_of_padded canonicalInput5867 canonicalOutput5867 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5868 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -1, -3, 4], ![0, 2, 0, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput5868 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node399⟩

theorem canonicalSound5868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5868.moment H = canonicalOutput5868.moment H :=
  canonical_of_padded canonicalInput5868 canonicalOutput5868 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5869 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -1, -3, 4], ![1, 0, 0, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput5869 : ExponentCode := normalNode6013

theorem canonicalSound5869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5869.moment H = canonicalOutput5869.moment H :=
  canonical_of_padded canonicalInput5869 canonicalOutput5869 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5870 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -1, -3, 4], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput5870 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code134

theorem canonicalSound5870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5870.moment H = canonicalOutput5870.moment H :=
  canonical_of_padded canonicalInput5870 canonicalOutput5870 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5871 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -1, -3, 4], ![1, 2, 0, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput5871 : ExponentCode := normalNode6013

theorem canonicalSound5871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5871.moment H = canonicalOutput5871.moment H :=
  canonical_of_padded canonicalInput5871 canonicalOutput5871 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5872 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![0, -1, -3, 4], ![2, 2, 0, -4]]⟩

def canonicalOutput5872 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node99⟩

theorem canonicalSound5872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5872.moment H = canonicalOutput5872.moment H :=
  canonical_of_padded canonicalInput5872 canonicalOutput5872 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5873 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, -2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput5873 : ExponentCode := normalNode1886

theorem canonicalSound5873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5873.moment H = canonicalOutput5873.moment H :=
  canonical_of_padded canonicalInput5873 canonicalOutput5873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5874 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, -2, 3], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput5874 : ExponentCode := normalNode1894

theorem canonicalSound5874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5874.moment H = canonicalOutput5874.moment H :=
  canonical_of_padded canonicalInput5874 canonicalOutput5874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5875 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, -2, 3], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5875 : ExponentCode := normalNode1898

theorem canonicalSound5875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5875.moment H = canonicalOutput5875.moment H :=
  canonical_of_padded canonicalInput5875 canonicalOutput5875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5876 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput5876 : ExponentCode := normalNode7842

theorem canonicalSound5876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5876.moment H = canonicalOutput5876.moment H :=
  canonical_of_padded canonicalInput5876 canonicalOutput5876 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5877 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -1, -2, 3], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput5877 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code446

theorem canonicalSound5877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5877.moment H = canonicalOutput5877.moment H :=
  canonical_of_padded canonicalInput5877 canonicalOutput5877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5878 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput5878 : ExponentCode := normalNode1747

theorem canonicalSound5878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5878.moment H = canonicalOutput5878.moment H :=
  canonical_of_padded canonicalInput5878 canonicalOutput5878 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5879 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 1, -2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput5879 : ExponentCode := normalNode1749

theorem canonicalSound5879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5879.moment H = canonicalOutput5879.moment H :=
  canonical_of_padded canonicalInput5879 canonicalOutput5879 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5880 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput5880 : ExponentCode := normalNode1848

theorem canonicalSound5880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5880.moment H = canonicalOutput5880.moment H :=
  canonical_of_padded canonicalInput5880 canonicalOutput5880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5881 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput5881 : ExponentCode := normalNode1857

theorem canonicalSound5881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5881.moment H = canonicalOutput5881.moment H :=
  canonical_of_padded canonicalInput5881 canonicalOutput5881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5882 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput5882 : ExponentCode := normalNode1864

theorem canonicalSound5882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5882.moment H = canonicalOutput5882.moment H :=
  canonical_of_padded canonicalInput5882 canonicalOutput5882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5883 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput5883 : ExponentCode := normalNode1865

theorem canonicalSound5883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5883.moment H = canonicalOutput5883.moment H :=
  canonical_of_padded canonicalInput5883 canonicalOutput5883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5884 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput5884 : ExponentCode := normalNode1867

theorem canonicalSound5884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5884.moment H = canonicalOutput5884.moment H :=
  canonical_of_padded canonicalInput5884 canonicalOutput5884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5885 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput5885 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code432

theorem canonicalSound5885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5885.moment H = canonicalOutput5885.moment H :=
  canonical_of_padded canonicalInput5885 canonicalOutput5885 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5886 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput5886 : ExponentCode := normalNode1737

theorem canonicalSound5886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5886.moment H = canonicalOutput5886.moment H :=
  canonical_of_padded canonicalInput5886 canonicalOutput5886 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5887 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 1, -3, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput5887 : ExponentCode := normalNode1739

theorem canonicalSound5887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5887.moment H = canonicalOutput5887.moment H :=
  canonical_of_padded canonicalInput5887 canonicalOutput5887 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
