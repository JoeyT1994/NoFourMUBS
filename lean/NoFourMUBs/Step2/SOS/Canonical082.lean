import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5248 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 2, -2, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput5248 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node523⟩

theorem canonicalSound5248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5248.moment H = canonicalOutput5248.moment H :=
  canonical_of_padded canonicalInput5248 canonicalOutput5248 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5249 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 2, -1, -1], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput5249 : ExponentCode := normalNode5137

theorem canonicalSound5249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5249.moment H = canonicalOutput5249.moment H :=
  canonical_of_padded canonicalInput5249 canonicalOutput5249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5250 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput5250 : ExponentCode := normalNode5136

theorem canonicalSound5250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5250.moment H = canonicalOutput5250.moment H :=
  canonical_of_padded canonicalInput5250 canonicalOutput5250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5251 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 2, -1, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput5251 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node508⟩

theorem canonicalSound5251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5251.moment H = canonicalOutput5251.moment H :=
  canonical_of_padded canonicalInput5251 canonicalOutput5251 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5252 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![0, 2, 0, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput5252 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node410⟩

theorem canonicalSound5252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5252.moment H = canonicalOutput5252.moment H :=
  canonical_of_padded canonicalInput5252 canonicalOutput5252 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5253 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![1, -2, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput5253 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1143

theorem canonicalSound5253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5253.moment H = canonicalOutput5253.moment H :=
  canonical_of_padded canonicalInput5253 canonicalOutput5253 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5254 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput5254 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node686⟩

theorem canonicalSound5254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5254.moment H = canonicalOutput5254.moment H :=
  canonical_of_padded canonicalInput5254 canonicalOutput5254 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5255 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput5255 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound5255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5255.moment H = canonicalOutput5255.moment H :=
  canonical_of_padded canonicalInput5255 canonicalOutput5255 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5256 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput5256 : ExponentCode := normalNode7063

theorem canonicalSound5256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5256.moment H = canonicalOutput5256.moment H :=
  canonical_of_padded canonicalInput5256 canonicalOutput5256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5257 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput5257 : ExponentCode := normalNode7063

theorem canonicalSound5257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5257.moment H = canonicalOutput5257.moment H :=
  canonical_of_padded canonicalInput5257 canonicalOutput5257 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5258 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 1, -2], ![1, 2, -3, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput5258 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound5258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5258.moment H = canonicalOutput5258.moment H :=
  canonical_of_padded canonicalInput5258 canonicalOutput5258 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput5259 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 2, -3], ![0, 1, 0, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput5259 : ExponentCode := normalNode6221

theorem canonicalSound5259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5259.moment H = canonicalOutput5259.moment H :=
  canonical_of_padded canonicalInput5259 canonicalOutput5259 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5260 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 1, 2, -3], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput5260 : ExponentCode := normalNode2849

theorem canonicalSound5260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5260.moment H = canonicalOutput5260.moment H :=
  canonical_of_padded canonicalInput5260 canonicalOutput5260 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5261 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 2, -3], ![0, 2, -2, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput5261 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code588

theorem canonicalSound5261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5261.moment H = canonicalOutput5261.moment H :=
  canonical_of_padded canonicalInput5261 canonicalOutput5261 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5262 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 2, -3], ![0, 2, -1, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput5262 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code589

theorem canonicalSound5262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5262.moment H = canonicalOutput5262.moment H :=
  canonical_of_padded canonicalInput5262 canonicalOutput5262 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5263 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 2, -3], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput5263 : ExponentCode := normalNode7062

theorem canonicalSound5263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5263.moment H = canonicalOutput5263.moment H :=
  canonical_of_padded canonicalInput5263 canonicalOutput5263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5264 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput5264 : ExponentCode := normalNode7062

theorem canonicalSound5264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5264.moment H = canonicalOutput5264.moment H :=
  canonical_of_padded canonicalInput5264 canonicalOutput5264 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5265 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 2, -3], ![1, 1, -3, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput5265 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1018⟩

theorem canonicalSound5265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5265.moment H = canonicalOutput5265.moment H :=
  canonical_of_padded canonicalInput5265 canonicalOutput5265 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput5266 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 2, -3], ![1, 1, -2, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput5266 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node516⟩

theorem canonicalSound5266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5266.moment H = canonicalOutput5266.moment H :=
  canonical_of_padded canonicalInput5266 canonicalOutput5266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5267 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 1, -4, 2]]⟩

def canonicalOutput5267 : ExponentCode := normalNode9479

