import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2112 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2112 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound2112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2112.moment H = canonicalOutput2112.moment H :=
  canonical_of_padded canonicalInput2112 canonicalOutput2112 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2113 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput2113 : ExponentCode := normalNode7063

theorem canonicalSound2113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2113.moment H = canonicalOutput2113.moment H :=
  canonical_of_padded canonicalInput2113 canonicalOutput2113 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2114 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput2114 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1520⟩

theorem canonicalSound2114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2114.moment H = canonicalOutput2114.moment H :=
  canonical_of_padded canonicalInput2114 canonicalOutput2114 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2115 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput2115 : ExponentCode := normalNode937

theorem canonicalSound2115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2115.moment H = canonicalOutput2115.moment H :=
  canonical_of_padded canonicalInput2115 canonicalOutput2115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2116 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput2116 : ExponentCode := normalNode921

theorem canonicalSound2116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2116.moment H = canonicalOutput2116.moment H :=
  canonical_of_padded canonicalInput2116 canonicalOutput2116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2117 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput2117 : ExponentCode := normalNode921

theorem canonicalSound2117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2117.moment H = canonicalOutput2117.moment H :=
  canonical_of_padded canonicalInput2117 canonicalOutput2117 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2118 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput2118 : ExponentCode := normalNode926

theorem canonicalSound2118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2118.moment H = canonicalOutput2118.moment H :=
  canonical_of_padded canonicalInput2118 canonicalOutput2118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2119 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput2119 : ExponentCode := normalNode925

theorem canonicalSound2119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2119.moment H = canonicalOutput2119.moment H :=
  canonical_of_padded canonicalInput2119 canonicalOutput2119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2120 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput2120 : ExponentCode := normalNode927

theorem canonicalSound2120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2120.moment H = canonicalOutput2120.moment H :=
  canonical_of_padded canonicalInput2120 canonicalOutput2120 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2121 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput2121 : ExponentCode := normalNode927

theorem canonicalSound2121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2121.moment H = canonicalOutput2121.moment H :=
  canonical_of_padded canonicalInput2121 canonicalOutput2121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2122 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, 0, -4, 2]]⟩

def canonicalOutput2122 : ExponentCode := normalNode6222

theorem canonicalSound2122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2122.moment H = canonicalOutput2122.moment H :=
  canonical_of_padded canonicalInput2122 canonicalOutput2122 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2123 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 2, -3, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput2123 : ExponentCode := normalNode6981

theorem canonicalSound2123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2123.moment H = canonicalOutput2123.moment H :=
  canonical_of_padded canonicalInput2123 canonicalOutput2123 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2124 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 2, -2, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput2124 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound2124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2124.moment H = canonicalOutput2124.moment H :=
  canonical_of_padded canonicalInput2124 canonicalOutput2124 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2125 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput2125 : ExponentCode := normalNode940

theorem canonicalSound2125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2125.moment H = canonicalOutput2125.moment H :=
  canonical_of_padded canonicalInput2125 canonicalOutput2125 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2126 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 2, 0, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput2126 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node825⟩

theorem canonicalSound2126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2126.moment H = canonicalOutput2126.moment H :=
  canonical_of_padded canonicalInput2126 canonicalOutput2126 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2127 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 2, 1, -3], ![1, 0, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput2127 : ExponentCode := normalNode947

theorem canonicalSound2127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2127.moment H = canonicalOutput2127.moment H :=
  canonical_of_padded canonicalInput2127 canonicalOutput2127 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2128 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![0, 2, 1, -3], ![2, -1, -3, 2]]⟩

def canonicalOutput2128 : ExponentCode := normalNode6218

theorem canonicalSound2128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2128.moment H = canonicalOutput2128.moment H :=
  canonical_of_padded canonicalInput2128 canonicalOutput2128 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2129 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput2129 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node728⟩

theorem canonicalSound2129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2129.moment H = canonicalOutput2129.moment H :=
  canonical_of_padded canonicalInput2129 canonicalOutput2129 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2130 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput2130 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1331⟩

theorem canonicalSound2130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2130.moment H = canonicalOutput2130.moment H :=
  canonical_of_padded canonicalInput2130 canonicalOutput2130 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2131 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput2131 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1253⟩

theorem canonicalSound2131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2131.moment H = canonicalOutput2131.moment H :=
  canonical_of_padded canonicalInput2131 canonicalOutput2131 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2132 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput2132 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1073⟩

theorem canonicalSound2132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2132.moment H = canonicalOutput2132.moment H :=
  canonical_of_padded canonicalInput2132 canonicalOutput2132 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2133 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput2133 : ExponentCode := normalNode6243

