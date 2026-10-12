import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22336 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -1, 0, -1], ![0, 1, 1, -3, 1], ![1, -3, -1, 2, 1]]⟩

def canonicalOutput22336 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1947⟩

theorem canonicalSound22336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22336.moment H = canonicalOutput22336.moment H :=
  canonical_of_padded canonicalInput22336 canonicalOutput22336 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22337 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, -3, 1, 1, 0], ![0, 1, -1, -2, 2]]⟩

def canonicalOutput22337 : ExponentCode := normalNode3519

theorem canonicalSound22337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22337.moment H = canonicalOutput22337.moment H :=
  canonical_of_padded canonicalInput22337 canonicalOutput22337 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22338 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, 0, 0, -2], ![-1, -1, -2, 1, 3], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput22338 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code416

theorem canonicalSound22338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22338.moment H = canonicalOutput22338.moment H :=
  canonical_of_padded canonicalInput22338 canonicalOutput22338 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22339 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![0, 2, 0, 0, -2], ![0, -1, -2, 1, 2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput22339 : ExponentCode := normalNode2493

theorem canonicalSound22339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22339.moment H = canonicalOutput22339.moment H :=
  canonical_of_padded canonicalInput22339 canonicalOutput22339 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22340 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![1, -2, 0, 0, 1], ![-2, 1, -2, 1, 2], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput22340 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1008

theorem canonicalSound22340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22340.moment H = canonicalOutput22340.moment H :=
  canonical_of_padded canonicalInput22340 canonicalOutput22340 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22341 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![1, -2, 0, 0, 1], ![-2, 2, -2, 1, 1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput22341 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code915

theorem canonicalSound22341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22341.moment H = canonicalOutput22341.moment H :=
  canonical_of_padded canonicalInput22341 canonicalOutput22341 (by decide) (by decide)
    ⟨true, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22342 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![1, -2, 0, 0, 1], ![-1, 1, -2, 1, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput22342 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1009

theorem canonicalSound22342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22342.moment H = canonicalOutput22342.moment H :=
  canonical_of_padded canonicalInput22342 canonicalOutput22342 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22343 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![1, -2, 0, 0, 1], ![-1, 2, -2, 1, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput22343 : ExponentCode := normalNode3784

theorem canonicalSound22343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22343.moment H = canonicalOutput22343.moment H :=
  canonical_of_padded canonicalInput22343 canonicalOutput22343 (by decide) (by decide)
    ⟨true, false, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22344 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![1, -2, 0, 1, 0], ![-3, 1, 1, -1, 2], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput22344 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code970

theorem canonicalSound22344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22344.moment H = canonicalOutput22344.moment H :=
  canonical_of_padded canonicalInput22344 canonicalOutput22344 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22345 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![1, -2, 0, 1, 0], ![-2, 1, 1, -1, 1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput22345 : ExponentCode := normalNode4386

theorem canonicalSound22345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22345.moment H = canonicalOutput22345.moment H :=
  canonical_of_padded canonicalInput22345 canonicalOutput22345 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22346 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![1, -2, 0, 1, 0], ![-2, 2, -2, 0, 2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput22346 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code879

theorem canonicalSound22346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22346.moment H = canonicalOutput22346.moment H :=
  canonical_of_padded canonicalInput22346 canonicalOutput22346 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22347 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![1, -2, 0, 1, 0], ![-1, 2, -2, 0, 1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput22347 : ExponentCode := normalNode3901

theorem canonicalSound22347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22347.moment H = canonicalOutput22347.moment H :=
  canonical_of_padded canonicalInput22347 canonicalOutput22347 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22348 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![1, 0, -2, 0, 1], ![-2, 2, 1, -2, 1], ![2, -2, 0, 1, -1]]⟩

def canonicalOutput22348 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1192

theorem canonicalSound22348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22348.moment H = canonicalOutput22348.moment H :=
  canonical_of_padded canonicalInput22348 canonicalOutput22348 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22349 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![1, 0, -2, 0, 1], ![-1, 2, 1, -2, 0], ![1, -2, 0, 1, 0]]⟩

def canonicalOutput22349 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound22349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22349.moment H = canonicalOutput22349.moment H :=
  canonical_of_padded canonicalInput22349 canonicalOutput22349 (by decide) (by decide)
    ⟨true, false, canonicalPermutation47, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput22350 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![1, 0, -2, 0, 1], ![0, -3, 1, 1, 1], ![0, 3, 0, -2, -1]]⟩

def canonicalOutput22350 : ExponentCode := normalNode5543

theorem canonicalSound22350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22350.moment H = canonicalOutput22350.moment H :=
  canonical_of_padded canonicalInput22350 canonicalOutput22350 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22351 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![2, -2, 0, 0, 0], ![-2, 1, -2, 1, 2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput22351 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code968

theorem canonicalSound22351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22351.moment H = canonicalOutput22351.moment H :=
  canonical_of_padded canonicalInput22351 canonicalOutput22351 (by decide) (by decide)
    ⟨true, false, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22352 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![2, -2, 0, 0, 0], ![-1, 1, -2, 1, 1], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput22352 : ExponentCode := normalNode4269

theorem canonicalSound22352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22352.moment H = canonicalOutput22352.moment H :=
  canonical_of_padded canonicalInput22352 canonicalOutput22352 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22353 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![2, -1, -1, 0, 0], ![-1, -2, 1, 1, 1], ![0, 3, -1, -2, 0]]⟩

def canonicalOutput22353 : ExponentCode := normalNode5434

theorem canonicalSound22353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22353.moment H = canonicalOutput22353.moment H :=
  canonical_of_padded canonicalInput22353 canonicalOutput22353 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22354 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![2, 0, -2, 0, 0], ![-1, -3, 1, 1, 2], ![0, 3, 0, -2, -1]]⟩

def canonicalOutput22354 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1162

theorem canonicalSound22354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22354.moment H = canonicalOutput22354.moment H :=
  canonical_of_padded canonicalInput22354 canonicalOutput22354 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22355 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 1, -1], ![2, 0, -2, 0, 0], ![0, -3, 1, 1, 1], ![-1, 3, 0, -2, 0]]⟩

def canonicalOutput22355 : ExponentCode := normalNode5302

theorem canonicalSound22355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22355.moment H = canonicalOutput22355.moment H :=
  canonical_of_padded canonicalInput22355 canonicalOutput22355 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22356 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 2, -2], ![0, 0, -2, 0, 2], ![0, 1, 0, -2, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput22356 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1743⟩

theorem canonicalSound22356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22356.moment H = canonicalOutput22356.moment H :=
  canonical_of_padded canonicalInput22356 canonicalOutput22356 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22357 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, 2, -2], ![0, 0, 0, -2, 2], ![0, 1, -2, 0, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput22357 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1742⟩

theorem canonicalSound22357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22357.moment H = canonicalOutput22357.moment H :=
  canonical_of_padded canonicalInput22357 canonicalOutput22357 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22358 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, 2, -2], ![0, 0, 1, 0, -1], ![0, 1, -2, 0, 1], ![0, 1, 0, -1, 0], ![1, -2, 0, -1, 2]]⟩

