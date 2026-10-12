import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21952 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput21952 : ExponentCode := normalNode10685

theorem canonicalSound21952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21952.moment H = canonicalOutput21952.moment H :=
  canonical_of_padded canonicalInput21952 canonicalOutput21952 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation301⟩ (by decide +kernel) hH

def canonicalInput21953 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput21953 : ExponentCode := normalNode10452

theorem canonicalSound21953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21953.moment H = canonicalOutput21953.moment H :=
  canonical_of_padded canonicalInput21953 canonicalOutput21953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput21954 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput21954 : ExponentCode := normalNode10367

theorem canonicalSound21954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21954.moment H = canonicalOutput21954.moment H :=
  canonical_of_padded canonicalInput21954 canonicalOutput21954 (by decide) (by decide)
    ⟨false, false, canonicalPermutation240, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput21955 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21955 : ExponentCode := normalNode10869

theorem canonicalSound21955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21955.moment H = canonicalOutput21955.moment H :=
  canonical_of_padded canonicalInput21955 canonicalOutput21955 (by decide) (by decide)
    ⟨false, true, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21956 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21956 : ExponentCode := normalNode8067

theorem canonicalSound21956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21956.moment H = canonicalOutput21956.moment H :=
  canonical_of_padded canonicalInput21956 canonicalOutput21956 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput21957 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21957 : ExponentCode := normalNode8067

theorem canonicalSound21957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21957.moment H = canonicalOutput21957.moment H :=
  canonical_of_padded canonicalInput21957 canonicalOutput21957 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput21958 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput21958 : ExponentCode := normalNode10869

theorem canonicalSound21958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21958.moment H = canonicalOutput21958.moment H :=
  canonical_of_padded canonicalInput21958 canonicalOutput21958 (by decide) (by decide)
    ⟨false, true, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21959 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21959 : ExponentCode := normalNode8067

theorem canonicalSound21959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21959.moment H = canonicalOutput21959.moment H :=
  canonical_of_padded canonicalInput21959 canonicalOutput21959 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput21960 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21960 : ExponentCode := normalNode10453

theorem canonicalSound21960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21960.moment H = canonicalOutput21960.moment H :=
  canonical_of_padded canonicalInput21960 canonicalOutput21960 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput21961 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21961 : ExponentCode := normalNode10435

theorem canonicalSound21961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21961.moment H = canonicalOutput21961.moment H :=
  canonical_of_padded canonicalInput21961 canonicalOutput21961 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput21962 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21962 : ExponentCode := normalNode10435

theorem canonicalSound21962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21962.moment H = canonicalOutput21962.moment H :=
  canonical_of_padded canonicalInput21962 canonicalOutput21962 (by decide) (by decide)
    ⟨false, false, canonicalPermutation27, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput21963 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21963 : ExponentCode := normalNode10453

theorem canonicalSound21963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21963.moment H = canonicalOutput21963.moment H :=
  canonical_of_padded canonicalInput21963 canonicalOutput21963 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput21964 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21964 : ExponentCode := normalNode8067

theorem canonicalSound21964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21964.moment H = canonicalOutput21964.moment H :=
  canonical_of_padded canonicalInput21964 canonicalOutput21964 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput21965 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21965 : ExponentCode := normalNode8067

theorem canonicalSound21965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21965.moment H = canonicalOutput21965.moment H :=
  canonical_of_padded canonicalInput21965 canonicalOutput21965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput21966 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21966 : ExponentCode := normalNode10435

theorem canonicalSound21966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21966.moment H = canonicalOutput21966.moment H :=
  canonical_of_padded canonicalInput21966 canonicalOutput21966 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput21967 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21967 : ExponentCode := normalNode10453

theorem canonicalSound21967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21967.moment H = canonicalOutput21967.moment H :=
  canonical_of_padded canonicalInput21967 canonicalOutput21967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput21968 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21968 : ExponentCode := normalNode10453

theorem canonicalSound21968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21968.moment H = canonicalOutput21968.moment H :=
  canonical_of_padded canonicalInput21968 canonicalOutput21968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput21969 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21969 : ExponentCode := normalNode10435

theorem canonicalSound21969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21969.moment H = canonicalOutput21969.moment H :=
  canonical_of_padded canonicalInput21969 canonicalOutput21969 (by decide) (by decide)
    ⟨false, false, canonicalPermutation27, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput21970 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21970 : ExponentCode := normalNode8067

theorem canonicalSound21970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21970.moment H = canonicalOutput21970.moment H :=
  canonical_of_padded canonicalInput21970 canonicalOutput21970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput21971 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21971 : ExponentCode := normalNode10869

theorem canonicalSound21971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21971.moment H = canonicalOutput21971.moment H :=
  canonical_of_padded canonicalInput21971 canonicalOutput21971 (by decide) (by decide)
    ⟨false, true, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21972 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21972 : ExponentCode := normalNode8067

theorem canonicalSound21972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21972.moment H = canonicalOutput21972.moment H :=
  canonical_of_padded canonicalInput21972 canonicalOutput21972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput21973 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21973 : ExponentCode := normalNode8067

