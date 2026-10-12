import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5184 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput5184 : ExponentCode := normalNode2804

theorem canonicalSound5184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5184.moment H = canonicalOutput5184.moment H :=
  canonical_of_padded canonicalInput5184 canonicalOutput5184 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5185 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput5185 : ExponentCode := normalNode5079

theorem canonicalSound5185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5185.moment H = canonicalOutput5185.moment H :=
  canonical_of_padded canonicalInput5185 canonicalOutput5185 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5186 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput5186 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2360⟩

theorem canonicalSound5186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5186.moment H = canonicalOutput5186.moment H :=
  canonical_of_padded canonicalInput5186 canonicalOutput5186 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5187 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput5187 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1791⟩

theorem canonicalSound5187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5187.moment H = canonicalOutput5187.moment H :=
  canonical_of_padded canonicalInput5187 canonicalOutput5187 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput5188 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput5188 : ExponentCode := normalNode2979

theorem canonicalSound5188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5188.moment H = canonicalOutput5188.moment H :=
  canonical_of_padded canonicalInput5188 canonicalOutput5188 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5189 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput5189 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1791⟩

theorem canonicalSound5189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5189.moment H = canonicalOutput5189.moment H :=
  canonical_of_padded canonicalInput5189 canonicalOutput5189 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput5190 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 0, 2, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput5190 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1810⟩

theorem canonicalSound5190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5190.moment H = canonicalOutput5190.moment H :=
  canonical_of_padded canonicalInput5190 canonicalOutput5190 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5191 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput5191 : ExponentCode := normalNode5101

theorem canonicalSound5191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5191.moment H = canonicalOutput5191.moment H :=
  canonical_of_padded canonicalInput5191 canonicalOutput5191 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5192 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput5192 : ExponentCode := normalNode5102

theorem canonicalSound5192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5192.moment H = canonicalOutput5192.moment H :=
  canonical_of_padded canonicalInput5192 canonicalOutput5192 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5193 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput5193 : ExponentCode := normalNode2920

theorem canonicalSound5193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5193.moment H = canonicalOutput5193.moment H :=
  canonical_of_padded canonicalInput5193 canonicalOutput5193 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5194 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput5194 : ExponentCode := normalNode5881

theorem canonicalSound5194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5194.moment H = canonicalOutput5194.moment H :=
  canonical_of_padded canonicalInput5194 canonicalOutput5194 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5195 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput5195 : ExponentCode := normalNode2822

theorem canonicalSound5195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5195.moment H = canonicalOutput5195.moment H :=
  canonical_of_padded canonicalInput5195 canonicalOutput5195 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5196 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput5196 : ExponentCode := normalNode5114

theorem canonicalSound5196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5196.moment H = canonicalOutput5196.moment H :=
  canonical_of_padded canonicalInput5196 canonicalOutput5196 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5197 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput5197 : ExponentCode := normalNode4461

theorem canonicalSound5197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5197.moment H = canonicalOutput5197.moment H :=
  canonical_of_padded canonicalInput5197 canonicalOutput5197 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5198 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput5198 : ExponentCode := normalNode2826

theorem canonicalSound5198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5198.moment H = canonicalOutput5198.moment H :=
  canonical_of_padded canonicalInput5198 canonicalOutput5198 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5199 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 1, 3, -4], ![2, -1, -3, 2]]⟩

def canonicalOutput5199 : ExponentCode := normalNode10957

theorem canonicalSound5199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5199.moment H = canonicalOutput5199.moment H :=
  canonical_of_padded canonicalInput5199 canonicalOutput5199 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5200 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput5200 : ExponentCode := normalNode5524

theorem canonicalSound5200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5200.moment H = canonicalOutput5200.moment H :=
  canonical_of_padded canonicalInput5200 canonicalOutput5200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput5201 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput5201 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2235⟩

theorem canonicalSound5201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5201.moment H = canonicalOutput5201.moment H :=
  canonical_of_padded canonicalInput5201 canonicalOutput5201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput5202 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput5202 : ExponentCode := normalNode5083

theorem canonicalSound5202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5202.moment H = canonicalOutput5202.moment H :=
  canonical_of_padded canonicalInput5202 canonicalOutput5202 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5203 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5203 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound5203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5203.moment H = canonicalOutput5203.moment H :=
  canonical_of_padded canonicalInput5203 canonicalOutput5203 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5204 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput5204 : ExponentCode := normalNode5881

