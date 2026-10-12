import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26816 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -2, 1, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput26816 : ExponentCode := normalNode492

theorem canonicalSound26816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26816.moment H = canonicalOutput26816.moment H :=
  canonical_of_padded canonicalInput26816 canonicalOutput26816 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26817 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput26817 : ExponentCode := normalNode2444

theorem canonicalSound26817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26817.moment H = canonicalOutput26817.moment H :=
  canonical_of_padded canonicalInput26817 canonicalOutput26817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26818 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![-1, -1, -1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput26818 : ExponentCode := normalNode7378

theorem canonicalSound26818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26818.moment H = canonicalOutput26818.moment H :=
  canonical_of_padded canonicalInput26818 canonicalOutput26818 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26819 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![1, 1, 2, -4]]⟩

def canonicalOutput26819 : ExponentCode := normalNode1243

theorem canonicalSound26819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26819.moment H = canonicalOutput26819.moment H :=
  canonical_of_padded canonicalInput26819 canonicalOutput26819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26820 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput26820 : ExponentCode := normalNode7882

theorem canonicalSound26820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26820.moment H = canonicalOutput26820.moment H :=
  canonical_of_padded canonicalInput26820 canonicalOutput26820 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26821 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput26821 : ExponentCode := normalNode10492

theorem canonicalSound26821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26821.moment H = canonicalOutput26821.moment H :=
  canonical_of_padded canonicalInput26821 canonicalOutput26821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation202, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26822 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 2, 0, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput26822 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2754⟩

theorem canonicalSound26822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26822.moment H = canonicalOutput26822.moment H :=
  canonical_of_padded canonicalInput26822 canonicalOutput26822 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26823 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![-1, 3, 1, -3], ![1, -2, -3, 4]]⟩

def canonicalOutput26823 : ExponentCode := normalNode7965

theorem canonicalSound26823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26823.moment H = canonicalOutput26823.moment H :=
  canonical_of_padded canonicalInput26823 canonicalOutput26823 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26824 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput26824 : ExponentCode := normalNode2105

theorem canonicalSound26824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26824.moment H = canonicalOutput26824.moment H :=
  canonical_of_padded canonicalInput26824 canonicalOutput26824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26825 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 2, -1, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput26825 : ExponentCode := normalNode707

theorem canonicalSound26825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26825.moment H = canonicalOutput26825.moment H :=
  canonical_of_padded canonicalInput26825 canonicalOutput26825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26826 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput26826 : ExponentCode := normalNode1730

theorem canonicalSound26826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26826.moment H = canonicalOutput26826.moment H :=
  canonical_of_padded canonicalInput26826 canonicalOutput26826 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26827 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput26827 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2836⟩

theorem canonicalSound26827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26827.moment H = canonicalOutput26827.moment H :=
  canonical_of_padded canonicalInput26827 canonicalOutput26827 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26828 : ExponentCode := ⟨5, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![0, -1, -3, 4]]⟩

def canonicalOutput26828 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node653⟩

theorem canonicalSound26828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26828.moment H = canonicalOutput26828.moment H :=
  canonical_of_padded canonicalInput26828 canonicalOutput26828 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26829 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![-2, 0, -1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput26829 : ExponentCode := normalNode2112

theorem canonicalSound26829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26829.moment H = canonicalOutput26829.moment H :=
  canonical_of_padded canonicalInput26829 canonicalOutput26829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26830 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 2, -1, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput26830 : ExponentCode := normalNode711

theorem canonicalSound26830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26830.moment H = canonicalOutput26830.moment H :=
  canonical_of_padded canonicalInput26830 canonicalOutput26830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26831 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-2, -1, 0, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput26831 : ExponentCode := normalNode1763

theorem canonicalSound26831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26831.moment H = canonicalOutput26831.moment H :=
  canonical_of_padded canonicalInput26831 canonicalOutput26831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26832 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, -1, 4], ![1, 3, -2, -2]]⟩

def canonicalOutput26832 : ExponentCode := normalNode1247

theorem canonicalSound26832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26832.moment H = canonicalOutput26832.moment H :=
  canonical_of_padded canonicalInput26832 canonicalOutput26832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26833 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, 2, -2, -1]]⟩

