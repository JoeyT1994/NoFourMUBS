import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18944 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18944 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound18944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18944.moment H = canonicalOutput18944.moment H :=
  canonical_of_padded canonicalInput18944 canonicalOutput18944 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18945 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18945 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound18945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18945.moment H = canonicalOutput18945.moment H :=
  canonical_of_padded canonicalInput18945 canonicalOutput18945 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18946 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 2, -4, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18946 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound18946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18946.moment H = canonicalOutput18946.moment H :=
  canonical_of_padded canonicalInput18946 canonicalOutput18946 (by decide) (by decide)
    ⟨false, true, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18947 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18947 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound18947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18947.moment H = canonicalOutput18947.moment H :=
  canonical_of_padded canonicalInput18947 canonicalOutput18947 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18948 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput18948 : ExponentCode := normalNode10818

theorem canonicalSound18948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18948.moment H = canonicalOutput18948.moment H :=
  canonical_of_padded canonicalInput18948 canonicalOutput18948 (by decide) (by decide)
    ⟨false, true, canonicalPermutation154, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput18949 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput18949 : ExponentCode := normalNode10455

theorem canonicalSound18949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18949.moment H = canonicalOutput18949.moment H :=
  canonical_of_padded canonicalInput18949 canonicalOutput18949 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, canonicalPermutation149⟩ (by decide +kernel) hH

def canonicalInput18950 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput18950 : ExponentCode := normalNode10375

theorem canonicalSound18950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18950.moment H = canonicalOutput18950.moment H :=
  canonical_of_padded canonicalInput18950 canonicalOutput18950 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput18951 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18951 : ExponentCode := normalNode8064

theorem canonicalSound18951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18951.moment H = canonicalOutput18951.moment H :=
  canonical_of_padded canonicalInput18951 canonicalOutput18951 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18952 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18952 : ExponentCode := normalNode8066

theorem canonicalSound18952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18952.moment H = canonicalOutput18952.moment H :=
  canonical_of_padded canonicalInput18952 canonicalOutput18952 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18953 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18953 : ExponentCode := normalNode8066

theorem canonicalSound18953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18953.moment H = canonicalOutput18953.moment H :=
  canonical_of_padded canonicalInput18953 canonicalOutput18953 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18954 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput18954 : ExponentCode := normalNode8064

theorem canonicalSound18954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18954.moment H = canonicalOutput18954.moment H :=
  canonical_of_padded canonicalInput18954 canonicalOutput18954 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18955 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18955 : ExponentCode := normalNode8066

theorem canonicalSound18955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18955.moment H = canonicalOutput18955.moment H :=
  canonical_of_padded canonicalInput18955 canonicalOutput18955 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18956 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18956 : ExponentCode := normalNode8361

theorem canonicalSound18956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18956.moment H = canonicalOutput18956.moment H :=
  canonical_of_padded canonicalInput18956 canonicalOutput18956 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput18957 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18957 : ExponentCode := normalNode8067

theorem canonicalSound18957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18957.moment H = canonicalOutput18957.moment H :=
  canonical_of_padded canonicalInput18957 canonicalOutput18957 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18958 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18958 : ExponentCode := normalNode8067

theorem canonicalSound18958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18958.moment H = canonicalOutput18958.moment H :=
  canonical_of_padded canonicalInput18958 canonicalOutput18958 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18959 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18959 : ExponentCode := normalNode8361

theorem canonicalSound18959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18959.moment H = canonicalOutput18959.moment H :=
  canonical_of_padded canonicalInput18959 canonicalOutput18959 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput18960 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18960 : ExponentCode := normalNode8066

theorem canonicalSound18960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18960.moment H = canonicalOutput18960.moment H :=
  canonical_of_padded canonicalInput18960 canonicalOutput18960 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18961 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18961 : ExponentCode := normalNode8066

theorem canonicalSound18961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18961.moment H = canonicalOutput18961.moment H :=
  canonical_of_padded canonicalInput18961 canonicalOutput18961 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18962 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18962 : ExponentCode := normalNode8067

theorem canonicalSound18962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18962.moment H = canonicalOutput18962.moment H :=
  canonical_of_padded canonicalInput18962 canonicalOutput18962 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18963 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18963 : ExponentCode := normalNode8361

theorem canonicalSound18963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18963.moment H = canonicalOutput18963.moment H :=
  canonical_of_padded canonicalInput18963 canonicalOutput18963 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18964 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18964 : ExponentCode := normalNode8361

theorem canonicalSound18964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18964.moment H = canonicalOutput18964.moment H :=
  canonical_of_padded canonicalInput18964 canonicalOutput18964 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18965 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18965 : ExponentCode := normalNode8067

