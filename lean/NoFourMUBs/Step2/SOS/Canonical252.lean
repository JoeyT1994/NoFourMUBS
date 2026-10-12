import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput16128 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput16128 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound16128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16128.moment H = canonicalOutput16128.moment H :=
  canonical_of_padded canonicalInput16128 canonicalOutput16128 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16129 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput16129 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound16129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16129.moment H = canonicalOutput16129.moment H :=
  canonical_of_padded canonicalInput16129 canonicalOutput16129 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16130 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 2, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput16130 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound16130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16130.moment H = canonicalOutput16130.moment H :=
  canonical_of_padded canonicalInput16130 canonicalOutput16130 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16131 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -1, -1], ![0, 2, -2, 0, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput16131 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound16131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16131.moment H = canonicalOutput16131.moment H :=
  canonical_of_padded canonicalInput16131 canonicalOutput16131 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16132 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput16132 : ExponentCode := normalNode4498

theorem canonicalSound16132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16132.moment H = canonicalOutput16132.moment H :=
  canonical_of_padded canonicalInput16132 canonicalOutput16132 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput16133 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, -2, -1, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16133 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1518⟩

theorem canonicalSound16133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16133.moment H = canonicalOutput16133.moment H :=
  canonical_of_padded canonicalInput16133 canonicalOutput16133 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput16134 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, -2, 2, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput16134 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1845⟩

theorem canonicalSound16134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16134.moment H = canonicalOutput16134.moment H :=
  canonical_of_padded canonicalInput16134 canonicalOutput16134 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16135 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, -2, 2], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput16135 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2077⟩

theorem canonicalSound16135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16135.moment H = canonicalOutput16135.moment H :=
  canonical_of_padded canonicalInput16135 canonicalOutput16135 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16136 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput16136 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound16136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16136.moment H = canonicalOutput16136.moment H :=
  canonical_of_padded canonicalInput16136 canonicalOutput16136 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput16137 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 0, 1], ![0, 0, 1, -2, 1], ![1, 0, 1, 2, -4]]⟩

def canonicalOutput16137 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1581⟩

theorem canonicalSound16137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16137.moment H = canonicalOutput16137.moment H :=
  canonical_of_padded canonicalInput16137 canonicalOutput16137 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16138 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 0, 1], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16138 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound16138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16138.moment H = canonicalOutput16138.moment H :=
  canonical_of_padded canonicalInput16138 canonicalOutput16138 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput16139 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 0, 1], ![0, 0, 2, -2, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput16139 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1702⟩

theorem canonicalSound16139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16139.moment H = canonicalOutput16139.moment H :=
  canonical_of_padded canonicalInput16139 canonicalOutput16139 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16140 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 0, 1], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16140 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1800⟩

theorem canonicalSound16140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16140.moment H = canonicalOutput16140.moment H :=
  canonical_of_padded canonicalInput16140 canonicalOutput16140 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput16141 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16141 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound16141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16141.moment H = canonicalOutput16141.moment H :=
  canonical_of_padded canonicalInput16141 canonicalOutput16141 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16142 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 1, 0], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16142 : ExponentCode := normalNode8252

theorem canonicalSound16142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16142.moment H = canonicalOutput16142.moment H :=
  canonical_of_padded canonicalInput16142 canonicalOutput16142 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput16143 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 1, 0], ![0, 0, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput16143 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound16143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16143.moment H = canonicalOutput16143.moment H :=
  canonical_of_padded canonicalInput16143 canonicalOutput16143 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16144 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 1, 0], ![0, 0, 1, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput16144 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound16144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16144.moment H = canonicalOutput16144.moment H :=
  canonical_of_padded canonicalInput16144 canonicalOutput16144 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput16145 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 1, 0], ![0, 0, 2, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16145 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound16145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16145.moment H = canonicalOutput16145.moment H :=
  canonical_of_padded canonicalInput16145 canonicalOutput16145 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16146 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 1, 0], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16146 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound16146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16146.moment H = canonicalOutput16146.moment H :=
  canonical_of_padded canonicalInput16146 canonicalOutput16146 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput16147 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput16147 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2076⟩

