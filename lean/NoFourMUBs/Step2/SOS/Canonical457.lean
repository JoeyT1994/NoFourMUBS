import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29248 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, 1, 0], ![1, 1, 0, -2], ![-2, 1, -1, 2]]⟩

def canonicalOutput29248 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3035⟩

theorem canonicalSound29248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29248.moment H = canonicalOutput29248.moment H :=
  canonical_of_padded canonicalInput29248 canonicalOutput29248 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29249 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![-2, 0, -1, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput29249 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3071⟩

theorem canonicalSound29249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29249.moment H = canonicalOutput29249.moment H :=
  canonical_of_padded canonicalInput29249 canonicalOutput29249 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29250 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![-2, 1, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput29250 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3250⟩

theorem canonicalSound29250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29250.moment H = canonicalOutput29250.moment H :=
  canonical_of_padded canonicalInput29250 canonicalOutput29250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29251 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, 1, -1, 2]]⟩

def canonicalOutput29251 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3250⟩

theorem canonicalSound29251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29251.moment H = canonicalOutput29251.moment H :=
  canonical_of_padded canonicalInput29251 canonicalOutput29251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29252 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, 1, 0, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput29252 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3231⟩

theorem canonicalSound29252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29252.moment H = canonicalOutput29252.moment H :=
  canonical_of_padded canonicalInput29252 canonicalOutput29252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29253 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 0, -1, 1], ![-1, -1, -1, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput29253 : ExponentCode := normalNode7941

theorem canonicalSound29253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29253.moment H = canonicalOutput29253.moment H :=
  canonical_of_padded canonicalInput29253 canonicalOutput29253 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation271, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29254 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, -1, -2, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput29254 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2854⟩

theorem canonicalSound29254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29254.moment H = canonicalOutput29254.moment H :=
  canonical_of_padded canonicalInput29254 canonicalOutput29254 (by decide) (by decide)
    ⟨false, true, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29255 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 0, 0, 0], ![0, -1, 3, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput29255 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2854⟩

theorem canonicalSound29255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29255.moment H = canonicalOutput29255.moment H :=
  canonical_of_padded canonicalInput29255 canonicalOutput29255 (by decide) (by decide)
    ⟨false, true, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29256 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 2, -2, 0], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29256 : ExponentCode := normalNode2382

theorem canonicalSound29256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29256.moment H = canonicalOutput29256.moment H :=
  canonical_of_padded canonicalInput29256 canonicalOutput29256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29257 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 2, -1, -1], ![1, -2, -1, 2], ![-2, 1, 2, -1]]⟩

def canonicalOutput29257 : ExponentCode := normalNode2346

theorem canonicalSound29257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29257.moment H = canonicalOutput29257.moment H :=
  canonical_of_padded canonicalInput29257 canonicalOutput29257 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29258 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 2, -1, -1], ![1, -2, 0, 1], ![-2, 1, 1, 0]]⟩

def canonicalOutput29258 : ExponentCode := normalNode4247

theorem canonicalSound29258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29258.moment H = canonicalOutput29258.moment H :=
  canonical_of_padded canonicalInput29258 canonicalOutput29258 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29259 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -2, 0, 1], ![-1, 1, -2, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput29259 : ExponentCode := normalNode6911

theorem canonicalSound29259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29259.moment H = canonicalOutput29259.moment H :=
  canonical_of_padded canonicalInput29259 canonicalOutput29259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29260 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -2, 0, 1], ![0, 1, 2, -3], ![-2, 2, -2, 2]]⟩

def canonicalOutput29260 : ExponentCode := normalNode785

theorem canonicalSound29260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29260.moment H = canonicalOutput29260.moment H :=
  canonical_of_padded canonicalInput29260 canonicalOutput29260 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29261 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, -1, 2, 1], ![0, 3, -1, -2]]⟩

def canonicalOutput29261 : ExponentCode := normalNode2653

theorem canonicalSound29261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29261.moment H = canonicalOutput29261.moment H :=
  canonical_of_padded canonicalInput29261 canonicalOutput29261 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29262 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, 1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput29262 : ExponentCode := normalNode5203

theorem canonicalSound29262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29262.moment H = canonicalOutput29262.moment H :=
  canonical_of_padded canonicalInput29262 canonicalOutput29262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29263 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-1, 1, -1, 1], ![-1, 1, 2, -2]]⟩

def canonicalOutput29263 : ExponentCode := normalNode11012

theorem canonicalSound29263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29263.moment H = canonicalOutput29263.moment H :=
  canonical_of_padded canonicalInput29263 canonicalOutput29263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29264 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![0, 3, -1, -2]]⟩

