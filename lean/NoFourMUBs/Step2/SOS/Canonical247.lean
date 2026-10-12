import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15808 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15808 : ExponentCode := normalNode8117

theorem canonicalSound15808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15808.moment H = canonicalOutput15808.moment H :=
  canonical_of_padded canonicalInput15808 canonicalOutput15808 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput15809 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15809 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound15809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15809.moment H = canonicalOutput15809.moment H :=
  canonical_of_padded canonicalInput15809 canonicalOutput15809 (by decide) (by decide)
    ⟨true, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15810 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15810 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound15810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15810.moment H = canonicalOutput15810.moment H :=
  canonical_of_padded canonicalInput15810 canonicalOutput15810 (by decide) (by decide)
    ⟨true, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15811 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 1, 2, -2, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15811 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2805⟩

theorem canonicalSound15811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15811.moment H = canonicalOutput15811.moment H :=
  canonical_of_padded canonicalInput15811 canonicalOutput15811 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput15812 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 2, 1, -2, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15812 : ExponentCode := normalNode3773

theorem canonicalSound15812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15812.moment H = canonicalOutput15812.moment H :=
  canonical_of_padded canonicalInput15812 canonicalOutput15812 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15813 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 2, 1, -1, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15813 : ExponentCode := normalNode3790

theorem canonicalSound15813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15813.moment H = canonicalOutput15813.moment H :=
  canonical_of_padded canonicalInput15813 canonicalOutput15813 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15814 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![1, -1, 2, -2, 0], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput15814 : ExponentCode := normalNode3751

theorem canonicalSound15814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15814.moment H = canonicalOutput15814.moment H :=
  canonical_of_padded canonicalInput15814 canonicalOutput15814 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15815 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![1, 0, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput15815 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound15815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15815.moment H = canonicalOutput15815.moment H :=
  canonical_of_padded canonicalInput15815 canonicalOutput15815 (by decide) (by decide)
    ⟨true, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15816 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![1, 0, 1, -1, -1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput15816 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound15816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15816.moment H = canonicalOutput15816.moment H :=
  canonical_of_padded canonicalInput15816 canonicalOutput15816 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15817 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 3, -1], ![0, 0, 2, -3, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15817 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2356⟩

theorem canonicalSound15817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15817.moment H = canonicalOutput15817.moment H :=
  canonical_of_padded canonicalInput15817 canonicalOutput15817 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput15818 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 3, -1], ![0, 0, 2, -2, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15818 : ExponentCode := normalNode9146

theorem canonicalSound15818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15818.moment H = canonicalOutput15818.moment H :=
  canonical_of_padded canonicalInput15818 canonicalOutput15818 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput15819 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 3, -1], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput15819 : ExponentCode := normalNode9146

theorem canonicalSound15819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15819.moment H = canonicalOutput15819.moment H :=
  canonical_of_padded canonicalInput15819 canonicalOutput15819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15820 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 3, -1], ![0, 1, 1, -3, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15820 : ExponentCode := normalNode5854

theorem canonicalSound15820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15820.moment H = canonicalOutput15820.moment H :=
  canonical_of_padded canonicalInput15820 canonicalOutput15820 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput15821 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 3, -1], ![0, 1, 2, -3, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15821 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2849⟩

theorem canonicalSound15821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15821.moment H = canonicalOutput15821.moment H :=
  canonical_of_padded canonicalInput15821 canonicalOutput15821 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput15822 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -2, 3, -1], ![1, -1, 2, -3, 1], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput15822 : ExponentCode := normalNode5449

theorem canonicalSound15822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15822.moment H = canonicalOutput15822.moment H :=
  canonical_of_padded canonicalInput15822 canonicalOutput15822 (by decide) (by decide)
    ⟨true, true, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput15823 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15823 : ExponentCode := normalNode8238

theorem canonicalSound15823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15823.moment H = canonicalOutput15823.moment H :=
  canonical_of_padded canonicalInput15823 canonicalOutput15823 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15824 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![0, 1, 2, -1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15824 : ExponentCode := normalNode8311

theorem canonicalSound15824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15824.moment H = canonicalOutput15824.moment H :=
  canonical_of_padded canonicalInput15824 canonicalOutput15824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput15825 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![1, 1, 2, -1, -3]]⟩

def canonicalOutput15825 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound15825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15825.moment H = canonicalOutput15825.moment H :=
  canonical_of_padded canonicalInput15825 canonicalOutput15825 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15826 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, 0, 2, -2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput15826 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1523⟩

