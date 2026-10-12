import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2048 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput2048 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code206

theorem canonicalSound2048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2048.moment H = canonicalOutput2048.moment H :=
  canonical_of_padded canonicalInput2048 canonicalOutput2048 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2049 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput2049 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code579

theorem canonicalSound2049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2049.moment H = canonicalOutput2049.moment H :=
  canonical_of_padded canonicalInput2049 canonicalOutput2049 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2050 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 2, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput2050 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node506⟩

theorem canonicalSound2050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2050.moment H = canonicalOutput2050.moment H :=
  canonical_of_padded canonicalInput2050 canonicalOutput2050 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2051 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput2051 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code639

theorem canonicalSound2051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2051.moment H = canonicalOutput2051.moment H :=
  canonical_of_padded canonicalInput2051 canonicalOutput2051 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2052 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput2052 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code619

theorem canonicalSound2052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2052.moment H = canonicalOutput2052.moment H :=
  canonical_of_padded canonicalInput2052 canonicalOutput2052 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2053 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput2053 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1250⟩

theorem canonicalSound2053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2053.moment H = canonicalOutput2053.moment H :=
  canonical_of_padded canonicalInput2053 canonicalOutput2053 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2054 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput2054 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1143

theorem canonicalSound2054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2054.moment H = canonicalOutput2054.moment H :=
  canonical_of_padded canonicalInput2054 canonicalOutput2054 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2055 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput2055 : ExponentCode := normalNode7063

theorem canonicalSound2055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2055.moment H = canonicalOutput2055.moment H :=
  canonical_of_padded canonicalInput2055 canonicalOutput2055 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2056 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2056 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound2056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2056.moment H = canonicalOutput2056.moment H :=
  canonical_of_padded canonicalInput2056 canonicalOutput2056 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2057 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput2057 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code211