def canonicalOutput29264 : ExponentCode := normalNode5052

theorem canonicalSound29264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29264.moment H = canonicalOutput29264.moment H :=
  canonical_of_padded canonicalInput29264 canonicalOutput29264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29265 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![0, 3, -2, -1]]⟩

def canonicalOutput29265 : ExponentCode := normalNode5052

theorem canonicalSound29265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29265.moment H = canonicalOutput29265.moment H :=
  canonical_of_padded canonicalInput29265 canonicalOutput29265 (by decide) (by decide)
    ⟨false, false, canonicalPermutation137, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29266 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -2, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput29266 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3237⟩

theorem canonicalSound29266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29266.moment H = canonicalOutput29266.moment H :=
  canonical_of_padded canonicalInput29266 canonicalOutput29266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29267 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput29267 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3037⟩

theorem canonicalSound29267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29267.moment H = canonicalOutput29267.moment H :=
  canonical_of_padded canonicalInput29267 canonicalOutput29267 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29268 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![-1, 1, 2, -2]]⟩

def canonicalOutput29268 : ExponentCode := normalNode11018

theorem canonicalSound29268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29268.moment H = canonicalOutput29268.moment H :=
  canonical_of_padded canonicalInput29268 canonicalOutput29268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29269 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![-1, 1, 1, -1]]⟩

def canonicalOutput29269 : ExponentCode := normalNode9284

theorem canonicalSound29269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29269.moment H = canonicalOutput29269.moment H :=
  canonical_of_padded canonicalInput29269 canonicalOutput29269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29270 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, 2, -2], ![-2, 2, -2, 2]]⟩

def canonicalOutput29270 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3313⟩

theorem canonicalSound29270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29270.moment H = canonicalOutput29270.moment H :=
  canonical_of_padded canonicalInput29270 canonicalOutput29270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29271 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 1, 2, -3], ![-2, 1, -2, 3]]⟩

def canonicalOutput29271 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3237⟩

theorem canonicalSound29271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29271.moment H = canonicalOutput29271.moment H :=
  canonical_of_padded canonicalInput29271 canonicalOutput29271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29272 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, -2, 2, 1], ![-1, 3, 0, -2]]⟩

def canonicalOutput29272 : ExponentCode := normalNode6680

theorem canonicalSound29272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29272.moment H = canonicalOutput29272.moment H :=
  canonical_of_padded canonicalInput29272 canonicalOutput29272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29273 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, 2, 2, -4]]⟩

def canonicalOutput29273 : ExponentCode := normalNode1343

theorem canonicalSound29273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29273.moment H = canonicalOutput29273.moment H :=
  canonical_of_padded canonicalInput29273 canonicalOutput29273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29274 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![-1, 3, 0, -2]]⟩

def canonicalOutput29274 : ExponentCode := normalNode9824

theorem canonicalSound29274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29274.moment H = canonicalOutput29274.moment H :=
  canonical_of_padded canonicalInput29274 canonicalOutput29274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29275 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 3, -1, -1]]⟩

def canonicalOutput29275 : ExponentCode := normalNode7727

theorem canonicalSound29275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29275.moment H = canonicalOutput29275.moment H :=
  canonical_of_padded canonicalInput29275 canonicalOutput29275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation346, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput29276 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, 2, -1], ![-2, 2, -1, 1]]⟩

def canonicalOutput29276 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3093⟩

theorem canonicalSound29276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29276.moment H = canonicalOutput29276.moment H :=
  canonical_of_padded canonicalInput29276 canonicalOutput29276 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput29277 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, -1, 4], ![0, 2, 1, -3]]⟩

def canonicalOutput29277 : ExponentCode := normalNode1212

theorem canonicalSound29277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29277.moment H = canonicalOutput29277.moment H :=
  canonical_of_padded canonicalInput29277 canonicalOutput29277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29278 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 2, 0, -2]]⟩

def canonicalOutput29278 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3423⟩

theorem canonicalSound29278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29278.moment H = canonicalOutput29278.moment H :=
  canonical_of_padded canonicalInput29278 canonicalOutput29278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29279 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![-1, 3, -1, -1]]⟩

def canonicalOutput29279 : ExponentCode := normalNode7727

theorem canonicalSound29279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29279.moment H = canonicalOutput29279.moment H :=
  canonical_of_padded canonicalInput29279 canonicalOutput29279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation323, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29280 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 3, -2, 0]]⟩