theorem canonicalSound16147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16147.moment H = canonicalOutput16147.moment H :=
  canonical_of_padded canonicalInput16147 canonicalOutput16147 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput16148 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16148 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound16148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16148.moment H = canonicalOutput16148.moment H :=
  canonical_of_padded canonicalInput16148 canonicalOutput16148 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput16149 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 1, 0], ![0, 1, 2, -2, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput16149 : ExponentCode := normalNode3965

theorem canonicalSound16149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16149.moment H = canonicalOutput16149.moment H :=
  canonical_of_padded canonicalInput16149 canonicalOutput16149 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput16150 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 2, -1], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16150 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2805⟩

theorem canonicalSound16150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16150.moment H = canonicalOutput16150.moment H :=
  canonical_of_padded canonicalInput16150 canonicalOutput16150 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16151 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 2, -1], ![0, 0, 2, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput16151 : ExponentCode := normalNode8992

theorem canonicalSound16151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16151.moment H = canonicalOutput16151.moment H :=
  canonical_of_padded canonicalInput16151 canonicalOutput16151 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16152 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 2, -1], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput16152 : ExponentCode := normalNode3965

theorem canonicalSound16152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16152.moment H = canonicalOutput16152.moment H :=
  canonical_of_padded canonicalInput16152 canonicalOutput16152 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16153 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 2, -1], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16153 : ExponentCode := normalNode4307

theorem canonicalSound16153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16153.moment H = canonicalOutput16153.moment H :=
  canonical_of_padded canonicalInput16153 canonicalOutput16153 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput16154 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 2, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput16154 : ExponentCode := normalNode5852

theorem canonicalSound16154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16154.moment H = canonicalOutput16154.moment H :=
  canonical_of_padded canonicalInput16154 canonicalOutput16154 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16155 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 2, -1], ![0, 1, 2, -1, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput16155 : ExponentCode := normalNode2768

theorem canonicalSound16155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16155.moment H = canonicalOutput16155.moment H :=
  canonical_of_padded canonicalInput16155 canonicalOutput16155 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16156 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -2, 3, -2], ![0, 0, 2, -3, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16156 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2852⟩

theorem canonicalSound16156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16156.moment H = canonicalOutput16156.moment H :=
  canonical_of_padded canonicalInput16156 canonicalOutput16156 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16157 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, -1, 1], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16157 : ExponentCode := normalNode8391

theorem canonicalSound16157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16157.moment H = canonicalOutput16157.moment H :=
  canonical_of_padded canonicalInput16157 canonicalOutput16157 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16158 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, -1, 1], ![0, 0, -1, 2, -1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput16158 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound16158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16158.moment H = canonicalOutput16158.moment H :=
  canonical_of_padded canonicalInput16158 canonicalOutput16158 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16159 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, -1, 1], ![0, 0, 0, 2, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16159 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound16159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16159.moment H = canonicalOutput16159.moment H :=
  canonical_of_padded canonicalInput16159 canonicalOutput16159 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput16160 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, 1, -1], ![0, 0, 1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput16160 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound16160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16160.moment H = canonicalOutput16160.moment H :=
  canonical_of_padded canonicalInput16160 canonicalOutput16160 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput16161 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16161 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2581⟩

theorem canonicalSound16161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16161.moment H = canonicalOutput16161.moment H :=
  canonical_of_padded canonicalInput16161 canonicalOutput16161 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput16162 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput16162 : ExponentCode := normalNode9460

theorem canonicalSound16162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16162.moment H = canonicalOutput16162.moment H :=
  canonical_of_padded canonicalInput16162 canonicalOutput16162 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput16163 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, 1, -1], ![0, 1, 2, -1, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput16163 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1772⟩

theorem canonicalSound16163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16163.moment H = canonicalOutput16163.moment H :=
  canonical_of_padded canonicalInput16163 canonicalOutput16163 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16164 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, 2, -2], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16164 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2814⟩