theorem canonicalSound2057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2057.moment H = canonicalOutput2057.moment H :=
  canonical_of_padded canonicalInput2057 canonicalOutput2057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput2058 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2058 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound2058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2058.moment H = canonicalOutput2058.moment H :=
  canonical_of_padded canonicalInput2058 canonicalOutput2058 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2059 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -2, 1], ![1, 2, -1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput2059 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1143

theorem canonicalSound2059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2059.moment H = canonicalOutput2059.moment H :=
  canonical_of_padded canonicalInput2059 canonicalOutput2059 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2060 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput2060 : ExponentCode := normalNode732

theorem canonicalSound2060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2060.moment H = canonicalOutput2060.moment H :=
  canonical_of_padded canonicalInput2060 canonicalOutput2060 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2061 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![-1, 2, -2, 1], ![1, 0, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput2061 : ExponentCode := normalNode740

theorem canonicalSound2061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2061.moment H = canonicalOutput2061.moment H :=
  canonical_of_padded canonicalInput2061 canonicalOutput2061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2062 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![-1, 2, -2, 1], ![1, 0, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput2062 : ExponentCode := normalNode741

theorem canonicalSound2062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2062.moment H = canonicalOutput2062.moment H :=
  canonical_of_padded canonicalInput2062 canonicalOutput2062 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2063 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![-1, 2, -1, 0], ![1, -1, 1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput2063 : ExponentCode := normalNode926

theorem canonicalSound2063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2063.moment H = canonicalOutput2063.moment H :=
  canonical_of_padded canonicalInput2063 canonicalOutput2063 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2064 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput2064 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound2064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2064.moment H = canonicalOutput2064.moment H :=
  canonical_of_padded canonicalInput2064 canonicalOutput2064 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2065 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput2065 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound2065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2065.moment H = canonicalOutput2065.moment H :=
  canonical_of_padded canonicalInput2065 canonicalOutput2065 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput2066 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput2066 : ExponentCode := normalNode923

theorem canonicalSound2066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2066.moment H = canonicalOutput2066.moment H :=
  canonical_of_padded canonicalInput2066 canonicalOutput2066 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2067 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput2067 : ExponentCode := normalNode924

theorem canonicalSound2067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2067.moment H = canonicalOutput2067.moment H :=
  canonical_of_padded canonicalInput2067 canonicalOutput2067 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2068 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2068 : ExponentCode := normalNode926

theorem canonicalSound2068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2068.moment H = canonicalOutput2068.moment H :=
  canonical_of_padded canonicalInput2068 canonicalOutput2068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2069 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2069 : ExponentCode := normalNode927

theorem canonicalSound2069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2069.moment H = canonicalOutput2069.moment H :=
  canonical_of_padded canonicalInput2069 canonicalOutput2069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2070 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput2070 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound2070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2070.moment H = canonicalOutput2070.moment H :=
  canonical_of_padded canonicalInput2070 canonicalOutput2070 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2071 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -1, 1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput2071 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2340⟩

theorem canonicalSound2071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2071.moment H = canonicalOutput2071.moment H :=
  canonical_of_padded canonicalInput2071 canonicalOutput2071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput2072 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput2072 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2345⟩

theorem canonicalSound2072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2072.moment H = canonicalOutput2072.moment H :=
  canonical_of_padded canonicalInput2072 canonicalOutput2072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput2073 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput2073 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1523⟩

theorem canonicalSound2073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2073.moment H = canonicalOutput2073.moment H :=
  canonical_of_padded canonicalInput2073 canonicalOutput2073 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput2074 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput2074 : ExponentCode := normalNode4450

theorem canonicalSound2074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2074.moment H = canonicalOutput2074.moment H :=
  canonical_of_padded canonicalInput2074 canonicalOutput2074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput2075 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput2075 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1521⟩

theorem canonicalSound2075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2075.moment H = canonicalOutput2075.moment H :=
  canonical_of_padded canonicalInput2075 canonicalOutput2075 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput2076 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput2076 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2346⟩

theorem canonicalSound2076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2076.moment H = canonicalOutput2076.moment H :=
  canonical_of_padded canonicalInput2076 canonicalOutput2076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput2077 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2077 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1523⟩

theorem canonicalSound2077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2077.moment H = canonicalOutput2077.moment H :=
  canonical_of_padded canonicalInput2077 canonicalOutput2077 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput2078 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 0, 1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput2078 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1518⟩

theorem canonicalSound2078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2078.moment H = canonicalOutput2078.moment H :=
  canonical_of_padded canonicalInput2078 canonicalOutput2078 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2079 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput2079 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1523⟩

theorem canonicalSound2079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2079.moment H = canonicalOutput2079.moment H :=
  canonical_of_padded canonicalInput2079 canonicalOutput2079 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput2080 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput2080 : ExponentCode := normalNode923

theorem canonicalSound2080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2080.moment H = canonicalOutput2080.moment H :=
  canonical_of_padded canonicalInput2080 canonicalOutput2080 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2081 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput2081 : ExponentCode := normalNode5801

theorem canonicalSound2081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2081.moment H = canonicalOutput2081.moment H :=
  canonical_of_padded canonicalInput2081 canonicalOutput2081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2082 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput2082 : ExponentCode := normalNode892

theorem canonicalSound2082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2082.moment H = canonicalOutput2082.moment H :=
  canonical_of_padded canonicalInput2082 canonicalOutput2082 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput2083 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput2083 : ExponentCode := normalNode5801

theorem canonicalSound2083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2083.moment H = canonicalOutput2083.moment H :=
  canonical_of_padded canonicalInput2083 canonicalOutput2083 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput2084 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput2084 : ExponentCode := normalNode932

theorem canonicalSound2084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2084.moment H = canonicalOutput2084.moment H :=
  canonical_of_padded canonicalInput2084 canonicalOutput2084 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2085 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput2085 : ExponentCode := normalNode932

theorem canonicalSound2085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2085.moment H = canonicalOutput2085.moment H :=
  canonical_of_padded canonicalInput2085 canonicalOutput2085 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2086 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput2086 : ExponentCode := normalNode929

theorem canonicalSound2086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2086.moment H = canonicalOutput2086.moment H :=
  canonical_of_padded canonicalInput2086 canonicalOutput2086 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2087 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput2087 : ExponentCode := normalNode930

theorem canonicalSound2087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2087.moment H = canonicalOutput2087.moment H :=
  canonical_of_padded canonicalInput2087 canonicalOutput2087 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2088 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2088 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1523⟩

theorem canonicalSound2088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2088.moment H = canonicalOutput2088.moment H :=
  canonical_of_padded canonicalInput2088 canonicalOutput2088 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2089 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 1, 2, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput2089 : ExponentCode := normalNode6245

theorem canonicalSound2089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2089.moment H = canonicalOutput2089.moment H :=
  canonical_of_padded canonicalInput2089 canonicalOutput2089 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2090 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![0, 0, 0, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput2090 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node825⟩

theorem canonicalSound2090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2090.moment H = canonicalOutput2090.moment H :=
  canonical_of_padded canonicalInput2090 canonicalOutput2090 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2091 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![0, 0, 1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput2091 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2289⟩

theorem canonicalSound2091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2091.moment H = canonicalOutput2091.moment H :=
  canonical_of_padded canonicalInput2091 canonicalOutput2091 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput2092 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2092 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2289⟩

theorem canonicalSound2092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2092.moment H = canonicalOutput2092.moment H :=
  canonical_of_padded canonicalInput2092 canonicalOutput2092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput2093 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput2093 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2347⟩

theorem canonicalSound2093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2093.moment H = canonicalOutput2093.moment H :=
  canonical_of_padded canonicalInput2093 canonicalOutput2093 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput2094 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, 0, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput2094 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2289⟩

theorem canonicalSound2094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2094.moment H = canonicalOutput2094.moment H :=
  canonical_of_padded canonicalInput2094 canonicalOutput2094 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput2095 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput2095 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node825⟩

theorem canonicalSound2095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2095.moment H = canonicalOutput2095.moment H :=
  canonical_of_padded canonicalInput2095 canonicalOutput2095 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2096 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![0, -1, 1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput2096 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2279⟩

theorem canonicalSound2096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2096.moment H = canonicalOutput2096.moment H :=
  canonical_of_padded canonicalInput2096 canonicalOutput2096 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput2097 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2097 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1520⟩

theorem canonicalSound2097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2097.moment H = canonicalOutput2097.moment H :=
  canonical_of_padded canonicalInput2097 canonicalOutput2097 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput2098 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2098 : ExponentCode := normalNode5801

theorem canonicalSound2098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2098.moment H = canonicalOutput2098.moment H :=
  canonical_of_padded canonicalInput2098 canonicalOutput2098 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput2099 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput2099 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound2099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2099.moment H = canonicalOutput2099.moment H :=
  canonical_of_padded canonicalInput2099 canonicalOutput2099 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2100 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput2100 : ExponentCode := normalNode5802

theorem canonicalSound2100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2100.moment H = canonicalOutput2100.moment H :=
  canonical_of_padded canonicalInput2100 canonicalOutput2100 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2101 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2101 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1518⟩

theorem canonicalSound2101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2101.moment H = canonicalOutput2101.moment H :=
  canonical_of_padded canonicalInput2101 canonicalOutput2101 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput2102 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, 0, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput2102 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound2102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2102.moment H = canonicalOutput2102.moment H :=
  canonical_of_padded canonicalInput2102 canonicalOutput2102 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2103 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput2103 : ExponentCode := normalNode943

theorem canonicalSound2103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2103.moment H = canonicalOutput2103.moment H :=
  canonical_of_padded canonicalInput2103 canonicalOutput2103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2104 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput2104 : ExponentCode := normalNode6981

theorem canonicalSound2104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2104.moment H = canonicalOutput2104.moment H :=
  canonical_of_padded canonicalInput2104 canonicalOutput2104 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2105 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput2105 : ExponentCode := normalNode7078

theorem canonicalSound2105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2105.moment H = canonicalOutput2105.moment H :=
  canonical_of_padded canonicalInput2105 canonicalOutput2105 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2106 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput2106 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1073⟩

theorem canonicalSound2106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2106.moment H = canonicalOutput2106.moment H :=
  canonical_of_padded canonicalInput2106 canonicalOutput2106 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2107 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput2107 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1253⟩

theorem canonicalSound2107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2107.moment H = canonicalOutput2107.moment H :=
  canonical_of_padded canonicalInput2107 canonicalOutput2107 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2108 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput2108 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1331⟩

theorem canonicalSound2108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2108.moment H = canonicalOutput2108.moment H :=
  canonical_of_padded canonicalInput2108 canonicalOutput2108 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2109 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput2109 : ExponentCode := normalNode7063

theorem canonicalSound2109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2109.moment H = canonicalOutput2109.moment H :=
  canonical_of_padded canonicalInput2109 canonicalOutput2109 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2110 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput2110 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound2110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2110.moment H = canonicalOutput2110.moment H :=
  canonical_of_padded canonicalInput2110 canonicalOutput2110 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2111 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput2111 : ExponentCode := normalNode6243

theorem canonicalSound2111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2111.moment H = canonicalOutput2111.moment H :=
  canonical_of_padded canonicalInput2111 canonicalOutput2111 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
