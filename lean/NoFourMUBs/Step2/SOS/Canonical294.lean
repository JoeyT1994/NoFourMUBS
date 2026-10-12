import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18816 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput18816 : ExponentCode := normalNode10446

theorem canonicalSound18816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18816.moment H = canonicalOutput18816.moment H :=
  canonical_of_padded canonicalInput18816 canonicalOutput18816 (by decide) (by decide)
    ⟨false, false, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput18817 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput18817 : ExponentCode := normalNode10743

theorem canonicalSound18817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18817.moment H = canonicalOutput18817.moment H :=
  canonical_of_padded canonicalInput18817 canonicalOutput18817 (by decide) (by decide)
    ⟨false, true, canonicalPermutation137, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput18818 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18818 : ExponentCode := normalNode3656

theorem canonicalSound18818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18818.moment H = canonicalOutput18818.moment H :=
  canonical_of_padded canonicalInput18818 canonicalOutput18818 (by decide) (by decide)
    ⟨false, true, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput18819 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18819 : ExponentCode := normalNode8064

theorem canonicalSound18819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18819.moment H = canonicalOutput18819.moment H :=
  canonical_of_padded canonicalInput18819 canonicalOutput18819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput18820 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18820 : ExponentCode := normalNode8064

theorem canonicalSound18820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18820.moment H = canonicalOutput18820.moment H :=
  canonical_of_padded canonicalInput18820 canonicalOutput18820 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput18821 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput18821 : ExponentCode := normalNode3656

theorem canonicalSound18821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18821.moment H = canonicalOutput18821.moment H :=
  canonical_of_padded canonicalInput18821 canonicalOutput18821 (by decide) (by decide)
    ⟨false, true, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput18822 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18822 : ExponentCode := normalNode8064

theorem canonicalSound18822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18822.moment H = canonicalOutput18822.moment H :=
  canonical_of_padded canonicalInput18822 canonicalOutput18822 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput18823 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18823 : ExponentCode := normalNode11165

theorem canonicalSound18823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18823.moment H = canonicalOutput18823.moment H :=
  canonical_of_padded canonicalInput18823 canonicalOutput18823 (by decide) (by decide)
    ⟨false, true, canonicalPermutation66, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput18824 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18824 : ExponentCode := normalNode10869

theorem canonicalSound18824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18824.moment H = canonicalOutput18824.moment H :=
  canonical_of_padded canonicalInput18824 canonicalOutput18824 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput18825 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18825 : ExponentCode := normalNode10869

theorem canonicalSound18825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18825.moment H = canonicalOutput18825.moment H :=
  canonical_of_padded canonicalInput18825 canonicalOutput18825 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput18826 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18826 : ExponentCode := normalNode11165

theorem canonicalSound18826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18826.moment H = canonicalOutput18826.moment H :=
  canonical_of_padded canonicalInput18826 canonicalOutput18826 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput18827 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18827 : ExponentCode := normalNode8064

theorem canonicalSound18827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18827.moment H = canonicalOutput18827.moment H :=
  canonical_of_padded canonicalInput18827 canonicalOutput18827 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput18828 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18828 : ExponentCode := normalNode8064

theorem canonicalSound18828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18828.moment H = canonicalOutput18828.moment H :=
  canonical_of_padded canonicalInput18828 canonicalOutput18828 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput18829 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18829 : ExponentCode := normalNode10869

theorem canonicalSound18829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18829.moment H = canonicalOutput18829.moment H :=
  canonical_of_padded canonicalInput18829 canonicalOutput18829 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18830 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18830 : ExponentCode := normalNode11165

theorem canonicalSound18830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18830.moment H = canonicalOutput18830.moment H :=
  canonical_of_padded canonicalInput18830 canonicalOutput18830 (by decide) (by decide)
    ⟨false, true, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput18831 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18831 : ExponentCode := normalNode11165