def canonicalOutput26833 : ExponentCode := normalNode2734

theorem canonicalSound26833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26833.moment H = canonicalOutput26833.moment H :=
  canonical_of_padded canonicalInput26833 canonicalOutput26833 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation342, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26834 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput26834 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3230⟩

theorem canonicalSound26834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26834.moment H = canonicalOutput26834.moment H :=
  canonical_of_padded canonicalInput26834 canonicalOutput26834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26835 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, -1, -2], ![-2, 0, -2, 4]]⟩

def canonicalOutput26835 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3054⟩

theorem canonicalSound26835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26835.moment H = canonicalOutput26835.moment H :=
  canonical_of_padded canonicalInput26835 canonicalOutput26835 (by decide) (by decide)
    ⟨false, true, canonicalPermutation271, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26836 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, -2, 0, 4], ![1, 3, -2, -2]]⟩

def canonicalOutput26836 : ExponentCode := normalNode391

theorem canonicalSound26836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26836.moment H = canonicalOutput26836.moment H :=
  canonical_of_padded canonicalInput26836 canonicalOutput26836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26837 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, 2, -2, -1]]⟩

def canonicalOutput26837 : ExponentCode := normalNode1765

theorem canonicalSound26837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26837.moment H = canonicalOutput26837.moment H :=
  canonical_of_padded canonicalInput26837 canonicalOutput26837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26838 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 3, 0, -3], ![0, -2, -2, 4]]⟩

def canonicalOutput26838 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node155⟩

theorem canonicalSound26838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26838.moment H = canonicalOutput26838.moment H :=
  canonical_of_padded canonicalInput26838 canonicalOutput26838 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26839 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -2, 0, 1], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput26839 : ExponentCode := normalNode4156

theorem canonicalSound26839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26839.moment H = canonicalOutput26839.moment H :=
  canonical_of_padded canonicalInput26839 canonicalOutput26839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26840 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -2, 0, 1], ![-2, 1, 0, 1], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput26840 : ExponentCode := normalNode4547

theorem canonicalSound26840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26840.moment H = canonicalOutput26840.moment H :=
  canonical_of_padded canonicalInput26840 canonicalOutput26840 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26841 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 0, 0, -1], ![-1, 2, 1, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput26841 : ExponentCode := normalNode6064

theorem canonicalSound26841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26841.moment H = canonicalOutput26841.moment H :=
  canonical_of_padded canonicalInput26841 canonicalOutput26841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26842 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput26842 : ExponentCode := normalNode6050

theorem canonicalSound26842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26842.moment H = canonicalOutput26842.moment H :=
  canonical_of_padded canonicalInput26842 canonicalOutput26842 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26843 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput26843 : ExponentCode := normalNode3922

theorem canonicalSound26843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26843.moment H = canonicalOutput26843.moment H :=
  canonical_of_padded canonicalInput26843 canonicalOutput26843 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26844 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput26844 : ExponentCode := normalNode3530

theorem canonicalSound26844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26844.moment H = canonicalOutput26844.moment H :=
  canonical_of_padded canonicalInput26844 canonicalOutput26844 (by decide) (by decide)
    ⟨false, true, canonicalPermutation4, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26845 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 0, -3, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput26845 : ExponentCode := normalNode5370

theorem canonicalSound26845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26845.moment H = canonicalOutput26845.moment H :=
  canonical_of_padded canonicalInput26845 canonicalOutput26845 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26846 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput26846 : ExponentCode := normalNode5391

theorem canonicalSound26846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26846.moment H = canonicalOutput26846.moment H :=
  canonical_of_padded canonicalInput26846 canonicalOutput26846 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26847 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput26847 : ExponentCode := normalNode5395

theorem canonicalSound26847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26847.moment H = canonicalOutput26847.moment H :=
  canonical_of_padded canonicalInput26847 canonicalOutput26847 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26848 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 2, 1, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput26848 : ExponentCode := normalNode4546

theorem canonicalSound26848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26848.moment H = canonicalOutput26848.moment H :=
  canonical_of_padded canonicalInput26848 canonicalOutput26848 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26849 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, 1, 0, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput26849 : ExponentCode := normalNode6157

theorem canonicalSound26849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26849.moment H = canonicalOutput26849.moment H :=
  canonical_of_padded canonicalInput26849 canonicalOutput26849 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26850 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput26850 : ExponentCode := normalNode6027

theorem canonicalSound26850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26850.moment H = canonicalOutput26850.moment H :=
  canonical_of_padded canonicalInput26850 canonicalOutput26850 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26851 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 2, -1, -1], ![1, -1, 1, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput26851 : ExponentCode := normalNode535

theorem canonicalSound26851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26851.moment H = canonicalOutput26851.moment H :=
  canonical_of_padded canonicalInput26851 canonicalOutput26851 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26852 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 2, 1, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput26852 : ExponentCode := normalNode6065

theorem canonicalSound26852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26852.moment H = canonicalOutput26852.moment H :=
  canonical_of_padded canonicalInput26852 canonicalOutput26852 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26853 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput26853 : ExponentCode := normalNode10487

theorem canonicalSound26853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26853.moment H = canonicalOutput26853.moment H :=
  canonical_of_padded canonicalInput26853 canonicalOutput26853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26854 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 1, -2], ![-1, 0, -3, 4]]⟩

