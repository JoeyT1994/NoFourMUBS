import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10112 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput10112 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1824⟩

theorem canonicalSound10112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10112.moment H = canonicalOutput10112.moment H :=
  canonical_of_padded canonicalInput10112 canonicalOutput10112 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10113 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput10113 : ExponentCode := normalNode2920

theorem canonicalSound10113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10113.moment H = canonicalOutput10113.moment H :=
  canonical_of_padded canonicalInput10113 canonicalOutput10113 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10114 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10114 : ExponentCode := normalNode10705

theorem canonicalSound10114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10114.moment H = canonicalOutput10114.moment H :=
  canonical_of_padded canonicalInput10114 canonicalOutput10114 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10115 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput10115 : ExponentCode := normalNode10705

theorem canonicalSound10115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10115.moment H = canonicalOutput10115.moment H :=
  canonical_of_padded canonicalInput10115 canonicalOutput10115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10116 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput10116 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩

theorem canonicalSound10116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10116.moment H = canonicalOutput10116.moment H :=
  canonical_of_padded canonicalInput10116 canonicalOutput10116 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10117 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10117 : ExponentCode := normalNode10690

theorem canonicalSound10117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10117.moment H = canonicalOutput10117.moment H :=
  canonical_of_padded canonicalInput10117 canonicalOutput10117 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10118 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10118 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2455⟩

theorem canonicalSound10118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10118.moment H = canonicalOutput10118.moment H :=
  canonical_of_padded canonicalInput10118 canonicalOutput10118 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10119 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput10119 : ExponentCode := normalNode10690

theorem canonicalSound10119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10119.moment H = canonicalOutput10119.moment H :=
  canonical_of_padded canonicalInput10119 canonicalOutput10119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10120 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 0, 3, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10120 : ExponentCode := normalNode10679

theorem canonicalSound10120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10120.moment H = canonicalOutput10120.moment H :=
  canonical_of_padded canonicalInput10120 canonicalOutput10120 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10121 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput10121 : ExponentCode := normalNode5110

theorem canonicalSound10121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10121.moment H = canonicalOutput10121.moment H :=
  canonical_of_padded canonicalInput10121 canonicalOutput10121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10122 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10122 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1747⟩

theorem canonicalSound10122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10122.moment H = canonicalOutput10122.moment H :=
  canonical_of_padded canonicalInput10122 canonicalOutput10122 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput10123 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput10123 : ExponentCode := normalNode5698

theorem canonicalSound10123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10123.moment H = canonicalOutput10123.moment H :=
  canonical_of_padded canonicalInput10123 canonicalOutput10123 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10124 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput10124 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1737⟩

theorem canonicalSound10124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10124.moment H = canonicalOutput10124.moment H :=
  canonical_of_padded canonicalInput10124 canonicalOutput10124 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10125 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput10125 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1790⟩

theorem canonicalSound10125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10125.moment H = canonicalOutput10125.moment H :=
  canonical_of_padded canonicalInput10125 canonicalOutput10125 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10126 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10126 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1826⟩

theorem canonicalSound10126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10126.moment H = canonicalOutput10126.moment H :=
  canonical_of_padded canonicalInput10126 canonicalOutput10126 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10127 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10127 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound10127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10127.moment H = canonicalOutput10127.moment H :=
  canonical_of_padded canonicalInput10127 canonicalOutput10127 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput10128 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput10128 : ExponentCode := normalNode5114

theorem canonicalSound10128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10128.moment H = canonicalOutput10128.moment H :=
  canonical_of_padded canonicalInput10128 canonicalOutput10128 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10129 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput10129 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1112⟩

theorem canonicalSound10129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10129.moment H = canonicalOutput10129.moment H :=
  canonical_of_padded canonicalInput10129 canonicalOutput10129 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput10130 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput10130 : ExponentCode := normalNode5115

