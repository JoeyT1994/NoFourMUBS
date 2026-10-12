import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8256 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8256 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound8256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8256.moment H = canonicalOutput8256.moment H :=
  canonical_of_padded canonicalInput8256 canonicalOutput8256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8257 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput8257 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code946

theorem canonicalSound8257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8257.moment H = canonicalOutput8257.moment H :=
  canonical_of_padded canonicalInput8257 canonicalOutput8257 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8258 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput8258 : ExponentCode := normalNode4518

theorem canonicalSound8258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8258.moment H = canonicalOutput8258.moment H :=
  canonical_of_padded canonicalInput8258 canonicalOutput8258 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8259 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput8259 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code942

theorem canonicalSound8259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8259.moment H = canonicalOutput8259.moment H :=
  canonical_of_padded canonicalInput8259 canonicalOutput8259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8260 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput8260 : ExponentCode := normalNode4212

theorem canonicalSound8260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8260.moment H = canonicalOutput8260.moment H :=
  canonical_of_padded canonicalInput8260 canonicalOutput8260 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8261 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, -3, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput8261 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code763

theorem canonicalSound8261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8261.moment H = canonicalOutput8261.moment H :=
  canonical_of_padded canonicalInput8261 canonicalOutput8261 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8262 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8262 : ExponentCode := normalNode3873

theorem canonicalSound8262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8262.moment H = canonicalOutput8262.moment H :=
  canonical_of_padded canonicalInput8262 canonicalOutput8262 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8263 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, -2, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput8263 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node606⟩

theorem canonicalSound8263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8263.moment H = canonicalOutput8263.moment H :=
  canonical_of_padded canonicalInput8263 canonicalOutput8263 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8264 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, 0, -2], ![0, 1, 1, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput8264 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code949

theorem canonicalSound8264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8264.moment H = canonicalOutput8264.moment H :=
  canonical_of_padded canonicalInput8264 canonicalOutput8264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8265 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8265 : ExponentCode := normalNode3873

theorem canonicalSound8265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8265.moment H = canonicalOutput8265.moment H :=
  canonical_of_padded canonicalInput8265 canonicalOutput8265 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8266 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8266 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound8266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8266.moment H = canonicalOutput8266.moment H :=
  canonical_of_padded canonicalInput8266 canonicalOutput8266 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8267 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, 0, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput8267 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node606⟩

theorem canonicalSound8267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8267.moment H = canonicalOutput8267.moment H :=
  canonical_of_padded canonicalInput8267 canonicalOutput8267 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8268 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput8268 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code951

theorem canonicalSound8268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8268.moment H = canonicalOutput8268.moment H :=
  canonical_of_padded canonicalInput8268 canonicalOutput8268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8269 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput8269 : ExponentCode := normalNode4217

theorem canonicalSound8269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8269.moment H = canonicalOutput8269.moment H :=
  canonical_of_padded canonicalInput8269 canonicalOutput8269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8270 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput8270 : ExponentCode := normalNode3453

theorem canonicalSound8270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8270.moment H = canonicalOutput8270.moment H :=
  canonical_of_padded canonicalInput8270 canonicalOutput8270 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8271 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 2, 1, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput8271 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code763

theorem canonicalSound8271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8271.moment H = canonicalOutput8271.moment H :=
  canonical_of_padded canonicalInput8271 canonicalOutput8271 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8272 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 3, -3, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8272 : ExponentCode := normalNode5542

theorem canonicalSound8272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8272.moment H = canonicalOutput8272.moment H :=
  canonical_of_padded canonicalInput8272 canonicalOutput8272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8273 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8273 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1636⟩

theorem canonicalSound8273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8273.moment H = canonicalOutput8273.moment H :=
  canonical_of_padded canonicalInput8273 canonicalOutput8273 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput8274 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput8274 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2263⟩

theorem canonicalSound8274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8274.moment H = canonicalOutput8274.moment H :=
  canonical_of_padded canonicalInput8274 canonicalOutput8274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8275 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![0, 3, 1, -4], ![2, -1, -3, 2]]⟩

def canonicalOutput8275 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code760

theorem canonicalSound8275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8275.moment H = canonicalOutput8275.moment H :=
  canonical_of_padded canonicalInput8275 canonicalOutput8275 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8276 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, -1, -2, 2], ![1, 3, 0, -4]]⟩

def canonicalOutput8276 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node586⟩

theorem canonicalSound8276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8276.moment H = canonicalOutput8276.moment H :=
  canonical_of_padded canonicalInput8276 canonicalOutput8276 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8277 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput8277 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound8277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8277.moment H = canonicalOutput8277.moment H :=
  canonical_of_padded canonicalInput8277 canonicalOutput8277 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8278 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput8278 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node820⟩

