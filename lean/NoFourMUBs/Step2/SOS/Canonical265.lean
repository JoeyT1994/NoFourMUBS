import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16960 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -3, 3], ![1, 0, 0, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput16960 : ExponentCode := normalNode9133

theorem canonicalSound16960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16960.moment H = canonicalOutput16960.moment H :=
  canonical_of_padded canonicalInput16960 canonicalOutput16960 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16961 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -3, 3], ![1, 0, 1, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput16961 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1085⟩

theorem canonicalSound16961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16961.moment H = canonicalOutput16961.moment H :=
  canonical_of_padded canonicalInput16961 canonicalOutput16961 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16962 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -3, 3], ![1, 0, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput16962 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1085⟩

theorem canonicalSound16962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16962.moment H = canonicalOutput16962.moment H :=
  canonical_of_padded canonicalInput16962 canonicalOutput16962 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16963 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -3, 3], ![1, 0, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput16963 : ExponentCode := normalNode9133

theorem canonicalSound16963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16963.moment H = canonicalOutput16963.moment H :=
  canonical_of_padded canonicalInput16963 canonicalOutput16963 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16964 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -3, 3], ![1, 1, 2, -4], ![1, -1, 1, -1]]⟩

def canonicalOutput16964 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1330

theorem canonicalSound16964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16964.moment H = canonicalOutput16964.moment H :=
  canonical_of_padded canonicalInput16964 canonicalOutput16964 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16965 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -2, 2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput16965 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1732⟩

theorem canonicalSound16965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16965.moment H = canonicalOutput16965.moment H :=
  canonical_of_padded canonicalInput16965 canonicalOutput16965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16966 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -2, 2], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput16966 : ExponentCode := normalNode9115

theorem canonicalSound16966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16966.moment H = canonicalOutput16966.moment H :=
  canonical_of_padded canonicalInput16966 canonicalOutput16966 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16967 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -2, 2], ![0, 0, 4, -4], ![2, 0, -2, 0]]⟩

def canonicalOutput16967 : ExponentCode := normalNode9117

theorem canonicalSound16967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16967.moment H = canonicalOutput16967.moment H :=
  canonical_of_padded canonicalInput16967 canonicalOutput16967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16968 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput16968 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1627⟩

theorem canonicalSound16968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16968.moment H = canonicalOutput16968.moment H :=
  canonical_of_padded canonicalInput16968 canonicalOutput16968 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16969 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput16969 : ExponentCode := normalNode2298

theorem canonicalSound16969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16969.moment H = canonicalOutput16969.moment H :=
  canonical_of_padded canonicalInput16969 canonicalOutput16969 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16970 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -2, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput16970 : ExponentCode := normalNode1977