theorem canonicalSound18831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18831.moment H = canonicalOutput18831.moment H :=
  canonical_of_padded canonicalInput18831 canonicalOutput18831 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput18832 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18832 : ExponentCode := normalNode10869

theorem canonicalSound18832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18832.moment H = canonicalOutput18832.moment H :=
  canonical_of_padded canonicalInput18832 canonicalOutput18832 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18833 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18833 : ExponentCode := normalNode8064

theorem canonicalSound18833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18833.moment H = canonicalOutput18833.moment H :=
  canonical_of_padded canonicalInput18833 canonicalOutput18833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput18834 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18834 : ExponentCode := normalNode3656

theorem canonicalSound18834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18834.moment H = canonicalOutput18834.moment H :=
  canonical_of_padded canonicalInput18834 canonicalOutput18834 (by decide) (by decide)
    ⟨false, true, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput18835 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18835 : ExponentCode := normalNode8064

theorem canonicalSound18835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18835.moment H = canonicalOutput18835.moment H :=
  canonical_of_padded canonicalInput18835 canonicalOutput18835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput18836 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18836 : ExponentCode := normalNode8064

theorem canonicalSound18836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18836.moment H = canonicalOutput18836.moment H :=
  canonical_of_padded canonicalInput18836 canonicalOutput18836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput18837 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput18837 : ExponentCode := normalNode3656

theorem canonicalSound18837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18837.moment H = canonicalOutput18837.moment H :=
  canonical_of_padded canonicalInput18837 canonicalOutput18837 (by decide) (by decide)
    ⟨false, true, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput18838 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18838 : ExponentCode := normalNode10869

theorem canonicalSound18838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18838.moment H = canonicalOutput18838.moment H :=
  canonical_of_padded canonicalInput18838 canonicalOutput18838 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18839 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18839 : ExponentCode := normalNode8064

theorem canonicalSound18839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18839.moment H = canonicalOutput18839.moment H :=
  canonical_of_padded canonicalInput18839 canonicalOutput18839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput18840 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18840 : ExponentCode := normalNode11165

theorem canonicalSound18840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18840.moment H = canonicalOutput18840.moment H :=
  canonical_of_padded canonicalInput18840 canonicalOutput18840 (by decide) (by decide)
    ⟨false, true, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18841 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18841 : ExponentCode := normalNode11165

theorem canonicalSound18841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18841.moment H = canonicalOutput18841.moment H :=
  canonical_of_padded canonicalInput18841 canonicalOutput18841 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18842 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput18842 : ExponentCode := normalNode8064

theorem canonicalSound18842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18842.moment H = canonicalOutput18842.moment H :=
  canonical_of_padded canonicalInput18842 canonicalOutput18842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput18843 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18843 : ExponentCode := normalNode10869

theorem canonicalSound18843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18843.moment H = canonicalOutput18843.moment H :=
  canonical_of_padded canonicalInput18843 canonicalOutput18843 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18844 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18844 : ExponentCode := normalNode11165

theorem canonicalSound18844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18844.moment H = canonicalOutput18844.moment H :=
  canonical_of_padded canonicalInput18844 canonicalOutput18844 (by decide) (by decide)
    ⟨false, true, canonicalPermutation144, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput18845 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18845 : ExponentCode := normalNode11165

theorem canonicalSound18845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18845.moment H = canonicalOutput18845.moment H :=
  canonical_of_padded canonicalInput18845 canonicalOutput18845 (by decide) (by decide)
    ⟨false, true, canonicalPermutation144, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput18846 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18846 : ExponentCode := normalNode11165

theorem canonicalSound18846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18846.moment H = canonicalOutput18846.moment H :=
  canonical_of_padded canonicalInput18846 canonicalOutput18846 (by decide) (by decide)
    ⟨false, true, canonicalPermutation144, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18847 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18847 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound18847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18847.moment H = canonicalOutput18847.moment H :=
  canonical_of_padded canonicalInput18847 canonicalOutput18847 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18848 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18848 : ExponentCode := normalNode11165

