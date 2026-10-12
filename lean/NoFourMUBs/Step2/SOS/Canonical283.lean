import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18112 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput18112 : ExponentCode := normalNode9311

theorem canonicalSound18112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18112.moment H = canonicalOutput18112.moment H :=
  canonical_of_padded canonicalInput18112 canonicalOutput18112 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18113 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput18113 : ExponentCode := normalNode9310

theorem canonicalSound18113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18113.moment H = canonicalOutput18113.moment H :=
  canonical_of_padded canonicalInput18113 canonicalOutput18113 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18114 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, 2, -2], ![1, -2, -2, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput18114 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1317

theorem canonicalSound18114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18114.moment H = canonicalOutput18114.moment H :=
  canonical_of_padded canonicalInput18114 canonicalOutput18114 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18115 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, 2, -2], ![1, -1, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput18115 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1380

theorem canonicalSound18115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18115.moment H = canonicalOutput18115.moment H :=
  canonical_of_padded canonicalInput18115 canonicalOutput18115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18116 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput18116 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound18116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18116.moment H = canonicalOutput18116.moment H :=
  canonical_of_padded canonicalInput18116 canonicalOutput18116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18117 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, -4, 3], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput18117 : ExponentCode := normalNode9124

theorem canonicalSound18117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18117.moment H = canonicalOutput18117.moment H :=
  canonical_of_padded canonicalInput18117 canonicalOutput18117 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18118 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, -4, 3], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput18118 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1330

theorem canonicalSound18118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18118.moment H = canonicalOutput18118.moment H :=
  canonical_of_padded canonicalInput18118 canonicalOutput18118 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18119 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, -4, 3], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput18119 : ExponentCode := normalNode10961

theorem canonicalSound18119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18119.moment H = canonicalOutput18119.moment H :=
  canonical_of_padded canonicalInput18119 canonicalOutput18119 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18120 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 2, -3, 2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput18120 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2162⟩

theorem canonicalSound18120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18120.moment H = canonicalOutput18120.moment H :=
  canonical_of_padded canonicalInput18120 canonicalOutput18120 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18121 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, -3, 2], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput18121 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1090

theorem canonicalSound18121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18121.moment H = canonicalOutput18121.moment H :=
  canonical_of_padded canonicalInput18121 canonicalOutput18121 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18122 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, -3, 2], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput18122 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound18122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18122.moment H = canonicalOutput18122.moment H :=
  canonical_of_padded canonicalInput18122 canonicalOutput18122 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18123 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, -3, 2], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput18123 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound18123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18123.moment H = canonicalOutput18123.moment H :=
  canonical_of_padded canonicalInput18123 canonicalOutput18123 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput18124 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, -3, 2], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput18124 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound18124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18124.moment H = canonicalOutput18124.moment H :=
  canonical_of_padded canonicalInput18124 canonicalOutput18124 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18125 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, -2, 1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput18125 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound18125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18125.moment H = canonicalOutput18125.moment H :=
  canonical_of_padded canonicalInput18125 canonicalOutput18125 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18126 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, -2, 1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput18126 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound18126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18126.moment H = canonicalOutput18126.moment H :=
  canonical_of_padded canonicalInput18126 canonicalOutput18126 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18127 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 2, -1, 0], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput18127 : ExponentCode := normalNode3965

theorem canonicalSound18127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18127.moment H = canonicalOutput18127.moment H :=
  canonical_of_padded canonicalInput18127 canonicalOutput18127 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18128 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, -1, 0], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput18128 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound18128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18128.moment H = canonicalOutput18128.moment H :=
  canonical_of_padded canonicalInput18128 canonicalOutput18128 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18129 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput18129 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1386

theorem canonicalSound18129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18129.moment H = canonicalOutput18129.moment H :=
  canonical_of_padded canonicalInput18129 canonicalOutput18129 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18130 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput18130 : ExponentCode := normalNode4868

theorem canonicalSound18130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18130.moment H = canonicalOutput18130.moment H :=
  canonical_of_padded canonicalInput18130 canonicalOutput18130 (by decide) (by decide)
    ⟨false, true, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18131 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput18131 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2161⟩

theorem canonicalSound18131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18131.moment H = canonicalOutput18131.moment H :=
  canonical_of_padded canonicalInput18131 canonicalOutput18131 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18132 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![0, 0, 0, 0], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput18132 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound18132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18132.moment H = canonicalOutput18132.moment H :=
  canonical_of_padded canonicalInput18132 canonicalOutput18132 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation27⟩ (by decide +kernel) hH

def canonicalInput18133 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput18133 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound18133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18133.moment H = canonicalOutput18133.moment H :=
  canonical_of_padded canonicalInput18133 canonicalOutput18133 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput18134 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, -2, 2]]⟩

def canonicalOutput18134 : ExponentCode := normalNode9343

