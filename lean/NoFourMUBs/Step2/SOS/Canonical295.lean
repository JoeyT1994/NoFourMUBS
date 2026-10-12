import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18880 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput18880 : ExponentCode := normalNode10455

theorem canonicalSound18880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18880.moment H = canonicalOutput18880.moment H :=
  canonical_of_padded canonicalInput18880 canonicalOutput18880 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, canonicalPermutation149⟩ (by decide +kernel) hH

def canonicalInput18881 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput18881 : ExponentCode := normalNode10375

theorem canonicalSound18881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18881.moment H = canonicalOutput18881.moment H :=
  canonical_of_padded canonicalInput18881 canonicalOutput18881 (by decide) (by decide)
    ⟨false, false, canonicalPermutation150, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput18882 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18882 : ExponentCode := normalNode8064

theorem canonicalSound18882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18882.moment H = canonicalOutput18882.moment H :=
  canonical_of_padded canonicalInput18882 canonicalOutput18882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18883 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18883 : ExponentCode := normalNode8066

theorem canonicalSound18883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18883.moment H = canonicalOutput18883.moment H :=
  canonical_of_padded canonicalInput18883 canonicalOutput18883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18884 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18884 : ExponentCode := normalNode8066

theorem canonicalSound18884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18884.moment H = canonicalOutput18884.moment H :=
  canonical_of_padded canonicalInput18884 canonicalOutput18884 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18885 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput18885 : ExponentCode := normalNode8064

theorem canonicalSound18885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18885.moment H = canonicalOutput18885.moment H :=
  canonical_of_padded canonicalInput18885 canonicalOutput18885 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18886 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18886 : ExponentCode := normalNode8066

theorem canonicalSound18886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18886.moment H = canonicalOutput18886.moment H :=
  canonical_of_padded canonicalInput18886 canonicalOutput18886 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18887 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18887 : ExponentCode := normalNode8361

theorem canonicalSound18887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18887.moment H = canonicalOutput18887.moment H :=
  canonical_of_padded canonicalInput18887 canonicalOutput18887 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput18888 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18888 : ExponentCode := normalNode8067

theorem canonicalSound18888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18888.moment H = canonicalOutput18888.moment H :=
  canonical_of_padded canonicalInput18888 canonicalOutput18888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18889 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18889 : ExponentCode := normalNode8067

theorem canonicalSound18889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18889.moment H = canonicalOutput18889.moment H :=
  canonical_of_padded canonicalInput18889 canonicalOutput18889 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18890 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18890 : ExponentCode := normalNode8361

theorem canonicalSound18890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18890.moment H = canonicalOutput18890.moment H :=
  canonical_of_padded canonicalInput18890 canonicalOutput18890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput18891 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18891 : ExponentCode := normalNode8066

theorem canonicalSound18891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18891.moment H = canonicalOutput18891.moment H :=
  canonical_of_padded canonicalInput18891 canonicalOutput18891 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18892 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18892 : ExponentCode := normalNode8066

theorem canonicalSound18892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18892.moment H = canonicalOutput18892.moment H :=
  canonical_of_padded canonicalInput18892 canonicalOutput18892 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18893 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18893 : ExponentCode := normalNode8067

theorem canonicalSound18893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18893.moment H = canonicalOutput18893.moment H :=
  canonical_of_padded canonicalInput18893 canonicalOutput18893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18894 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18894 : ExponentCode := normalNode8361

theorem canonicalSound18894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18894.moment H = canonicalOutput18894.moment H :=
  canonical_of_padded canonicalInput18894 canonicalOutput18894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18895 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18895 : ExponentCode := normalNode8361

theorem canonicalSound18895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18895.moment H = canonicalOutput18895.moment H :=
  canonical_of_padded canonicalInput18895 canonicalOutput18895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18896 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18896 : ExponentCode := normalNode8067

theorem canonicalSound18896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18896.moment H = canonicalOutput18896.moment H :=
  canonical_of_padded canonicalInput18896 canonicalOutput18896 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18897 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18897 : ExponentCode := normalNode8066

theorem canonicalSound18897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18897.moment H = canonicalOutput18897.moment H :=
  canonical_of_padded canonicalInput18897 canonicalOutput18897 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18898 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18898 : ExponentCode := normalNode8064

theorem canonicalSound18898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18898.moment H = canonicalOutput18898.moment H :=
  canonical_of_padded canonicalInput18898 canonicalOutput18898 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18899 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18899 : ExponentCode := normalNode8066

theorem canonicalSound18899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18899.moment H = canonicalOutput18899.moment H :=
  canonical_of_padded canonicalInput18899 canonicalOutput18899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18900 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18900 : ExponentCode := normalNode8066

theorem canonicalSound18900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18900.moment H = canonicalOutput18900.moment H :=
  canonical_of_padded canonicalInput18900 canonicalOutput18900 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18901 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput18901 : ExponentCode := normalNode8064