def canonicalOutput22358 : ExponentCode := normalNode10104

theorem canonicalSound22358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22358.moment H = canonicalOutput22358.moment H :=
  canonical_of_padded canonicalInput22358 canonicalOutput22358 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput22359 : ExponentCode := ⟨3, 5, ![![-1, 0, 1, 2, -2], ![0, 2, -3, 0, 1], ![1, -2, 2, -2, 1]]⟩

def canonicalOutput22359 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node367⟩

theorem canonicalSound22359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22359.moment H = canonicalOutput22359.moment H :=
  canonical_of_padded canonicalInput22359 canonicalOutput22359 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22360 : ExponentCode := ⟨3, 5, ![![-1, 0, 1, 2, -2], ![0, 2, -2, 0, 0], ![1, -2, 1, -2, 2]]⟩

def canonicalOutput22360 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩

theorem canonicalSound22360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22360.moment H = canonicalOutput22360.moment H :=
  canonical_of_padded canonicalInput22360 canonicalOutput22360 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22361 : ExponentCode := ⟨3, 5, ![![-1, 0, 1, 2, -2], ![1, -2, 1, 0, 0], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput22361 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node647⟩

theorem canonicalSound22361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22361.moment H = canonicalOutput22361.moment H :=
  canonical_of_padded canonicalInput22361 canonicalOutput22361 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22362 : ExponentCode := ⟨3, 5, ![![-1, 0, 1, 2, -2], ![1, 2, -3, 0, 0], ![0, -2, 2, -2, 2]]⟩

def canonicalOutput22362 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node357⟩

theorem canonicalSound22362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22362.moment H = canonicalOutput22362.moment H :=
  canonical_of_padded canonicalInput22362 canonicalOutput22362 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22363 : ExponentCode := ⟨3, 5, ![![-1, 0, 1, 2, -2], ![1, 2, -2, 0, -1], ![0, -2, 1, -2, 3]]⟩

def canonicalOutput22363 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node533⟩

theorem canonicalSound22363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22363.moment H = canonicalOutput22363.moment H :=
  canonical_of_padded canonicalInput22363 canonicalOutput22363 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22364 : ExponentCode := ⟨3, 5, ![![-1, 0, 1, 2, -2], ![2, -2, 1, 0, -1], ![-1, 2, -2, -2, 3]]⟩

def canonicalOutput22364 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node534⟩

theorem canonicalSound22364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22364.moment H = canonicalOutput22364.moment H :=
  canonical_of_padded canonicalInput22364 canonicalOutput22364 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22365 : ExponentCode := ⟨4, 5, ![![-1, 0, 2, -3, 2], ![0, 0, 0, 2, -2], ![0, 1, -2, 0, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput22365 : ExponentCode := normalNode1717

theorem canonicalSound22365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22365.moment H = canonicalOutput22365.moment H :=
  canonical_of_padded canonicalInput22365 canonicalOutput22365 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22366 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-4, 2, -1, 3], ![5, -2, -1, -2]]⟩

def canonicalOutput22366 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1222

theorem canonicalSound22366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22366.moment H = canonicalOutput22366.moment H :=
  canonical_of_padded canonicalInput22366 canonicalOutput22366 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22367 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-4, 2, 0, 2], ![5, -2, -2, -1]]⟩

