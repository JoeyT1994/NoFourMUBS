import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4800 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 3, -1, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput4800 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2209⟩

theorem canonicalSound4800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4800.moment H = canonicalOutput4800.moment H :=
  canonical_of_padded canonicalInput4800 canonicalOutput4800 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4801 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![1, -1, 1, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput4801 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node983⟩

theorem canonicalSound4801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4801.moment H = canonicalOutput4801.moment H :=
  canonical_of_padded canonicalInput4801 canonicalOutput4801 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4802 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![1, -1, 2, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput4802 : ExponentCode := normalNode7106

theorem canonicalSound4802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4802.moment H = canonicalOutput4802.moment H :=
  canonical_of_padded canonicalInput4802 canonicalOutput4802 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4803 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput4803 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node896⟩

theorem canonicalSound4803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4803.moment H = canonicalOutput4803.moment H :=
  canonical_of_padded canonicalInput4803 canonicalOutput4803 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4804 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput4804 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1261⟩

theorem canonicalSound4804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4804.moment H = canonicalOutput4804.moment H :=
  canonical_of_padded canonicalInput4804 canonicalOutput4804 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4805 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput4805 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound4805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4805.moment H = canonicalOutput4805.moment H :=
  canonical_of_padded canonicalInput4805 canonicalOutput4805 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4806 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![1, 1, -3, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput4806 : ExponentCode := normalNode6460

theorem canonicalSound4806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4806.moment H = canonicalOutput4806.moment H :=
  canonical_of_padded canonicalInput4806 canonicalOutput4806 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4807 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput4807 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1362⟩

theorem canonicalSound4807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4807.moment H = canonicalOutput4807.moment H :=
  canonical_of_padded canonicalInput4807 canonicalOutput4807 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4808 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput4808 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2228⟩

theorem canonicalSound4808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4808.moment H = canonicalOutput4808.moment H :=
  canonical_of_padded canonicalInput4808 canonicalOutput4808 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4809 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, -1, 0, 1], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput4809 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2189⟩

theorem canonicalSound4809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4809.moment H = canonicalOutput4809.moment H :=
  canonical_of_padded canonicalInput4809 canonicalOutput4809 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4810 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 3, -3, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput4810 : ExponentCode := normalNode5898

theorem canonicalSound4810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4810.moment H = canonicalOutput4810.moment H :=
  canonical_of_padded canonicalInput4810 canonicalOutput4810 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4811 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 3, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput4811 : ExponentCode := normalNode5516

theorem canonicalSound4811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4811.moment H = canonicalOutput4811.moment H :=
  canonical_of_padded canonicalInput4811 canonicalOutput4811 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4812 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 3, -1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput4812 : ExponentCode := normalNode3596

theorem canonicalSound4812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4812.moment H = canonicalOutput4812.moment H :=
  canonical_of_padded canonicalInput4812 canonicalOutput4812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4813 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput4813 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2183⟩

theorem canonicalSound4813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4813.moment H = canonicalOutput4813.moment H :=
  canonical_of_padded canonicalInput4813 canonicalOutput4813 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4814 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput4814 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2357⟩

theorem canonicalSound4814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4814.moment H = canonicalOutput4814.moment H :=
  canonical_of_padded canonicalInput4814 canonicalOutput4814 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4815 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 1, 0, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput4815 : ExponentCode := normalNode5516

theorem canonicalSound4815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4815.moment H = canonicalOutput4815.moment H :=
  canonical_of_padded canonicalInput4815 canonicalOutput4815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4816 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput4816 : ExponentCode := normalNode5070

theorem canonicalSound4816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4816.moment H = canonicalOutput4816.moment H :=
  canonical_of_padded canonicalInput4816 canonicalOutput4816 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4817 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput4817 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1634⟩

theorem canonicalSound4817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4817.moment H = canonicalOutput4817.moment H :=
  canonical_of_padded canonicalInput4817 canonicalOutput4817 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4818 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput4818 : ExponentCode := normalNode2378

theorem canonicalSound4818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4818.moment H = canonicalOutput4818.moment H :=
  canonical_of_padded canonicalInput4818 canonicalOutput4818 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4819 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -2, -1]]⟩

def canonicalOutput4819 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1737⟩

theorem canonicalSound4819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4819.moment H = canonicalOutput4819.moment H :=
  canonical_of_padded canonicalInput4819 canonicalOutput4819 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4820 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput4820 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1840⟩

theorem canonicalSound4820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4820.moment H = canonicalOutput4820.moment H :=
  canonical_of_padded canonicalInput4820 canonicalOutput4820 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4821 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput4821 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1839⟩