theorem canonicalSound16970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16970.moment H = canonicalOutput16970.moment H :=
  canonical_of_padded canonicalInput16970 canonicalOutput16970 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16971 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -2, 2], ![1, -1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput16971 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code262

theorem canonicalSound16971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16971.moment H = canonicalOutput16971.moment H :=
  canonical_of_padded canonicalInput16971 canonicalOutput16971 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16972 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -2, 2], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput16972 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound16972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16972.moment H = canonicalOutput16972.moment H :=
  canonical_of_padded canonicalInput16972 canonicalOutput16972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16973 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -2, 2], ![1, -1, 4, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput16973 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code753

theorem canonicalSound16973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16973.moment H = canonicalOutput16973.moment H :=
  canonical_of_padded canonicalInput16973 canonicalOutput16973 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16974 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -2, 2], ![1, 1, 3, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput16974 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code262

theorem canonicalSound16974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16974.moment H = canonicalOutput16974.moment H :=
  canonical_of_padded canonicalInput16974 canonicalOutput16974 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16975 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, -2, 3, -1], ![0, 2, 0, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput16975 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code868

theorem canonicalSound16975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16975.moment H = canonicalOutput16975.moment H :=
  canonical_of_padded canonicalInput16975 canonicalOutput16975 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16976 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput16976 : ExponentCode := normalNode6854

theorem canonicalSound16976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16976.moment H = canonicalOutput16976.moment H :=
  canonical_of_padded canonicalInput16976 canonicalOutput16976 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16977 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, -2, 3, -1], ![1, 2, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput16977 : ExponentCode := normalNode6854

theorem canonicalSound16977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16977.moment H = canonicalOutput16977.moment H :=
  canonical_of_padded canonicalInput16977 canonicalOutput16977 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16978 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput16978 : ExponentCode := normalNode4396

theorem canonicalSound16978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16978.moment H = canonicalOutput16978.moment H :=
  canonical_of_padded canonicalInput16978 canonicalOutput16978 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16979 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput16979 : ExponentCode := normalNode4396

theorem canonicalSound16979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16979.moment H = canonicalOutput16979.moment H :=
  canonical_of_padded canonicalInput16979 canonicalOutput16979 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16980 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput16980 : ExponentCode := normalNode8835

theorem canonicalSound16980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16980.moment H = canonicalOutput16980.moment H :=
  canonical_of_padded canonicalInput16980 canonicalOutput16980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16981 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput16981 : ExponentCode := normalNode8826

theorem canonicalSound16981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16981.moment H = canonicalOutput16981.moment H :=
  canonical_of_padded canonicalInput16981 canonicalOutput16981 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16982 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput16982 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound16982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16982.moment H = canonicalOutput16982.moment H :=
  canonical_of_padded canonicalInput16982 canonicalOutput16982 (by decide) (by decide)
    ⟨false, false, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16983 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput16983 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2625⟩

theorem canonicalSound16983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16983.moment H = canonicalOutput16983.moment H :=
  canonical_of_padded canonicalInput16983 canonicalOutput16983 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16984 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput16984 : ExponentCode := normalNode3956

theorem canonicalSound16984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16984.moment H = canonicalOutput16984.moment H :=
  canonical_of_padded canonicalInput16984 canonicalOutput16984 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16985 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, 0, 3, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput16985 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1066⟩

theorem canonicalSound16985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16985.moment H = canonicalOutput16985.moment H :=
  canonical_of_padded canonicalInput16985 canonicalOutput16985 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16986 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput16986 : ExponentCode := normalNode8786

theorem canonicalSound16986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16986.moment H = canonicalOutput16986.moment H :=
  canonical_of_padded canonicalInput16986 canonicalOutput16986 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16987 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput16987 : ExponentCode := normalNode8852

theorem canonicalSound16987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16987.moment H = canonicalOutput16987.moment H :=
  canonical_of_padded canonicalInput16987 canonicalOutput16987 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16988 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput16988 : ExponentCode := normalNode9381

theorem canonicalSound16988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16988.moment H = canonicalOutput16988.moment H :=
  canonical_of_padded canonicalInput16988 canonicalOutput16988 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16989 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput16989 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound16989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16989.moment H = canonicalOutput16989.moment H :=
  canonical_of_padded canonicalInput16989 canonicalOutput16989 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16990 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput16990 : ExponentCode := normalNode8851

theorem canonicalSound16990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16990.moment H = canonicalOutput16990.moment H :=
  canonical_of_padded canonicalInput16990 canonicalOutput16990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16991 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![1, -2, 2, -1], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput16991 : ExponentCode := normalNode2768

theorem canonicalSound16991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16991.moment H = canonicalOutput16991.moment H :=
  canonical_of_padded canonicalInput16991 canonicalOutput16991 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16992 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput16992 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound16992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16992.moment H = canonicalOutput16992.moment H :=
  canonical_of_padded canonicalInput16992 canonicalOutput16992 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16993 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput16993 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound16993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16993.moment H = canonicalOutput16993.moment H :=
  canonical_of_padded canonicalInput16993 canonicalOutput16993 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16994 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, -1, 1], ![1, 1, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput16994 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound16994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16994.moment H = canonicalOutput16994.moment H :=
  canonical_of_padded canonicalInput16994 canonicalOutput16994 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16995 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput16995 : ExponentCode := normalNode9460

theorem canonicalSound16995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16995.moment H = canonicalOutput16995.moment H :=
  canonical_of_padded canonicalInput16995 canonicalOutput16995 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16996 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput16996 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2085⟩

theorem canonicalSound16996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16996.moment H = canonicalOutput16996.moment H :=
  canonical_of_padded canonicalInput16996 canonicalOutput16996 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16997 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput16997 : ExponentCode := normalNode3949

theorem canonicalSound16997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16997.moment H = canonicalOutput16997.moment H :=
  canonical_of_padded canonicalInput16997 canonicalOutput16997 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16998 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput16998 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2632⟩

theorem canonicalSound16998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16998.moment H = canonicalOutput16998.moment H :=
  canonical_of_padded canonicalInput16998 canonicalOutput16998 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16999 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput16999 : ExponentCode := normalNode9084

theorem canonicalSound16999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16999.moment H = canonicalOutput16999.moment H :=
  canonical_of_padded canonicalInput16999 canonicalOutput16999 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17000 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput17000 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2645⟩

theorem canonicalSound17000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17000.moment H = canonicalOutput17000.moment H :=
  canonical_of_padded canonicalInput17000 canonicalOutput17000 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17001 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput17001 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound17001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17001.moment H = canonicalOutput17001.moment H :=
  canonical_of_padded canonicalInput17001 canonicalOutput17001 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17002 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput17002 : ExponentCode := normalNode4293

theorem canonicalSound17002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17002.moment H = canonicalOutput17002.moment H :=
  canonical_of_padded canonicalInput17002 canonicalOutput17002 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17003 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput17003 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1640⟩

theorem canonicalSound17003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17003.moment H = canonicalOutput17003.moment H :=
  canonical_of_padded canonicalInput17003 canonicalOutput17003 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17004 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![0, 1, 3, -4], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput17004 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2564⟩

theorem canonicalSound17004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17004.moment H = canonicalOutput17004.moment H :=
  canonical_of_padded canonicalInput17004 canonicalOutput17004 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17005 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput17005 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound17005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17005.moment H = canonicalOutput17005.moment H :=
  canonical_of_padded canonicalInput17005 canonicalOutput17005 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17006 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 0, 0], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput17006 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1112⟩