theorem canonicalSound15826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15826.moment H = canonicalOutput15826.moment H :=
  canonical_of_padded canonicalInput15826 canonicalOutput15826 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15827 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, 1, 0, -1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput15827 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2823⟩

theorem canonicalSound15827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15827.moment H = canonicalOutput15827.moment H :=
  canonical_of_padded canonicalInput15827 canonicalOutput15827 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15828 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15828 : ExponentCode := normalNode8315

theorem canonicalSound15828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15828.moment H = canonicalOutput15828.moment H :=
  canonical_of_padded canonicalInput15828 canonicalOutput15828 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput15829 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15829 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1524⟩

theorem canonicalSound15829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15829.moment H = canonicalOutput15829.moment H :=
  canonical_of_padded canonicalInput15829 canonicalOutput15829 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15830 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 0, 2, -1, -1], ![1, 1, -1, 2, -3]]⟩

def canonicalOutput15830 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1511⟩

theorem canonicalSound15830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15830.moment H = canonicalOutput15830.moment H :=
  canonical_of_padded canonicalInput15830 canonicalOutput15830 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15831 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 1, -1, 2, -2], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15831 : ExponentCode := normalNode8311

theorem canonicalSound15831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15831.moment H = canonicalOutput15831.moment H :=
  canonical_of_padded canonicalInput15831 canonicalOutput15831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput15832 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 1, -1, 2, -2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput15832 : ExponentCode := normalNode932

theorem canonicalSound15832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15832.moment H = canonicalOutput15832.moment H :=
  canonical_of_padded canonicalInput15832 canonicalOutput15832 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15833 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![0, 1, 0, 2, -3], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15833 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1513⟩

theorem canonicalSound15833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15833.moment H = canonicalOutput15833.moment H :=
  canonical_of_padded canonicalInput15833 canonicalOutput15833 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15834 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![1, -1, -1, 2, -1], ![0, 2, 2, -1, -3]]⟩

def canonicalOutput15834 : ExponentCode := normalNode700

theorem canonicalSound15834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15834.moment H = canonicalOutput15834.moment H :=
  canonical_of_padded canonicalInput15834 canonicalOutput15834 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15835 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, -1, 2], ![1, 0, -1, 2, -2], ![0, 1, 2, -1, -2]]⟩

def canonicalOutput15835 : ExponentCode := normalNode932

theorem canonicalSound15835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15835.moment H = canonicalOutput15835.moment H :=
  canonical_of_padded canonicalInput15835 canonicalOutput15835 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15836 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, -1, 1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput15836 : ExponentCode := normalNode1476

theorem canonicalSound15836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15836.moment H = canonicalOutput15836.moment H :=
  canonical_of_padded canonicalInput15836 canonicalOutput15836 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15837 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, -1, 1, 1, 0], ![0, 2, 0, 0, -2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput15837 : ExponentCode := normalNode1629

theorem canonicalSound15837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15837.moment H = canonicalOutput15837.moment H :=
  canonical_of_padded canonicalInput15837 canonicalOutput15837 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15838 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 0, 1, 1, -1], ![2, -1, 0, 0, -1], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput15838 : ExponentCode := normalNode1621

theorem canonicalSound15838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15838.moment H = canonicalOutput15838.moment H :=
  canonical_of_padded canonicalInput15838 canonicalOutput15838 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput15839 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput15839 : ExponentCode := normalNode2853

theorem canonicalSound15839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15839.moment H = canonicalOutput15839.moment H :=
  canonical_of_padded canonicalInput15839 canonicalOutput15839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput15840 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 1, 0, 1, -1], ![2, -1, 0, 0, -1], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput15840 : ExponentCode := normalNode1620

theorem canonicalSound15840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15840.moment H = canonicalOutput15840.moment H :=
  canonical_of_padded canonicalInput15840 canonicalOutput15840 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation390, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput15841 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![-1, 2, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput15841 : ExponentCode := normalNode2151

theorem canonicalSound15841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15841.moment H = canonicalOutput15841.moment H :=
  canonical_of_padded canonicalInput15841 canonicalOutput15841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput15842 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, -1, 1, 1, -1], ![2, 0, 0, 0, -2], ![-1, 2, 1, -2, 0]]⟩

def canonicalOutput15842 : ExponentCode := normalNode2869