theorem canonicalSound2133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2133.moment H = canonicalOutput2133.moment H :=
  canonical_of_padded canonicalInput2133 canonicalOutput2133 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2134 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput2134 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound2134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2134.moment H = canonicalOutput2134.moment H :=
  canonical_of_padded canonicalInput2134 canonicalOutput2134 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2135 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput2135 : ExponentCode := normalNode7063

theorem canonicalSound2135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2135.moment H = canonicalOutput2135.moment H :=
  canonical_of_padded canonicalInput2135 canonicalOutput2135 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2136 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput2136 : ExponentCode := normalNode6250

theorem canonicalSound2136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2136.moment H = canonicalOutput2136.moment H :=
  canonical_of_padded canonicalInput2136 canonicalOutput2136 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2137 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2137 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1523⟩

theorem canonicalSound2137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2137.moment H = canonicalOutput2137.moment H :=
  canonical_of_padded canonicalInput2137 canonicalOutput2137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2138 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput2138 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound2138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2138.moment H = canonicalOutput2138.moment H :=
  canonical_of_padded canonicalInput2138 canonicalOutput2138 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2139 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 1, 1, -2], ![2, 0, -4, 2]]⟩

def canonicalOutput2139 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code203

theorem canonicalSound2139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2139.moment H = canonicalOutput2139.moment H :=
  canonical_of_padded canonicalInput2139 canonicalOutput2139 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2140 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 2, -3, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput2140 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code639

theorem canonicalSound2140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2140.moment H = canonicalOutput2140.moment H :=
  canonical_of_padded canonicalInput2140 canonicalOutput2140 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2141 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput2141 : ExponentCode := normalNode935

theorem canonicalSound2141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2141.moment H = canonicalOutput2141.moment H :=
  canonical_of_padded canonicalInput2141 canonicalOutput2141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2142 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 2, -2, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput2142 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node506⟩

theorem canonicalSound2142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2142.moment H = canonicalOutput2142.moment H :=
  canonical_of_padded canonicalInput2142 canonicalOutput2142 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2143 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput2143 : ExponentCode := normalNode934

theorem canonicalSound2143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2143.moment H = canonicalOutput2143.moment H :=
  canonical_of_padded canonicalInput2143 canonicalOutput2143 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2144 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput2144 : ExponentCode := normalNode934

theorem canonicalSound2144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2144.moment H = canonicalOutput2144.moment H :=
  canonical_of_padded canonicalInput2144 canonicalOutput2144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2145 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 2, -1, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput2145 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code579

theorem canonicalSound2145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2145.moment H = canonicalOutput2145.moment H :=
  canonical_of_padded canonicalInput2145 canonicalOutput2145 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2146 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![0, 2, 0, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput2146 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code198

theorem canonicalSound2146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2146.moment H = canonicalOutput2146.moment H :=
  canonical_of_padded canonicalInput2146 canonicalOutput2146 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2147 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput2147 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1143

theorem canonicalSound2147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2147.moment H = canonicalOutput2147.moment H :=
  canonical_of_padded canonicalInput2147 canonicalOutput2147 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2148 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput2148 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1250⟩

theorem canonicalSound2148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2148.moment H = canonicalOutput2148.moment H :=
  canonical_of_padded canonicalInput2148 canonicalOutput2148 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2149 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput2149 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code211

theorem canonicalSound2149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2149.moment H = canonicalOutput2149.moment H :=
  canonical_of_padded canonicalInput2149 canonicalOutput2149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2150 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput2150 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound2150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2150.moment H = canonicalOutput2150.moment H :=
  canonical_of_padded canonicalInput2150 canonicalOutput2150 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2151 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput2151 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound2151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2151.moment H = canonicalOutput2151.moment H :=
  canonical_of_padded canonicalInput2151 canonicalOutput2151 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2152 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput2152 : ExponentCode := normalNode7063

theorem canonicalSound2152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2152.moment H = canonicalOutput2152.moment H :=
  canonical_of_padded canonicalInput2152 canonicalOutput2152 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2153 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput2153 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code216

theorem canonicalSound2153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2153.moment H = canonicalOutput2153.moment H :=
  canonical_of_padded canonicalInput2153 canonicalOutput2153 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2154 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -4, 2], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput2154 : ExponentCode := normalNode6222

theorem canonicalSound2154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2154.moment H = canonicalOutput2154.moment H :=
  canonical_of_padded canonicalInput2154 canonicalOutput2154 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput2155 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -4, 2], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput2155 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code203