theorem canonicalSound18965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18965.moment H = canonicalOutput18965.moment H :=
  canonical_of_padded canonicalInput18965 canonicalOutput18965 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18966 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18966 : ExponentCode := normalNode8066

theorem canonicalSound18966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18966.moment H = canonicalOutput18966.moment H :=
  canonical_of_padded canonicalInput18966 canonicalOutput18966 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18967 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput18967 : ExponentCode := normalNode8064

theorem canonicalSound18967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18967.moment H = canonicalOutput18967.moment H :=
  canonical_of_padded canonicalInput18967 canonicalOutput18967 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18968 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18968 : ExponentCode := normalNode8066

theorem canonicalSound18968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18968.moment H = canonicalOutput18968.moment H :=
  canonical_of_padded canonicalInput18968 canonicalOutput18968 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18969 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18969 : ExponentCode := normalNode8066

theorem canonicalSound18969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18969.moment H = canonicalOutput18969.moment H :=
  canonical_of_padded canonicalInput18969 canonicalOutput18969 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18970 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput18970 : ExponentCode := normalNode8064

theorem canonicalSound18970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18970.moment H = canonicalOutput18970.moment H :=
  canonical_of_padded canonicalInput18970 canonicalOutput18970 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18971 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18971 : ExponentCode := normalNode8067

theorem canonicalSound18971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18971.moment H = canonicalOutput18971.moment H :=
  canonical_of_padded canonicalInput18971 canonicalOutput18971 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18972 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18972 : ExponentCode := normalNode8066

theorem canonicalSound18972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18972.moment H = canonicalOutput18972.moment H :=
  canonical_of_padded canonicalInput18972 canonicalOutput18972 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18973 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18973 : ExponentCode := normalNode8361

theorem canonicalSound18973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18973.moment H = canonicalOutput18973.moment H :=
  canonical_of_padded canonicalInput18973 canonicalOutput18973 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18974 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18974 : ExponentCode := normalNode8361

theorem canonicalSound18974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18974.moment H = canonicalOutput18974.moment H :=
  canonical_of_padded canonicalInput18974 canonicalOutput18974 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18975 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput18975 : ExponentCode := normalNode8066

theorem canonicalSound18975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18975.moment H = canonicalOutput18975.moment H :=
  canonical_of_padded canonicalInput18975 canonicalOutput18975 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18976 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18976 : ExponentCode := normalNode8067

theorem canonicalSound18976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18976.moment H = canonicalOutput18976.moment H :=
  canonical_of_padded canonicalInput18976 canonicalOutput18976 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18977 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18977 : ExponentCode := normalNode8361

theorem canonicalSound18977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18977.moment H = canonicalOutput18977.moment H :=
  canonical_of_padded canonicalInput18977 canonicalOutput18977 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput18978 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18978 : ExponentCode := normalNode8361

theorem canonicalSound18978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18978.moment H = canonicalOutput18978.moment H :=
  canonical_of_padded canonicalInput18978 canonicalOutput18978 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18979 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18979 : ExponentCode := normalNode8361

theorem canonicalSound18979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18979.moment H = canonicalOutput18979.moment H :=
  canonical_of_padded canonicalInput18979 canonicalOutput18979 (by decide) (by decide)
    ⟨false, false, canonicalPermutation157, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18980 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18980 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound18980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18980.moment H = canonicalOutput18980.moment H :=
  canonical_of_padded canonicalInput18980 canonicalOutput18980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput18981 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18981 : ExponentCode := normalNode8361

theorem canonicalSound18981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18981.moment H = canonicalOutput18981.moment H :=
  canonical_of_padded canonicalInput18981 canonicalOutput18981 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18982 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18982 : ExponentCode := normalNode8361

theorem canonicalSound18982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18982.moment H = canonicalOutput18982.moment H :=
  canonical_of_padded canonicalInput18982 canonicalOutput18982 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18983 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18983 : ExponentCode := normalNode8361

theorem canonicalSound18983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18983.moment H = canonicalOutput18983.moment H :=
  canonical_of_padded canonicalInput18983 canonicalOutput18983 (by decide) (by decide)
    ⟨false, false, canonicalPermutation158, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput18984 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput18984 : ExponentCode := normalNode8066

theorem canonicalSound18984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18984.moment H = canonicalOutput18984.moment H :=
  canonical_of_padded canonicalInput18984 canonicalOutput18984 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18985 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput18985 : ExponentCode := normalNode8067

theorem canonicalSound18985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18985.moment H = canonicalOutput18985.moment H :=
  canonical_of_padded canonicalInput18985 canonicalOutput18985 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18986 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18986 : ExponentCode := normalNode8361

theorem canonicalSound18986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18986.moment H = canonicalOutput18986.moment H :=
  canonical_of_padded canonicalInput18986 canonicalOutput18986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18987 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18987 : ExponentCode := normalNode8361