theorem canonicalSound5267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5267.moment H = canonicalOutput5267.moment H :=
  canonical_of_padded canonicalInput5267 canonicalOutput5267 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5268 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 3, -4], ![1, 0, -3, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput5268 : ExponentCode := normalNode7061

theorem canonicalSound5268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5268.moment H = canonicalOutput5268.moment H :=
  canonical_of_padded canonicalInput5268 canonicalOutput5268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5269 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 3, -4], ![1, 0, -2, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput5269 : ExponentCode := normalNode7069

theorem canonicalSound5269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5269.moment H = canonicalOutput5269.moment H :=
  canonical_of_padded canonicalInput5269 canonicalOutput5269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5270 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput5270 : ExponentCode := normalNode7061

theorem canonicalSound5270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5270.moment H = canonicalOutput5270.moment H :=
  canonical_of_padded canonicalInput5270 canonicalOutput5270 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5271 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -4, 2], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput5271 : ExponentCode := normalNode9136

theorem canonicalSound5271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5271.moment H = canonicalOutput5271.moment H :=
  canonical_of_padded canonicalInput5271 canonicalOutput5271 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5272 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -4, 2], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput5272 : ExponentCode := normalNode11203

theorem canonicalSound5272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5272.moment H = canonicalOutput5272.moment H :=
  canonical_of_padded canonicalInput5272 canonicalOutput5272 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5273 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 2, -3, 1], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5273 : ExponentCode := normalNode2847

theorem canonicalSound5273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5273.moment H = canonicalOutput5273.moment H :=
  canonical_of_padded canonicalInput5273 canonicalOutput5273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5274 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 2, -3, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput5274 : ExponentCode := normalNode2848

theorem canonicalSound5274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5274.moment H = canonicalOutput5274.moment H :=
  canonical_of_padded canonicalInput5274 canonicalOutput5274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5275 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -3, 1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput5275 : ExponentCode := normalNode6133

theorem canonicalSound5275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5275.moment H = canonicalOutput5275.moment H :=
  canonical_of_padded canonicalInput5275 canonicalOutput5275 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput5276 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput5276 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node823⟩

theorem canonicalSound5276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5276.moment H = canonicalOutput5276.moment H :=
  canonical_of_padded canonicalInput5276 canonicalOutput5276 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput5277 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 2, -2, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput5277 : ExponentCode := normalNode2844

theorem canonicalSound5277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5277.moment H = canonicalOutput5277.moment H :=
  canonical_of_padded canonicalInput5277 canonicalOutput5277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5278 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -2, 0], ![1, -2, -1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput5278 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code607

theorem canonicalSound5278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5278.moment H = canonicalOutput5278.moment H :=
  canonical_of_padded canonicalInput5278 canonicalOutput5278 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5279 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -2, 0], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput5279 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound5279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5279.moment H = canonicalOutput5279.moment H :=
  canonical_of_padded canonicalInput5279 canonicalOutput5279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5280 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -2, 0], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput5280 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node521⟩

theorem canonicalSound5280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5280.moment H = canonicalOutput5280.moment H :=
  canonical_of_padded canonicalInput5280 canonicalOutput5280 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5281 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -2, 0], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput5281 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node503⟩

theorem canonicalSound5281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5281.moment H = canonicalOutput5281.moment H :=
  canonical_of_padded canonicalInput5281 canonicalOutput5281 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5282 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput5282 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound5282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5282.moment H = canonicalOutput5282.moment H :=
  canonical_of_padded canonicalInput5282 canonicalOutput5282 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput5283 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -2, 0], ![1, -1, 3, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput5283 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code170

theorem canonicalSound5283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5283.moment H = canonicalOutput5283.moment H :=
  canonical_of_padded canonicalInput5283 canonicalOutput5283 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5284 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput5284 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound5284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5284.moment H = canonicalOutput5284.moment H :=
  canonical_of_padded canonicalInput5284 canonicalOutput5284 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5285 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 2, -1, -1], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput5285 : ExponentCode := normalNode2846

theorem canonicalSound5285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5285.moment H = canonicalOutput5285.moment H :=
  canonical_of_padded canonicalInput5285 canonicalOutput5285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5286 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 2, -1, -1], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput5286 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code614