def canonicalOutput26854 : ExponentCode := normalNode5057

theorem canonicalSound26854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26854.moment H = canonicalOutput26854.moment H :=
  canonical_of_padded canonicalInput26854 canonicalOutput26854 (by decide) (by decide)
    ⟨false, true, canonicalPermutation131, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26855 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![-1, 0, -1, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput26855 : ExponentCode := normalNode6017

theorem canonicalSound26855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26855.moment H = canonicalOutput26855.moment H :=
  canonical_of_padded canonicalInput26855 canonicalOutput26855 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26856 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, -1, -1, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput26856 : ExponentCode := normalNode6018

theorem canonicalSound26856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26856.moment H = canonicalOutput26856.moment H :=
  canonical_of_padded canonicalInput26856 canonicalOutput26856 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26857 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput26857 : ExponentCode := normalNode2449

theorem canonicalSound26857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26857.moment H = canonicalOutput26857.moment H :=
  canonical_of_padded canonicalInput26857 canonicalOutput26857 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26858 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-2, -1, 0, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput26858 : ExponentCode := normalNode1779

theorem canonicalSound26858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26858.moment H = canonicalOutput26858.moment H :=
  canonical_of_padded canonicalInput26858 canonicalOutput26858 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26859 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-2, 3, 0, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput26859 : ExponentCode := normalNode1779

theorem canonicalSound26859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26859.moment H = canonicalOutput26859.moment H :=
  canonical_of_padded canonicalInput26859 canonicalOutput26859 (by decide) (by decide)
    ⟨false, false, canonicalPermutation288, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26860 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-1, -1, -1, 3], ![-1, 3, -1, -1]]⟩

def canonicalOutput26860 : ExponentCode := normalNode7680

theorem canonicalSound26860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26860.moment H = canonicalOutput26860.moment H :=
  canonical_of_padded canonicalInput26860 canonicalOutput26860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26861 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 3, -2, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput26861 : ExponentCode := normalNode504

theorem canonicalSound26861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26861.moment H = canonicalOutput26861.moment H :=
  canonical_of_padded canonicalInput26861 canonicalOutput26861 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26862 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![1, 1, 0, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput26862 : ExponentCode := normalNode6145

theorem canonicalSound26862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26862.moment H = canonicalOutput26862.moment H :=
  canonical_of_padded canonicalInput26862 canonicalOutput26862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26863 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![1, 0, 0, -1], ![-1, 2, -3, 2]]⟩

def canonicalOutput26863 : ExponentCode := normalNode4864

