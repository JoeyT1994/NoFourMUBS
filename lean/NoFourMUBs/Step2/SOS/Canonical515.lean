import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32960 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32960 : ExponentCode := normalNode10869

theorem canonicalSound32960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32960.moment H = canonicalOutput32960.moment H :=
  canonical_of_padded canonicalInput32960 canonicalOutput32960 (by decide) (by decide)
    ⟨false, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32961 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32961 : ExponentCode := normalNode10435

theorem canonicalSound32961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32961.moment H = canonicalOutput32961.moment H :=
  canonical_of_padded canonicalInput32961 canonicalOutput32961 (by decide) (by decide)
    ⟨false, false, canonicalPermutation394, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32962 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32962 : ExponentCode := normalNode8067

theorem canonicalSound32962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32962.moment H = canonicalOutput32962.moment H :=
  canonical_of_padded canonicalInput32962 canonicalOutput32962 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32963 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32963 : ExponentCode := normalNode10453

theorem canonicalSound32963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32963.moment H = canonicalOutput32963.moment H :=
  canonical_of_padded canonicalInput32963 canonicalOutput32963 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32964 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32964 : ExponentCode := normalNode10453

theorem canonicalSound32964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32964.moment H = canonicalOutput32964.moment H :=
  canonical_of_padded canonicalInput32964 canonicalOutput32964 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32965 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32965 : ExponentCode := normalNode8067

theorem canonicalSound32965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32965.moment H = canonicalOutput32965.moment H :=
  canonical_of_padded canonicalInput32965 canonicalOutput32965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32966 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32966 : ExponentCode := normalNode10435

theorem canonicalSound32966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32966.moment H = canonicalOutput32966.moment H :=
  canonical_of_padded canonicalInput32966 canonicalOutput32966 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation220, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32967 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32967 : ExponentCode := normalNode10453

theorem canonicalSound32967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32967.moment H = canonicalOutput32967.moment H :=
  canonical_of_padded canonicalInput32967 canonicalOutput32967 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32968 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32968 : ExponentCode := normalNode10453

theorem canonicalSound32968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32968.moment H = canonicalOutput32968.moment H :=
  canonical_of_padded canonicalInput32968 canonicalOutput32968 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32969 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32969 : ExponentCode := normalNode10453

theorem canonicalSound32969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32969.moment H = canonicalOutput32969.moment H :=
  canonical_of_padded canonicalInput32969 canonicalOutput32969 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32970 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32970 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound32970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32970.moment H = canonicalOutput32970.moment H :=
  canonical_of_padded canonicalInput32970 canonicalOutput32970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput32971 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32971 : ExponentCode := normalNode10453

theorem canonicalSound32971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32971.moment H = canonicalOutput32971.moment H :=
  canonical_of_padded canonicalInput32971 canonicalOutput32971 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation255, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32972 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32972 : ExponentCode := normalNode10453

theorem canonicalSound32972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32972.moment H = canonicalOutput32972.moment H :=
  canonical_of_padded canonicalInput32972 canonicalOutput32972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation255, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32973 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32973 : ExponentCode := normalNode10453

theorem canonicalSound32973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32973.moment H = canonicalOutput32973.moment H :=
  canonical_of_padded canonicalInput32973 canonicalOutput32973 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation255, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32974 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput32974 : ExponentCode := normalNode8067

theorem canonicalSound32974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32974.moment H = canonicalOutput32974.moment H :=
  canonical_of_padded canonicalInput32974 canonicalOutput32974 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32975 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput32975 : ExponentCode := normalNode10435

theorem canonicalSound32975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32975.moment H = canonicalOutput32975.moment H :=
  canonical_of_padded canonicalInput32975 canonicalOutput32975 (by decide) (by decide)
    ⟨false, false, canonicalPermutation394, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32976 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32976 : ExponentCode := normalNode10453

theorem canonicalSound32976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32976.moment H = canonicalOutput32976.moment H :=
  canonical_of_padded canonicalInput32976 canonicalOutput32976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32977 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32977 : ExponentCode := normalNode10453