theorem canonicalSound15842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15842.moment H = canonicalOutput15842.moment H :=
  canonical_of_padded canonicalInput15842 canonicalOutput15842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation183⟩ (by decide +kernel) hH

def canonicalInput15843 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, -1, 2, -1, 0], ![2, 0, 0, -1, -1], ![-1, 2, 0, 1, -2]]⟩

def canonicalOutput15843 : ExponentCode := normalNode1521

theorem canonicalSound15843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15843.moment H = canonicalOutput15843.moment H :=
  canonical_of_padded canonicalInput15843 canonicalOutput15843 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput15844 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![-1, 2, 0, 1, -2], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput15844 : ExponentCode := normalNode1527

theorem canonicalSound15844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15844.moment H = canonicalOutput15844.moment H :=
  canonical_of_padded canonicalInput15844 canonicalOutput15844 (by decide) (by decide)
    ⟨false, true, canonicalPermutation117, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput15845 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![2, -1, 0, 0, -1], ![-1, 2, 1, 1, -3]]⟩

def canonicalOutput15845 : ExponentCode := normalNode1142

theorem canonicalSound15845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15845.moment H = canonicalOutput15845.moment H :=
  canonical_of_padded canonicalInput15845 canonicalOutput15845 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput15846 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![2, -1, 0, -1, 0], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput15846 : ExponentCode := normalNode2164

theorem canonicalSound15846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15846.moment H = canonicalOutput15846.moment H :=
  canonical_of_padded canonicalInput15846 canonicalOutput15846 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput15847 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![2, -1, 0, 0, -1], ![-1, 2, 1, -2, 0]]⟩

def canonicalOutput15847 : ExponentCode := normalNode2868

theorem canonicalSound15847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15847.moment H = canonicalOutput15847.moment H :=
  canonical_of_padded canonicalInput15847 canonicalOutput15847 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation183⟩ (by decide +kernel) hH

def canonicalInput15848 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1], ![-1, 2, 0, 1, -2]]⟩

def canonicalOutput15848 : ExponentCode := normalNode1525

theorem canonicalSound15848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15848.moment H = canonicalOutput15848.moment H :=
  canonical_of_padded canonicalInput15848 canonicalOutput15848 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput15849 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, -1, 0, -1, 0], ![-1, 1, 2, -1, -1]]⟩

def canonicalOutput15849 : ExponentCode := normalNode2171

theorem canonicalSound15849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15849.moment H = canonicalOutput15849.moment H :=
  canonical_of_padded canonicalInput15849 canonicalOutput15849 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation376, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput15850 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, -1, 0, 0, -1], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput15850 : ExponentCode := normalNode2854

theorem canonicalSound15850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15850.moment H = canonicalOutput15850.moment H :=
  canonical_of_padded canonicalInput15850 canonicalOutput15850 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput15851 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![2, -1, 0, 0, -1], ![-1, 1, 1, 1, -2]]⟩

def canonicalOutput15851 : ExponentCode := normalNode3697

theorem canonicalSound15851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15851.moment H = canonicalOutput15851.moment H :=
  canonical_of_padded canonicalInput15851 canonicalOutput15851 (by decide) (by decide)
    ⟨false, true, canonicalPermutation117, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15852 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput15852 : ExponentCode := normalNode1499

theorem canonicalSound15852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15852.moment H = canonicalOutput15852.moment H :=
  canonical_of_padded canonicalInput15852 canonicalOutput15852 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation370, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15853 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput15853 : ExponentCode := normalNode2153

theorem canonicalSound15853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15853.moment H = canonicalOutput15853.moment H :=
  canonical_of_padded canonicalInput15853 canonicalOutput15853 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15854 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 0, -1, 2, 0], ![2, -1, 0, 0, -1], ![0, 2, 1, -1, -2]]⟩

def canonicalOutput15854 : ExponentCode := normalNode1500

theorem canonicalSound15854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15854.moment H = canonicalOutput15854.moment H :=
  canonical_of_padded canonicalInput15854 canonicalOutput15854 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput15855 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 0, 0, 2, -1], ![1, -1, -1, 0, 1], ![1, 2, 1, -1, -3]]⟩

def canonicalOutput15855 : ExponentCode := normalNode1132

theorem canonicalSound15855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15855.moment H = canonicalOutput15855.moment H :=
  canonical_of_padded canonicalInput15855 canonicalOutput15855 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput15856 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 1, 1, -1, 0], ![0, 1, 0, 1, -2], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput15856 : ExponentCode := normalNode2157

