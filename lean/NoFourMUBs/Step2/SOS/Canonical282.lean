import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18048 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput18048 : ExponentCode := normalNode8866

theorem canonicalSound18048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18048.moment H = canonicalOutput18048.moment H :=
  canonical_of_padded canonicalInput18048 canonicalOutput18048 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18049 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput18049 : ExponentCode := normalNode6912

theorem canonicalSound18049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18049.moment H = canonicalOutput18049.moment H :=
  canonical_of_padded canonicalInput18049 canonicalOutput18049 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18050 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput18050 : ExponentCode := normalNode9278

theorem canonicalSound18050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18050.moment H = canonicalOutput18050.moment H :=
  canonical_of_padded canonicalInput18050 canonicalOutput18050 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18051 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -3, 3], ![0, 1, 2, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput18051 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1156

theorem canonicalSound18051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18051.moment H = canonicalOutput18051.moment H :=
  canonical_of_padded canonicalInput18051 canonicalOutput18051 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18052 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -3, 3], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput18052 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1121⟩

theorem canonicalSound18052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18052.moment H = canonicalOutput18052.moment H :=
  canonical_of_padded canonicalInput18052 canonicalOutput18052 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18053 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -3, 3], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput18053 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node925⟩

theorem canonicalSound18053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18053.moment H = canonicalOutput18053.moment H :=
  canonical_of_padded canonicalInput18053 canonicalOutput18053 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18054 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -3, 3], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput18054 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node677⟩

theorem canonicalSound18054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18054.moment H = canonicalOutput18054.moment H :=
  canonical_of_padded canonicalInput18054 canonicalOutput18054 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18055 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -3, 3], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput18055 : ExponentCode := normalNode9474

theorem canonicalSound18055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18055.moment H = canonicalOutput18055.moment H :=
  canonical_of_padded canonicalInput18055 canonicalOutput18055 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18056 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -3, 3], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput18056 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound18056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18056.moment H = canonicalOutput18056.moment H :=
  canonical_of_padded canonicalInput18056 canonicalOutput18056 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18057 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -3, 3], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput18057 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩

theorem canonicalSound18057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18057.moment H = canonicalOutput18057.moment H :=
  canonical_of_padded canonicalInput18057 canonicalOutput18057 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18058 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -3, 3], ![1, 1, 1, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput18058 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node925⟩

theorem canonicalSound18058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18058.moment H = canonicalOutput18058.moment H :=
  canonical_of_padded canonicalInput18058 canonicalOutput18058 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18059 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput18059 : ExponentCode := normalNode9452

theorem canonicalSound18059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18059.moment H = canonicalOutput18059.moment H :=
  canonical_of_padded canonicalInput18059 canonicalOutput18059 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18060 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![0, 0, 2, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput18060 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound18060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18060.moment H = canonicalOutput18060.moment H :=
  canonical_of_padded canonicalInput18060 canonicalOutput18060 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18061 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput18061 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1789⟩

theorem canonicalSound18061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18061.moment H = canonicalOutput18061.moment H :=
  canonical_of_padded canonicalInput18061 canonicalOutput18061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18062 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput18062 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1792⟩

theorem canonicalSound18062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18062.moment H = canonicalOutput18062.moment H :=
  canonical_of_padded canonicalInput18062 canonicalOutput18062 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18063 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput18063 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1824⟩

theorem canonicalSound18063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18063.moment H = canonicalOutput18063.moment H :=
  canonical_of_padded canonicalInput18063 canonicalOutput18063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18064 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput18064 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound18064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18064.moment H = canonicalOutput18064.moment H :=
  canonical_of_padded canonicalInput18064 canonicalOutput18064 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18065 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput18065 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node690⟩

theorem canonicalSound18065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18065.moment H = canonicalOutput18065.moment H :=
  canonical_of_padded canonicalInput18065 canonicalOutput18065 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18066 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![1, -1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput18066 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node891⟩

theorem canonicalSound18066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18066.moment H = canonicalOutput18066.moment H :=
  canonical_of_padded canonicalInput18066 canonicalOutput18066 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18067 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput18067 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound18067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18067.moment H = canonicalOutput18067.moment H :=
  canonical_of_padded canonicalInput18067 canonicalOutput18067 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18068 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput18068 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound18068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18068.moment H = canonicalOutput18068.moment H :=
  canonical_of_padded canonicalInput18068 canonicalOutput18068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18069 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![1, 0, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput18069 : ExponentCode := normalNode9475

theorem canonicalSound18069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18069.moment H = canonicalOutput18069.moment H :=
  canonical_of_padded canonicalInput18069 canonicalOutput18069 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18070 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput18070 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩

theorem canonicalSound18070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18070.moment H = canonicalOutput18070.moment H :=
  canonical_of_padded canonicalInput18070 canonicalOutput18070 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18071 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput18071 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound18071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18071.moment H = canonicalOutput18071.moment H :=
  canonical_of_padded canonicalInput18071 canonicalOutput18071 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18072 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput18072 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound18072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18072.moment H = canonicalOutput18072.moment H :=
  canonical_of_padded canonicalInput18072 canonicalOutput18072 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput18073 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput18073 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩

theorem canonicalSound18073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18073.moment H = canonicalOutput18073.moment H :=
  canonical_of_padded canonicalInput18073 canonicalOutput18073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18074 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![1, 1, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput18074 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound18074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18074.moment H = canonicalOutput18074.moment H :=
  canonical_of_padded canonicalInput18074 canonicalOutput18074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18075 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -2, 2], ![1, 1, 2, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput18075 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node891⟩

theorem canonicalSound18075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18075.moment H = canonicalOutput18075.moment H :=
  canonical_of_padded canonicalInput18075 canonicalOutput18075 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18076 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput18076 : ExponentCode := normalNode8863

theorem canonicalSound18076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18076.moment H = canonicalOutput18076.moment H :=
  canonical_of_padded canonicalInput18076 canonicalOutput18076 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18077 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput18077 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1385

theorem canonicalSound18077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18077.moment H = canonicalOutput18077.moment H :=
  canonical_of_padded canonicalInput18077 canonicalOutput18077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18078 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput18078 : ExponentCode := normalNode8863

theorem canonicalSound18078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18078.moment H = canonicalOutput18078.moment H :=
  canonical_of_padded canonicalInput18078 canonicalOutput18078 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18079 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput18079 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1168

theorem canonicalSound18079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18079.moment H = canonicalOutput18079.moment H :=
  canonical_of_padded canonicalInput18079 canonicalOutput18079 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18080 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput18080 : ExponentCode := normalNode3956

theorem canonicalSound18080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18080.moment H = canonicalOutput18080.moment H :=
  canonical_of_padded canonicalInput18080 canonicalOutput18080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18081 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput18081 : ExponentCode := normalNode9453

theorem canonicalSound18081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18081.moment H = canonicalOutput18081.moment H :=
  canonical_of_padded canonicalInput18081 canonicalOutput18081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18082 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput18082 : ExponentCode := normalNode9453

theorem canonicalSound18082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18082.moment H = canonicalOutput18082.moment H :=
  canonical_of_padded canonicalInput18082 canonicalOutput18082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18083 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, -3, 2], ![2, -1, 3, -4]]⟩

def canonicalOutput18083 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1330

theorem canonicalSound18083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18083.moment H = canonicalOutput18083.moment H :=
  canonical_of_padded canonicalInput18083 canonicalOutput18083 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18084 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, -2, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput18084 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound18084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18084.moment H = canonicalOutput18084.moment H :=
  canonical_of_padded canonicalInput18084 canonicalOutput18084 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput18085 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput18085 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound18085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18085.moment H = canonicalOutput18085.moment H :=
  canonical_of_padded canonicalInput18085 canonicalOutput18085 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput18086 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput18086 : ExponentCode := normalNode9290

theorem canonicalSound18086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18086.moment H = canonicalOutput18086.moment H :=
  canonical_of_padded canonicalInput18086 canonicalOutput18086 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18087 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput18087 : ExponentCode := normalNode9465

theorem canonicalSound18087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18087.moment H = canonicalOutput18087.moment H :=
  canonical_of_padded canonicalInput18087 canonicalOutput18087 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18088 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput18088 : ExponentCode := normalNode9326

theorem canonicalSound18088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18088.moment H = canonicalOutput18088.moment H :=
  canonical_of_padded canonicalInput18088 canonicalOutput18088 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18089 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput18089 : ExponentCode := normalNode9314

theorem canonicalSound18089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18089.moment H = canonicalOutput18089.moment H :=
  canonical_of_padded canonicalInput18089 canonicalOutput18089 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18090 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput18090 : ExponentCode := normalNode9301

theorem canonicalSound18090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18090.moment H = canonicalOutput18090.moment H :=
  canonical_of_padded canonicalInput18090 canonicalOutput18090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18091 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput18091 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1384

theorem canonicalSound18091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18091.moment H = canonicalOutput18091.moment H :=
  canonical_of_padded canonicalInput18091 canonicalOutput18091 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18092 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput18092 : ExponentCode := normalNode8883

theorem canonicalSound18092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18092.moment H = canonicalOutput18092.moment H :=
  canonical_of_padded canonicalInput18092 canonicalOutput18092 (by decide) (by decide)
    ⟨false, true, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18093 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput18093 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2088⟩

theorem canonicalSound18093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18093.moment H = canonicalOutput18093.moment H :=
  canonical_of_padded canonicalInput18093 canonicalOutput18093 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18094 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput18094 : ExponentCode := normalNode9331

theorem canonicalSound18094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18094.moment H = canonicalOutput18094.moment H :=
  canonical_of_padded canonicalInput18094 canonicalOutput18094 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18095 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput18095 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound18095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18095.moment H = canonicalOutput18095.moment H :=
  canonical_of_padded canonicalInput18095 canonicalOutput18095 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18096 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput18096 : ExponentCode := normalNode9308

theorem canonicalSound18096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18096.moment H = canonicalOutput18096.moment H :=
  canonical_of_padded canonicalInput18096 canonicalOutput18096 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18097 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![2, -1, -3, 2]]⟩

def canonicalOutput18097 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1090

theorem canonicalSound18097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18097.moment H = canonicalOutput18097.moment H :=
  canonical_of_padded canonicalInput18097 canonicalOutput18097 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18098 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput18098 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node926⟩

theorem canonicalSound18098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18098.moment H = canonicalOutput18098.moment H :=
  canonical_of_padded canonicalInput18098 canonicalOutput18098 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18099 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput18099 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound18099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18099.moment H = canonicalOutput18099.moment H :=
  canonical_of_padded canonicalInput18099 canonicalOutput18099 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18100 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, -1, 2, -2], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput18100 : ExponentCode := normalNode9310

theorem canonicalSound18100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18100.moment H = canonicalOutput18100.moment H :=
  canonical_of_padded canonicalInput18100 canonicalOutput18100 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18101 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput18101 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound18101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18101.moment H = canonicalOutput18101.moment H :=
  canonical_of_padded canonicalInput18101 canonicalOutput18101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18102 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, 0, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput18102 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1121⟩

theorem canonicalSound18102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18102.moment H = canonicalOutput18102.moment H :=
  canonical_of_padded canonicalInput18102 canonicalOutput18102 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18103 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput18103 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound18103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18103.moment H = canonicalOutput18103.moment H :=
  canonical_of_padded canonicalInput18103 canonicalOutput18103 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18104 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, 0, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput18104 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound18104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18104.moment H = canonicalOutput18104.moment H :=
  canonical_of_padded canonicalInput18104 canonicalOutput18104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18105 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, -1, 1], ![1, 0, 3, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput18105 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1121⟩

theorem canonicalSound18105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18105.moment H = canonicalOutput18105.moment H :=
  canonical_of_padded canonicalInput18105 canonicalOutput18105 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18106 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, 0, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput18106 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound18106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18106.moment H = canonicalOutput18106.moment H :=
  canonical_of_padded canonicalInput18106 canonicalOutput18106 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18107 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput18107 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2642⟩

theorem canonicalSound18107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18107.moment H = canonicalOutput18107.moment H :=
  canonical_of_padded canonicalInput18107 canonicalOutput18107 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18108 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput18108 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound18108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18108.moment H = canonicalOutput18108.moment H :=
  canonical_of_padded canonicalInput18108 canonicalOutput18108 (by decide) (by decide)
    ⟨false, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput18109 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput18109 : ExponentCode := normalNode9298

theorem canonicalSound18109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18109.moment H = canonicalOutput18109.moment H :=
  canonical_of_padded canonicalInput18109 canonicalOutput18109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18110 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput18110 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1114⟩

theorem canonicalSound18110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18110.moment H = canonicalOutput18110.moment H :=
  canonical_of_padded canonicalInput18110 canonicalOutput18110 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18111 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput18111 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node926⟩

theorem canonicalSound18111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18111.moment H = canonicalOutput18111.moment H :=
  canonical_of_padded canonicalInput18111 canonicalOutput18111 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