theorem canonicalSound18134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18134.moment H = canonicalOutput18134.moment H :=
  canonical_of_padded canonicalInput18134 canonicalOutput18134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18135 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![1, -2, -2, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput18135 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1395

theorem canonicalSound18135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18135.moment H = canonicalOutput18135.moment H :=
  canonical_of_padded canonicalInput18135 canonicalOutput18135 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput18136 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![1, -2, -1, 2], ![1, 1, -2, 0]]⟩

def canonicalOutput18136 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1144

theorem canonicalSound18136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18136.moment H = canonicalOutput18136.moment H :=
  canonical_of_padded canonicalInput18136 canonicalOutput18136 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18137 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![1, -2, 0, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput18137 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node509⟩

theorem canonicalSound18137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18137.moment H = canonicalOutput18137.moment H :=
  canonical_of_padded canonicalInput18137 canonicalOutput18137 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18138 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput18138 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound18138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18138.moment H = canonicalOutput18138.moment H :=
  canonical_of_padded canonicalInput18138 canonicalOutput18138 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18139 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput18139 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound18139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18139.moment H = canonicalOutput18139.moment H :=
  canonical_of_padded canonicalInput18139 canonicalOutput18139 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput18140 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput18140 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound18140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18140.moment H = canonicalOutput18140.moment H :=
  canonical_of_padded canonicalInput18140 canonicalOutput18140 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18141 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![1, 0, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput18141 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound18141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18141.moment H = canonicalOutput18141.moment H :=
  canonical_of_padded canonicalInput18141 canonicalOutput18141 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput18142 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-1, 2, 2, -3], ![2, -1, -3, 2]]⟩

def canonicalOutput18142 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node262⟩

theorem canonicalSound18142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18142.moment H = canonicalOutput18142.moment H :=
  canonical_of_padded canonicalInput18142 canonicalOutput18142 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18143 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 3, 2, -4], ![0, -1, -1, 2], ![2, -1, -2, 1]]⟩

def canonicalOutput18143 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code321

theorem canonicalSound18143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18143.moment H = canonicalOutput18143.moment H :=
  canonical_of_padded canonicalInput18143 canonicalOutput18143 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18144 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 3, 2, -4], ![1, -2, -2, 3], ![1, 0, -1, 0]]⟩

def canonicalOutput18144 : ExponentCode := normalNode11021

theorem canonicalSound18144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18144.moment H = canonicalOutput18144.moment H :=
  canonical_of_padded canonicalInput18144 canonicalOutput18144 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18145 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 3, 2, -4], ![1, -2, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput18145 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1108

theorem canonicalSound18145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18145.moment H = canonicalOutput18145.moment H :=
  canonical_of_padded canonicalInput18145 canonicalOutput18145 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18146 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 3, 2, -4], ![1, -2, 0, 1], ![1, 0, -3, 2]]⟩

def canonicalOutput18146 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code474

theorem canonicalSound18146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18146.moment H = canonicalOutput18146.moment H :=
  canonical_of_padded canonicalInput18146 canonicalOutput18146 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18147 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 3, 2, -4], ![1, -1, -2, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput18147 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1329

theorem canonicalSound18147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18147.moment H = canonicalOutput18147.moment H :=
  canonical_of_padded canonicalInput18147 canonicalOutput18147 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput18148 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 3, 2, -4], ![1, -1, 0, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput18148 : ExponentCode := normalNode7987

theorem canonicalSound18148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18148.moment H = canonicalOutput18148.moment H :=
  canonical_of_padded canonicalInput18148 canonicalOutput18148 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput18149 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-1, 4, -4, 1], ![2, -3, 3, -2]]⟩

def canonicalOutput18149 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1292

theorem canonicalSound18149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18149.moment H = canonicalOutput18149.moment H :=
  canonical_of_padded canonicalInput18149 canonicalOutput18149 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18150 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-1, 4, -2, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput18150 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound18150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18150.moment H = canonicalOutput18150.moment H :=
  canonical_of_padded canonicalInput18150 canonicalOutput18150 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18151 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![0, -3, 3, 0], ![1, 4, -4, -1]]⟩

def canonicalOutput18151 : ExponentCode := normalNode6267

theorem canonicalSound18151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18151.moment H = canonicalOutput18151.moment H :=
  canonical_of_padded canonicalInput18151 canonicalOutput18151 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18152 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, -1, 3], ![0, 0, 2, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput18152 : ExponentCode := normalNode6221

theorem canonicalSound18152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18152.moment H = canonicalOutput18152.moment H :=
  canonical_of_padded canonicalInput18152 canonicalOutput18152 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18153 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, -1, 3], ![1, 0, 1, -2], ![0, 3, -1, -2]]⟩

def canonicalOutput18153 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound18153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18153.moment H = canonicalOutput18153.moment H :=
  canonical_of_padded canonicalInput18153 canonicalOutput18153 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18154 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, 0, 2], ![0, 1, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput18154 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node917⟩

theorem canonicalSound18154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18154.moment H = canonicalOutput18154.moment H :=
  canonical_of_padded canonicalInput18154 canonicalOutput18154 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18155 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, 1, 1], ![0, 0, -2, 2], ![1, 3, 0, -4]]⟩