theorem canonicalSound21973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21973.moment H = canonicalOutput21973.moment H :=
  canonical_of_padded canonicalInput21973 canonicalOutput21973 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput21974 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput21974 : ExponentCode := normalNode10869

theorem canonicalSound21974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21974.moment H = canonicalOutput21974.moment H :=
  canonical_of_padded canonicalInput21974 canonicalOutput21974 (by decide) (by decide)
    ⟨false, true, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21975 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21975 : ExponentCode := normalNode10435

theorem canonicalSound21975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21975.moment H = canonicalOutput21975.moment H :=
  canonical_of_padded canonicalInput21975 canonicalOutput21975 (by decide) (by decide)
    ⟨false, false, canonicalPermutation61, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput21976 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21976 : ExponentCode := normalNode8067

theorem canonicalSound21976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21976.moment H = canonicalOutput21976.moment H :=
  canonical_of_padded canonicalInput21976 canonicalOutput21976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput21977 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21977 : ExponentCode := normalNode10453

theorem canonicalSound21977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21977.moment H = canonicalOutput21977.moment H :=
  canonical_of_padded canonicalInput21977 canonicalOutput21977 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput21978 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21978 : ExponentCode := normalNode10453

theorem canonicalSound21978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21978.moment H = canonicalOutput21978.moment H :=
  canonical_of_padded canonicalInput21978 canonicalOutput21978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput21979 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput21979 : ExponentCode := normalNode8067

theorem canonicalSound21979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21979.moment H = canonicalOutput21979.moment H :=
  canonical_of_padded canonicalInput21979 canonicalOutput21979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput21980 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21980 : ExponentCode := normalNode10435

theorem canonicalSound21980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21980.moment H = canonicalOutput21980.moment H :=
  canonical_of_padded canonicalInput21980 canonicalOutput21980 (by decide) (by decide)
    ⟨false, false, canonicalPermutation43, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput21981 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21981 : ExponentCode := normalNode10453

theorem canonicalSound21981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21981.moment H = canonicalOutput21981.moment H :=
  canonical_of_padded canonicalInput21981 canonicalOutput21981 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput21982 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21982 : ExponentCode := normalNode10453

theorem canonicalSound21982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21982.moment H = canonicalOutput21982.moment H :=
  canonical_of_padded canonicalInput21982 canonicalOutput21982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput21983 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21983 : ExponentCode := normalNode10453

theorem canonicalSound21983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21983.moment H = canonicalOutput21983.moment H :=
  canonical_of_padded canonicalInput21983 canonicalOutput21983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput21984 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21984 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound21984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21984.moment H = canonicalOutput21984.moment H :=
  canonical_of_padded canonicalInput21984 canonicalOutput21984 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput21985 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21985 : ExponentCode := normalNode10453

theorem canonicalSound21985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21985.moment H = canonicalOutput21985.moment H :=
  canonical_of_padded canonicalInput21985 canonicalOutput21985 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput21986 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21986 : ExponentCode := normalNode10453

theorem canonicalSound21986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21986.moment H = canonicalOutput21986.moment H :=
  canonical_of_padded canonicalInput21986 canonicalOutput21986 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput21987 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21987 : ExponentCode := normalNode10453

theorem canonicalSound21987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21987.moment H = canonicalOutput21987.moment H :=
  canonical_of_padded canonicalInput21987 canonicalOutput21987 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput21988 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21988 : ExponentCode := normalNode8067

theorem canonicalSound21988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21988.moment H = canonicalOutput21988.moment H :=
  canonical_of_padded canonicalInput21988 canonicalOutput21988 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput21989 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21989 : ExponentCode := normalNode10435

theorem canonicalSound21989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21989.moment H = canonicalOutput21989.moment H :=
  canonical_of_padded canonicalInput21989 canonicalOutput21989 (by decide) (by decide)
    ⟨false, false, canonicalPermutation61, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput21990 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21990 : ExponentCode := normalNode10453

theorem canonicalSound21990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21990.moment H = canonicalOutput21990.moment H :=
  canonical_of_padded canonicalInput21990 canonicalOutput21990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput21991 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21991 : ExponentCode := normalNode10453

theorem canonicalSound21991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21991.moment H = canonicalOutput21991.moment H :=
  canonical_of_padded canonicalInput21991 canonicalOutput21991 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput21992 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21992 : ExponentCode := normalNode10435

theorem canonicalSound21992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21992.moment H = canonicalOutput21992.moment H :=
  canonical_of_padded canonicalInput21992 canonicalOutput21992 (by decide) (by decide)
    ⟨false, false, canonicalPermutation43, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput21993 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput21993 : ExponentCode := normalNode8067

theorem canonicalSound21993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21993.moment H = canonicalOutput21993.moment H :=
  canonical_of_padded canonicalInput21993 canonicalOutput21993 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput21994 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21994 : ExponentCode := normalNode10435