theorem canonicalSound2155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2155.moment H = canonicalOutput2155.moment H :=
  canonical_of_padded canonicalInput2155 canonicalOutput2155 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput2156 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -3, 1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput2156 : ExponentCode := normalNode6981

theorem canonicalSound2156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2156.moment H = canonicalOutput2156.moment H :=
  canonical_of_padded canonicalInput2156 canonicalOutput2156 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2157 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -3, 1], ![0, 1, 1, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput2157 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code639

theorem canonicalSound2157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2157.moment H = canonicalOutput2157.moment H :=
  canonical_of_padded canonicalInput2157 canonicalOutput2157 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2158 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -3, 1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput2158 : ExponentCode := normalNode9033

theorem canonicalSound2158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2158.moment H = canonicalOutput2158.moment H :=
  canonical_of_padded canonicalInput2158 canonicalOutput2158 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2159 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -3, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2159 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code597

theorem canonicalSound2159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2159.moment H = canonicalOutput2159.moment H :=
  canonical_of_padded canonicalInput2159 canonicalOutput2159 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2160 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -3, 1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2160 : ExponentCode := normalNode6245

theorem canonicalSound2160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2160.moment H = canonicalOutput2160.moment H :=
  canonical_of_padded canonicalInput2160 canonicalOutput2160 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2161 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2161 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node841⟩

theorem canonicalSound2161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2161.moment H = canonicalOutput2161.moment H :=
  canonical_of_padded canonicalInput2161 canonicalOutput2161 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2162 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 2, -2, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput2162 : ExponentCode := normalNode942

theorem canonicalSound2162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2162.moment H = canonicalOutput2162.moment H :=
  canonical_of_padded canonicalInput2162 canonicalOutput2162 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput2163 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -2, 0], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput2163 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node506⟩

theorem canonicalSound2163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2163.moment H = canonicalOutput2163.moment H :=
  canonical_of_padded canonicalInput2163 canonicalOutput2163 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2164 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput2164 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code593

theorem canonicalSound2164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2164.moment H = canonicalOutput2164.moment H :=
  canonical_of_padded canonicalInput2164 canonicalOutput2164 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2165 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput2165 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1059⟩

theorem canonicalSound2165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2165.moment H = canonicalOutput2165.moment H :=
  canonical_of_padded canonicalInput2165 canonicalOutput2165 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2166 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput2166 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node497⟩

theorem canonicalSound2166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2166.moment H = canonicalOutput2166.moment H :=
  canonical_of_padded canonicalInput2166 canonicalOutput2166 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2167 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2167 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound2167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2167.moment H = canonicalOutput2167.moment H :=
  canonical_of_padded canonicalInput2167 canonicalOutput2167 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2168 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput2168 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node500⟩

theorem canonicalSound2168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2168.moment H = canonicalOutput2168.moment H :=
  canonical_of_padded canonicalInput2168 canonicalOutput2168 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2169 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput2169 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1084⟩

theorem canonicalSound2169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2169.moment H = canonicalOutput2169.moment H :=
  canonical_of_padded canonicalInput2169 canonicalOutput2169 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2170 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput2170 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node500⟩

theorem canonicalSound2170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2170.moment H = canonicalOutput2170.moment H :=
  canonical_of_padded canonicalInput2170 canonicalOutput2170 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2171 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, -1, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput2171 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node518⟩

theorem canonicalSound2171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2171.moment H = canonicalOutput2171.moment H :=
  canonical_of_padded canonicalInput2171 canonicalOutput2171 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2172 : ExponentCode := ⟨5, 4, ![![-2, -2, 2, 2], ![0, 2, 0, -2], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput2172 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code217

theorem canonicalSound2172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2172.moment H = canonicalOutput2172.moment H :=
  canonical_of_padded canonicalInput2172 canonicalOutput2172 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2173 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, 0, -2], ![0, 1, 1, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput2173 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code198

theorem canonicalSound2173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2173.moment H = canonicalOutput2173.moment H :=
  canonical_of_padded canonicalInput2173 canonicalOutput2173 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2174 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, 0, -2], ![1, -1, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput2174 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node410⟩

theorem canonicalSound2174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2174.moment H = canonicalOutput2174.moment H :=
  canonical_of_padded canonicalInput2174 canonicalOutput2174 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2175 : ExponentCode := ⟨4, 4, ![![-2, -2, 2, 2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput2175 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1059⟩

theorem canonicalSound2175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2175.moment H = canonicalOutput2175.moment H :=
  canonical_of_padded canonicalInput2175 canonicalOutput2175 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
