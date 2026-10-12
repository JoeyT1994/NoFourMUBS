import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20288 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput20288 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1083⟩

theorem canonicalSound20288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20288.moment H = canonicalOutput20288.moment H :=
  canonical_of_padded canonicalInput20288 canonicalOutput20288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20289 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput20289 : ExponentCode := normalNode3199

theorem canonicalSound20289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20289.moment H = canonicalOutput20289.moment H :=
  canonical_of_padded canonicalInput20289 canonicalOutput20289 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20290 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput20290 : ExponentCode := normalNode4837

theorem canonicalSound20290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20290.moment H = canonicalOutput20290.moment H :=
  canonical_of_padded canonicalInput20290 canonicalOutput20290 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20291 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput20291 : ExponentCode := normalNode4882

theorem canonicalSound20291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20291.moment H = canonicalOutput20291.moment H :=
  canonical_of_padded canonicalInput20291 canonicalOutput20291 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20292 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput20292 : ExponentCode := normalNode1684

theorem canonicalSound20292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20292.moment H = canonicalOutput20292.moment H :=
  canonical_of_padded canonicalInput20292 canonicalOutput20292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20293 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput20293 : ExponentCode := normalNode3401

theorem canonicalSound20293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20293.moment H = canonicalOutput20293.moment H :=
  canonical_of_padded canonicalInput20293 canonicalOutput20293 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20294 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, 3, -1], ![-1, 2, -3, 2]]⟩

def canonicalOutput20294 : ExponentCode := normalNode3496

theorem canonicalSound20294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20294.moment H = canonicalOutput20294.moment H :=
  canonical_of_padded canonicalInput20294 canonicalOutput20294 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20295 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, 2, -2], ![-1, 2, -1, 0], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput20295 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound20295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20295.moment H = canonicalOutput20295.moment H :=
  canonical_of_padded canonicalInput20295 canonicalOutput20295 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20296 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 0, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput20296 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound20296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20296.moment H = canonicalOutput20296.moment H :=
  canonical_of_padded canonicalInput20296 canonicalOutput20296 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20297 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput20297 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound20297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20297.moment H = canonicalOutput20297.moment H :=
  canonical_of_padded canonicalInput20297 canonicalOutput20297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20298 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput20298 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound20298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20298.moment H = canonicalOutput20298.moment H :=
  canonical_of_padded canonicalInput20298 canonicalOutput20298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20299 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput20299 : ExponentCode := normalNode10330

theorem canonicalSound20299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20299.moment H = canonicalOutput20299.moment H :=
  canonical_of_padded canonicalInput20299 canonicalOutput20299 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20300 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput20300 : ExponentCode := normalNode10900

theorem canonicalSound20300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20300.moment H = canonicalOutput20300.moment H :=
  canonical_of_padded canonicalInput20300 canonicalOutput20300 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20301 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput20301 : ExponentCode := normalNode8970

theorem canonicalSound20301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20301.moment H = canonicalOutput20301.moment H :=
  canonical_of_padded canonicalInput20301 canonicalOutput20301 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20302 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, 0, 1, -1]]⟩

def canonicalOutput20302 : ExponentCode := normalNode10338

theorem canonicalSound20302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20302.moment H = canonicalOutput20302.moment H :=
  canonical_of_padded canonicalInput20302 canonicalOutput20302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20303 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput20303 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1253⟩

theorem canonicalSound20303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20303.moment H = canonicalOutput20303.moment H :=
  canonical_of_padded canonicalInput20303 canonicalOutput20303 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20304 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, -2, 0, 1]]⟩

def canonicalOutput20304 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound20304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20304.moment H = canonicalOutput20304.moment H :=
  canonical_of_padded canonicalInput20304 canonicalOutput20304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20305 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 2, 0, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput20305 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1059⟩