theorem canonicalSound32977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32977.moment H = canonicalOutput32977.moment H :=
  canonical_of_padded canonicalInput32977 canonicalOutput32977 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32978 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32978 : ExponentCode := normalNode10435

theorem canonicalSound32978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32978.moment H = canonicalOutput32978.moment H :=
  canonical_of_padded canonicalInput32978 canonicalOutput32978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation220, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32979 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32979 : ExponentCode := normalNode8067

theorem canonicalSound32979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32979.moment H = canonicalOutput32979.moment H :=
  canonical_of_padded canonicalInput32979 canonicalOutput32979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32980 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32980 : ExponentCode := normalNode10435

theorem canonicalSound32980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32980.moment H = canonicalOutput32980.moment H :=
  canonical_of_padded canonicalInput32980 canonicalOutput32980 (by decide) (by decide)
    ⟨false, false, canonicalPermutation222, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32981 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32981 : ExponentCode := normalNode10453

theorem canonicalSound32981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32981.moment H = canonicalOutput32981.moment H :=
  canonical_of_padded canonicalInput32981 canonicalOutput32981 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32982 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32982 : ExponentCode := normalNode8067

theorem canonicalSound32982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32982.moment H = canonicalOutput32982.moment H :=
  canonical_of_padded canonicalInput32982 canonicalOutput32982 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32983 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32983 : ExponentCode := normalNode8067

theorem canonicalSound32983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32983.moment H = canonicalOutput32983.moment H :=
  canonical_of_padded canonicalInput32983 canonicalOutput32983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput32984 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32984 : ExponentCode := normalNode10453

theorem canonicalSound32984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32984.moment H = canonicalOutput32984.moment H :=
  canonical_of_padded canonicalInput32984 canonicalOutput32984 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput32985 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32985 : ExponentCode := normalNode10435

theorem canonicalSound32985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32985.moment H = canonicalOutput32985.moment H :=
  canonical_of_padded canonicalInput32985 canonicalOutput32985 (by decide) (by decide)
    ⟨false, false, canonicalPermutation326, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput32986 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput32986 : ExponentCode := normalNode8067

theorem canonicalSound32986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32986.moment H = canonicalOutput32986.moment H :=
  canonical_of_padded canonicalInput32986 canonicalOutput32986 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32987 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32987 : ExponentCode := normalNode10453

theorem canonicalSound32987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32987.moment H = canonicalOutput32987.moment H :=
  canonical_of_padded canonicalInput32987 canonicalOutput32987 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32988 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput32988 : ExponentCode := normalNode10435

theorem canonicalSound32988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32988.moment H = canonicalOutput32988.moment H :=
  canonical_of_padded canonicalInput32988 canonicalOutput32988 (by decide) (by decide)
    ⟨false, false, canonicalPermutation222, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32989 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32989 : ExponentCode := normalNode10435

theorem canonicalSound32989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32989.moment H = canonicalOutput32989.moment H :=
  canonical_of_padded canonicalInput32989 canonicalOutput32989 (by decide) (by decide)
    ⟨false, false, canonicalPermutation326, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput32990 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32990 : ExponentCode := normalNode10453

theorem canonicalSound32990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32990.moment H = canonicalOutput32990.moment H :=
  canonical_of_padded canonicalInput32990 canonicalOutput32990 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput32991 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32991 : ExponentCode := normalNode8067

theorem canonicalSound32991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32991.moment H = canonicalOutput32991.moment H :=
  canonical_of_padded canonicalInput32991 canonicalOutput32991 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput32992 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput32992 : ExponentCode := normalNode10869

theorem canonicalSound32992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32992.moment H = canonicalOutput32992.moment H :=
  canonical_of_padded canonicalInput32992 canonicalOutput32992 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32993 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput32993 : ExponentCode := normalNode8067

theorem canonicalSound32993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32993.moment H = canonicalOutput32993.moment H :=
  canonical_of_padded canonicalInput32993 canonicalOutput32993 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32994 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput32994 : ExponentCode := normalNode8067