theorem canonicalSound4821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4821.moment H = canonicalOutput4821.moment H :=
  canonical_of_padded canonicalInput4821 canonicalOutput4821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4822 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 3, -3, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput4822 : ExponentCode := normalNode5496

theorem canonicalSound4822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4822.moment H = canonicalOutput4822.moment H :=
  canonical_of_padded canonicalInput4822 canonicalOutput4822 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput4823 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 3, -2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput4823 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2082⟩

theorem canonicalSound4823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4823.moment H = canonicalOutput4823.moment H :=
  canonical_of_padded canonicalInput4823 canonicalOutput4823 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput4824 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput4824 : ExponentCode := normalNode5866

theorem canonicalSound4824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4824.moment H = canonicalOutput4824.moment H :=
  canonical_of_padded canonicalInput4824 canonicalOutput4824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4825 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput4825 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1738⟩

theorem canonicalSound4825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4825.moment H = canonicalOutput4825.moment H :=
  canonical_of_padded canonicalInput4825 canonicalOutput4825 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4826 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput4826 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound4826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4826.moment H = canonicalOutput4826.moment H :=
  canonical_of_padded canonicalInput4826 canonicalOutput4826 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4827 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput4827 : ExponentCode := normalNode2487

theorem canonicalSound4827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4827.moment H = canonicalOutput4827.moment H :=
  canonical_of_padded canonicalInput4827 canonicalOutput4827 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4828 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput4828 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1737⟩

theorem canonicalSound4828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4828.moment H = canonicalOutput4828.moment H :=
  canonical_of_padded canonicalInput4828 canonicalOutput4828 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4829 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput4829 : ExponentCode := normalNode2931

theorem canonicalSound4829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4829.moment H = canonicalOutput4829.moment H :=
  canonical_of_padded canonicalInput4829 canonicalOutput4829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4830 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput4830 : ExponentCode := normalNode2932

theorem canonicalSound4830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4830.moment H = canonicalOutput4830.moment H :=
  canonical_of_padded canonicalInput4830 canonicalOutput4830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4831 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput4831 : ExponentCode := normalNode2932

theorem canonicalSound4831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4831.moment H = canonicalOutput4831.moment H :=
  canonical_of_padded canonicalInput4831 canonicalOutput4831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4832 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput4832 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1344⟩

theorem canonicalSound4832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4832.moment H = canonicalOutput4832.moment H :=
  canonical_of_padded canonicalInput4832 canonicalOutput4832 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4833 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput4833 : ExponentCode := normalNode5878

theorem canonicalSound4833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4833.moment H = canonicalOutput4833.moment H :=
  canonical_of_padded canonicalInput4833 canonicalOutput4833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4834 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput4834 : ExponentCode := normalNode2508