theorem canonicalSound16164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16164.moment H = canonicalOutput16164.moment H :=
  canonical_of_padded canonicalInput16164 canonicalOutput16164 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput16165 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, 2, -2], ![0, 1, 1, -1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput16165 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1772⟩

theorem canonicalSound16165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16165.moment H = canonicalOutput16165.moment H :=
  canonical_of_padded canonicalInput16165 canonicalOutput16165 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput16166 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, 2, -2], ![0, 1, 2, -2, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput16166 : ExponentCode := normalNode2768

theorem canonicalSound16166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16166.moment H = canonicalOutput16166.moment H :=
  canonical_of_padded canonicalInput16166 canonicalOutput16166 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput16167 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, 2, -2], ![0, 1, 2, -1, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput16167 : ExponentCode := normalNode931

theorem canonicalSound16167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16167.moment H = canonicalOutput16167.moment H :=
  canonical_of_padded canonicalInput16167 canonicalOutput16167 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16168 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, 3, -3], ![0, 0, 0, -2, 2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput16168 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1495⟩

theorem canonicalSound16168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16168.moment H = canonicalOutput16168.moment H :=
  canonical_of_padded canonicalInput16168 canonicalOutput16168 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16169 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, -1, 3, -3], ![0, 0, 1, -3, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput16169 : ExponentCode := normalNode11162

theorem canonicalSound16169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16169.moment H = canonicalOutput16169.moment H :=
  canonical_of_padded canonicalInput16169 canonicalOutput16169 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16170 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, 0, 1, -2], ![0, 1, -1, 1, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput16170 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1841⟩

theorem canonicalSound16170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16170.moment H = canonicalOutput16170.moment H :=
  canonical_of_padded canonicalInput16170 canonicalOutput16170 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput16171 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, 0, 2, -3], ![0, 1, 1, -3, 1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput16171 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩

theorem canonicalSound16171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16171.moment H = canonicalOutput16171.moment H :=
  canonical_of_padded canonicalInput16171 canonicalOutput16171 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput16172 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, 1, -3, 1], ![0, 1, 0, 2, -3], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput16172 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩

theorem canonicalSound16172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16172.moment H = canonicalOutput16172.moment H :=
  canonical_of_padded canonicalInput16172 canonicalOutput16172 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput16173 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, 1, 0, -2], ![0, 1, -2, 1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16173 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound16173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16173.moment H = canonicalOutput16173.moment H :=
  canonical_of_padded canonicalInput16173 canonicalOutput16173 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput16174 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 1, 1, 1, -3], ![0, 1, -2, 0, 1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput16174 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound16174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16174.moment H = canonicalOutput16174.moment H :=
  canonical_of_padded canonicalInput16174 canonicalOutput16174 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16175 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput16175 : ExponentCode := normalNode8255

theorem canonicalSound16175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16175.moment H = canonicalOutput16175.moment H :=
  canonical_of_padded canonicalInput16175 canonicalOutput16175 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16176 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 2, 1, 1, -4]]⟩

def canonicalOutput16176 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1579⟩

theorem canonicalSound16176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16176.moment H = canonicalOutput16176.moment H :=
  canonical_of_padded canonicalInput16176 canonicalOutput16176 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16177 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -2, 1, 1], ![0, 0, 1, 1, -2], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput16177 : ExponentCode := normalNode5842

theorem canonicalSound16177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16177.moment H = canonicalOutput16177.moment H :=
  canonical_of_padded canonicalInput16177 canonicalOutput16177 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16178 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -2, 1, 1], ![0, 0, 2, -2, 0], ![0, 2, 0, 1, -3]]⟩

