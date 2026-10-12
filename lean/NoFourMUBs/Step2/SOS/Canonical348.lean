import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22272 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 1, 1, 0], ![0, 1, -1, 0, 0], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput22272 : ExponentCode := normalNode10895

theorem canonicalSound22272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22272.moment H = canonicalOutput22272.moment H :=
  canonical_of_padded canonicalInput22272 canonicalOutput22272 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22273 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 1, 1, 0], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput22273 : ExponentCode := normalNode4647

theorem canonicalSound22273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22273.moment H = canonicalOutput22273.moment H :=
  canonical_of_padded canonicalInput22273 canonicalOutput22273 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22274 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 1, 1, 0], ![1, 0, -2, 0, 1], ![0, 2, 0, -2, 0]]⟩

def canonicalOutput22274 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound22274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22274.moment H = canonicalOutput22274.moment H :=
  canonical_of_padded canonicalInput22274 canonicalOutput22274 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput22275 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -2, 1, 1, 0], ![1, 1, -1, 0, -1], ![0, 1, -1, -2, 2]]⟩

def canonicalOutput22275 : ExponentCode := normalNode4254

theorem canonicalSound22275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22275.moment H = canonicalOutput22275.moment H :=
  canonical_of_padded canonicalInput22275 canonicalOutput22275 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22276 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, -1, -1, 3], ![0, -1, 1, 1, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput22276 : ExponentCode := normalNode7719

theorem canonicalSound22276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22276.moment H = canonicalOutput22276.moment H :=
  canonical_of_padded canonicalInput22276 canonicalOutput22276 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22277 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, -1, -1, 3], ![1, -1, 1, 1, -2], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput22277 : ExponentCode := normalNode4520

theorem canonicalSound22277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22277.moment H = canonicalOutput22277.moment H :=
  canonical_of_padded canonicalInput22277 canonicalOutput22277 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput22278 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, -1, 0, 2], ![0, 2, 1, -1, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput22278 : ExponentCode := normalNode2461

theorem canonicalSound22278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22278.moment H = canonicalOutput22278.moment H :=
  canonical_of_padded canonicalInput22278 canonicalOutput22278 (by decide) (by decide)
    ⟨true, true, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22279 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, -1, 1, 1], ![-2, 3, -1, 0, 0], ![3, -2, 1, -2, 0]]⟩

def canonicalOutput22279 : ExponentCode := normalNode8878

theorem canonicalSound22279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22279.moment H = canonicalOutput22279.moment H :=
  canonical_of_padded canonicalInput22279 canonicalOutput22279 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22280 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, -1, 1, 1], ![-1, 2, -1, 0, 0], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput22280 : ExponentCode := normalNode4293

theorem canonicalSound22280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22280.moment H = canonicalOutput22280.moment H :=
  canonical_of_padded canonicalInput22280 canonicalOutput22280 (by decide) (by decide)
    ⟨true, true, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22281 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, -1, 1, 1], ![-1, 3, -1, 0, -1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput22281 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1374

theorem canonicalSound22281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22281.moment H = canonicalOutput22281.moment H :=
  canonical_of_padded canonicalInput22281 canonicalOutput22281 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22282 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, -1, 1, 1], ![0, 2, -1, 0, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput22282 : ExponentCode := normalNode4304

theorem canonicalSound22282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22282.moment H = canonicalOutput22282.moment H :=
  canonical_of_padded canonicalInput22282 canonicalOutput22282 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22283 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, -1, 2, 0], ![-1, 2, -1, 0, 0], ![2, -1, 1, -3, 1]]⟩

def canonicalOutput22283 : ExponentCode := normalNode2130

theorem canonicalSound22283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22283.moment H = canonicalOutput22283.moment H :=
  canonical_of_padded canonicalInput22283 canonicalOutput22283 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22284 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, -1, 2, 0], ![0, 2, -1, 0, -1], ![1, -1, 1, -3, 2]]⟩

def canonicalOutput22284 : ExponentCode := normalNode2130

