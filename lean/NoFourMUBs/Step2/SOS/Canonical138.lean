import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8832 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput8832 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound8832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8832.moment H = canonicalOutput8832.moment H :=
  canonical_of_padded canonicalInput8832 canonicalOutput8832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8833 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput8833 : ExponentCode := normalNode4550

theorem canonicalSound8833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8833.moment H = canonicalOutput8833.moment H :=
  canonical_of_padded canonicalInput8833 canonicalOutput8833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8834 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput8834 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound8834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8834.moment H = canonicalOutput8834.moment H :=
  canonical_of_padded canonicalInput8834 canonicalOutput8834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8835 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput8835 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2087⟩

theorem canonicalSound8835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8835.moment H = canonicalOutput8835.moment H :=
  canonical_of_padded canonicalInput8835 canonicalOutput8835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8836 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput8836 : ExponentCode := normalNode4543

theorem canonicalSound8836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8836.moment H = canonicalOutput8836.moment H :=
  canonical_of_padded canonicalInput8836 canonicalOutput8836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8837 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput8837 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound8837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8837.moment H = canonicalOutput8837.moment H :=
  canonical_of_padded canonicalInput8837 canonicalOutput8837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8838 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput8838 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound8838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8838.moment H = canonicalOutput8838.moment H :=
  canonical_of_padded canonicalInput8838 canonicalOutput8838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8839 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -3, -1, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput8839 : ExponentCode := normalNode5534

theorem canonicalSound8839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8839.moment H = canonicalOutput8839.moment H :=
  canonical_of_padded canonicalInput8839 canonicalOutput8839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8840 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput8840 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1502⟩

theorem canonicalSound8840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8840.moment H = canonicalOutput8840.moment H :=
  canonical_of_padded canonicalInput8840 canonicalOutput8840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8841 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput8841 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound8841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8841.moment H = canonicalOutput8841.moment H :=
  canonical_of_padded canonicalInput8841 canonicalOutput8841 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8842 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, -2, -3, 3]]⟩

def canonicalOutput8842 : ExponentCode := normalNode10245

theorem canonicalSound8842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8842.moment H = canonicalOutput8842.moment H :=
  canonical_of_padded canonicalInput8842 canonicalOutput8842 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8843 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 2, -2, 0], ![1, -3, 1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8843 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2007⟩

theorem canonicalSound8843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8843.moment H = canonicalOutput8843.moment H :=
  canonical_of_padded canonicalInput8843 canonicalOutput8843 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput8844 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 2, 0, -2], ![1, -2, -2, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput8844 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2188⟩

theorem canonicalSound8844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8844.moment H = canonicalOutput8844.moment H :=
  canonical_of_padded canonicalInput8844 canonicalOutput8844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8845 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 2, 1, -3], ![1, -3, -1, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput8845 : ExponentCode := normalNode5535

theorem canonicalSound8845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8845.moment H = canonicalOutput8845.moment H :=
  canonical_of_padded canonicalInput8845 canonicalOutput8845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8846 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 2, 1, -3], ![1, -3, 0, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput8846 : ExponentCode := normalNode5527

theorem canonicalSound8846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8846.moment H = canonicalOutput8846.moment H :=
  canonical_of_padded canonicalInput8846 canonicalOutput8846 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8847 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput8847 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound8847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8847.moment H = canonicalOutput8847.moment H :=
  canonical_of_padded canonicalInput8847 canonicalOutput8847 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8848 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput8848 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound8848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8848.moment H = canonicalOutput8848.moment H :=
  canonical_of_padded canonicalInput8848 canonicalOutput8848 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8849 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput8849 : ExponentCode := normalNode10564

theorem canonicalSound8849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8849.moment H = canonicalOutput8849.moment H :=
  canonical_of_padded canonicalInput8849 canonicalOutput8849 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8850 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput8850 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound8850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8850.moment H = canonicalOutput8850.moment H :=
  canonical_of_padded canonicalInput8850 canonicalOutput8850 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8851 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput8851 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1283⟩

theorem canonicalSound8851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8851.moment H = canonicalOutput8851.moment H :=
  canonical_of_padded canonicalInput8851 canonicalOutput8851 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8852 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![1, 0, -4, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput8852 : ExponentCode := normalNode10669

theorem canonicalSound8852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8852.moment H = canonicalOutput8852.moment H :=
  canonical_of_padded canonicalInput8852 canonicalOutput8852 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8853 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput8853 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1283⟩

theorem canonicalSound8853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8853.moment H = canonicalOutput8853.moment H :=
  canonical_of_padded canonicalInput8853 canonicalOutput8853 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8854 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, -3, -1, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput8854 : ExponentCode := normalNode5534

theorem canonicalSound8854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8854.moment H = canonicalOutput8854.moment H :=
  canonical_of_padded canonicalInput8854 canonicalOutput8854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8855 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![0, 1, 1, -2], ![2, -2, -3, 3]]⟩

def canonicalOutput8855 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code158

theorem canonicalSound8855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8855.moment H = canonicalOutput8855.moment H :=
  canonical_of_padded canonicalInput8855 canonicalOutput8855 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8856 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![0, 2, -3, 1], ![1, -3, 1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8856 : ExponentCode := normalNode4538

theorem canonicalSound8856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8856.moment H = canonicalOutput8856.moment H :=
  canonical_of_padded canonicalInput8856 canonicalOutput8856 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8857 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, -3, 0, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput8857 : ExponentCode := normalNode4130

theorem canonicalSound8857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8857.moment H = canonicalOutput8857.moment H :=
  canonical_of_padded canonicalInput8857 canonicalOutput8857 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8858 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, -3, 1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput8858 : ExponentCode := normalNode4436

theorem canonicalSound8858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8858.moment H = canonicalOutput8858.moment H :=
  canonical_of_padded canonicalInput8858 canonicalOutput8858 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8859 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -3, -1, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput8859 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound8859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8859.moment H = canonicalOutput8859.moment H :=
  canonical_of_padded canonicalInput8859 canonicalOutput8859 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8860 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput8860 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩

theorem canonicalSound8860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8860.moment H = canonicalOutput8860.moment H :=
  canonical_of_padded canonicalInput8860 canonicalOutput8860 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8861 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -2, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput8861 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound8861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8861.moment H = canonicalOutput8861.moment H :=
  canonical_of_padded canonicalInput8861 canonicalOutput8861 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8862 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -2, 2, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput8862 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound8862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8862.moment H = canonicalOutput8862.moment H :=
  canonical_of_padded canonicalInput8862 canonicalOutput8862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8863 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -1, -3, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput8863 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound8863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8863.moment H = canonicalOutput8863.moment H :=
  canonical_of_padded canonicalInput8863 canonicalOutput8863 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8864 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput8864 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound8864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8864.moment H = canonicalOutput8864.moment H :=
  canonical_of_padded canonicalInput8864 canonicalOutput8864 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8865 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput8865 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1006⟩

theorem canonicalSound8865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8865.moment H = canonicalOutput8865.moment H :=
  canonical_of_padded canonicalInput8865 canonicalOutput8865 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8866 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput8866 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound8866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8866.moment H = canonicalOutput8866.moment H :=
  canonical_of_padded canonicalInput8866 canonicalOutput8866 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8867 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, 1, 1, -3], ![1, -2, -3, 4]]⟩