theorem canonicalSound21994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21994.moment H = canonicalOutput21994.moment H :=
  canonical_of_padded canonicalInput21994 canonicalOutput21994 (by decide) (by decide)
    ⟨false, false, canonicalPermutation58, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput21995 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21995 : ExponentCode := normalNode10453

theorem canonicalSound21995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21995.moment H = canonicalOutput21995.moment H :=
  canonical_of_padded canonicalInput21995 canonicalOutput21995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput21996 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21996 : ExponentCode := normalNode8067

theorem canonicalSound21996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21996.moment H = canonicalOutput21996.moment H :=
  canonical_of_padded canonicalInput21996 canonicalOutput21996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput21997 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput21997 : ExponentCode := normalNode8067

theorem canonicalSound21997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21997.moment H = canonicalOutput21997.moment H :=
  canonical_of_padded canonicalInput21997 canonicalOutput21997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput21998 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21998 : ExponentCode := normalNode10453

theorem canonicalSound21998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21998.moment H = canonicalOutput21998.moment H :=
  canonical_of_padded canonicalInput21998 canonicalOutput21998 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput21999 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21999 : ExponentCode := normalNode10435

theorem canonicalSound21999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21999.moment H = canonicalOutput21999.moment H :=
  canonical_of_padded canonicalInput21999 canonicalOutput21999 (by decide) (by decide)
    ⟨false, false, canonicalPermutation51, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput22000 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22000 : ExponentCode := normalNode8067

theorem canonicalSound22000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22000.moment H = canonicalOutput22000.moment H :=
  canonical_of_padded canonicalInput22000 canonicalOutput22000 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22001 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22001 : ExponentCode := normalNode10453

theorem canonicalSound22001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22001.moment H = canonicalOutput22001.moment H :=
  canonical_of_padded canonicalInput22001 canonicalOutput22001 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput22002 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22002 : ExponentCode := normalNode10435

theorem canonicalSound22002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22002.moment H = canonicalOutput22002.moment H :=
  canonical_of_padded canonicalInput22002 canonicalOutput22002 (by decide) (by decide)
    ⟨false, false, canonicalPermutation58, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput22003 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22003 : ExponentCode := normalNode10435

theorem canonicalSound22003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22003.moment H = canonicalOutput22003.moment H :=
  canonical_of_padded canonicalInput22003 canonicalOutput22003 (by decide) (by decide)
    ⟨false, false, canonicalPermutation51, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput22004 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22004 : ExponentCode := normalNode10453

theorem canonicalSound22004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22004.moment H = canonicalOutput22004.moment H :=
  canonical_of_padded canonicalInput22004 canonicalOutput22004 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput22005 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22005 : ExponentCode := normalNode8067

theorem canonicalSound22005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22005.moment H = canonicalOutput22005.moment H :=
  canonical_of_padded canonicalInput22005 canonicalOutput22005 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput22006 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22006 : ExponentCode := normalNode10869

theorem canonicalSound22006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22006.moment H = canonicalOutput22006.moment H :=
  canonical_of_padded canonicalInput22006 canonicalOutput22006 (by decide) (by decide)
    ⟨false, true, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput22007 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22007 : ExponentCode := normalNode8067

theorem canonicalSound22007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22007.moment H = canonicalOutput22007.moment H :=
  canonical_of_padded canonicalInput22007 canonicalOutput22007 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput22008 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22008 : ExponentCode := normalNode8067

theorem canonicalSound22008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22008.moment H = canonicalOutput22008.moment H :=
  canonical_of_padded canonicalInput22008 canonicalOutput22008 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput22009 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22009 : ExponentCode := normalNode10869

theorem canonicalSound22009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22009.moment H = canonicalOutput22009.moment H :=
  canonical_of_padded canonicalInput22009 canonicalOutput22009 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput22010 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput22010 : ExponentCode := normalNode10434

theorem canonicalSound22010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22010.moment H = canonicalOutput22010.moment H :=
  canonical_of_padded canonicalInput22010 canonicalOutput22010 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput22011 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput22011 : ExponentCode := normalNode10433

theorem canonicalSound22011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22011.moment H = canonicalOutput22011.moment H :=
  canonical_of_padded canonicalInput22011 canonicalOutput22011 (by decide) (by decide)
    ⟨false, false, canonicalPermutation241, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput22012 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput22012 : ExponentCode := normalNode10396

theorem canonicalSound22012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22012.moment H = canonicalOutput22012.moment H :=
  canonical_of_padded canonicalInput22012 canonicalOutput22012 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation386⟩ (by decide +kernel) hH

def canonicalInput22013 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22013 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound22013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22013.moment H = canonicalOutput22013.moment H :=
  canonical_of_padded canonicalInput22013 canonicalOutput22013 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput22014 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22014 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound22014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22014.moment H = canonicalOutput22014.moment H :=
  canonical_of_padded canonicalInput22014 canonicalOutput22014 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput22015 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22015 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound22015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22015.moment H = canonicalOutput22015.moment H :=
  canonical_of_padded canonicalInput22015 canonicalOutput22015 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