def canonicalOutput16178 : ExponentCode := normalNode3376

theorem canonicalSound16178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16178.moment H = canonicalOutput16178.moment H :=
  canonical_of_padded canonicalInput16178 canonicalOutput16178 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16179 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -2, 1, 1], ![0, 1, 0, 1, -2], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput16179 : ExponentCode := normalNode5852

theorem canonicalSound16179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16179.moment H = canonicalOutput16179.moment H :=
  canonical_of_padded canonicalInput16179 canonicalOutput16179 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16180 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -2, 1, 1], ![0, 1, 1, -2, 0], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput16180 : ExponentCode := normalNode3521

theorem canonicalSound16180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16180.moment H = canonicalOutput16180.moment H :=
  canonical_of_padded canonicalInput16180 canonicalOutput16180 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput16181 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -2, 2, 0], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput16181 : ExponentCode := normalNode3751

theorem canonicalSound16181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16181.moment H = canonicalOutput16181.moment H :=
  canonical_of_padded canonicalInput16181 canonicalOutput16181 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16182 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -2, 2, 0], ![0, 0, 2, -1, -1], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput16182 : ExponentCode := normalNode3759

theorem canonicalSound16182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16182.moment H = canonicalOutput16182.moment H :=
  canonical_of_padded canonicalInput16182 canonicalOutput16182 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16183 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -2, 2, 0], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput16183 : ExponentCode := normalNode3806

theorem canonicalSound16183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16183.moment H = canonicalOutput16183.moment H :=
  canonical_of_padded canonicalInput16183 canonicalOutput16183 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput16184 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -2, 2, 0], ![0, 1, 1, -1, -1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput16184 : ExponentCode := normalNode5626

theorem canonicalSound16184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16184.moment H = canonicalOutput16184.moment H :=
  canonical_of_padded canonicalInput16184 canonicalOutput16184 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput16185 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -2, 3, -1], ![0, 0, 2, -3, 1], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput16185 : ExponentCode := normalNode5472

theorem canonicalSound16185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16185.moment H = canonicalOutput16185.moment H :=
  canonical_of_padded canonicalInput16185 canonicalOutput16185 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation171, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput16186 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -1, -1, 2], ![0, 0, -1, 2, -1], ![0, 2, 2, -1, -3]]⟩

def canonicalOutput16186 : ExponentCode := normalNode4551

theorem canonicalSound16186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16186.moment H = canonicalOutput16186.moment H :=
  canonical_of_padded canonicalInput16186 canonicalOutput16186 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput16187 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -1, -1, 2], ![0, 1, -1, 2, -2], ![0, 1, 2, -1, -2]]⟩

def canonicalOutput16187 : ExponentCode := normalNode931

theorem canonicalSound16187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16187.moment H = canonicalOutput16187.moment H :=
  canonical_of_padded canonicalInput16187 canonicalOutput16187 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16188 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -1, 1, 0], ![0, 0, 2, 0, -2], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput16188 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound16188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16188.moment H = canonicalOutput16188.moment H :=
  canonical_of_padded canonicalInput16188 canonicalOutput16188 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput16189 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -1, 1, 0], ![0, 1, -1, 1, -1], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput16189 : ExponentCode := normalNode4307

theorem canonicalSound16189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16189.moment H = canonicalOutput16189.moment H :=
  canonical_of_padded canonicalInput16189 canonicalOutput16189 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput16190 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -1, 2, -1], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput16190 : ExponentCode := normalNode3873

theorem canonicalSound16190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16190.moment H = canonicalOutput16190.moment H :=
  canonical_of_padded canonicalInput16190 canonicalOutput16190 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput16191 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![1, -1, -1, 2, -1], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput16191 : ExponentCode := normalNode4498

theorem canonicalSound16191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput16191.moment H = canonicalOutput16191.moment H :=
  canonical_of_padded canonicalInput16191 canonicalOutput16191 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation2⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