theorem canonicalSound32994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32994.moment H = canonicalOutput32994.moment H :=
  canonical_of_padded canonicalInput32994 canonicalOutput32994 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput32995 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput32995 : ExponentCode := normalNode10869

theorem canonicalSound32995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32995.moment H = canonicalOutput32995.moment H :=
  canonical_of_padded canonicalInput32995 canonicalOutput32995 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput32996 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput32996 : ExponentCode := normalNode10434

theorem canonicalSound32996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32996.moment H = canonicalOutput32996.moment H :=
  canonical_of_padded canonicalInput32996 canonicalOutput32996 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation322, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput32997 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput32997 : ExponentCode := normalNode10433

theorem canonicalSound32997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32997.moment H = canonicalOutput32997.moment H :=
  canonical_of_padded canonicalInput32997 canonicalOutput32997 (by decide) (by decide)
    ⟨false, false, canonicalPermutation339, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput32998 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput32998 : ExponentCode := normalNode10396

theorem canonicalSound32998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32998.moment H = canonicalOutput32998.moment H :=
  canonical_of_padded canonicalInput32998 canonicalOutput32998 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation386⟩ (by decide +kernel) hH

def canonicalInput32999 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput32999 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound32999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32999.moment H = canonicalOutput32999.moment H :=
  canonical_of_padded canonicalInput32999 canonicalOutput32999 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation227, canonicalPermutation272⟩ (by decide +kernel) hH

def canonicalInput33000 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33000 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33000.moment H = canonicalOutput33000.moment H :=
  canonical_of_padded canonicalInput33000 canonicalOutput33000 (by decide) (by decide)
    ⟨false, false, canonicalPermutation254, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput33001 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33001 : ExponentCode := normalNode9917

theorem canonicalSound33001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33001.moment H = canonicalOutput33001.moment H :=
  canonical_of_padded canonicalInput33001 canonicalOutput33001 (by decide) (by decide)
    ⟨false, false, canonicalPermutation262, canonicalPermutation273⟩ (by decide +kernel) hH

def canonicalInput33002 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33002 : ExponentCode := normalNode11165

theorem canonicalSound33002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33002.moment H = canonicalOutput33002.moment H :=
  canonical_of_padded canonicalInput33002 canonicalOutput33002 (by decide) (by decide)
    ⟨false, true, canonicalPermutation259, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33003 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33003 : ExponentCode := normalNode8361

theorem canonicalSound33003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33003.moment H = canonicalOutput33003.moment H :=
  canonical_of_padded canonicalInput33003 canonicalOutput33003 (by decide) (by decide)
    ⟨false, false, canonicalPermutation316, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33004 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33004 : ExponentCode := normalNode8361

theorem canonicalSound33004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33004.moment H = canonicalOutput33004.moment H :=
  canonical_of_padded canonicalInput33004 canonicalOutput33004 (by decide) (by decide)
    ⟨false, false, canonicalPermutation367, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput33005 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33005 : ExponentCode := normalNode11165

theorem canonicalSound33005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33005.moment H = canonicalOutput33005.moment H :=
  canonical_of_padded canonicalInput33005 canonicalOutput33005 (by decide) (by decide)
    ⟨false, true, canonicalPermutation258, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33006 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33006 : ExponentCode := normalNode8361

theorem canonicalSound33006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33006.moment H = canonicalOutput33006.moment H :=
  canonical_of_padded canonicalInput33006 canonicalOutput33006 (by decide) (by decide)
    ⟨false, false, canonicalPermutation358, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33007 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33007 : ExponentCode := normalNode10645

theorem canonicalSound33007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33007.moment H = canonicalOutput33007.moment H :=
  canonical_of_padded canonicalInput33007 canonicalOutput33007 (by decide) (by decide)
    ⟨false, false, canonicalPermutation392, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33008 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33008 : ExponentCode := normalNode10453

theorem canonicalSound33008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33008.moment H = canonicalOutput33008.moment H :=
  canonical_of_padded canonicalInput33008 canonicalOutput33008 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation227, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33009 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33009 : ExponentCode := normalNode10453