theorem canonicalSound5204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5204.moment H = canonicalOutput5204.moment H :=
  canonical_of_padded canonicalInput5204 canonicalOutput5204 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5205 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput5205 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound5205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5205.moment H = canonicalOutput5205.moment H :=
  canonical_of_padded canonicalInput5205 canonicalOutput5205 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5206 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput5206 : ExponentCode := normalNode2833

theorem canonicalSound5206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5206.moment H = canonicalOutput5206.moment H :=
  canonical_of_padded canonicalInput5206 canonicalOutput5206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5207 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput5207 : ExponentCode := normalNode5116

theorem canonicalSound5207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5207.moment H = canonicalOutput5207.moment H :=
  canonical_of_padded canonicalInput5207 canonicalOutput5207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5208 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput5208 : ExponentCode := normalNode5115

theorem canonicalSound5208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5208.moment H = canonicalOutput5208.moment H :=
  canonical_of_padded canonicalInput5208 canonicalOutput5208 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5209 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![1, -2, -1, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput5209 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1127⟩

theorem canonicalSound5209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5209.moment H = canonicalOutput5209.moment H :=
  canonical_of_padded canonicalInput5209 canonicalOutput5209 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5210 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput5210 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound5210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5210.moment H = canonicalOutput5210.moment H :=
  canonical_of_padded canonicalInput5210 canonicalOutput5210 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5211 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput5211 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node822⟩

theorem canonicalSound5211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5211.moment H = canonicalOutput5211.moment H :=
  canonical_of_padded canonicalInput5211 canonicalOutput5211 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5212 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput5212 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound5212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5212.moment H = canonicalOutput5212.moment H :=
  canonical_of_padded canonicalInput5212 canonicalOutput5212 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5213 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![1, 0, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput5213 : ExponentCode := normalNode7065

theorem canonicalSound5213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5213.moment H = canonicalOutput5213.moment H :=
  canonical_of_padded canonicalInput5213 canonicalOutput5213 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5214 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput5214 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound5214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5214.moment H = canonicalOutput5214.moment H :=
  canonical_of_padded canonicalInput5214 canonicalOutput5214 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput5215 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput5215 : ExponentCode := normalNode2751

theorem canonicalSound5215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5215.moment H = canonicalOutput5215.moment H :=
  canonical_of_padded canonicalInput5215 canonicalOutput5215 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5216 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput5216 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1813⟩

theorem canonicalSound5216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5216.moment H = canonicalOutput5216.moment H :=
  canonical_of_padded canonicalInput5216 canonicalOutput5216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5217 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 0, 2, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput5217 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node843⟩

theorem canonicalSound5217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5217.moment H = canonicalOutput5217.moment H :=
  canonical_of_padded canonicalInput5217 canonicalOutput5217 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5218 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 1, -2, 1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput5218 : ExponentCode := normalNode2807

theorem canonicalSound5218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5218.moment H = canonicalOutput5218.moment H :=
  canonical_of_padded canonicalInput5218 canonicalOutput5218 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5219 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput5219 : ExponentCode := normalNode2822

theorem canonicalSound5219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5219.moment H = canonicalOutput5219.moment H :=
  canonical_of_padded canonicalInput5219 canonicalOutput5219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5220 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 0, 2, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput5220 : ExponentCode := normalNode2776

theorem canonicalSound5220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5220.moment H = canonicalOutput5220.moment H :=
  canonical_of_padded canonicalInput5220 canonicalOutput5220 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5221 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput5221 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2233⟩

theorem canonicalSound5221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5221.moment H = canonicalOutput5221.moment H :=
  canonical_of_padded canonicalInput5221 canonicalOutput5221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5222 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput5222 : ExponentCode := normalNode2836

theorem canonicalSound5222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5222.moment H = canonicalOutput5222.moment H :=
  canonical_of_padded canonicalInput5222 canonicalOutput5222 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5223 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput5223 : ExponentCode := normalNode2753

theorem canonicalSound5223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5223.moment H = canonicalOutput5223.moment H :=
  canonical_of_padded canonicalInput5223 canonicalOutput5223 (by decide) (by decide)
    ⟨false, false, canonicalPermutation75, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5224 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput5224 : ExponentCode := normalNode2838

theorem canonicalSound5224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5224.moment H = canonicalOutput5224.moment H :=
  canonical_of_padded canonicalInput5224 canonicalOutput5224 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5225 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput5225 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound5225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5225.moment H = canonicalOutput5225.moment H :=
  canonical_of_padded canonicalInput5225 canonicalOutput5225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5226 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, -1, -3, 2]]⟩

def canonicalOutput5226 : ExponentCode := normalNode6221

