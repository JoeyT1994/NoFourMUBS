import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24256 : ExponentCode := ⟨5, 4, ![![0, -2, 1, 1], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput24256 : ExponentCode := normalNode10650

theorem canonicalSound24256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24256.moment H = canonicalOutput24256.moment H :=
  canonical_of_padded canonicalInput24256 canonicalOutput24256 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24257 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, -1, 1], ![0, 1, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput24257 : ExponentCode := normalNode9722

theorem canonicalSound24257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24257.moment H = canonicalOutput24257.moment H :=
  canonical_of_padded canonicalInput24257 canonicalOutput24257 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24258 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, -1, 1], ![0, 1, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput24258 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩

theorem canonicalSound24258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24258.moment H = canonicalOutput24258.moment H :=
  canonical_of_padded canonicalInput24258 canonicalOutput24258 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24259 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput24259 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound24259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24259.moment H = canonicalOutput24259.moment H :=
  canonical_of_padded canonicalInput24259 canonicalOutput24259 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24260 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput24260 : ExponentCode := normalNode9945

theorem canonicalSound24260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24260.moment H = canonicalOutput24260.moment H :=
  canonical_of_padded canonicalInput24260 canonicalOutput24260 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24261 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput24261 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound24261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24261.moment H = canonicalOutput24261.moment H :=
  canonical_of_padded canonicalInput24261 canonicalOutput24261 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24262 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, 1, -1], ![0, 2, -3, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput24262 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound24262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24262.moment H = canonicalOutput24262.moment H :=
  canonical_of_padded canonicalInput24262 canonicalOutput24262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24263 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput24263 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound24263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24263.moment H = canonicalOutput24263.moment H :=
  canonical_of_padded canonicalInput24263 canonicalOutput24263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24264 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 2, 2, -3], ![0, -1, -1, 2], ![1, 1, -2, 0]]⟩

def canonicalOutput24264 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound24264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24264.moment H = canonicalOutput24264.moment H :=
  canonical_of_padded canonicalInput24264 canonicalOutput24264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24265 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 2, 2, -3], ![0, 1, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput24265 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node730⟩

theorem canonicalSound24265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24265.moment H = canonicalOutput24265.moment H :=
  canonical_of_padded canonicalInput24265 canonicalOutput24265 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24266 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 3, 0, -2], ![0, -1, -2, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput24266 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1011⟩

theorem canonicalSound24266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24266.moment H = canonicalOutput24266.moment H :=
  canonical_of_padded canonicalInput24266 canonicalOutput24266 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24267 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![-1, 3, 1, -3], ![0, -1, -2, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput24267 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1282⟩

theorem canonicalSound24267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24267.moment H = canonicalOutput24267.moment H :=
  canonical_of_padded canonicalInput24267 canonicalOutput24267 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24268 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, -1, -2, 3], ![0, 0, 2, -2], ![0, 3, -1, -2]]⟩

def canonicalOutput24268 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound24268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24268.moment H = canonicalOutput24268.moment H :=
  canonical_of_padded canonicalInput24268 canonicalOutput24268 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24269 : ExponentCode := ⟨3, 4, ![![0, -2, 1, 1], ![0, -1, -2, 3], ![0, 3, 1, -4]]⟩

def canonicalOutput24269 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node40⟩

theorem canonicalSound24269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24269.moment H = canonicalOutput24269.moment H :=
  canonical_of_padded canonicalInput24269 canonicalOutput24269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24270 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![0, 3, -2, -1]]⟩

def canonicalOutput24270 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound24270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24270.moment H = canonicalOutput24270.moment H :=
  canonical_of_padded canonicalInput24270 canonicalOutput24270 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24271 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput24271 : ExponentCode := normalNode2087

theorem canonicalSound24271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24271.moment H = canonicalOutput24271.moment H :=
  canonical_of_padded canonicalInput24271 canonicalOutput24271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24272 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput24272 : ExponentCode := normalNode2086