theorem canonicalSound33009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33009.moment H = canonicalOutput33009.moment H :=
  canonical_of_padded canonicalInput33009 canonicalOutput33009 (by decide) (by decide)
    ⟨false, false, canonicalPermutation260, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput33010 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33010 : ExponentCode := normalNode10645

theorem canonicalSound33010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33010.moment H = canonicalOutput33010.moment H :=
  canonical_of_padded canonicalInput33010 canonicalOutput33010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation237, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput33011 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33011 : ExponentCode := normalNode8361

theorem canonicalSound33011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33011.moment H = canonicalOutput33011.moment H :=
  canonical_of_padded canonicalInput33011 canonicalOutput33011 (by decide) (by decide)
    ⟨false, false, canonicalPermutation362, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33012 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33012 : ExponentCode := normalNode8361

theorem canonicalSound33012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33012.moment H = canonicalOutput33012.moment H :=
  canonical_of_padded canonicalInput33012 canonicalOutput33012 (by decide) (by decide)
    ⟨false, false, canonicalPermutation360, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33013 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33013 : ExponentCode := normalNode10453

theorem canonicalSound33013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33013.moment H = canonicalOutput33013.moment H :=
  canonical_of_padded canonicalInput33013 canonicalOutput33013 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation227, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33014 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33014 : ExponentCode := normalNode10645

theorem canonicalSound33014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33014.moment H = canonicalOutput33014.moment H :=
  canonical_of_padded canonicalInput33014 canonicalOutput33014 (by decide) (by decide)
    ⟨false, false, canonicalPermutation392, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33015 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33015 : ExponentCode := normalNode10645

theorem canonicalSound33015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33015.moment H = canonicalOutput33015.moment H :=
  canonical_of_padded canonicalInput33015 canonicalOutput33015 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation237, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput33016 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33016 : ExponentCode := normalNode10453

theorem canonicalSound33016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33016.moment H = canonicalOutput33016.moment H :=
  canonical_of_padded canonicalInput33016 canonicalOutput33016 (by decide) (by decide)
    ⟨false, false, canonicalPermutation260, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33017 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33017 : ExponentCode := normalNode8361

theorem canonicalSound33017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33017.moment H = canonicalOutput33017.moment H :=
  canonical_of_padded canonicalInput33017 canonicalOutput33017 (by decide) (by decide)
    ⟨false, false, canonicalPermutation313, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput33018 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33018 : ExponentCode := normalNode11165

theorem canonicalSound33018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33018.moment H = canonicalOutput33018.moment H :=
  canonical_of_padded canonicalInput33018 canonicalOutput33018 (by decide) (by decide)
    ⟨false, true, canonicalPermutation255, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33019 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33019 : ExponentCode := normalNode8361

theorem canonicalSound33019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33019.moment H = canonicalOutput33019.moment H :=
  canonical_of_padded canonicalInput33019 canonicalOutput33019 (by decide) (by decide)
    ⟨false, false, canonicalPermutation316, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput33020 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33020 : ExponentCode := normalNode8361

theorem canonicalSound33020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33020.moment H = canonicalOutput33020.moment H :=
  canonical_of_padded canonicalInput33020 canonicalOutput33020 (by decide) (by decide)
    ⟨false, false, canonicalPermutation367, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput33021 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33021 : ExponentCode := normalNode11165

theorem canonicalSound33021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33021.moment H = canonicalOutput33021.moment H :=
  canonical_of_padded canonicalInput33021 canonicalOutput33021 (by decide) (by decide)
    ⟨false, true, canonicalPermutation254, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput33022 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33022 : ExponentCode := normalNode10453

theorem canonicalSound33022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33022.moment H = canonicalOutput33022.moment H :=
  canonical_of_padded canonicalInput33022 canonicalOutput33022 (by decide) (by decide)
    ⟨false, false, canonicalPermutation244, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput33023 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33023 : ExponentCode := normalNode8361

theorem canonicalSound33023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33023.moment H = canonicalOutput33023.moment H :=
  canonical_of_padded canonicalInput33023 canonicalOutput33023 (by decide) (by decide)
    ⟨false, false, canonicalPermutation362, canonicalPermutation274⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