theorem canonicalSound8278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8278.moment H = canonicalOutput8278.moment H :=
  canonical_of_padded canonicalInput8278 canonicalOutput8278 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8279 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, -1, 1, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput8279 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound8279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8279.moment H = canonicalOutput8279.moment H :=
  canonical_of_padded canonicalInput8279 canonicalOutput8279 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8280 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 0, -3, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput8280 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩

theorem canonicalSound8280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8280.moment H = canonicalOutput8280.moment H :=
  canonical_of_padded canonicalInput8280 canonicalOutput8280 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8281 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput8281 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound8281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8281.moment H = canonicalOutput8281.moment H :=
  canonical_of_padded canonicalInput8281 canonicalOutput8281 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8282 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput8282 : ExponentCode := normalNode3784

theorem canonicalSound8282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8282.moment H = canonicalOutput8282.moment H :=
  canonical_of_padded canonicalInput8282 canonicalOutput8282 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8283 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput8283 : ExponentCode := normalNode3780

theorem canonicalSound8283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8283.moment H = canonicalOutput8283.moment H :=
  canonical_of_padded canonicalInput8283 canonicalOutput8283 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8284 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 2, 0], ![1, -1, -2, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput8284 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code659

theorem canonicalSound8284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8284.moment H = canonicalOutput8284.moment H :=
  canonical_of_padded canonicalInput8284 canonicalOutput8284 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8285 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 2, 0], ![1, -1, -1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput8285 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩

theorem canonicalSound8285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8285.moment H = canonicalOutput8285.moment H :=
  canonical_of_padded canonicalInput8285 canonicalOutput8285 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8286 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 2, 0], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput8286 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node520⟩

theorem canonicalSound8286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8286.moment H = canonicalOutput8286.moment H :=
  canonical_of_padded canonicalInput8286 canonicalOutput8286 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8287 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -2, 2, 0], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8287 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound8287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8287.moment H = canonicalOutput8287.moment H :=
  canonical_of_padded canonicalInput8287 canonicalOutput8287 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8288 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![0, -2, 4, -2], ![2, 2, -5, 1]]⟩

def canonicalOutput8288 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node200⟩

theorem canonicalSound8288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8288.moment H = canonicalOutput8288.moment H :=
  canonical_of_padded canonicalInput8288 canonicalOutput8288 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8289 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -3, 4], ![0, 1, 1, -2], ![2, 0, 1, -3]]⟩

def canonicalOutput8289 : ExponentCode := normalNode9643

theorem canonicalSound8289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8289.moment H = canonicalOutput8289.moment H :=
  canonical_of_padded canonicalInput8289 canonicalOutput8289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8290 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -3, 4], ![0, 1, 2, -3], ![2, 0, 0, -2]]⟩

def canonicalOutput8290 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1162⟩

theorem canonicalSound8290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8290.moment H = canonicalOutput8290.moment H :=
  canonical_of_padded canonicalInput8290 canonicalOutput8290 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8291 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -3, 4], ![1, 0, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput8291 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node932⟩

theorem canonicalSound8291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8291.moment H = canonicalOutput8291.moment H :=
  canonical_of_padded canonicalInput8291 canonicalOutput8291 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8292 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -3, 4], ![1, 0, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput8292 : ExponentCode := normalNode8921

theorem canonicalSound8292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8292.moment H = canonicalOutput8292.moment H :=
  canonical_of_padded canonicalInput8292 canonicalOutput8292 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8293 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 0, 2, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput8293 : ExponentCode := normalNode6979

theorem canonicalSound8293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8293.moment H = canonicalOutput8293.moment H :=
  canonical_of_padded canonicalInput8293 canonicalOutput8293 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8294 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput8294 : ExponentCode := normalNode9851

theorem canonicalSound8294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8294.moment H = canonicalOutput8294.moment H :=
  canonical_of_padded canonicalInput8294 canonicalOutput8294 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8295 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput8295 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1724⟩

theorem canonicalSound8295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8295.moment H = canonicalOutput8295.moment H :=
  canonical_of_padded canonicalInput8295 canonicalOutput8295 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8296 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput8296 : ExponentCode := normalNode1808

theorem canonicalSound8296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8296.moment H = canonicalOutput8296.moment H :=
  canonical_of_padded canonicalInput8296 canonicalOutput8296 (by decide) (by decide)
    ⟨false, false, canonicalPermutation64, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8297 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput8297 : ExponentCode := normalNode9849

theorem canonicalSound8297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8297.moment H = canonicalOutput8297.moment H :=
  canonical_of_padded canonicalInput8297 canonicalOutput8297 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8298 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput8298 : ExponentCode := normalNode9849

theorem canonicalSound8298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8298.moment H = canonicalOutput8298.moment H :=
  canonical_of_padded canonicalInput8298 canonicalOutput8298 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8299 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput8299 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩

theorem canonicalSound8299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8299.moment H = canonicalOutput8299.moment H :=
  canonical_of_padded canonicalInput8299 canonicalOutput8299 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8300 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, 1, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput8300 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node804⟩

theorem canonicalSound8300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8300.moment H = canonicalOutput8300.moment H :=
  canonical_of_padded canonicalInput8300 canonicalOutput8300 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8301 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8301 : ExponentCode := normalNode9848

theorem canonicalSound8301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8301.moment H = canonicalOutput8301.moment H :=
  canonical_of_padded canonicalInput8301 canonicalOutput8301 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8302 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput8302 : ExponentCode := normalNode9848

theorem canonicalSound8302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8302.moment H = canonicalOutput8302.moment H :=
  canonical_of_padded canonicalInput8302 canonicalOutput8302 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8303 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, 2, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput8303 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1188⟩

theorem canonicalSound8303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8303.moment H = canonicalOutput8303.moment H :=
  canonical_of_padded canonicalInput8303 canonicalOutput8303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8304 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 2, -2, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput8304 : ExponentCode := normalNode3967

theorem canonicalSound8304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8304.moment H = canonicalOutput8304.moment H :=
  canonical_of_padded canonicalInput8304 canonicalOutput8304 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8305 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 2, -1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput8305 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code924

theorem canonicalSound8305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8305.moment H = canonicalOutput8305.moment H :=
  canonical_of_padded canonicalInput8305 canonicalOutput8305 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8306 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 2, 0, -2], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput8306 : ExponentCode := normalNode3964