theorem canonicalSound26863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26863.moment H = canonicalOutput26863.moment H :=
  canonical_of_padded canonicalInput26863 canonicalOutput26863 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26864 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![1, 1, 0, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput26864 : ExponentCode := normalNode8799

theorem canonicalSound26864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26864.moment H = canonicalOutput26864.moment H :=
  canonical_of_padded canonicalInput26864 canonicalOutput26864 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26865 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 1, 0, 0], ![1, -1, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput26865 : ExponentCode := normalNode10483

theorem canonicalSound26865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26865.moment H = canonicalOutput26865.moment H :=
  canonical_of_padded canonicalInput26865 canonicalOutput26865 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput26866 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![1, -2, 1, 0], ![-1, 1, -3, 3]]⟩

def canonicalOutput26866 : ExponentCode := normalNode6028

theorem canonicalSound26866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26866.moment H = canonicalOutput26866.moment H :=
  canonical_of_padded canonicalInput26866 canonicalOutput26866 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26867 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![-1, 0, -3, 4]]⟩

def canonicalOutput26867 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3276⟩

theorem canonicalSound26867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26867.moment H = canonicalOutput26867.moment H :=
  canonical_of_padded canonicalInput26867 canonicalOutput26867 (by decide) (by decide)
    ⟨false, true, canonicalPermutation329, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput26868 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput26868 : ExponentCode := normalNode4884

theorem canonicalSound26868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26868.moment H = canonicalOutput26868.moment H :=
  canonical_of_padded canonicalInput26868 canonicalOutput26868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26869 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, 1, -2, 3]]⟩

def canonicalOutput26869 : ExponentCode := normalNode536

theorem canonicalSound26869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26869.moment H = canonicalOutput26869.moment H :=
  canonical_of_padded canonicalInput26869 canonicalOutput26869 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26870 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![-2, 0, -2, 4]]⟩

def canonicalOutput26870 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3114⟩

theorem canonicalSound26870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26870.moment H = canonicalOutput26870.moment H :=
  canonical_of_padded canonicalInput26870 canonicalOutput26870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26871 : ExponentCode := ⟨6, 4, ![![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, -2, 1, 0], ![-2, 0, -1, 3], ![0, 3, -2, -1]]⟩

def canonicalOutput26871 : ExponentCode := normalNode1659

theorem canonicalSound26871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26871.moment H = canonicalOutput26871.moment H :=
  canonical_of_padded canonicalInput26871 canonicalOutput26871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26872 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, 2, -2], ![-1, 2, -1, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput26872 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node840⟩

theorem canonicalSound26872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26872.moment H = canonicalOutput26872.moment H :=
  canonical_of_padded canonicalInput26872 canonicalOutput26872 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26873 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, 2, -2], ![0, 2, -1, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput26873 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound26873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26873.moment H = canonicalOutput26873.moment H :=
  canonical_of_padded canonicalInput26873 canonicalOutput26873 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26874 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, 3, -3], ![-1, 2, -1, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput26874 : ExponentCode := normalNode11005

theorem canonicalSound26874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26874.moment H = canonicalOutput26874.moment H :=
  canonical_of_padded canonicalInput26874 canonicalOutput26874 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26875 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 0, 3, -3], ![0, 2, -1, -1], ![0, -1, -3, 4]]⟩

def canonicalOutput26875 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound26875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26875.moment H = canonicalOutput26875.moment H :=
  canonical_of_padded canonicalInput26875 canonicalOutput26875 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26876 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -4, 3], ![-1, 1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput26876 : ExponentCode := normalNode9748

theorem canonicalSound26876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26876.moment H = canonicalOutput26876.moment H :=
  canonical_of_padded canonicalInput26876 canonicalOutput26876 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26877 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -4, 3], ![-1, 1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput26877 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩

theorem canonicalSound26877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26877.moment H = canonicalOutput26877.moment H :=
  canonical_of_padded canonicalInput26877 canonicalOutput26877 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26878 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -4, 3], ![-1, 1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput26878 : ExponentCode := normalNode7408

theorem canonicalSound26878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26878.moment H = canonicalOutput26878.moment H :=
  canonical_of_padded canonicalInput26878 canonicalOutput26878 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput26879 : ExponentCode := ⟨4, 4, ![![0, -1, 1, 0], ![0, 1, -4, 3], ![-1, 1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput26879 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound26879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26879.moment H = canonicalOutput26879.moment H :=
  canonical_of_padded canonicalInput26879 canonicalOutput26879 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation1⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