theorem canonicalSound18848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18848.moment H = canonicalOutput18848.moment H :=
  canonical_of_padded canonicalInput18848 canonicalOutput18848 (by decide) (by decide)
    ⟨false, true, canonicalPermutation118, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18849 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18849 : ExponentCode := normalNode11165

theorem canonicalSound18849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18849.moment H = canonicalOutput18849.moment H :=
  canonical_of_padded canonicalInput18849 canonicalOutput18849 (by decide) (by decide)
    ⟨false, true, canonicalPermutation118, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput18850 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18850 : ExponentCode := normalNode11165

theorem canonicalSound18850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18850.moment H = canonicalOutput18850.moment H :=
  canonical_of_padded canonicalInput18850 canonicalOutput18850 (by decide) (by decide)
    ⟨false, true, canonicalPermutation118, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput18851 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18851 : ExponentCode := normalNode8064

theorem canonicalSound18851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18851.moment H = canonicalOutput18851.moment H :=
  canonical_of_padded canonicalInput18851 canonicalOutput18851 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput18852 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18852 : ExponentCode := normalNode10869

theorem canonicalSound18852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18852.moment H = canonicalOutput18852.moment H :=
  canonical_of_padded canonicalInput18852 canonicalOutput18852 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput18853 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18853 : ExponentCode := normalNode11165

theorem canonicalSound18853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18853.moment H = canonicalOutput18853.moment H :=
  canonical_of_padded canonicalInput18853 canonicalOutput18853 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18854 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18854 : ExponentCode := normalNode11165

theorem canonicalSound18854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18854.moment H = canonicalOutput18854.moment H :=
  canonical_of_padded canonicalInput18854 canonicalOutput18854 (by decide) (by decide)
    ⟨false, true, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18855 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18855 : ExponentCode := normalNode10869

theorem canonicalSound18855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18855.moment H = canonicalOutput18855.moment H :=
  canonical_of_padded canonicalInput18855 canonicalOutput18855 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput18856 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput18856 : ExponentCode := normalNode8064

theorem canonicalSound18856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18856.moment H = canonicalOutput18856.moment H :=
  canonical_of_padded canonicalInput18856 canonicalOutput18856 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput18857 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18857 : ExponentCode := normalNode10869

theorem canonicalSound18857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18857.moment H = canonicalOutput18857.moment H :=
  canonical_of_padded canonicalInput18857 canonicalOutput18857 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput18858 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18858 : ExponentCode := normalNode11165

theorem canonicalSound18858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18858.moment H = canonicalOutput18858.moment H :=
  canonical_of_padded canonicalInput18858 canonicalOutput18858 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput18859 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18859 : ExponentCode := normalNode8064

theorem canonicalSound18859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18859.moment H = canonicalOutput18859.moment H :=
  canonical_of_padded canonicalInput18859 canonicalOutput18859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput18860 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput18860 : ExponentCode := normalNode8064

theorem canonicalSound18860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18860.moment H = canonicalOutput18860.moment H :=
  canonical_of_padded canonicalInput18860 canonicalOutput18860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput18861 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18861 : ExponentCode := normalNode11165

theorem canonicalSound18861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18861.moment H = canonicalOutput18861.moment H :=
  canonical_of_padded canonicalInput18861 canonicalOutput18861 (by decide) (by decide)
    ⟨false, true, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation389⟩ (by decide +kernel) hH

def canonicalInput18862 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18862 : ExponentCode := normalNode10869

theorem canonicalSound18862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18862.moment H = canonicalOutput18862.moment H :=
  canonical_of_padded canonicalInput18862 canonicalOutput18862 (by decide) (by decide)
    ⟨false, true, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation257⟩ (by decide +kernel) hH

def canonicalInput18863 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18863 : ExponentCode := normalNode8064