theorem canonicalSound22284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22284.moment H = canonicalOutput22284.moment H :=
  canonical_of_padded canonicalInput22284 canonicalOutput22284 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22285 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, 0, 2, -1], ![-1, 2, -2, 0, 1], ![2, -1, 1, -3, 1]]⟩

def canonicalOutput22285 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code419

theorem canonicalSound22285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22285.moment H = canonicalOutput22285.moment H :=
  canonical_of_padded canonicalInput22285 canonicalOutput22285 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22286 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, 0, 2, -1], ![0, 2, -2, 0, 0], ![1, -1, 1, -3, 2]]⟩

def canonicalOutput22286 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1651⟩

theorem canonicalSound22286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22286.moment H = canonicalOutput22286.moment H :=
  canonical_of_padded canonicalInput22286 canonicalOutput22286 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22287 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, 1, 1, -1], ![0, -1, -2, 1, 2], ![1, 2, 0, -3, 0]]⟩

def canonicalOutput22287 : ExponentCode := normalNode7667

theorem canonicalSound22287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22287.moment H = canonicalOutput22287.moment H :=
  canonical_of_padded canonicalInput22287 canonicalOutput22287 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22288 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 1, -1], ![0, -1, 1, 1, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![1, -1, -2, 0, 2]]⟩

def canonicalOutput22288 : ExponentCode := normalNode7551

theorem canonicalSound22288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22288.moment H = canonicalOutput22288.moment H :=
  canonical_of_padded canonicalInput22288 canonicalOutput22288 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput22289 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, -1, 1, 1, -1], ![1, -1, -2, 1, 1], ![0, 2, 0, -3, 1]]⟩

def canonicalOutput22289 : ExponentCode := normalNode7666

theorem canonicalSound22289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22289.moment H = canonicalOutput22289.moment H :=
  canonical_of_padded canonicalInput22289 canonicalOutput22289 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22290 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 0, -2, 0, 2], ![-1, 2, 1, -2, 0], ![2, -2, 0, 1, -1]]⟩

def canonicalOutput22290 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1166

theorem canonicalSound22290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22290.moment H = canonicalOutput22290.moment H :=
  canonical_of_padded canonicalInput22290 canonicalOutput22290 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22291 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 0, -2, 0, 2], ![0, 0, 1, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput22291 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound22291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22291.moment H = canonicalOutput22291.moment H :=
  canonical_of_padded canonicalInput22291 canonicalOutput22291 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput22292 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 0, -2, 1, 1], ![-1, 2, 0, -2, 1], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput22292 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1161

theorem canonicalSound22292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22292.moment H = canonicalOutput22292.moment H :=
  canonical_of_padded canonicalInput22292 canonicalOutput22292 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22293 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 0, -2, 1, 1], ![-1, 2, 0, 0, -1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput22293 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code874

theorem canonicalSound22293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22293.moment H = canonicalOutput22293.moment H :=
  canonical_of_padded canonicalInput22293 canonicalOutput22293 (by decide) (by decide)
    ⟨true, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22294 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 0, -2, 1, 1], ![0, 2, 0, -2, 0], ![1, -2, 1, 0, 0]]⟩

def canonicalOutput22294 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound22294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22294.moment H = canonicalOutput22294.moment H :=
  canonical_of_padded canonicalInput22294 canonicalOutput22294 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput22295 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 0, -2, 1, 1], ![0, 2, 0, 0, -2], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput22295 : ExponentCode := normalNode2390

theorem canonicalSound22295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22295.moment H = canonicalOutput22295.moment H :=
  canonical_of_padded canonicalInput22295 canonicalOutput22295 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22296 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 0, -1, 2, -1], ![-1, 2, -1, -1, 1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput22296 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code574

theorem canonicalSound22296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22296.moment H = canonicalOutput22296.moment H :=
  canonical_of_padded canonicalInput22296 canonicalOutput22296 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22297 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 0, -1, 2, -1], ![0, 2, -1, -1, 0], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput22297 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1759⟩