theorem canonicalSound15856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15856.moment H = canonicalOutput15856.moment H :=
  canonical_of_padded canonicalInput15856 canonicalOutput15856 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15857 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![-1, 1, 1, -1, 0], ![1, 1, 0, 0, -2], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput15857 : ExponentCode := normalNode2159

theorem canonicalSound15857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15857.moment H = canonicalOutput15857.moment H :=
  canonical_of_padded canonicalInput15857 canonicalOutput15857 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput15858 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, -1, 1, 1], ![2, 0, 0, -1, -1], ![-1, 2, 1, 1, -3]]⟩

def canonicalOutput15858 : ExponentCode := normalNode1136

theorem canonicalSound15858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15858.moment H = canonicalOutput15858.moment H :=
  canonical_of_padded canonicalInput15858 canonicalOutput15858 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput15859 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, 0, 2, -1], ![2, 0, -1, -1, 0], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput15859 : ExponentCode := normalNode1542

theorem canonicalSound15859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15859.moment H = canonicalOutput15859.moment H :=
  canonical_of_padded canonicalInput15859 canonicalOutput15859 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput15860 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, -1, 0, 2, -1], ![2, 0, -1, 0, -1], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput15860 : ExponentCode := normalNode2190

theorem canonicalSound15860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15860.moment H = canonicalOutput15860.moment H :=
  canonical_of_padded canonicalInput15860 canonicalOutput15860 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation370, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput15861 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![2, -1, 0, -1, 0], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput15861 : ExponentCode := normalNode1535

theorem canonicalSound15861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15861.moment H = canonicalOutput15861.moment H :=
  canonical_of_padded canonicalInput15861 canonicalOutput15861 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput15862 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![2, -1, 0, 0, -1], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput15862 : ExponentCode := normalNode2192

theorem canonicalSound15862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15862.moment H = canonicalOutput15862.moment H :=
  canonical_of_padded canonicalInput15862 canonicalOutput15862 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput15863 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 1, -1, -1, 1], ![2, -1, 0, 0, -1], ![-1, 1, 1, 2, -3]]⟩

def canonicalOutput15863 : ExponentCode := normalNode1153

theorem canonicalSound15863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15863.moment H = canonicalOutput15863.moment H :=
  canonical_of_padded canonicalInput15863 canonicalOutput15863 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput15864 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, -1, -1, 0, 0], ![-1, 0, 1, 2, -2]]⟩

def canonicalOutput15864 : ExponentCode := normalNode1604

theorem canonicalSound15864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15864.moment H = canonicalOutput15864.moment H :=
  canonical_of_padded canonicalInput15864 canonicalOutput15864 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput15865 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, 0, -1, 0, -1], ![-1, -1, 1, 2, -1]]⟩

def canonicalOutput15865 : ExponentCode := normalNode2223

theorem canonicalSound15865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15865.moment H = canonicalOutput15865.moment H :=
  canonical_of_padded canonicalInput15865 canonicalOutput15865 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput15866 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15866 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1039⟩

theorem canonicalSound15866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15866.moment H = canonicalOutput15866.moment H :=
  canonical_of_padded canonicalInput15866 canonicalOutput15866 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput15867 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 0, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15867 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2448⟩

theorem canonicalSound15867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15867.moment H = canonicalOutput15867.moment H :=
  canonical_of_padded canonicalInput15867 canonicalOutput15867 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15868 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput15868 : ExponentCode := normalNode1465

theorem canonicalSound15868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15868.moment H = canonicalOutput15868.moment H :=
  canonical_of_padded canonicalInput15868 canonicalOutput15868 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15869 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 1, 1, 0, -2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput15869 : ExponentCode := normalNode1611

theorem canonicalSound15869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15869.moment H = canonicalOutput15869.moment H :=
  canonical_of_padded canonicalInput15869 canonicalOutput15869 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15870 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 0, 1, -2, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput15870 : ExponentCode := normalNode4576

theorem canonicalSound15870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15870.moment H = canonicalOutput15870.moment H :=
  canonical_of_padded canonicalInput15870 canonicalOutput15870 (by decide) (by decide)
    ⟨false, true, canonicalPermutation120, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput15871 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 0, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 0, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput15871 : ExponentCode := normalNode4580

theorem canonicalSound15871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15871.moment H = canonicalOutput15871.moment H :=
  canonical_of_padded canonicalInput15871 canonicalOutput15871 (by decide) (by decide)
    ⟨false, true, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