def canonicalOutput22367 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node200⟩

theorem canonicalSound22367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22367.moment H = canonicalOutput22367.moment H :=
  canonical_of_padded canonicalInput22367 canonicalOutput22367 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22368 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-4, 2, 1, 1], ![5, -2, -3, 0]]⟩

def canonicalOutput22368 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node165⟩

theorem canonicalSound22368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22368.moment H = canonicalOutput22368.moment H :=
  canonical_of_padded canonicalInput22368 canonicalOutput22368 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22369 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-4, 3, -1, 2], ![5, -3, -1, -1]]⟩

def canonicalOutput22369 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1218

theorem canonicalSound22369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22369.moment H = canonicalOutput22369.moment H :=
  canonical_of_padded canonicalInput22369 canonicalOutput22369 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22370 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-3, 2, 1, 0], ![4, -2, -3, 1]]⟩

def canonicalOutput22370 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node166⟩

theorem canonicalSound22370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22370.moment H = canonicalOutput22370.moment H :=
  canonical_of_padded canonicalInput22370 canonicalOutput22370 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22371 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-3, 3, -2, 2], ![4, -3, 0, -1]]⟩

def canonicalOutput22371 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩

theorem canonicalSound22371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22371.moment H = canonicalOutput22371.moment H :=
  canonical_of_padded canonicalInput22371 canonicalOutput22371 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22372 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-3, 4, -1, 0], ![4, -4, -1, 1]]⟩