theorem canonicalSound20305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20305.moment H = canonicalOutput20305.moment H :=
  canonical_of_padded canonicalInput20305 canonicalOutput20305 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20306 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 3, -3], ![0, 0, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput20306 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node285⟩

theorem canonicalSound20306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20306.moment H = canonicalOutput20306.moment H :=
  canonical_of_padded canonicalInput20306 canonicalOutput20306 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20307 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput20307 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound20307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20307.moment H = canonicalOutput20307.moment H :=
  canonical_of_padded canonicalInput20307 canonicalOutput20307 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20308 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 3, -3], ![0, 1, -3, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput20308 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1224⟩

theorem canonicalSound20308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20308.moment H = canonicalOutput20308.moment H :=
  canonical_of_padded canonicalInput20308 canonicalOutput20308 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20309 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 4, -4], ![0, 1, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput20309 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1227⟩

theorem canonicalSound20309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20309.moment H = canonicalOutput20309.moment H :=
  canonical_of_padded canonicalInput20309 canonicalOutput20309 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20310 : ExponentCode := ⟨3, 4, ![![-1, 0, -1, 2], ![0, 0, 4, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput20310 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩

theorem canonicalSound20310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20310.moment H = canonicalOutput20310.moment H :=
  canonical_of_padded canonicalInput20310 canonicalOutput20310 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20311 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, -3, 2], ![0, 0, 4, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput20311 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1227⟩

theorem canonicalSound20311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20311.moment H = canonicalOutput20311.moment H :=
  canonical_of_padded canonicalInput20311 canonicalOutput20311 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20312 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -2, 4, -3]]⟩

def canonicalOutput20312 : ExponentCode := normalNode10359

theorem canonicalSound20312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20312.moment H = canonicalOutput20312.moment H :=
  canonical_of_padded canonicalInput20312 canonicalOutput20312 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20313 : ExponentCode := ⟨3, 4, ![![-1, 0, -1, 2], ![0, 1, -3, 2], ![1, -1, 4, -4]]⟩

def canonicalOutput20313 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node143⟩

theorem canonicalSound20313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20313.moment H = canonicalOutput20313.moment H :=
  canonical_of_padded canonicalInput20313 canonicalOutput20313 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20314 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 1, -2, 1], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput20314 : ExponentCode := normalNode10203

theorem canonicalSound20314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20314.moment H = canonicalOutput20314.moment H :=
  canonical_of_padded canonicalInput20314 canonicalOutput20314 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20315 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, -2, 1], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput20315 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1263⟩

theorem canonicalSound20315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20315.moment H = canonicalOutput20315.moment H :=
  canonical_of_padded canonicalInput20315 canonicalOutput20315 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20316 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![0, -1, 1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput20316 : ExponentCode := normalNode10291

theorem canonicalSound20316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20316.moment H = canonicalOutput20316.moment H :=
  canonical_of_padded canonicalInput20316 canonicalOutput20316 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20317 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![0, -1, 2, -1]]⟩

def canonicalOutput20317 : ExponentCode := normalNode10301

theorem canonicalSound20317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20317.moment H = canonicalOutput20317.moment H :=
  canonical_of_padded canonicalInput20317 canonicalOutput20317 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20318 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput20318 : ExponentCode := normalNode10196

theorem canonicalSound20318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20318.moment H = canonicalOutput20318.moment H :=
  canonical_of_padded canonicalInput20318 canonicalOutput20318 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20319 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput20319 : ExponentCode := normalNode10205

theorem canonicalSound20319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20319.moment H = canonicalOutput20319.moment H :=
  canonical_of_padded canonicalInput20319 canonicalOutput20319 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20320 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput20320 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node963⟩

theorem canonicalSound20320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20320.moment H = canonicalOutput20320.moment H :=
  canonical_of_padded canonicalInput20320 canonicalOutput20320 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput20321 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput20321 : ExponentCode := normalNode2315

theorem canonicalSound20321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20321.moment H = canonicalOutput20321.moment H :=
  canonical_of_padded canonicalInput20321 canonicalOutput20321 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20322 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput20322 : ExponentCode := normalNode1695

theorem canonicalSound20322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20322.moment H = canonicalOutput20322.moment H :=
  canonical_of_padded canonicalInput20322 canonicalOutput20322 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20323 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput20323 : ExponentCode := normalNode6992

theorem canonicalSound20323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20323.moment H = canonicalOutput20323.moment H :=
  canonical_of_padded canonicalInput20323 canonicalOutput20323 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20324 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![0, -1, 3, -2]]⟩

def canonicalOutput20324 : ExponentCode := normalNode10308

theorem canonicalSound20324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20324.moment H = canonicalOutput20324.moment H :=
  canonical_of_padded canonicalInput20324 canonicalOutput20324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20325 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput20325 : ExponentCode := normalNode7693

theorem canonicalSound20325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20325.moment H = canonicalOutput20325.moment H :=
  canonical_of_padded canonicalInput20325 canonicalOutput20325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20326 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput20326 : ExponentCode := normalNode1692

theorem canonicalSound20326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20326.moment H = canonicalOutput20326.moment H :=
  canonical_of_padded canonicalInput20326 canonicalOutput20326 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20327 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, -1, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput20327 : ExponentCode := normalNode5013

theorem canonicalSound20327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20327.moment H = canonicalOutput20327.moment H :=
  canonical_of_padded canonicalInput20327 canonicalOutput20327 (by decide) (by decide)
    ⟨false, false, canonicalPermutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20328 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput20328 : ExponentCode := normalNode7694

theorem canonicalSound20328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20328.moment H = canonicalOutput20328.moment H :=
  canonical_of_padded canonicalInput20328 canonicalOutput20328 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20329 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![0, -1, 0, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput20329 : ExponentCode := normalNode8964

theorem canonicalSound20329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20329.moment H = canonicalOutput20329.moment H :=
  canonical_of_padded canonicalInput20329 canonicalOutput20329 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20330 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![0, -1, 2, -1]]⟩