theorem canonicalSound22297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22297.moment H = canonicalOutput22297.moment H :=
  canonical_of_padded canonicalInput22297 canonicalOutput22297 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22298 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 1, -1], ![0, 0, 0, 1, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![1, -2, -1, 0, 2]]⟩

def canonicalOutput22298 : ExponentCode := normalNode7592

theorem canonicalSound22298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22298.moment H = canonicalOutput22298.moment H :=
  canonical_of_padded canonicalInput22298 canonicalOutput22298 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput22299 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 0, 0, -1, 1], ![0, 1, 0, 0, -1], ![1, -1, -2, 0, 2]]⟩

def canonicalOutput22299 : ExponentCode := normalNode9185

theorem canonicalSound22299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22299.moment H = canonicalOutput22299.moment H :=
  canonical_of_padded canonicalInput22299 canonicalOutput22299 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput22300 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![0, 1, 0, -1, 0], ![1, -2, 0, 0, 1]]⟩

def canonicalOutput22300 : ExponentCode := normalNode10072

theorem canonicalSound22300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22300.moment H = canonicalOutput22300.moment H :=
  canonical_of_padded canonicalInput22300 canonicalOutput22300 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation173⟩ (by decide +kernel) hH

def canonicalInput22301 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![0, 1, 0, 0, -1], ![1, -2, 0, -1, 2]]⟩

def canonicalOutput22301 : ExponentCode := normalNode7592

theorem canonicalSound22301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22301.moment H = canonicalOutput22301.moment H :=
  canonical_of_padded canonicalInput22301 canonicalOutput22301 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput22302 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, -1, 0], ![1, -2, 0, -1, 2]]⟩

def canonicalOutput22302 : ExponentCode := normalNode10096

theorem canonicalSound22302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22302.moment H = canonicalOutput22302.moment H :=
  canonical_of_padded canonicalInput22302 canonicalOutput22302 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput22303 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 1, -1, -1, 1], ![0, 1, 0, 0, -1], ![1, -2, -1, 0, 2]]⟩

def canonicalOutput22303 : ExponentCode := normalNode7591

theorem canonicalSound22303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22303.moment H = canonicalOutput22303.moment H :=
  canonical_of_padded canonicalInput22303 canonicalOutput22303 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput22304 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 0, 0, 1, -1], ![1, -1, -2, 0, 2]]⟩

def canonicalOutput22304 : ExponentCode := normalNode7589

theorem canonicalSound22304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22304.moment H = canonicalOutput22304.moment H :=
  canonical_of_padded canonicalInput22304 canonicalOutput22304 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput22305 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, -1, 1, -1], ![1, -2, -1, 0, 2]]⟩

def canonicalOutput22305 : ExponentCode := normalNode7547

theorem canonicalSound22305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22305.moment H = canonicalOutput22305.moment H :=
  canonical_of_padded canonicalInput22305 canonicalOutput22305 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput22306 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 1, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 0, -1], ![1, -2, -2, 1, 2]]⟩

def canonicalOutput22306 : ExponentCode := normalNode7590

theorem canonicalSound22306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22306.moment H = canonicalOutput22306.moment H :=
  canonical_of_padded canonicalInput22306 canonicalOutput22306 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput22307 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 1, -1], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![0, 1, 0, -1, 0], ![1, -2, 0, -1, 2]]⟩

def canonicalOutput22307 : ExponentCode := normalNode8212

theorem canonicalSound22307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22307.moment H = canonicalOutput22307.moment H :=
  canonical_of_padded canonicalInput22307 canonicalOutput22307 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput22308 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -3, 1, 1], ![-1, 2, 1, -2, 0], ![2, -3, 1, 0, 0]]⟩

def canonicalOutput22308 : ExponentCode := normalNode7746

theorem canonicalSound22308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22308.moment H = canonicalOutput22308.moment H :=
  canonical_of_padded canonicalInput22308 canonicalOutput22308 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput22309 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -3, 1, 1], ![0, 2, 1, -2, -1], ![1, -3, 1, 0, 1]]⟩

def canonicalOutput22309 : ExponentCode := normalNode7747