theorem canonicalSound18901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18901.moment H = canonicalOutput18901.moment H :=
  canonical_of_padded canonicalInput18901 canonicalOutput18901 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18902 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18902 : ExponentCode := normalNode8067

theorem canonicalSound18902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18902.moment H = canonicalOutput18902.moment H :=
  canonical_of_padded canonicalInput18902 canonicalOutput18902 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18903 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18903 : ExponentCode := normalNode8066

theorem canonicalSound18903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18903.moment H = canonicalOutput18903.moment H :=
  canonical_of_padded canonicalInput18903 canonicalOutput18903 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18904 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18904 : ExponentCode := normalNode8361

theorem canonicalSound18904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18904.moment H = canonicalOutput18904.moment H :=
  canonical_of_padded canonicalInput18904 canonicalOutput18904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18905 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18905 : ExponentCode := normalNode8361

theorem canonicalSound18905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18905.moment H = canonicalOutput18905.moment H :=
  canonical_of_padded canonicalInput18905 canonicalOutput18905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18906 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput18906 : ExponentCode := normalNode8066

theorem canonicalSound18906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18906.moment H = canonicalOutput18906.moment H :=
  canonical_of_padded canonicalInput18906 canonicalOutput18906 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18907 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18907 : ExponentCode := normalNode8067

theorem canonicalSound18907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18907.moment H = canonicalOutput18907.moment H :=
  canonical_of_padded canonicalInput18907 canonicalOutput18907 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18908 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18908 : ExponentCode := normalNode8361

theorem canonicalSound18908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18908.moment H = canonicalOutput18908.moment H :=
  canonical_of_padded canonicalInput18908 canonicalOutput18908 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput18909 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18909 : ExponentCode := normalNode8361

theorem canonicalSound18909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18909.moment H = canonicalOutput18909.moment H :=
  canonical_of_padded canonicalInput18909 canonicalOutput18909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18910 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18910 : ExponentCode := normalNode8361

theorem canonicalSound18910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18910.moment H = canonicalOutput18910.moment H :=
  canonical_of_padded canonicalInput18910 canonicalOutput18910 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation245, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18911 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18911 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound18911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18911.moment H = canonicalOutput18911.moment H :=
  canonical_of_padded canonicalInput18911 canonicalOutput18911 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18912 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18912 : ExponentCode := normalNode8361

theorem canonicalSound18912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18912.moment H = canonicalOutput18912.moment H :=
  canonical_of_padded canonicalInput18912 canonicalOutput18912 (by decide) (by decide)
    ⟨false, false, canonicalPermutation152, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18913 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18913 : ExponentCode := normalNode8361

theorem canonicalSound18913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18913.moment H = canonicalOutput18913.moment H :=
  canonical_of_padded canonicalInput18913 canonicalOutput18913 (by decide) (by decide)
    ⟨false, false, canonicalPermutation152, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18914 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18914 : ExponentCode := normalNode8361

theorem canonicalSound18914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18914.moment H = canonicalOutput18914.moment H :=
  canonical_of_padded canonicalInput18914 canonicalOutput18914 (by decide) (by decide)
    ⟨false, false, canonicalPermutation152, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput18915 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18915 : ExponentCode := normalNode8066

theorem canonicalSound18915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18915.moment H = canonicalOutput18915.moment H :=
  canonical_of_padded canonicalInput18915 canonicalOutput18915 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18916 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18916 : ExponentCode := normalNode8067

theorem canonicalSound18916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18916.moment H = canonicalOutput18916.moment H :=
  canonical_of_padded canonicalInput18916 canonicalOutput18916 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18917 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18917 : ExponentCode := normalNode8361

theorem canonicalSound18917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18917.moment H = canonicalOutput18917.moment H :=
  canonical_of_padded canonicalInput18917 canonicalOutput18917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18918 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18918 : ExponentCode := normalNode8361

theorem canonicalSound18918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18918.moment H = canonicalOutput18918.moment H :=
  canonical_of_padded canonicalInput18918 canonicalOutput18918 (by decide) (by decide)
    ⟨false, false, canonicalPermutation153, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18919 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18919 : ExponentCode := normalNode8067

theorem canonicalSound18919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18919.moment H = canonicalOutput18919.moment H :=
  canonical_of_padded canonicalInput18919 canonicalOutput18919 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18920 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput18920 : ExponentCode := normalNode8066

theorem canonicalSound18920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18920.moment H = canonicalOutput18920.moment H :=
  canonical_of_padded canonicalInput18920 canonicalOutput18920 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18921 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18921 : ExponentCode := normalNode8067

theorem canonicalSound18921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18921.moment H = canonicalOutput18921.moment H :=
  canonical_of_padded canonicalInput18921 canonicalOutput18921 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18922 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18922 : ExponentCode := normalNode8361