def canonicalOutput8867 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1018

theorem canonicalSound8867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8867.moment H = canonicalOutput8867.moment H :=
  canonical_of_padded canonicalInput8867 canonicalOutput8867 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8868 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput8868 : ExponentCode := normalNode4522

theorem canonicalSound8868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8868.moment H = canonicalOutput8868.moment H :=
  canonical_of_padded canonicalInput8868 canonicalOutput8868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8869 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![0, 2, -3, 1], ![2, -3, 0, 1]]⟩

def canonicalOutput8869 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code441

theorem canonicalSound8869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8869.moment H = canonicalOutput8869.moment H :=
  canonical_of_padded canonicalInput8869 canonicalOutput8869 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput8870 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![0, 2, -2, 0], ![1, -2, -1, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput8870 : ExponentCode := normalNode4525

theorem canonicalSound8870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8870.moment H = canonicalOutput8870.moment H :=
  canonical_of_padded canonicalInput8870 canonicalOutput8870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8871 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput8871 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1000

theorem canonicalSound8871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8871.moment H = canonicalOutput8871.moment H :=
  canonical_of_padded canonicalInput8871 canonicalOutput8871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8872 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![0, 2, -2, 0], ![2, -3, -1, 2]]⟩

def canonicalOutput8872 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code783

theorem canonicalSound8872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8872.moment H = canonicalOutput8872.moment H :=
  canonical_of_padded canonicalInput8872 canonicalOutput8872 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8873 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![0, 2, -1, -1], ![2, -3, -2, 3]]⟩

def canonicalOutput8873 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code811

theorem canonicalSound8873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8873.moment H = canonicalOutput8873.moment H :=
  canonical_of_padded canonicalInput8873 canonicalOutput8873 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8874 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, -3, 0, 2], ![1, 2, -3, 0]]⟩

def canonicalOutput8874 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1002

theorem canonicalSound8874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8874.moment H = canonicalOutput8874.moment H :=
  canonical_of_padded canonicalInput8874 canonicalOutput8874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8875 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, -2, -1, 2], ![1, 1, -2, 0]]⟩

def canonicalOutput8875 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound8875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8875.moment H = canonicalOutput8875.moment H :=
  canonical_of_padded canonicalInput8875 canonicalOutput8875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8876 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, -2, 1, 0], ![1, 1, -4, 2]]⟩

def canonicalOutput8876 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node615⟩