theorem canonicalSound5286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5286.moment H = canonicalOutput5286.moment H :=
  canonical_of_padded canonicalInput5286 canonicalOutput5286 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5287 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -1, -1], ![0, 1, 2, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput5287 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code589

theorem canonicalSound5287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5287.moment H = canonicalOutput5287.moment H :=
  canonical_of_padded canonicalInput5287 canonicalOutput5287 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5288 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput5288 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound5288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5288.moment H = canonicalOutput5288.moment H :=
  canonical_of_padded canonicalInput5288 canonicalOutput5288 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput5289 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, -1, -1], ![1, 0, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput5289 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code636

theorem canonicalSound5289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5289.moment H = canonicalOutput5289.moment H :=
  canonical_of_padded canonicalInput5289 canonicalOutput5289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5290 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, 0, -2], ![0, 1, 1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput5290 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node410⟩

theorem canonicalSound5290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5290.moment H = canonicalOutput5290.moment H :=
  canonical_of_padded canonicalInput5290 canonicalOutput5290 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5291 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, 0, -2], ![1, -2, 1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput5291 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node520⟩

theorem canonicalSound5291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5291.moment H = canonicalOutput5291.moment H :=
  canonical_of_padded canonicalInput5291 canonicalOutput5291 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5292 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, 0, -2], ![1, -2, 2, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput5292 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code561

theorem canonicalSound5292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5292.moment H = canonicalOutput5292.moment H :=
  canonical_of_padded canonicalInput5292 canonicalOutput5292 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5293 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, 1, -3], ![1, -2, 0, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput5293 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound5293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5293.moment H = canonicalOutput5293.moment H :=
  canonical_of_padded canonicalInput5293 canonicalOutput5293 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput5294 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, 1, -3], ![1, 0, -3, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput5294 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node519⟩

theorem canonicalSound5294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5294.moment H = canonicalOutput5294.moment H :=
  canonical_of_padded canonicalInput5294 canonicalOutput5294 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5295 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, 1, -3], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput5295 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound5295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5295.moment H = canonicalOutput5295.moment H :=
  canonical_of_padded canonicalInput5295 canonicalOutput5295 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput5296 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![0, 2, 1, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput5296 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound5296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5296.moment H = canonicalOutput5296.moment H :=
  canonical_of_padded canonicalInput5296 canonicalOutput5296 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput5297 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, 2, -4], ![1, -2, 0, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput5297 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code595

theorem canonicalSound5297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5297.moment H = canonicalOutput5297.moment H :=
  canonical_of_padded canonicalInput5297 canonicalOutput5297 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5298 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 2, 2, -4], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput5298 : ExponentCode := normalNode11197

theorem canonicalSound5298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5298.moment H = canonicalOutput5298.moment H :=
  canonical_of_padded canonicalInput5298 canonicalOutput5298 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput5299 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, -3, 0], ![1, -2, 0, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput5299 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code491

theorem canonicalSound5299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5299.moment H = canonicalOutput5299.moment H :=
  canonical_of_padded canonicalInput5299 canonicalOutput5299 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5300 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, -3, 0], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput5300 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound5300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5300.moment H = canonicalOutput5300.moment H :=
  canonical_of_padded canonicalInput5300 canonicalOutput5300 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5301 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, -3, 0], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5301 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node989⟩

theorem canonicalSound5301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5301.moment H = canonicalOutput5301.moment H :=
  canonical_of_padded canonicalInput5301 canonicalOutput5301 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput5302 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, -3, 0], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput5302 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node928⟩

theorem canonicalSound5302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5302.moment H = canonicalOutput5302.moment H :=
  canonical_of_padded canonicalInput5302 canonicalOutput5302 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5303 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, -2, -1], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput5303 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node598⟩

theorem canonicalSound5303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5303.moment H = canonicalOutput5303.moment H :=
  canonical_of_padded canonicalInput5303 canonicalOutput5303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5304 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, -2, -1], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5304 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound5304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5304.moment H = canonicalOutput5304.moment H :=
  canonical_of_padded canonicalInput5304 canonicalOutput5304 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput5305 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, -2, -1], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput5305 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩

theorem canonicalSound5305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5305.moment H = canonicalOutput5305.moment H :=
  canonical_of_padded canonicalInput5305 canonicalOutput5305 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput5306 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput5306 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound5306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5306.moment H = canonicalOutput5306.moment H :=
  canonical_of_padded canonicalInput5306 canonicalOutput5306 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5307 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, -1, -2], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput5307 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1056⟩

theorem canonicalSound5307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5307.moment H = canonicalOutput5307.moment H :=
  canonical_of_padded canonicalInput5307 canonicalOutput5307 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput5308 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, -1, -2], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput5308 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node680⟩

theorem canonicalSound5308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5308.moment H = canonicalOutput5308.moment H :=
  canonical_of_padded canonicalInput5308 canonicalOutput5308 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5309 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, 0, -3], ![1, -2, 1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput5309 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound5309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5309.moment H = canonicalOutput5309.moment H :=
  canonical_of_padded canonicalInput5309 canonicalOutput5309 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5310 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, 1, -4], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput5310 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1089⟩

theorem canonicalSound5310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5310.moment H = canonicalOutput5310.moment H :=
  canonical_of_padded canonicalInput5310 canonicalOutput5310 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5311 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 3, 1, -4], ![1, -2, 0, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput5311 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node586⟩

theorem canonicalSound5311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5311.moment H = canonicalOutput5311.moment H :=
  canonical_of_padded canonicalInput5311 canonicalOutput5311 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