def canonicalOutput29280 : ExponentCode := normalNode9824

theorem canonicalSound29280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29280.moment H = canonicalOutput29280.moment H :=
  canonical_of_padded canonicalInput29280 canonicalOutput29280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29281 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -2, 4], ![-1, 2, 2, -3]]⟩

def canonicalOutput29281 : ExponentCode := normalNode4832

theorem canonicalSound29281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29281.moment H = canonicalOutput29281.moment H :=
  canonical_of_padded canonicalInput29281 canonicalOutput29281 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29282 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 2, -3, 2]]⟩

def canonicalOutput29282 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3226⟩

theorem canonicalSound29282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29282.moment H = canonicalOutput29282.moment H :=
  canonical_of_padded canonicalInput29282 canonicalOutput29282 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29283 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 1, 0], ![-2, 2, -1, 1]]⟩

def canonicalOutput29283 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3044⟩

theorem canonicalSound29283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29283.moment H = canonicalOutput29283.moment H :=
  canonical_of_padded canonicalInput29283 canonicalOutput29283 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29284 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-2, 2, -3, 3]]⟩

def canonicalOutput29284 : ExponentCode := normalNode5751

theorem canonicalSound29284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29284.moment H = canonicalOutput29284.moment H :=
  canonical_of_padded canonicalInput29284 canonicalOutput29284 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29285 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -2, 0], ![-2, -1, 2, 1]]⟩

def canonicalOutput29285 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3069⟩

theorem canonicalSound29285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29285.moment H = canonicalOutput29285.moment H :=
  canonical_of_padded canonicalInput29285 canonicalOutput29285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29286 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 3, -2, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput29286 : ExponentCode := normalNode854

theorem canonicalSound29286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29286.moment H = canonicalOutput29286.moment H :=
  canonical_of_padded canonicalInput29286 canonicalOutput29286 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29287 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, 2, -1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput29287 : ExponentCode := normalNode5279

theorem canonicalSound29287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29287.moment H = canonicalOutput29287.moment H :=
  canonical_of_padded canonicalInput29287 canonicalOutput29287 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29288 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, 2, 0, 0], ![1, 1, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput29288 : ExponentCode := normalNode3950

theorem canonicalSound29288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29288.moment H = canonicalOutput29288.moment H :=
  canonical_of_padded canonicalInput29288 canonicalOutput29288 (by decide) (by decide)
    ⟨false, false, canonicalPermutation205, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29289 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![1, -2, 1, 0], ![-1, 3, -1, -1]]⟩

def canonicalOutput29289 : ExponentCode := normalNode7728

theorem canonicalSound29289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29289.moment H = canonicalOutput29289.moment H :=
  canonical_of_padded canonicalInput29289 canonicalOutput29289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation342, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput29290 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, 0, 1, 0], ![-1, -2, 1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput29290 : ExponentCode := normalNode2428

theorem canonicalSound29290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29290.moment H = canonicalOutput29290.moment H :=
  canonical_of_padded canonicalInput29290 canonicalOutput29290 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29291 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![-1, -3, 1, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput29291 : ExponentCode := normalNode6049

theorem canonicalSound29291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29291.moment H = canonicalOutput29291.moment H :=
  canonical_of_padded canonicalInput29291 canonicalOutput29291 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29292 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![-1, -2, 1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput29292 : ExponentCode := normalNode2644

theorem canonicalSound29292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29292.moment H = canonicalOutput29292.moment H :=
  canonical_of_padded canonicalInput29292 canonicalOutput29292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29293 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![-1, 2, -1, 0], ![1, -3, 1, 1]]⟩

def canonicalOutput29293 : ExponentCode := normalNode7712

theorem canonicalSound29293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29293.moment H = canonicalOutput29293.moment H :=
  canonical_of_padded canonicalInput29293 canonicalOutput29293 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29294 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![1, -1, 1, -1], ![-2, 3, -1, 0]]⟩

def canonicalOutput29294 : ExponentCode := normalNode3484

theorem canonicalSound29294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29294.moment H = canonicalOutput29294.moment H :=
  canonical_of_padded canonicalInput29294 canonicalOutput29294 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation334, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29295 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput29295 : ExponentCode := normalNode6735

theorem canonicalSound29295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29295.moment H = canonicalOutput29295.moment H :=
  canonical_of_padded canonicalInput29295 canonicalOutput29295 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation271, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29296 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![0, 0, 0, 0], ![0, -2, -1, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput29296 : ExponentCode := normalNode10860

theorem canonicalSound29296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29296.moment H = canonicalOutput29296.moment H :=
  canonical_of_padded canonicalInput29296 canonicalOutput29296 (by decide) (by decide)
    ⟨false, true, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29297 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![0, 3, -1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput29297 : ExponentCode := normalNode854

theorem canonicalSound29297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29297.moment H = canonicalOutput29297.moment H :=
  canonical_of_padded canonicalInput29297 canonicalOutput29297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation336, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29298 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -2, 0, 4], ![0, 2, 2, -4]]⟩

def canonicalOutput29298 : ExponentCode := normalNode407

theorem canonicalSound29298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29298.moment H = canonicalOutput29298.moment H :=
  canonical_of_padded canonicalInput29298 canonicalOutput29298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29299 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput29299 : ExponentCode := normalNode1949

theorem canonicalSound29299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29299.moment H = canonicalOutput29299.moment H :=
  canonical_of_padded canonicalInput29299 canonicalOutput29299 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29300 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, -1, 4], ![-1, 2, 2, -3]]⟩