theorem canonicalSound24272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24272.moment H = canonicalOutput24272.moment H :=
  canonical_of_padded canonicalInput24272 canonicalOutput24272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24273 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, -1, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput24273 : ExponentCode := normalNode1225

theorem canonicalSound24273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24273.moment H = canonicalOutput24273.moment H :=
  canonical_of_padded canonicalInput24273 canonicalOutput24273 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24274 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput24274 : ExponentCode := normalNode1794

theorem canonicalSound24274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24274.moment H = canonicalOutput24274.moment H :=
  canonical_of_padded canonicalInput24274 canonicalOutput24274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24275 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, 1, -2, 3]]⟩

def canonicalOutput24275 : ExponentCode := normalNode653

theorem canonicalSound24275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24275.moment H = canonicalOutput24275.moment H :=
  canonical_of_padded canonicalInput24275 canonicalOutput24275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24276 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, 3, 1, -4]]⟩

def canonicalOutput24276 : ExponentCode := normalNode2088

theorem canonicalSound24276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24276.moment H = canonicalOutput24276.moment H :=
  canonical_of_padded canonicalInput24276 canonicalOutput24276 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24277 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput24277 : ExponentCode := normalNode4152

theorem canonicalSound24277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24277.moment H = canonicalOutput24277.moment H :=
  canonical_of_padded canonicalInput24277 canonicalOutput24277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24278 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput24278 : ExponentCode := normalNode4528

theorem canonicalSound24278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24278.moment H = canonicalOutput24278.moment H :=
  canonical_of_padded canonicalInput24278 canonicalOutput24278 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24279 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 0, -3, 3], ![0, 0, 3, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput24279 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node220⟩

theorem canonicalSound24279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24279.moment H = canonicalOutput24279.moment H :=
  canonical_of_padded canonicalInput24279 canonicalOutput24279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24280 : ExponentCode := ⟨3, 4, ![![0, -2, 1, 1], ![0, 0, -3, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput24280 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound24280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24280.moment H = canonicalOutput24280.moment H :=
  canonical_of_padded canonicalInput24280 canonicalOutput24280 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24281 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 0, -2, 2], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput24281 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node224⟩

theorem canonicalSound24281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24281.moment H = canonicalOutput24281.moment H :=
  canonical_of_padded canonicalInput24281 canonicalOutput24281 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24282 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 0, 2, 0], ![2, 2, 0, -4]]⟩

def canonicalOutput24282 : ExponentCode := normalNode429

theorem canonicalSound24282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24282.moment H = canonicalOutput24282.moment H :=
  canonical_of_padded canonicalInput24282 canonicalOutput24282 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24283 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-2, 1, 1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput24283 : ExponentCode := normalNode1356

theorem canonicalSound24283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24283.moment H = canonicalOutput24283.moment H :=
  canonical_of_padded canonicalInput24283 canonicalOutput24283 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24284 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput24284 : ExponentCode := normalNode1257

theorem canonicalSound24284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24284.moment H = canonicalOutput24284.moment H :=
  canonical_of_padded canonicalInput24284 canonicalOutput24284 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24285 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, -1, 0, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput24285 : ExponentCode := normalNode4412

theorem canonicalSound24285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24285.moment H = canonicalOutput24285.moment H :=
  canonical_of_padded canonicalInput24285 canonicalOutput24285 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24286 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 1, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput24286 : ExponentCode := normalNode1217

theorem canonicalSound24286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24286.moment H = canonicalOutput24286.moment H :=
  canonical_of_padded canonicalInput24286 canonicalOutput24286 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24287 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput24287 : ExponentCode := normalNode2228

theorem canonicalSound24287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24287.moment H = canonicalOutput24287.moment H :=
  canonical_of_padded canonicalInput24287 canonicalOutput24287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24288 : ExponentCode := ⟨5, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 2, 0, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput24288 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2696⟩