def canonicalOutput22372 : ExponentCode := normalNode5583

theorem canonicalSound22372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22372.moment H = canonicalOutput22372.moment H :=
  canonical_of_padded canonicalInput22372 canonicalOutput22372 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22373 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-2, -2, 0, 4], ![3, 2, -2, -3]]⟩

def canonicalOutput22373 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node211⟩

theorem canonicalSound22373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22373.moment H = canonicalOutput22373.moment H :=
  canonical_of_padded canonicalInput22373 canonicalOutput22373 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22374 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-2, -2, 1, 3], ![3, 2, -3, -2]]⟩

def canonicalOutput22374 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node183⟩

theorem canonicalSound22374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22374.moment H = canonicalOutput22374.moment H :=
  canonical_of_padded canonicalInput22374 canonicalOutput22374 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22375 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-2, -2, 2, 2], ![3, 2, -4, -1]]⟩

def canonicalOutput22375 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node152⟩

theorem canonicalSound22375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22375.moment H = canonicalOutput22375.moment H :=
  canonical_of_padded canonicalInput22375 canonicalOutput22375 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22376 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-2, 2, -3, 3], ![3, -2, 1, -2]]⟩

def canonicalOutput22376 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node183⟩

theorem canonicalSound22376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22376.moment H = canonicalOutput22376.moment H :=
  canonical_of_padded canonicalInput22376 canonicalOutput22376 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22377 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-2, 2, 1, -1], ![3, -2, -3, 2]]⟩

def canonicalOutput22377 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node167⟩

theorem canonicalSound22377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22377.moment H = canonicalOutput22377.moment H :=
  canonical_of_padded canonicalInput22377 canonicalOutput22377 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22378 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-2, 3, -3, 2], ![3, -3, 1, -1]]⟩

def canonicalOutput22378 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound22378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22378.moment H = canonicalOutput22378.moment H :=
  canonical_of_padded canonicalInput22378 canonicalOutput22378 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22379 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-2, 3, -2, 1], ![3, -3, 0, 0]]⟩

def canonicalOutput22379 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩

theorem canonicalSound22379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22379.moment H = canonicalOutput22379.moment H :=
  canonical_of_padded canonicalInput22379 canonicalOutput22379 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22380 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-2, 3, 0, -1], ![3, -3, -2, 2]]⟩

def canonicalOutput22380 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node196⟩

theorem canonicalSound22380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22380.moment H = canonicalOutput22380.moment H :=
  canonical_of_padded canonicalInput22380 canonicalOutput22380 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22381 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-1, -3, -1, 5], ![2, 3, -1, -4]]⟩

def canonicalOutput22381 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1218

theorem canonicalSound22381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22381.moment H = canonicalOutput22381.moment H :=
  canonical_of_padded canonicalInput22381 canonicalOutput22381 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22382 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-1, -3, 1, 3], ![2, 3, -3, -2]]⟩

def canonicalOutput22382 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound22382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22382.moment H = canonicalOutput22382.moment H :=
  canonical_of_padded canonicalInput22382 canonicalOutput22382 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22383 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-1, -3, 3, 1], ![2, 3, -5, 0]]⟩

def canonicalOutput22383 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node128⟩

theorem canonicalSound22383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22383.moment H = canonicalOutput22383.moment H :=
  canonical_of_padded canonicalInput22383 canonicalOutput22383 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22384 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-1, 3, -3, 1], ![2, -3, 1, 0]]⟩

def canonicalOutput22384 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node187⟩

theorem canonicalSound22384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22384.moment H = canonicalOutput22384.moment H :=
  canonical_of_padded canonicalInput22384 canonicalOutput22384 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22385 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-1, 4, -2, -1], ![2, -4, 0, 2]]⟩