theorem canonicalSound4834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4834.moment H = canonicalOutput4834.moment H :=
  canonical_of_padded canonicalInput4834 canonicalOutput4834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4835 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![0, 1, -2, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput4835 : ExponentCode := normalNode2493

theorem canonicalSound4835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4835.moment H = canonicalOutput4835.moment H :=
  canonical_of_padded canonicalInput4835 canonicalOutput4835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4836 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![0, 1, -1, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput4836 : ExponentCode := normalNode2931

theorem canonicalSound4836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4836.moment H = canonicalOutput4836.moment H :=
  canonical_of_padded canonicalInput4836 canonicalOutput4836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4837 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![0, 2, -2, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput4837 : ExponentCode := normalNode4428

theorem canonicalSound4837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4837.moment H = canonicalOutput4837.moment H :=
  canonical_of_padded canonicalInput4837 canonicalOutput4837 (by decide) (by decide)
    ⟨false, false, canonicalPermutation35, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4838 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput4838 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1842⟩

theorem canonicalSound4838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4838.moment H = canonicalOutput4838.moment H :=
  canonical_of_padded canonicalInput4838 canonicalOutput4838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4839 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput4839 : ExponentCode := normalNode2934

theorem canonicalSound4839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4839.moment H = canonicalOutput4839.moment H :=
  canonical_of_padded canonicalInput4839 canonicalOutput4839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4840 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 2, -2, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput4840 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound4840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4840.moment H = canonicalOutput4840.moment H :=
  canonical_of_padded canonicalInput4840 canonicalOutput4840 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput4841 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput4841 : ExponentCode := normalNode5885

theorem canonicalSound4841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4841.moment H = canonicalOutput4841.moment H :=
  canonical_of_padded canonicalInput4841 canonicalOutput4841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4842 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 2, -1, -1], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput4842 : ExponentCode := normalNode2520

theorem canonicalSound4842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4842.moment H = canonicalOutput4842.moment H :=
  canonical_of_padded canonicalInput4842 canonicalOutput4842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4843 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput4843 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1753⟩

theorem canonicalSound4843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4843.moment H = canonicalOutput4843.moment H :=
  canonical_of_padded canonicalInput4843 canonicalOutput4843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4844 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 2, 0, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput4844 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound4844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4844.moment H = canonicalOutput4844.moment H :=
  canonical_of_padded canonicalInput4844 canonicalOutput4844 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput4845 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput4845 : ExponentCode := normalNode2524

theorem canonicalSound4845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4845.moment H = canonicalOutput4845.moment H :=
  canonical_of_padded canonicalInput4845 canonicalOutput4845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4846 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 2, 1, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput4846 : ExponentCode := normalNode7839

theorem canonicalSound4846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4846.moment H = canonicalOutput4846.moment H :=
  canonical_of_padded canonicalInput4846 canonicalOutput4846 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4847 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 3, -3, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput4847 : ExponentCode := normalNode5496

theorem canonicalSound4847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4847.moment H = canonicalOutput4847.moment H :=
  canonical_of_padded canonicalInput4847 canonicalOutput4847 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput4848 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 3, -3, 0], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput4848 : ExponentCode := normalNode5904

theorem canonicalSound4848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4848.moment H = canonicalOutput4848.moment H :=
  canonical_of_padded canonicalInput4848 canonicalOutput4848 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4849 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput4849 : ExponentCode := normalNode5878

theorem canonicalSound4849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4849.moment H = canonicalOutput4849.moment H :=
  canonical_of_padded canonicalInput4849 canonicalOutput4849 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4850 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 3, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput4850 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound4850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4850.moment H = canonicalOutput4850.moment H :=
  canonical_of_padded canonicalInput4850 canonicalOutput4850 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4851 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 3, 1, -4], ![1, 0, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput4851 : ExponentCode := normalNode2527

theorem canonicalSound4851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4851.moment H = canonicalOutput4851.moment H :=
  canonical_of_padded canonicalInput4851 canonicalOutput4851 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4852 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![0, 3, 1, -4], ![2, -1, -3, 2]]⟩

def canonicalOutput4852 : ExponentCode := normalNode7823

theorem canonicalSound4852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4852.moment H = canonicalOutput4852.moment H :=
  canonical_of_padded canonicalInput4852 canonicalOutput4852 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4853 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput4853 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node984⟩

theorem canonicalSound4853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4853.moment H = canonicalOutput4853.moment H :=
  canonical_of_padded canonicalInput4853 canonicalOutput4853 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4854 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput4854 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩

theorem canonicalSound4854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4854.moment H = canonicalOutput4854.moment H :=
  canonical_of_padded canonicalInput4854 canonicalOutput4854 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4855 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![1, 0, -3, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput4855 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node988⟩

theorem canonicalSound4855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4855.moment H = canonicalOutput4855.moment H :=
  canonical_of_padded canonicalInput4855 canonicalOutput4855 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4856 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput4856 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1277⟩

theorem canonicalSound4856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4856.moment H = canonicalOutput4856.moment H :=
  canonical_of_padded canonicalInput4856 canonicalOutput4856 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4857 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput4857 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1263⟩

theorem canonicalSound4857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4857.moment H = canonicalOutput4857.moment H :=
  canonical_of_padded canonicalInput4857 canonicalOutput4857 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4858 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![1, 1, -4, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput4858 : ExponentCode := normalNode7373

theorem canonicalSound4858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4858.moment H = canonicalOutput4858.moment H :=
  canonical_of_padded canonicalInput4858 canonicalOutput4858 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4859 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput4859 : ExponentCode := normalNode7838

theorem canonicalSound4859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4859.moment H = canonicalOutput4859.moment H :=
  canonical_of_padded canonicalInput4859 canonicalOutput4859 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4860 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 1, 0], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput4860 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound4860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4860.moment H = canonicalOutput4860.moment H :=
  canonical_of_padded canonicalInput4860 canonicalOutput4860 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput4861 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput4861 : ExponentCode := normalNode2387

theorem canonicalSound4861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4861.moment H = canonicalOutput4861.moment H :=
  canonical_of_padded canonicalInput4861 canonicalOutput4861 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4862 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 0, -2, 2], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput4862 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code550

theorem canonicalSound4862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4862.moment H = canonicalOutput4862.moment H :=
  canonical_of_padded canonicalInput4862 canonicalOutput4862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4863 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 2, -1], ![0, 0, 0, 0], ![0, 2, 0, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput4863 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node504⟩

theorem canonicalSound4863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4863.moment H = canonicalOutput4863.moment H :=
  canonical_of_padded canonicalInput4863 canonicalOutput4863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