def canonicalOutput29300 : ExponentCode := normalNode1340

theorem canonicalSound29300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29300.moment H = canonicalOutput29300.moment H :=
  canonical_of_padded canonicalInput29300 canonicalOutput29300 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29301 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-2, 2, 2, -2]]⟩

def canonicalOutput29301 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3131⟩

theorem canonicalSound29301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29301.moment H = canonicalOutput29301.moment H :=
  canonical_of_padded canonicalInput29301 canonicalOutput29301 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29302 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 2, -1, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput29302 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2893⟩

theorem canonicalSound29302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29302.moment H = canonicalOutput29302.moment H :=
  canonical_of_padded canonicalInput29302 canonicalOutput29302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29303 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 3, -1, -2], ![-2, -3, 2, 3]]⟩

def canonicalOutput29303 : ExponentCode := normalNode265

theorem canonicalSound29303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29303.moment H = canonicalOutput29303.moment H :=
  canonical_of_padded canonicalInput29303 canonicalOutput29303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29304 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, 2, -1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput29304 : ExponentCode := normalNode2347

theorem canonicalSound29304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29304.moment H = canonicalOutput29304.moment H :=
  canonical_of_padded canonicalInput29304 canonicalOutput29304 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29305 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, -2, 0], ![1, -3, 2, 0]]⟩

def canonicalOutput29305 : ExponentCode := normalNode5377

theorem canonicalSound29305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29305.moment H = canonicalOutput29305.moment H :=
  canonical_of_padded canonicalInput29305 canonicalOutput29305 (by decide) (by decide)
    ⟨false, false, canonicalPermutation319, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29306 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29306 : ExponentCode := normalNode4246

theorem canonicalSound29306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29306.moment H = canonicalOutput29306.moment H :=
  canonical_of_padded canonicalInput29306 canonicalOutput29306 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29307 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, 1, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput29307 : ExponentCode := normalNode2502

theorem canonicalSound29307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29307.moment H = canonicalOutput29307.moment H :=
  canonical_of_padded canonicalInput29307 canonicalOutput29307 (by decide) (by decide)
    ⟨false, false, canonicalPermutation320, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29308 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![1, 1, -2, 0], ![0, -3, 2, 1]]⟩

def canonicalOutput29308 : ExponentCode := normalNode3951

theorem canonicalSound29308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29308.moment H = canonicalOutput29308.moment H :=
  canonical_of_padded canonicalInput29308 canonicalOutput29308 (by decide) (by decide)
    ⟨false, false, canonicalPermutation323, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29309 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![1, 1, -1, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput29309 : ExponentCode := normalNode3950

theorem canonicalSound29309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29309.moment H = canonicalOutput29309.moment H :=
  canonical_of_padded canonicalInput29309 canonicalOutput29309 (by decide) (by decide)
    ⟨false, false, canonicalPermutation320, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29310 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![1, -2, 1, 0], ![-1, 3, -1, -1]]⟩

def canonicalOutput29310 : ExponentCode := normalNode7714

theorem canonicalSound29310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29310.moment H = canonicalOutput29310.moment H :=
  canonical_of_padded canonicalInput29310 canonicalOutput29310 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation322, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29311 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![1, -2, 0, 1], ![-1, 3, -1, -1]]⟩

def canonicalOutput29311 : ExponentCode := normalNode7728

theorem canonicalSound29311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29311.moment H = canonicalOutput29311.moment H :=
  canonical_of_padded canonicalInput29311 canonicalOutput29311 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation319, canonicalPermutation3⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