theorem canonicalSound24288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24288.moment H = canonicalOutput24288.moment H :=
  canonical_of_padded canonicalInput24288 canonicalOutput24288 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24289 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![-1, 2, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput24289 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1242⟩

theorem canonicalSound24289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24289.moment H = canonicalOutput24289.moment H :=
  canonical_of_padded canonicalInput24289 canonicalOutput24289 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24290 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput24290 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound24290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24290.moment H = canonicalOutput24290.moment H :=
  canonical_of_padded canonicalInput24290 canonicalOutput24290 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24291 : ExponentCode := ⟨5, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput24291 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2709⟩

theorem canonicalSound24291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24291.moment H = canonicalOutput24291.moment H :=
  canonical_of_padded canonicalInput24291 canonicalOutput24291 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24292 : ExponentCode := ⟨5, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![0, 0, -3, 3]]⟩

def canonicalOutput24292 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node651⟩

theorem canonicalSound24292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24292.moment H = canonicalOutput24292.moment H :=
  canonical_of_padded canonicalInput24292 canonicalOutput24292 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24293 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput24293 : ExponentCode := normalNode2092

theorem canonicalSound24293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24293.moment H = canonicalOutput24293.moment H :=
  canonical_of_padded canonicalInput24293 canonicalOutput24293 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24294 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, -1, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput24294 : ExponentCode := normalNode697

theorem canonicalSound24294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24294.moment H = canonicalOutput24294.moment H :=
  canonical_of_padded canonicalInput24294 canonicalOutput24294 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24295 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput24295 : ExponentCode := normalNode1635

theorem canonicalSound24295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24295.moment H = canonicalOutput24295.moment H :=
  canonical_of_padded canonicalInput24295 canonicalOutput24295 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24296 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![0, 0, -1, 1]]⟩

def canonicalOutput24296 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node227⟩

theorem canonicalSound24296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24296.moment H = canonicalOutput24296.moment H :=
  canonical_of_padded canonicalInput24296 canonicalOutput24296 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24297 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![0, 0, -2, 2]]⟩

def canonicalOutput24297 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound24297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24297.moment H = canonicalOutput24297.moment H :=
  canonical_of_padded canonicalInput24297 canonicalOutput24297 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24298 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput24298 : ExponentCode := normalNode4153

theorem canonicalSound24298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24298.moment H = canonicalOutput24298.moment H :=
  canonical_of_padded canonicalInput24298 canonicalOutput24298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24299 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput24299 : ExponentCode := normalNode4533

theorem canonicalSound24299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24299.moment H = canonicalOutput24299.moment H :=
  canonical_of_padded canonicalInput24299 canonicalOutput24299 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24300 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 1, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput24300 : ExponentCode := normalNode6060

theorem canonicalSound24300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24300.moment H = canonicalOutput24300.moment H :=
  canonical_of_padded canonicalInput24300 canonicalOutput24300 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24301 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput24301 : ExponentCode := normalNode6019

theorem canonicalSound24301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24301.moment H = canonicalOutput24301.moment H :=
  canonical_of_padded canonicalInput24301 canonicalOutput24301 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24302 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![1, 1, 0, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput24302 : ExponentCode := normalNode6154

theorem canonicalSound24302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24302.moment H = canonicalOutput24302.moment H :=
  canonical_of_padded canonicalInput24302 canonicalOutput24302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24303 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput24303 : ExponentCode := normalNode6024

theorem canonicalSound24303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24303.moment H = canonicalOutput24303.moment H :=
  canonical_of_padded canonicalInput24303 canonicalOutput24303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24304 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput24304 : ExponentCode := normalNode530

theorem canonicalSound24304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24304.moment H = canonicalOutput24304.moment H :=
  canonical_of_padded canonicalInput24304 canonicalOutput24304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24305 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 0, 2, -2], ![-1, 2, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput24305 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node832⟩

theorem canonicalSound24305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24305.moment H = canonicalOutput24305.moment H :=
  canonical_of_padded canonicalInput24305 canonicalOutput24305 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput24306 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 0, 2, -2], ![-1, 2, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput24306 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1223⟩

theorem canonicalSound24306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24306.moment H = canonicalOutput24306.moment H :=
  canonical_of_padded canonicalInput24306 canonicalOutput24306 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24307 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 0, 2, -2], ![0, 2, -3, 1], ![0, 0, 0, 0]]⟩