theorem canonicalSound18922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18922.moment H = canonicalOutput18922.moment H :=
  canonical_of_padded canonicalInput18922 canonicalOutput18922 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18923 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18923 : ExponentCode := normalNode8066

theorem canonicalSound18923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18923.moment H = canonicalOutput18923.moment H :=
  canonical_of_padded canonicalInput18923 canonicalOutput18923 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18924 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput18924 : ExponentCode := normalNode8066

theorem canonicalSound18924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18924.moment H = canonicalOutput18924.moment H :=
  canonical_of_padded canonicalInput18924 canonicalOutput18924 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18925 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18925 : ExponentCode := normalNode8361

theorem canonicalSound18925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18925.moment H = canonicalOutput18925.moment H :=
  canonical_of_padded canonicalInput18925 canonicalOutput18925 (by decide) (by decide)
    ⟨false, false, canonicalPermutation153, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18926 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18926 : ExponentCode := normalNode8067

theorem canonicalSound18926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18926.moment H = canonicalOutput18926.moment H :=
  canonical_of_padded canonicalInput18926 canonicalOutput18926 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18927 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18927 : ExponentCode := normalNode8066

theorem canonicalSound18927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18927.moment H = canonicalOutput18927.moment H :=
  canonical_of_padded canonicalInput18927 canonicalOutput18927 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18928 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18928 : ExponentCode := normalNode8361

theorem canonicalSound18928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18928.moment H = canonicalOutput18928.moment H :=
  canonical_of_padded canonicalInput18928 canonicalOutput18928 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput18929 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18929 : ExponentCode := normalNode8067

theorem canonicalSound18929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18929.moment H = canonicalOutput18929.moment H :=
  canonical_of_padded canonicalInput18929 canonicalOutput18929 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18930 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18930 : ExponentCode := normalNode8067

theorem canonicalSound18930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18930.moment H = canonicalOutput18930.moment H :=
  canonical_of_padded canonicalInput18930 canonicalOutput18930 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18931 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18931 : ExponentCode := normalNode8361

theorem canonicalSound18931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18931.moment H = canonicalOutput18931.moment H :=
  canonical_of_padded canonicalInput18931 canonicalOutput18931 (by decide) (by decide)
    ⟨false, false, canonicalPermutation153, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput18932 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput18932 : ExponentCode := normalNode8066

theorem canonicalSound18932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18932.moment H = canonicalOutput18932.moment H :=
  canonical_of_padded canonicalInput18932 canonicalOutput18932 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18933 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput18933 : ExponentCode := normalNode8064

theorem canonicalSound18933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18933.moment H = canonicalOutput18933.moment H :=
  canonical_of_padded canonicalInput18933 canonicalOutput18933 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18934 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18934 : ExponentCode := normalNode8066

theorem canonicalSound18934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18934.moment H = canonicalOutput18934.moment H :=
  canonical_of_padded canonicalInput18934 canonicalOutput18934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18935 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18935 : ExponentCode := normalNode8066

theorem canonicalSound18935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18935.moment H = canonicalOutput18935.moment H :=
  canonical_of_padded canonicalInput18935 canonicalOutput18935 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18936 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput18936 : ExponentCode := normalNode8064

theorem canonicalSound18936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18936.moment H = canonicalOutput18936.moment H :=
  canonical_of_padded canonicalInput18936 canonicalOutput18936 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18937 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput18937 : ExponentCode := normalNode8068

theorem canonicalSound18937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18937.moment H = canonicalOutput18937.moment H :=
  canonical_of_padded canonicalInput18937 canonicalOutput18937 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput18938 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput18938 : ExponentCode := normalNode8458

theorem canonicalSound18938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18938.moment H = canonicalOutput18938.moment H :=
  canonical_of_padded canonicalInput18938 canonicalOutput18938 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18939 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput18939 : ExponentCode := normalNode10045

theorem canonicalSound18939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18939.moment H = canonicalOutput18939.moment H :=
  canonical_of_padded canonicalInput18939 canonicalOutput18939 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation382⟩ (by decide +kernel) hH

def canonicalInput18940 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18940 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound18940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18940.moment H = canonicalOutput18940.moment H :=
  canonical_of_padded canonicalInput18940 canonicalOutput18940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18941 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18941 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound18941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18941.moment H = canonicalOutput18941.moment H :=
  canonical_of_padded canonicalInput18941 canonicalOutput18941 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18942 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18942 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound18942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18942.moment H = canonicalOutput18942.moment H :=
  canonical_of_padded canonicalInput18942 canonicalOutput18942 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18943 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18943 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound18943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18943.moment H = canonicalOutput18943.moment H :=
  canonical_of_padded canonicalInput18943 canonicalOutput18943 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