theorem canonicalSound17006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17006.moment H = canonicalOutput17006.moment H :=
  canonical_of_padded canonicalInput17006 canonicalOutput17006 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17007 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![0, 1, -3, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput17007 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node674⟩

theorem canonicalSound17007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17007.moment H = canonicalOutput17007.moment H :=
  canonical_of_padded canonicalInput17007 canonicalOutput17007 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17008 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![0, 1, -2, 1], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput17008 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1312

theorem canonicalSound17008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17008.moment H = canonicalOutput17008.moment H :=
  canonical_of_padded canonicalInput17008 canonicalOutput17008 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17009 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput17009 : ExponentCode := normalNode4304

theorem canonicalSound17009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17009.moment H = canonicalOutput17009.moment H :=
  canonical_of_padded canonicalInput17009 canonicalOutput17009 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17010 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![0, 1, -2, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput17010 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound17010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17010.moment H = canonicalOutput17010.moment H :=
  canonical_of_padded canonicalInput17010 canonicalOutput17010 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17011 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput17011 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2645⟩

theorem canonicalSound17011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17011.moment H = canonicalOutput17011.moment H :=
  canonical_of_padded canonicalInput17011 canonicalOutput17011 (by decide) (by decide)
    ⟨false, true, canonicalPermutation37, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17012 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput17012 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2088⟩

theorem canonicalSound17012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17012.moment H = canonicalOutput17012.moment H :=
  canonical_of_padded canonicalInput17012 canonicalOutput17012 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17013 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput17013 : ExponentCode := normalNode4304

theorem canonicalSound17013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17013.moment H = canonicalOutput17013.moment H :=
  canonical_of_padded canonicalInput17013 canonicalOutput17013 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17014 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![0, 1, 2, -3], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput17014 : ExponentCode := normalNode8840

theorem canonicalSound17014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17014.moment H = canonicalOutput17014.moment H :=
  canonical_of_padded canonicalInput17014 canonicalOutput17014 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17015 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput17015 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound17015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17015.moment H = canonicalOutput17015.moment H :=
  canonical_of_padded canonicalInput17015 canonicalOutput17015 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17016 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput17016 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node621⟩

theorem canonicalSound17016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17016.moment H = canonicalOutput17016.moment H :=
  canonical_of_padded canonicalInput17016 canonicalOutput17016 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17017 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput17017 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound17017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17017.moment H = canonicalOutput17017.moment H :=
  canonical_of_padded canonicalInput17017 canonicalOutput17017 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17018 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, -1, 3, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput17018 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1090

theorem canonicalSound17018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17018.moment H = canonicalOutput17018.moment H :=
  canonical_of_padded canonicalInput17018 canonicalOutput17018 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17019 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput17019 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound17019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17019.moment H = canonicalOutput17019.moment H :=
  canonical_of_padded canonicalInput17019 canonicalOutput17019 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17020 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, 0, 2, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput17020 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound17020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17020.moment H = canonicalOutput17020.moment H :=
  canonical_of_padded canonicalInput17020 canonicalOutput17020 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17021 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, 1, -4, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput17021 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1090

theorem canonicalSound17021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17021.moment H = canonicalOutput17021.moment H :=
  canonical_of_padded canonicalInput17021 canonicalOutput17021 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17022 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, 1, -3, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput17022 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound17022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17022.moment H = canonicalOutput17022.moment H :=
  canonical_of_padded canonicalInput17022 canonicalOutput17022 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17023 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput17023 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound17023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17023.moment H = canonicalOutput17023.moment H :=
  canonical_of_padded canonicalInput17023 canonicalOutput17023 (by decide) (by decide)
    ⟨false, true, canonicalPermutation37, canonicalPermutation6⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