theorem canonicalSound22309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22309.moment H = canonicalOutput22309.moment H :=
  canonical_of_padded canonicalInput22309 canonicalOutput22309 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput22310 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -2, 1, 0], ![-1, -3, 1, 1, 2], ![2, 2, 0, -3, -1]]⟩

def canonicalOutput22310 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1159

theorem canonicalSound22310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22310.moment H = canonicalOutput22310.moment H :=
  canonical_of_padded canonicalInput22310 canonicalOutput22310 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22311 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -2, 1, 0], ![-1, 1, 0, -2, 2], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput22311 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound22311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22311.moment H = canonicalOutput22311.moment H :=
  canonical_of_padded canonicalInput22311 canonicalOutput22311 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22312 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -2, 1, 0], ![-1, 1, 1, -3, 2], ![2, -2, 0, 1, -1]]⟩

def canonicalOutput22312 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1157

theorem canonicalSound22312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22312.moment H = canonicalOutput22312.moment H :=
  canonical_of_padded canonicalInput22312 canonicalOutput22312 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22313 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -2, 1, 0], ![0, -3, 1, 1, 1], ![1, 2, 0, -3, 0]]⟩

def canonicalOutput22313 : ExponentCode := normalNode5322

theorem canonicalSound22313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22313.moment H = canonicalOutput22313.moment H :=
  canonical_of_padded canonicalInput22313 canonicalOutput22313 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22314 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -2, 1, 0], ![0, 1, 0, -2, 1], ![1, -2, 1, 0, 0]]⟩

def canonicalOutput22314 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound22314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22314.moment H = canonicalOutput22314.moment H :=
  canonical_of_padded canonicalInput22314 canonicalOutput22314 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput22315 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![1, -2, 0, 1, 0]]⟩

def canonicalOutput22315 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound22315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22315.moment H = canonicalOutput22315.moment H :=
  canonical_of_padded canonicalInput22315 canonicalOutput22315 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput22316 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -1, 1, -1], ![-1, -3, 1, 1, 2], ![2, 2, -1, -3, 0]]⟩

def canonicalOutput22316 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1348

theorem canonicalSound22316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22316.moment H = canonicalOutput22316.moment H :=
  canonical_of_padded canonicalInput22316 canonicalOutput22316 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22317 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -1, 1, -1], ![-1, 1, 1, -3, 2], ![2, -2, -1, 1, 0]]⟩

def canonicalOutput22317 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1343

theorem canonicalSound22317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22317.moment H = canonicalOutput22317.moment H :=
  canonical_of_padded canonicalInput22317 canonicalOutput22317 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22318 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -1, 1, -1], ![0, -3, 1, 1, 1], ![1, 2, -1, -3, 1]]⟩

def canonicalOutput22318 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2518⟩

theorem canonicalSound22318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22318.moment H = canonicalOutput22318.moment H :=
  canonical_of_padded canonicalInput22318 canonicalOutput22318 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22319 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -1, 1, -1], ![0, -2, 1, 0, 1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput22319 : ExponentCode := normalNode4396

theorem canonicalSound22319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22319.moment H = canonicalOutput22319.moment H :=
  canonical_of_padded canonicalInput22319 canonicalOutput22319 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22320 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -1, 1, -1], ![0, 1, -1, -1, 1], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput22320 : ExponentCode := normalNode8863

theorem canonicalSound22320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22320.moment H = canonicalOutput22320.moment H :=
  canonical_of_padded canonicalInput22320 canonicalOutput22320 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput22321 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -1, 1, -1], ![0, 1, 1, -3, 1], ![1, -2, -1, 1, 1]]⟩

def canonicalOutput22321 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2513⟩

theorem canonicalSound22321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22321.moment H = canonicalOutput22321.moment H :=
  canonical_of_padded canonicalInput22321 canonicalOutput22321 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22322 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -1, 1, -1], ![1, -2, 1, 0, 0], ![0, 1, -1, -2, 2]]⟩

def canonicalOutput22322 : ExponentCode := normalNode4307