def canonicalOutput18155 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1173⟩

theorem canonicalSound18155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18155.moment H = canonicalOutput18155.moment H :=
  canonical_of_padded canonicalInput18155 canonicalOutput18155 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18156 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput18156 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound18156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18156.moment H = canonicalOutput18156.moment H :=
  canonical_of_padded canonicalInput18156 canonicalOutput18156 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18157 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput18157 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound18157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18157.moment H = canonicalOutput18157.moment H :=
  canonical_of_padded canonicalInput18157 canonicalOutput18157 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18158 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, 1, 1], ![0, 2, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput18158 : ExponentCode := normalNode7838

theorem canonicalSound18158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18158.moment H = canonicalOutput18158.moment H :=
  canonical_of_padded canonicalInput18158 canonicalOutput18158 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18159 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, 1, 1], ![0, 3, -3, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput18159 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound18159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18159.moment H = canonicalOutput18159.moment H :=
  canonical_of_padded canonicalInput18159 canonicalOutput18159 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18160 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, 1, 1], ![1, 1, -3, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput18160 : ExponentCode := normalNode7838

theorem canonicalSound18160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18160.moment H = canonicalOutput18160.moment H :=
  canonical_of_padded canonicalInput18160 canonicalOutput18160 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18161 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![0, -2, 2, 0], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput18161 : ExponentCode := normalNode11099

theorem canonicalSound18161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18161.moment H = canonicalOutput18161.moment H :=
  canonical_of_padded canonicalInput18161 canonicalOutput18161 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18162 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, 2, 0], ![0, 1, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput18162 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound18162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18162.moment H = canonicalOutput18162.moment H :=
  canonical_of_padded canonicalInput18162 canonicalOutput18162 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18163 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, 2, 0], ![0, 2, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput18163 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound18163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18163.moment H = canonicalOutput18163.moment H :=
  canonical_of_padded canonicalInput18163 canonicalOutput18163 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18164 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput18164 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound18164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18164.moment H = canonicalOutput18164.moment H :=
  canonical_of_padded canonicalInput18164 canonicalOutput18164 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18165 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -2, 2, 0], ![0, 3, -1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput18165 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1056⟩

theorem canonicalSound18165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18165.moment H = canonicalOutput18165.moment H :=
  canonical_of_padded canonicalInput18165 canonicalOutput18165 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18166 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![0, -2, 4, -2], ![1, 3, -5, 1]]⟩

def canonicalOutput18166 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node233⟩

theorem canonicalSound18166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18166.moment H = canonicalOutput18166.moment H :=
  canonical_of_padded canonicalInput18166 canonicalOutput18166 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18167 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -3, 4], ![0, 1, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput18167 : ExponentCode := normalNode7852

theorem canonicalSound18167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18167.moment H = canonicalOutput18167.moment H :=
  canonical_of_padded canonicalInput18167 canonicalOutput18167 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18168 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -3, 4], ![0, 1, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput18168 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node992⟩

theorem canonicalSound18168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18168.moment H = canonicalOutput18168.moment H :=
  canonical_of_padded canonicalInput18168 canonicalOutput18168 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18169 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![0, -1, -3, 4], ![1, 2, 2, -5]]⟩

def canonicalOutput18169 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node235⟩

theorem canonicalSound18169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18169.moment H = canonicalOutput18169.moment H :=
  canonical_of_padded canonicalInput18169 canonicalOutput18169 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18170 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput18170 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node829⟩

theorem canonicalSound18170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18170.moment H = canonicalOutput18170.moment H :=
  canonical_of_padded canonicalInput18170 canonicalOutput18170 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18171 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput18171 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node933⟩

theorem canonicalSound18171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18171.moment H = canonicalOutput18171.moment H :=
  canonical_of_padded canonicalInput18171 canonicalOutput18171 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18172 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -2, 3], ![0, 1, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput18172 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1019⟩

theorem canonicalSound18172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18172.moment H = canonicalOutput18172.moment H :=
  canonical_of_padded canonicalInput18172 canonicalOutput18172 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18173 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -2, 3], ![1, -1, 2, -2], ![0, 3, -1, -2]]⟩

def canonicalOutput18173 : ExponentCode := normalNode7067

theorem canonicalSound18173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18173.moment H = canonicalOutput18173.moment H :=
  canonical_of_padded canonicalInput18173 canonicalOutput18173 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18174 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput18174 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node730⟩

theorem canonicalSound18174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18174.moment H = canonicalOutput18174.moment H :=
  canonical_of_padded canonicalInput18174 canonicalOutput18174 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18175 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![0, -1, -1, 2], ![0, 0, -2, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput18175 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node752⟩

theorem canonicalSound18175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18175.moment H = canonicalOutput18175.moment H :=
  canonical_of_padded canonicalInput18175 canonicalOutput18175 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