theorem canonicalSound18863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18863.moment H = canonicalOutput18863.moment H :=
  canonical_of_padded canonicalInput18863 canonicalOutput18863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput18864 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18864 : ExponentCode := normalNode11165

theorem canonicalSound18864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18864.moment H = canonicalOutput18864.moment H :=
  canonical_of_padded canonicalInput18864 canonicalOutput18864 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput18865 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18865 : ExponentCode := normalNode10869

theorem canonicalSound18865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18865.moment H = canonicalOutput18865.moment H :=
  canonical_of_padded canonicalInput18865 canonicalOutput18865 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18866 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18866 : ExponentCode := normalNode10869

theorem canonicalSound18866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18866.moment H = canonicalOutput18866.moment H :=
  canonical_of_padded canonicalInput18866 canonicalOutput18866 (by decide) (by decide)
    ⟨false, true, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18867 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18867 : ExponentCode := normalNode11165

theorem canonicalSound18867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18867.moment H = canonicalOutput18867.moment H :=
  canonical_of_padded canonicalInput18867 canonicalOutput18867 (by decide) (by decide)
    ⟨false, true, canonicalPermutation124, canonicalPermutation139⟩ (by decide +kernel) hH

def canonicalInput18868 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput18868 : ExponentCode := normalNode8064

theorem canonicalSound18868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18868.moment H = canonicalOutput18868.moment H :=
  canonical_of_padded canonicalInput18868 canonicalOutput18868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput18869 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput18869 : ExponentCode := normalNode3656

theorem canonicalSound18869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18869.moment H = canonicalOutput18869.moment H :=
  canonical_of_padded canonicalInput18869 canonicalOutput18869 (by decide) (by decide)
    ⟨false, true, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput18870 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18870 : ExponentCode := normalNode8064

theorem canonicalSound18870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18870.moment H = canonicalOutput18870.moment H :=
  canonical_of_padded canonicalInput18870 canonicalOutput18870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput18871 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18871 : ExponentCode := normalNode8064

theorem canonicalSound18871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18871.moment H = canonicalOutput18871.moment H :=
  canonical_of_padded canonicalInput18871 canonicalOutput18871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput18872 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput18872 : ExponentCode := normalNode3656

theorem canonicalSound18872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18872.moment H = canonicalOutput18872.moment H :=
  canonical_of_padded canonicalInput18872 canonicalOutput18872 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput18873 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput18873 : ExponentCode := normalNode8063

theorem canonicalSound18873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18873.moment H = canonicalOutput18873.moment H :=
  canonical_of_padded canonicalInput18873 canonicalOutput18873 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput18874 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput18874 : ExponentCode := normalNode6527

theorem canonicalSound18874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18874.moment H = canonicalOutput18874.moment H :=
  canonical_of_padded canonicalInput18874 canonicalOutput18874 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput18875 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput18875 : ExponentCode := normalNode8237

theorem canonicalSound18875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18875.moment H = canonicalOutput18875.moment H :=
  canonical_of_padded canonicalInput18875 canonicalOutput18875 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation392⟩ (by decide +kernel) hH

def canonicalInput18876 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18876 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound18876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18876.moment H = canonicalOutput18876.moment H :=
  canonical_of_padded canonicalInput18876 canonicalOutput18876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput18877 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18877 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound18877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18877.moment H = canonicalOutput18877.moment H :=
  canonical_of_padded canonicalInput18877 canonicalOutput18877 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18878 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18878 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound18878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18878.moment H = canonicalOutput18878.moment H :=
  canonical_of_padded canonicalInput18878 canonicalOutput18878 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput18879 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput18879 : ExponentCode := normalNode10818

theorem canonicalSound18879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18879.moment H = canonicalOutput18879.moment H :=
  canonical_of_padded canonicalInput18879 canonicalOutput18879 (by decide) (by decide)
    ⟨false, true, canonicalPermutation148, canonicalPermutation4⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