theorem canonicalSound8306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8306.moment H = canonicalOutput8306.moment H :=
  canonical_of_padded canonicalInput8306 canonicalOutput8306 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8307 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 2, 0, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput8307 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node496⟩

theorem canonicalSound8307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8307.moment H = canonicalOutput8307.moment H :=
  canonical_of_padded canonicalInput8307 canonicalOutput8307 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8308 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8308 : ExponentCode := normalNode1781

theorem canonicalSound8308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8308.moment H = canonicalOutput8308.moment H :=
  canonical_of_padded canonicalInput8308 canonicalOutput8308 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8309 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8309 : ExponentCode := normalNode3228

theorem canonicalSound8309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8309.moment H = canonicalOutput8309.moment H :=
  canonical_of_padded canonicalInput8309 canonicalOutput8309 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8310 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, -1, 2, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput8310 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code634

theorem canonicalSound8310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8310.moment H = canonicalOutput8310.moment H :=
  canonical_of_padded canonicalInput8310 canonicalOutput8310 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8311 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, -1, 3, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput8311 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code637

theorem canonicalSound8311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8311.moment H = canonicalOutput8311.moment H :=
  canonical_of_padded canonicalInput8311 canonicalOutput8311 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8312 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput8312 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node800⟩

theorem canonicalSound8312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8312.moment H = canonicalOutput8312.moment H :=
  canonical_of_padded canonicalInput8312 canonicalOutput8312 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8313 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput8313 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound8313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8313.moment H = canonicalOutput8313.moment H :=
  canonical_of_padded canonicalInput8313 canonicalOutput8313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8314 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput8314 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1093⟩

theorem canonicalSound8314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8314.moment H = canonicalOutput8314.moment H :=
  canonical_of_padded canonicalInput8314 canonicalOutput8314 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8315 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput8315 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1020⟩

theorem canonicalSound8315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8315.moment H = canonicalOutput8315.moment H :=
  canonical_of_padded canonicalInput8315 canonicalOutput8315 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8316 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, 1, -2, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput8316 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1020⟩

theorem canonicalSound8316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8316.moment H = canonicalOutput8316.moment H :=
  canonical_of_padded canonicalInput8316 canonicalOutput8316 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8317 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput8317 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1093⟩

theorem canonicalSound8317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8317.moment H = canonicalOutput8317.moment H :=
  canonical_of_padded canonicalInput8317 canonicalOutput8317 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8318 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, -1, -2, 3], ![1, 2, -2, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput8318 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code637

theorem canonicalSound8318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8318.moment H = canonicalOutput8318.moment H :=
  canonical_of_padded canonicalInput8318 canonicalOutput8318 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8319 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, -2, 1, 1], ![1, 1, -2, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput8319 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code940

theorem canonicalSound8319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8319.moment H = canonicalOutput8319.moment H :=
  canonical_of_padded canonicalInput8319 canonicalOutput8319 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