theorem canonicalSound22322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22322.moment H = canonicalOutput22322.moment H :=
  canonical_of_padded canonicalInput22322 canonicalOutput22322 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput22323 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 1, -1, 1, -1], ![1, 1, -1, -1, 0], ![0, -2, 1, -1, 2]]⟩

def canonicalOutput22323 : ExponentCode := normalNode8825

theorem canonicalSound22323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22323.moment H = canonicalOutput22323.moment H :=
  canonical_of_padded canonicalInput22323 canonicalOutput22323 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22324 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -3, 1, 0], ![0, -2, 1, 1, 0], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput22324 : ExponentCode := normalNode3912

theorem canonicalSound22324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22324.moment H = canonicalOutput22324.moment H :=
  canonical_of_padded canonicalInput22324 canonicalOutput22324 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput22325 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -3, 1, 0], ![1, -2, 1, 1, -1], ![0, 0, 1, -3, 2]]⟩

def canonicalOutput22325 : ExponentCode := normalNode7688

theorem canonicalSound22325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22325.moment H = canonicalOutput22325.moment H :=
  canonical_of_padded canonicalInput22325 canonicalOutput22325 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22326 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -2, 0, 0], ![-2, -2, 1, 1, 2], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput22326 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code881

theorem canonicalSound22326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22326.moment H = canonicalOutput22326.moment H :=
  canonical_of_padded canonicalInput22326 canonicalOutput22326 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22327 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -2, 0, 0], ![-1, -3, 1, 1, 2], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput22327 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code771

theorem canonicalSound22327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22327.moment H = canonicalOutput22327.moment H :=
  canonical_of_padded canonicalInput22327 canonicalOutput22327 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22328 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -2, 0, 0], ![-1, -2, 1, 1, 1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput22328 : ExponentCode := normalNode3753

theorem canonicalSound22328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22328.moment H = canonicalOutput22328.moment H :=
  canonical_of_padded canonicalInput22328 canonicalOutput22328 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22329 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -2, 0, 0], ![0, -3, 1, 1, 1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput22329 : ExponentCode := normalNode1778

theorem canonicalSound22329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22329.moment H = canonicalOutput22329.moment H :=
  canonical_of_padded canonicalInput22329 canonicalOutput22329 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22330 : ExponentCode := ⟨3, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -2, 1, -1], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput22330 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1136⟩

theorem canonicalSound22330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22330.moment H = canonicalOutput22330.moment H :=
  canonical_of_padded canonicalInput22330 canonicalOutput22330 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22331 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -1, -1, 0], ![-1, -1, -1, 3, 0], ![2, -1, 1, -3, 1]]⟩

def canonicalOutput22331 : ExponentCode := normalNode4559

theorem canonicalSound22331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22331.moment H = canonicalOutput22331.moment H :=
  canonical_of_padded canonicalInput22331 canonicalOutput22331 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22332 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -1, -1, 0], ![0, -1, -1, 3, -1], ![1, -1, 1, -3, 2]]⟩

def canonicalOutput22332 : ExponentCode := normalNode4559

theorem canonicalSound22332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22332.moment H = canonicalOutput22332.moment H :=
  canonical_of_padded canonicalInput22332 canonicalOutput22332 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22333 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -1, 0, -1], ![-1, -3, 1, 1, 2], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput22333 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code772

theorem canonicalSound22333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22333.moment H = canonicalOutput22333.moment H :=
  canonical_of_padded canonicalInput22333 canonicalOutput22333 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22334 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -1, 0, -1], ![-1, 1, 1, -3, 2], ![2, -3, -1, 2, 0]]⟩

def canonicalOutput22334 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code779

theorem canonicalSound22334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22334.moment H = canonicalOutput22334.moment H :=
  canonical_of_padded canonicalInput22334 canonicalOutput22334 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22335 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -1, 0, -1], ![0, -3, 1, 1, 1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput22335 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1942⟩

theorem canonicalSound22335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22335.moment H = canonicalOutput22335.moment H :=
  canonical_of_padded canonicalInput22335 canonicalOutput22335 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