def canonicalOutput24307 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound24307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24307.moment H = canonicalOutput24307.moment H :=
  canonical_of_padded canonicalInput24307 canonicalOutput24307 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24308 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 0, 2, -2], ![0, 2, 0, -2], ![0, 0, -3, 3]]⟩

def canonicalOutput24308 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound24308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24308.moment H = canonicalOutput24308.moment H :=
  canonical_of_padded canonicalInput24308 canonicalOutput24308 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24309 : ExponentCode := ⟨3, 4, ![![0, -2, 1, 1], ![0, 0, 3, -3], ![0, 2, -4, 2]]⟩

def canonicalOutput24309 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound24309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24309.moment H = canonicalOutput24309.moment H :=
  canonical_of_padded canonicalInput24309 canonicalOutput24309 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24310 : ExponentCode := ⟨3, 4, ![![0, -2, 1, 1], ![0, 1, -4, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput24310 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node42⟩

theorem canonicalSound24310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24310.moment H = canonicalOutput24310.moment H :=
  canonical_of_padded canonicalInput24310 canonicalOutput24310 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24311 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 1, -2, 1], ![-1, 1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput24311 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩

theorem canonicalSound24311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24311.moment H = canonicalOutput24311.moment H :=
  canonical_of_padded canonicalInput24311 canonicalOutput24311 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24312 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 1, -2, 1], ![-1, 1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput24312 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound24312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24312.moment H = canonicalOutput24312.moment H :=
  canonical_of_padded canonicalInput24312 canonicalOutput24312 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24313 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 1, -2, 1], ![-1, 2, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput24313 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node730⟩

theorem canonicalSound24313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24313.moment H = canonicalOutput24313.moment H :=
  canonical_of_padded canonicalInput24313 canonicalOutput24313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24314 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![0, 0, 0, 0]]⟩

def canonicalOutput24314 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound24314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24314.moment H = canonicalOutput24314.moment H :=
  canonical_of_padded canonicalInput24314 canonicalOutput24314 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24315 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 1, -2, 1], ![0, 1, 2, -3], ![0, 0, -1, 1]]⟩

def canonicalOutput24315 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound24315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24315.moment H = canonicalOutput24315.moment H :=
  canonical_of_padded canonicalInput24315 canonicalOutput24315 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24316 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 1, -2, 1], ![0, 2, 2, -4], ![0, -1, -1, 2]]⟩

def canonicalOutput24316 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound24316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24316.moment H = canonicalOutput24316.moment H :=
  canonical_of_padded canonicalInput24316 canonicalOutput24316 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24317 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput24317 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1006⟩

theorem canonicalSound24317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24317.moment H = canonicalOutput24317.moment H :=
  canonical_of_padded canonicalInput24317 canonicalOutput24317 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24318 : ExponentCode := ⟨4, 4, ![![0, -2, 1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, 0, -2, 2]]⟩

def canonicalOutput24318 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound24318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24318.moment H = canonicalOutput24318.moment H :=
  canonical_of_padded canonicalInput24318 canonicalOutput24318 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24319 : ExponentCode := ⟨6, 4, ![![0, -2, 1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput24319 : ExponentCode := normalNode6080

theorem canonicalSound24319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24319.moment H = canonicalOutput24319.moment H :=
  canonical_of_padded canonicalInput24319 canonicalOutput24319 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