def canonicalOutput20330 : ExponentCode := normalNode10302

theorem canonicalSound20330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20330.moment H = canonicalOutput20330.moment H :=
  canonical_of_padded canonicalInput20330 canonicalOutput20330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20331 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput20331 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1268⟩

theorem canonicalSound20331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20331.moment H = canonicalOutput20331.moment H :=
  canonical_of_padded canonicalInput20331 canonicalOutput20331 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20332 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput20332 : ExponentCode := normalNode7695

theorem canonicalSound20332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20332.moment H = canonicalOutput20332.moment H :=
  canonical_of_padded canonicalInput20332 canonicalOutput20332 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20333 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput20333 : ExponentCode := normalNode2314

theorem canonicalSound20333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20333.moment H = canonicalOutput20333.moment H :=
  canonical_of_padded canonicalInput20333 canonicalOutput20333 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20334 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput20334 : ExponentCode := normalNode1691

theorem canonicalSound20334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20334.moment H = canonicalOutput20334.moment H :=
  canonical_of_padded canonicalInput20334 canonicalOutput20334 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation266, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20335 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput20335 : ExponentCode := normalNode3237

theorem canonicalSound20335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20335.moment H = canonicalOutput20335.moment H :=
  canonical_of_padded canonicalInput20335 canonicalOutput20335 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20336 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput20336 : ExponentCode := normalNode3406

theorem canonicalSound20336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20336.moment H = canonicalOutput20336.moment H :=
  canonical_of_padded canonicalInput20336 canonicalOutput20336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20337 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 0, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput20337 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1252⟩

theorem canonicalSound20337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20337.moment H = canonicalOutput20337.moment H :=
  canonical_of_padded canonicalInput20337 canonicalOutput20337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20338 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput20338 : ExponentCode := normalNode9788

theorem canonicalSound20338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20338.moment H = canonicalOutput20338.moment H :=
  canonical_of_padded canonicalInput20338 canonicalOutput20338 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20339 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput20339 : ExponentCode := normalNode7314

theorem canonicalSound20339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20339.moment H = canonicalOutput20339.moment H :=
  canonical_of_padded canonicalInput20339 canonicalOutput20339 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20340 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput20340 : ExponentCode := normalNode7696

theorem canonicalSound20340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20340.moment H = canonicalOutput20340.moment H :=
  canonical_of_padded canonicalInput20340 canonicalOutput20340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20341 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, -2, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput20341 : ExponentCode := normalNode7315

theorem canonicalSound20341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20341.moment H = canonicalOutput20341.moment H :=
  canonical_of_padded canonicalInput20341 canonicalOutput20341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20342 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput20342 : ExponentCode := normalNode4795

theorem canonicalSound20342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20342.moment H = canonicalOutput20342.moment H :=
  canonical_of_padded canonicalInput20342 canonicalOutput20342 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20343 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-1, -2, 4, -1]]⟩

def canonicalOutput20343 : ExponentCode := normalNode1299

theorem canonicalSound20343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20343.moment H = canonicalOutput20343.moment H :=
  canonical_of_padded canonicalInput20343 canonicalOutput20343 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20344 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, 0, 3, -2], ![0, -2, -1, 3]]⟩

def canonicalOutput20344 : ExponentCode := normalNode3400

theorem canonicalSound20344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20344.moment H = canonicalOutput20344.moment H :=
  canonical_of_padded canonicalInput20344 canonicalOutput20344 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20345 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput20345 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound20345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20345.moment H = canonicalOutput20345.moment H :=
  canonical_of_padded canonicalInput20345 canonicalOutput20345 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20346 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput20346 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1050⟩

theorem canonicalSound20346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20346.moment H = canonicalOutput20346.moment H :=
  canonical_of_padded canonicalInput20346 canonicalOutput20346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20347 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, -2, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput20347 : ExponentCode := normalNode10350

theorem canonicalSound20347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20347.moment H = canonicalOutput20347.moment H :=
  canonical_of_padded canonicalInput20347 canonicalOutput20347 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20348 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput20348 : ExponentCode := normalNode9606

theorem canonicalSound20348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20348.moment H = canonicalOutput20348.moment H :=
  canonical_of_padded canonicalInput20348 canonicalOutput20348 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20349 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput20349 : ExponentCode := normalNode7697

theorem canonicalSound20349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20349.moment H = canonicalOutput20349.moment H :=
  canonical_of_padded canonicalInput20349 canonicalOutput20349 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20350 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput20350 : ExponentCode := normalNode9804

theorem canonicalSound20350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20350.moment H = canonicalOutput20350.moment H :=
  canonical_of_padded canonicalInput20350 canonicalOutput20350 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20351 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput20351 : ExponentCode := normalNode7316

theorem canonicalSound20351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20351.moment H = canonicalOutput20351.moment H :=
  canonical_of_padded canonicalInput20351 canonicalOutput20351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