def canonicalOutput22385 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node218⟩

theorem canonicalSound22385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22385.moment H = canonicalOutput22385.moment H :=
  canonical_of_padded canonicalInput22385 canonicalOutput22385 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22386 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![-1, 4, -1, -2], ![2, -4, -1, 3]]⟩

def canonicalOutput22386 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node219⟩

theorem canonicalSound22386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22386.moment H = canonicalOutput22386.moment H :=
  canonical_of_padded canonicalInput22386 canonicalOutput22386 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22387 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![0, -4, 2, 2], ![1, 4, -4, -1]]⟩

def canonicalOutput22387 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node156⟩

theorem canonicalSound22387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22387.moment H = canonicalOutput22387.moment H :=
  canonical_of_padded canonicalInput22387 canonicalOutput22387 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22388 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![0, -3, -1, 4], ![1, 3, -1, -3]]⟩

def canonicalOutput22388 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound22388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22388.moment H = canonicalOutput22388.moment H :=
  canonical_of_padded canonicalInput22388 canonicalOutput22388 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22389 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, -3, 0, 3], ![0, 1, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput22389 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1226⟩

theorem canonicalSound22389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22389.moment H = canonicalOutput22389.moment H :=
  canonical_of_padded canonicalInput22389 canonicalOutput22389 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22390 : ExponentCode := ⟨3, 4, ![![-1, 0, 2, -1], ![0, -3, 3, 0], ![1, 3, -5, 1]]⟩

def canonicalOutput22390 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node129⟩

theorem canonicalSound22390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22390.moment H = canonicalOutput22390.moment H :=
  canonical_of_padded canonicalInput22390 canonicalOutput22390 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22391 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, -2, -1, 3], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput22391 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node947⟩

theorem canonicalSound22391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22391.moment H = canonicalOutput22391.moment H :=
  canonical_of_padded canonicalInput22391 canonicalOutput22391 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22392 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, -2, 0, 2], ![0, -1, -1, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput22392 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩

theorem canonicalSound22392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22392.moment H = canonicalOutput22392.moment H :=
  canonical_of_padded canonicalInput22392 canonicalOutput22392 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22393 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, -2, 0, 2], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput22393 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node953⟩

theorem canonicalSound22393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22393.moment H = canonicalOutput22393.moment H :=
  canonical_of_padded canonicalInput22393 canonicalOutput22393 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22394 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, -2, 0, 2], ![0, 1, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput22394 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound22394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22394.moment H = canonicalOutput22394.moment H :=
  canonical_of_padded canonicalInput22394 canonicalOutput22394 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22395 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, -1, -3, 4], ![0, 1, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput22395 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1171⟩

theorem canonicalSound22395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22395.moment H = canonicalOutput22395.moment H :=
  canonical_of_padded canonicalInput22395 canonicalOutput22395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22396 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, -1, -2, 3], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput22396 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩

theorem canonicalSound22396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22396.moment H = canonicalOutput22396.moment H :=
  canonical_of_padded canonicalInput22396 canonicalOutput22396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22397 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, -1, -1, 2], ![0, 0, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput22397 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩

theorem canonicalSound22397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22397.moment H = canonicalOutput22397.moment H :=
  canonical_of_padded canonicalInput22397 canonicalOutput22397 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22398 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput22398 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1245⟩

theorem canonicalSound22398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22398.moment H = canonicalOutput22398.moment H :=
  canonical_of_padded canonicalInput22398 canonicalOutput22398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22399 : ExponentCode := ⟨4, 4, ![![-1, 0, 2, -1], ![0, -1, -1, 2], ![1, -1, -2, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput22399 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1310⟩

theorem canonicalSound22399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22399.moment H = canonicalOutput22399.moment H :=
  canonical_of_padded canonicalInput22399 canonicalOutput22399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