theorem canonicalSound10130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10130.moment H = canonicalOutput10130.moment H :=
  canonical_of_padded canonicalInput10130 canonicalOutput10130 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10131 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![0, 1, 3, -4], ![1, 0, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput10131 : ExponentCode := normalNode5118

theorem canonicalSound10131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10131.moment H = canonicalOutput10131.moment H :=
  canonical_of_padded canonicalInput10131 canonicalOutput10131 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10132 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![1, -1, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput10132 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1127⟩

theorem canonicalSound10132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10132.moment H = canonicalOutput10132.moment H :=
  canonical_of_padded canonicalInput10132 canonicalOutput10132 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10133 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput10133 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound10133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10133.moment H = canonicalOutput10133.moment H :=
  canonical_of_padded canonicalInput10133 canonicalOutput10133 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput10134 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput10134 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1286⟩

theorem canonicalSound10134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10134.moment H = canonicalOutput10134.moment H :=
  canonical_of_padded canonicalInput10134 canonicalOutput10134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10135 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 1, 0], ![1, 0, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput10135 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1286⟩

theorem canonicalSound10135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10135.moment H = canonicalOutput10135.moment H :=
  canonical_of_padded canonicalInput10135 canonicalOutput10135 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10136 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput10136 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1111

theorem canonicalSound10136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10136.moment H = canonicalOutput10136.moment H :=
  canonical_of_padded canonicalInput10136 canonicalOutput10136 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10137 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput10137 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1773⟩

theorem canonicalSound10137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10137.moment H = canonicalOutput10137.moment H :=
  canonical_of_padded canonicalInput10137 canonicalOutput10137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10138 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput10138 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1774⟩

theorem canonicalSound10138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10138.moment H = canonicalOutput10138.moment H :=
  canonical_of_padded canonicalInput10138 canonicalOutput10138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10139 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, -1, 1, 0], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput10139 : ExponentCode := normalNode5083

theorem canonicalSound10139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10139.moment H = canonicalOutput10139.moment H :=
  canonical_of_padded canonicalInput10139 canonicalOutput10139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10140 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput10140 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound10140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10140.moment H = canonicalOutput10140.moment H :=
  canonical_of_padded canonicalInput10140 canonicalOutput10140 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10141 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput10141 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound10141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10141.moment H = canonicalOutput10141.moment H :=
  canonical_of_padded canonicalInput10141 canonicalOutput10141 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10142 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput10142 : ExponentCode := normalNode5061

theorem canonicalSound10142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10142.moment H = canonicalOutput10142.moment H :=
  canonical_of_padded canonicalInput10142 canonicalOutput10142 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10143 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10143 : ExponentCode := normalNode10341

theorem canonicalSound10143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10143.moment H = canonicalOutput10143.moment H :=
  canonical_of_padded canonicalInput10143 canonicalOutput10143 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10144 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput10144 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2831⟩

theorem canonicalSound10144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10144.moment H = canonicalOutput10144.moment H :=
  canonical_of_padded canonicalInput10144 canonicalOutput10144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10145 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput10145 : ExponentCode := normalNode10341

theorem canonicalSound10145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10145.moment H = canonicalOutput10145.moment H :=
  canonical_of_padded canonicalInput10145 canonicalOutput10145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10146 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput10146 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound10146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10146.moment H = canonicalOutput10146.moment H :=
  canonical_of_padded canonicalInput10146 canonicalOutput10146 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput10147 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput10147 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound10147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10147.moment H = canonicalOutput10147.moment H :=
  canonical_of_padded canonicalInput10147 canonicalOutput10147 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput10148 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput10148 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound10148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10148.moment H = canonicalOutput10148.moment H :=
  canonical_of_padded canonicalInput10148 canonicalOutput10148 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10149 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput10149 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1842⟩

theorem canonicalSound10149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10149.moment H = canonicalOutput10149.moment H :=
  canonical_of_padded canonicalInput10149 canonicalOutput10149 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10150 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput10150 : ExponentCode := normalNode5101

theorem canonicalSound10150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10150.moment H = canonicalOutput10150.moment H :=
  canonical_of_padded canonicalInput10150 canonicalOutput10150 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10151 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10151 : ExponentCode := normalNode10334

theorem canonicalSound10151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10151.moment H = canonicalOutput10151.moment H :=
  canonical_of_padded canonicalInput10151 canonicalOutput10151 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10152 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10152 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2454⟩

theorem canonicalSound10152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10152.moment H = canonicalOutput10152.moment H :=
  canonical_of_padded canonicalInput10152 canonicalOutput10152 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10153 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput10153 : ExponentCode := normalNode10334

theorem canonicalSound10153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10153.moment H = canonicalOutput10153.moment H :=
  canonical_of_padded canonicalInput10153 canonicalOutput10153 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10154 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, -3, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput10154 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1087

theorem canonicalSound10154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10154.moment H = canonicalOutput10154.moment H :=
  canonical_of_padded canonicalInput10154 canonicalOutput10154 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10155 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput10155 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1841⟩

theorem canonicalSound10155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10155.moment H = canonicalOutput10155.moment H :=
  canonical_of_padded canonicalInput10155 canonicalOutput10155 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10156 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput10156 : ExponentCode := normalNode5135

theorem canonicalSound10156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10156.moment H = canonicalOutput10156.moment H :=
  canonical_of_padded canonicalInput10156 canonicalOutput10156 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10157 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput10157 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound10157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10157.moment H = canonicalOutput10157.moment H :=
  canonical_of_padded canonicalInput10157 canonicalOutput10157 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput10158 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput10158 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node508⟩

theorem canonicalSound10158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10158.moment H = canonicalOutput10158.moment H :=
  canonical_of_padded canonicalInput10158 canonicalOutput10158 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput10159 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![1, 0, -3, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput10159 : ExponentCode := normalNode10355

theorem canonicalSound10159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10159.moment H = canonicalOutput10159.moment H :=
  canonical_of_padded canonicalInput10159 canonicalOutput10159 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10160 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10160 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound10160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10160.moment H = canonicalOutput10160.moment H :=
  canonical_of_padded canonicalInput10160 canonicalOutput10160 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10161 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput10161 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound10161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10161.moment H = canonicalOutput10161.moment H :=
  canonical_of_padded canonicalInput10161 canonicalOutput10161 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10162 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 2, -1], ![1, 1, 0, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput10162 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound10162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10162.moment H = canonicalOutput10162.moment H :=
  canonical_of_padded canonicalInput10162 canonicalOutput10162 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10163 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput10163 : ExponentCode := normalNode10923

theorem canonicalSound10163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10163.moment H = canonicalOutput10163.moment H :=
  canonical_of_padded canonicalInput10163 canonicalOutput10163 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10164 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput10164 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1322⟩

theorem canonicalSound10164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10164.moment H = canonicalOutput10164.moment H :=
  canonical_of_padded canonicalInput10164 canonicalOutput10164 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10165 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10165 : ExponentCode := normalNode9966

theorem canonicalSound10165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10165.moment H = canonicalOutput10165.moment H :=
  canonical_of_padded canonicalInput10165 canonicalOutput10165 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10166 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10166 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node967⟩

theorem canonicalSound10166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10166.moment H = canonicalOutput10166.moment H :=
  canonical_of_padded canonicalInput10166 canonicalOutput10166 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput10167 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput10167 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1631⟩

theorem canonicalSound10167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10167.moment H = canonicalOutput10167.moment H :=
  canonical_of_padded canonicalInput10167 canonicalOutput10167 (by decide) (by decide)
    ⟨false, false, canonicalPermutation24, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10168 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 1, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput10168 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound10168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10168.moment H = canonicalOutput10168.moment H :=
  canonical_of_padded canonicalInput10168 canonicalOutput10168 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10169 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput10169 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2212⟩

theorem canonicalSound10169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10169.moment H = canonicalOutput10169.moment H :=
  canonical_of_padded canonicalInput10169 canonicalOutput10169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10170 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput10170 : ExponentCode := normalNode7052

theorem canonicalSound10170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10170.moment H = canonicalOutput10170.moment H :=
  canonical_of_padded canonicalInput10170 canonicalOutput10170 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput10171 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput10171 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1237

theorem canonicalSound10171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10171.moment H = canonicalOutput10171.moment H :=
  canonical_of_padded canonicalInput10171 canonicalOutput10171 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10172 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput10172 : ExponentCode := normalNode9743

theorem canonicalSound10172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10172.moment H = canonicalOutput10172.moment H :=
  canonical_of_padded canonicalInput10172 canonicalOutput10172 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10173 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 0, -2, 2], ![2, 0, -1, -1]]⟩

def canonicalOutput10173 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1179⟩

theorem canonicalSound10173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10173.moment H = canonicalOutput10173.moment H :=
  canonical_of_padded canonicalInput10173 canonicalOutput10173 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10174 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10174 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2322⟩

theorem canonicalSound10174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10174.moment H = canonicalOutput10174.moment H :=
  canonical_of_padded canonicalInput10174 canonicalOutput10174 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10175 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, 4, -3], ![0, 1, -2, 1], ![2, -1, -1, 0]]⟩

def canonicalOutput10175 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node468⟩

theorem canonicalSound10175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10175.moment H = canonicalOutput10175.moment H :=
  canonical_of_padded canonicalInput10175 canonicalOutput10175 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