theorem canonicalSound8876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8876.moment H = canonicalOutput8876.moment H :=
  canonical_of_padded canonicalInput8876 canonicalOutput8876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8877 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput8877 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1200⟩

theorem canonicalSound8877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8877.moment H = canonicalOutput8877.moment H :=
  canonical_of_padded canonicalInput8877 canonicalOutput8877 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8878 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput8878 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1204⟩

theorem canonicalSound8878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8878.moment H = canonicalOutput8878.moment H :=
  canonical_of_padded canonicalInput8878 canonicalOutput8878 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8879 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput8879 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound8879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8879.moment H = canonicalOutput8879.moment H :=
  canonical_of_padded canonicalInput8879 canonicalOutput8879 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8880 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 0, -4, 3]]⟩

def canonicalOutput8880 : ExponentCode := normalNode9945

theorem canonicalSound8880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8880.moment H = canonicalOutput8880.moment H :=
  canonical_of_padded canonicalInput8880 canonicalOutput8880 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8881 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, 0, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput8881 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound8881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8881.moment H = canonicalOutput8881.moment H :=
  canonical_of_padded canonicalInput8881 canonicalOutput8881 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8882 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, 2, -3, 0], ![1, -3, 0, 2]]⟩

def canonicalOutput8882 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1002

theorem canonicalSound8882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8882.moment H = canonicalOutput8882.moment H :=
  canonical_of_padded canonicalInput8882 canonicalOutput8882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8883 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 2, -3], ![1, 2, -2, -1], ![1, -3, -1, 3]]⟩

def canonicalOutput8883 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1020

theorem canonicalSound8883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8883.moment H = canonicalOutput8883.moment H :=
  canonical_of_padded canonicalInput8883 canonicalOutput8883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8884 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 3, -4], ![1, -2, -2, 3], ![1, 1, -2, 0]]⟩

def canonicalOutput8884 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code996

theorem canonicalSound8884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8884.moment H = canonicalOutput8884.moment H :=
  canonical_of_padded canonicalInput8884 canonicalOutput8884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8885 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 3, -4], ![1, -2, -1, 2], ![1, 1, -3, 1]]⟩

def canonicalOutput8885 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code995

theorem canonicalSound8885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8885.moment H = canonicalOutput8885.moment H :=
  canonical_of_padded canonicalInput8885 canonicalOutput8885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8886 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 3, -4], ![1, -2, 0, 1], ![1, 1, -4, 2]]⟩

def canonicalOutput8886 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code994

theorem canonicalSound8886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8886.moment H = canonicalOutput8886.moment H :=
  canonical_of_padded canonicalInput8886 canonicalOutput8886 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8887 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 3, -4], ![1, -1, -1, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput8887 : ExponentCode := normalNode9722

theorem canonicalSound8887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8887.moment H = canonicalOutput8887.moment H :=
  canonical_of_padded canonicalInput8887 canonicalOutput8887 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8888 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 0, -4, 3]]⟩

def canonicalOutput8888 : ExponentCode := normalNode9729

theorem canonicalSound8888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8888.moment H = canonicalOutput8888.moment H :=
  canonical_of_padded canonicalInput8888 canonicalOutput8888 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8889 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -4, 2], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput8889 : ExponentCode := normalNode11053

theorem canonicalSound8889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8889.moment H = canonicalOutput8889.moment H :=
  canonical_of_padded canonicalInput8889 canonicalOutput8889 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8890 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 2, -3, 1], ![0, 1, 0, -1], ![1, -3, 2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8890 : ExponentCode := normalNode5413

theorem canonicalSound8890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8890.moment H = canonicalOutput8890.moment H :=
  canonical_of_padded canonicalInput8890 canonicalOutput8890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8891 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 2, -3, 1], ![0, 1, 1, -2], ![1, -3, 1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8891 : ExponentCode := normalNode4538

theorem canonicalSound8891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8891.moment H = canonicalOutput8891.moment H :=
  canonical_of_padded canonicalInput8891 canonicalOutput8891 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8892 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 2, -3, 1], ![0, 1, 2, -3], ![1, -3, 0, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput8892 : ExponentCode := normalNode4571

theorem canonicalSound8892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8892.moment H = canonicalOutput8892.moment H :=
  canonical_of_padded canonicalInput8892 canonicalOutput8892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8893 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -3, 1], ![1, -3, 2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8893 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1205

theorem canonicalSound8893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8893.moment H = canonicalOutput8893.moment H :=
  canonical_of_padded canonicalInput8893 canonicalOutput8893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8894 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -3, 1], ![1, -2, -1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput8894 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code785

theorem canonicalSound8894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8894.moment H = canonicalOutput8894.moment H :=
  canonical_of_padded canonicalInput8894 canonicalOutput8894 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8895 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 2, -3, 1], ![1, -2, 0, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput8895 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound8895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8895.moment H = canonicalOutput8895.moment H :=
  canonical_of_padded canonicalInput8895 canonicalOutput8895 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