theorem canonicalSound5226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5226.moment H = canonicalOutput5226.moment H :=
  canonical_of_padded canonicalInput5226 canonicalOutput5226 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5227 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 2, -2, 0], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5227 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound5227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5227.moment H = canonicalOutput5227.moment H :=
  canonical_of_padded canonicalInput5227 canonicalOutput5227 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5228 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 2, -2, 0], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput5228 : ExponentCode := normalNode5882

theorem canonicalSound5228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5228.moment H = canonicalOutput5228.moment H :=
  canonical_of_padded canonicalInput5228 canonicalOutput5228 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5229 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput5229 : ExponentCode := normalNode2844

theorem canonicalSound5229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5229.moment H = canonicalOutput5229.moment H :=
  canonical_of_padded canonicalInput5229 canonicalOutput5229 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5230 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput5230 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound5230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5230.moment H = canonicalOutput5230.moment H :=
  canonical_of_padded canonicalInput5230 canonicalOutput5230 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5231 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput5231 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2208⟩

theorem canonicalSound5231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5231.moment H = canonicalOutput5231.moment H :=
  canonical_of_padded canonicalInput5231 canonicalOutput5231 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5232 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput5232 : ExponentCode := normalNode2846

theorem canonicalSound5232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5232.moment H = canonicalOutput5232.moment H :=
  canonical_of_padded canonicalInput5232 canonicalOutput5232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5233 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 2, 0, -2], ![1, -2, 1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput5233 : ExponentCode := normalNode5234

theorem canonicalSound5233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5233.moment H = canonicalOutput5233.moment H :=
  canonical_of_padded canonicalInput5233 canonicalOutput5233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5234 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 2, 0, -2], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput5234 : ExponentCode := normalNode5233

theorem canonicalSound5234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5234.moment H = canonicalOutput5234.moment H :=
  canonical_of_padded canonicalInput5234 canonicalOutput5234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5235 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![0, 2, 1, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput5235 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node728⟩

theorem canonicalSound5235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5235.moment H = canonicalOutput5235.moment H :=
  canonical_of_padded canonicalInput5235 canonicalOutput5235 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5236 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput5236 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound5236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5236.moment H = canonicalOutput5236.moment H :=
  canonical_of_padded canonicalInput5236 canonicalOutput5236 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5237 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput5237 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩

theorem canonicalSound5237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5237.moment H = canonicalOutput5237.moment H :=
  canonical_of_padded canonicalInput5237 canonicalOutput5237 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5238 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput5238 : ExponentCode := normalNode11105

theorem canonicalSound5238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5238.moment H = canonicalOutput5238.moment H :=
  canonical_of_padded canonicalInput5238 canonicalOutput5238 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5239 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput5239 : ExponentCode := normalNode7064

theorem canonicalSound5239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5239.moment H = canonicalOutput5239.moment H :=
  canonical_of_padded canonicalInput5239 canonicalOutput5239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5240 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput5240 : ExponentCode := normalNode7064

theorem canonicalSound5240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5240.moment H = canonicalOutput5240.moment H :=
  canonical_of_padded canonicalInput5240 canonicalOutput5240 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5241 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput5241 : ExponentCode := normalNode5114

theorem canonicalSound5241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5241.moment H = canonicalOutput5241.moment H :=
  canonical_of_padded canonicalInput5241 canonicalOutput5241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5242 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput5242 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2233⟩

theorem canonicalSound5242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5242.moment H = canonicalOutput5242.moment H :=
  canonical_of_padded canonicalInput5242 canonicalOutput5242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5243 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 1, 1, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput5243 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code204

theorem canonicalSound5243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5243.moment H = canonicalOutput5243.moment H :=
  canonical_of_padded canonicalInput5243 canonicalOutput5243 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5244 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 2, -3, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput5244 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code561

theorem canonicalSound5244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5244.moment H = canonicalOutput5244.moment H :=
  canonical_of_padded canonicalInput5244 canonicalOutput5244 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput5245 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput5245 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2050⟩

theorem canonicalSound5245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5245.moment H = canonicalOutput5245.moment H :=
  canonical_of_padded canonicalInput5245 canonicalOutput5245 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5246 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput5246 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2078⟩

theorem canonicalSound5246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5246.moment H = canonicalOutput5246.moment H :=
  canonical_of_padded canonicalInput5246 canonicalOutput5246 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5247 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput5247 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1846⟩

theorem canonicalSound5247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5247.moment H = canonicalOutput5247.moment H :=
  canonical_of_padded canonicalInput5247 canonicalOutput5247 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