theorem canonicalSound18987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18987.moment H = canonicalOutput18987.moment H :=
  canonical_of_padded canonicalInput18987 canonicalOutput18987 (by decide) (by decide)
    ⟨false, false, canonicalPermutation159, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput18988 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18988 : ExponentCode := normalNode8067

theorem canonicalSound18988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18988.moment H = canonicalOutput18988.moment H :=
  canonical_of_padded canonicalInput18988 canonicalOutput18988 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18989 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput18989 : ExponentCode := normalNode8066

theorem canonicalSound18989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18989.moment H = canonicalOutput18989.moment H :=
  canonical_of_padded canonicalInput18989 canonicalOutput18989 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18990 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18990 : ExponentCode := normalNode8067

theorem canonicalSound18990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18990.moment H = canonicalOutput18990.moment H :=
  canonical_of_padded canonicalInput18990 canonicalOutput18990 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18991 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18991 : ExponentCode := normalNode8361

theorem canonicalSound18991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18991.moment H = canonicalOutput18991.moment H :=
  canonical_of_padded canonicalInput18991 canonicalOutput18991 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18992 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18992 : ExponentCode := normalNode8066

theorem canonicalSound18992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18992.moment H = canonicalOutput18992.moment H :=
  canonical_of_padded canonicalInput18992 canonicalOutput18992 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18993 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput18993 : ExponentCode := normalNode8066

theorem canonicalSound18993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18993.moment H = canonicalOutput18993.moment H :=
  canonical_of_padded canonicalInput18993 canonicalOutput18993 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18994 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18994 : ExponentCode := normalNode8361

theorem canonicalSound18994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18994.moment H = canonicalOutput18994.moment H :=
  canonical_of_padded canonicalInput18994 canonicalOutput18994 (by decide) (by decide)
    ⟨false, false, canonicalPermutation159, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput18995 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput18995 : ExponentCode := normalNode8067

theorem canonicalSound18995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18995.moment H = canonicalOutput18995.moment H :=
  canonical_of_padded canonicalInput18995 canonicalOutput18995 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18996 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput18996 : ExponentCode := normalNode8066

theorem canonicalSound18996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18996.moment H = canonicalOutput18996.moment H :=
  canonical_of_padded canonicalInput18996 canonicalOutput18996 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18997 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput18997 : ExponentCode := normalNode8361

theorem canonicalSound18997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18997.moment H = canonicalOutput18997.moment H :=
  canonical_of_padded canonicalInput18997 canonicalOutput18997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput18998 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput18998 : ExponentCode := normalNode8067

theorem canonicalSound18998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18998.moment H = canonicalOutput18998.moment H :=
  canonical_of_padded canonicalInput18998 canonicalOutput18998 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18999 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput18999 : ExponentCode := normalNode8067

theorem canonicalSound18999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18999.moment H = canonicalOutput18999.moment H :=
  canonical_of_padded canonicalInput18999 canonicalOutput18999 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19000 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput19000 : ExponentCode := normalNode8361

theorem canonicalSound19000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19000.moment H = canonicalOutput19000.moment H :=
  canonical_of_padded canonicalInput19000 canonicalOutput19000 (by decide) (by decide)
    ⟨false, false, canonicalPermutation159, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput19001 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput19001 : ExponentCode := normalNode8066

theorem canonicalSound19001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19001.moment H = canonicalOutput19001.moment H :=
  canonical_of_padded canonicalInput19001 canonicalOutput19001 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19002 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput19002 : ExponentCode := normalNode8064

theorem canonicalSound19002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19002.moment H = canonicalOutput19002.moment H :=
  canonical_of_padded canonicalInput19002 canonicalOutput19002 (by decide) (by decide)
    ⟨false, false, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19003 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput19003 : ExponentCode := normalNode8066

theorem canonicalSound19003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19003.moment H = canonicalOutput19003.moment H :=
  canonical_of_padded canonicalInput19003 canonicalOutput19003 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19004 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput19004 : ExponentCode := normalNode8066

theorem canonicalSound19004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19004.moment H = canonicalOutput19004.moment H :=
  canonical_of_padded canonicalInput19004 canonicalOutput19004 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19005 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput19005 : ExponentCode := normalNode8064

theorem canonicalSound19005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19005.moment H = canonicalOutput19005.moment H :=
  canonical_of_padded canonicalInput19005 canonicalOutput19005 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19006 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput19006 : ExponentCode := normalNode8068

theorem canonicalSound19006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19006.moment H = canonicalOutput19006.moment H :=
  canonical_of_padded canonicalInput19006 canonicalOutput19006 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19007 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput19007 : ExponentCode := normalNode8458

theorem canonicalSound19007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19007.moment H = canonicalOutput19007.moment H :=
  canonical_of_padded canonicalInput19007 canonicalOutput19007 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
