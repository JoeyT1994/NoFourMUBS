import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17344 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, -2, 2], ![0, 0, 0, 0]]⟩

def canonicalOutput17344 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1082⟩

theorem canonicalSound17344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17344.moment H = canonicalOutput17344.moment H :=
  canonical_of_padded canonicalInput17344 canonicalOutput17344 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17345 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, -1, 1], ![0, 0, -1, 1]]⟩

def canonicalOutput17345 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2606⟩

theorem canonicalSound17345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17345.moment H = canonicalOutput17345.moment H :=
  canonical_of_padded canonicalInput17345 canonicalOutput17345 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17346 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![0, 2, 2, -4], ![1, -2, -1, 2]]⟩

def canonicalOutput17346 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1243⟩

theorem canonicalSound17346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17346.moment H = canonicalOutput17346.moment H :=
  canonical_of_padded canonicalInput17346 canonicalOutput17346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17347 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput17347 : ExponentCode := normalNode6846

theorem canonicalSound17347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17347.moment H = canonicalOutput17347.moment H :=
  canonical_of_padded canonicalInput17347 canonicalOutput17347 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17348 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput17348 : ExponentCode := normalNode8848

theorem canonicalSound17348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17348.moment H = canonicalOutput17348.moment H :=
  canonical_of_padded canonicalInput17348 canonicalOutput17348 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17349 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, -1, 3, -3], ![0, 1, -2, 1]]⟩

def canonicalOutput17349 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node797⟩

theorem canonicalSound17349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17349.moment H = canonicalOutput17349.moment H :=
  canonical_of_padded canonicalInput17349 canonicalOutput17349 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17350 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, -1, 0], ![1, -1, 4, -4], ![0, 1, -3, 2]]⟩

def canonicalOutput17350 : ExponentCode := normalNode9678

theorem canonicalSound17350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17350.moment H = canonicalOutput17350.moment H :=
  canonical_of_padded canonicalInput17350 canonicalOutput17350 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17351 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput17351 : ExponentCode := normalNode8877

theorem canonicalSound17351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17351.moment H = canonicalOutput17351.moment H :=
  canonical_of_padded canonicalInput17351 canonicalOutput17351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17352 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput17352 : ExponentCode := normalNode8841

theorem canonicalSound17352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17352.moment H = canonicalOutput17352.moment H :=
  canonical_of_padded canonicalInput17352 canonicalOutput17352 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17353 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput17353 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1053⟩

theorem canonicalSound17353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17353.moment H = canonicalOutput17353.moment H :=
  canonical_of_padded canonicalInput17353 canonicalOutput17353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17354 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput17354 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩

theorem canonicalSound17354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17354.moment H = canonicalOutput17354.moment H :=
  canonical_of_padded canonicalInput17354 canonicalOutput17354 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17355 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 1, -3, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput17355 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1072⟩

theorem canonicalSound17355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17355.moment H = canonicalOutput17355.moment H :=
  canonical_of_padded canonicalInput17355 canonicalOutput17355 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17356 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 1, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput17356 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound17356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17356.moment H = canonicalOutput17356.moment H :=
  canonical_of_padded canonicalInput17356 canonicalOutput17356 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17357 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, 3, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput17357 : ExponentCode := normalNode9032

theorem canonicalSound17357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17357.moment H = canonicalOutput17357.moment H :=
  canonical_of_padded canonicalInput17357 canonicalOutput17357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17358 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 0, -3, 3]]⟩

def canonicalOutput17358 : ExponentCode := normalNode9050

theorem canonicalSound17358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17358.moment H = canonicalOutput17358.moment H :=
  canonical_of_padded canonicalInput17358 canonicalOutput17358 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17359 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput17359 : ExponentCode := normalNode7264

theorem canonicalSound17359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17359.moment H = canonicalOutput17359.moment H :=
  canonical_of_padded canonicalInput17359 canonicalOutput17359 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17360 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, -1, -2, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput17360 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2574⟩

theorem canonicalSound17360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17360.moment H = canonicalOutput17360.moment H :=
  canonical_of_padded canonicalInput17360 canonicalOutput17360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17361 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, -3, 3], ![0, 0, 1, -1]]⟩

def canonicalOutput17361 : ExponentCode := normalNode9102

theorem canonicalSound17361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17361.moment H = canonicalOutput17361.moment H :=
  canonical_of_padded canonicalInput17361 canonicalOutput17361 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17362 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput17362 : ExponentCode := normalNode8793

theorem canonicalSound17362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17362.moment H = canonicalOutput17362.moment H :=
  canonical_of_padded canonicalInput17362 canonicalOutput17362 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17363 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, -3, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput17363 : ExponentCode := normalNode8836

theorem canonicalSound17363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17363.moment H = canonicalOutput17363.moment H :=
  canonical_of_padded canonicalInput17363 canonicalOutput17363 (by decide) (by decide)
    ⟨false, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17364 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 1, -3, 2]]⟩

def canonicalOutput17364 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1072⟩

theorem canonicalSound17364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17364.moment H = canonicalOutput17364.moment H :=
  canonical_of_padded canonicalInput17364 canonicalOutput17364 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17365 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![2, 0, -2, 0], ![-2, 2, 2, -2]]⟩

def canonicalOutput17365 : ExponentCode := normalNode725

theorem canonicalSound17365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17365.moment H = canonicalOutput17365.moment H :=
  canonical_of_padded canonicalInput17365 canonicalOutput17365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation342, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput17366 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 1, -2], ![0, -1, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput17366 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound17366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17366.moment H = canonicalOutput17366.moment H :=
  canonical_of_padded canonicalInput17366 canonicalOutput17366 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17367 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 1, -2], ![0, 1, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput17367 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound17367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17367.moment H = canonicalOutput17367.moment H :=
  canonical_of_padded canonicalInput17367 canonicalOutput17367 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17368 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 1, -2], ![0, 2, -3, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput17368 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩

theorem canonicalSound17368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17368.moment H = canonicalOutput17368.moment H :=
  canonical_of_padded canonicalInput17368 canonicalOutput17368 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17369 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 1, -2], ![1, -1, -1, 1], ![0, 1, 0, -1]]⟩

def canonicalOutput17369 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound17369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17369.moment H = canonicalOutput17369.moment H :=
  canonical_of_padded canonicalInput17369 canonicalOutput17369 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17370 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 2, -3], ![0, -1, 0, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput17370 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node805⟩

theorem canonicalSound17370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17370.moment H = canonicalOutput17370.moment H :=
  canonical_of_padded canonicalInput17370 canonicalOutput17370 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput17371 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 2, -3], ![0, 0, 1, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput17371 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1046⟩

theorem canonicalSound17371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17371.moment H = canonicalOutput17371.moment H :=
  canonical_of_padded canonicalInput17371 canonicalOutput17371 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17372 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 2, -3], ![0, 2, -3, 1], ![1, -2, 1, 0]]⟩

def canonicalOutput17372 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound17372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17372.moment H = canonicalOutput17372.moment H :=
  canonical_of_padded canonicalInput17372 canonicalOutput17372 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17373 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 2, -3], ![1, -1, -1, 1], ![0, 1, -1, 0]]⟩

def canonicalOutput17373 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1081⟩

theorem canonicalSound17373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17373.moment H = canonicalOutput17373.moment H :=
  canonical_of_padded canonicalInput17373 canonicalOutput17373 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17374 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, 3, -4], ![-1, 2, -3, 2], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput17374 : ExponentCode := normalNode6138

theorem canonicalSound17374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17374.moment H = canonicalOutput17374.moment H :=
  canonical_of_padded canonicalInput17374 canonicalOutput17374 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17375 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 3, -4], ![0, 1, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput17375 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1075⟩

theorem canonicalSound17375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17375.moment H = canonicalOutput17375.moment H :=
  canonical_of_padded canonicalInput17375 canonicalOutput17375 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17376 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput17376 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1082⟩

theorem canonicalSound17376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17376.moment H = canonicalOutput17376.moment H :=
  canonical_of_padded canonicalInput17376 canonicalOutput17376 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17377 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 1, 3, -4], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput17377 : ExponentCode := normalNode9133

theorem canonicalSound17377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17377.moment H = canonicalOutput17377.moment H :=
  canonical_of_padded canonicalInput17377 canonicalOutput17377 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17378 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, 3, -4], ![0, 2, -3, 1], ![0, -1, 0, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput17378 : ExponentCode := normalNode8958

theorem canonicalSound17378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17378.moment H = canonicalOutput17378.moment H :=
  canonical_of_padded canonicalInput17378 canonicalOutput17378 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17379 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 1, 3, -4], ![0, 2, -3, 1], ![1, -1, 0, 0], ![0, -1, 0, 1]]⟩

def canonicalOutput17379 : ExponentCode := normalNode8958

theorem canonicalSound17379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17379.moment H = canonicalOutput17379.moment H :=
  canonical_of_padded canonicalInput17379 canonicalOutput17379 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17380 : ExponentCode := ⟨3, 4, ![![-1, -1, 0, 2], ![0, 2, -4, 2], ![1, -1, 4, -4]]⟩

def canonicalOutput17380 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node156⟩

theorem canonicalSound17380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17380.moment H = canonicalOutput17380.moment H :=
  canonical_of_padded canonicalInput17380 canonicalOutput17380 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17381 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 2, -3, 1], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput17381 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound17381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17381.moment H = canonicalOutput17381.moment H :=
  canonical_of_padded canonicalInput17381 canonicalOutput17381 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17382 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 2, -2, 0], ![0, 1, 3, -4], ![1, -2, -1, 2]]⟩

def canonicalOutput17382 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1087⟩

theorem canonicalSound17382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17382.moment H = canonicalOutput17382.moment H :=
  canonical_of_padded canonicalInput17382 canonicalOutput17382 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17383 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 2, -1, -1], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput17383 : ExponentCode := normalNode9011

theorem canonicalSound17383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17383.moment H = canonicalOutput17383.moment H :=
  canonical_of_padded canonicalInput17383 canonicalOutput17383 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17384 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 2, 2, -4], ![0, -2, 1, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput17384 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node988⟩

theorem canonicalSound17384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17384.moment H = canonicalOutput17384.moment H :=
  canonical_of_padded canonicalInput17384 canonicalOutput17384 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17385 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 2, 2, -4], ![0, -1, 1, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput17385 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1004⟩

theorem canonicalSound17385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17385.moment H = canonicalOutput17385.moment H :=
  canonical_of_padded canonicalInput17385 canonicalOutput17385 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17386 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 2, 2, -4], ![1, -2, 0, 1], ![0, 1, -2, 1]]⟩

def canonicalOutput17386 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1234⟩

theorem canonicalSound17386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17386.moment H = canonicalOutput17386.moment H :=
  canonical_of_padded canonicalInput17386 canonicalOutput17386 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17387 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 2, 2, -4], ![1, -2, 1, 0], ![0, 1, -3, 2]]⟩

def canonicalOutput17387 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1076⟩

theorem canonicalSound17387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17387.moment H = canonicalOutput17387.moment H :=
  canonical_of_padded canonicalInput17387 canonicalOutput17387 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17388 : ExponentCode := ⟨3, 4, ![![-1, -1, 0, 2], ![0, 2, 3, -5], ![1, -1, -3, 3]]⟩

def canonicalOutput17388 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node128⟩

theorem canonicalSound17388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17388.moment H = canonicalOutput17388.moment H :=
  canonical_of_padded canonicalInput17388 canonicalOutput17388 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17389 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 3, -1, -2], ![0, -1, 3, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput17389 : ExponentCode := normalNode9033

theorem canonicalSound17389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17389.moment H = canonicalOutput17389.moment H :=
  canonical_of_padded canonicalInput17389 canonicalOutput17389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17390 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -2, 0, 1], ![0, 0, 2, -2], ![0, 3, -2, -1]]⟩

def canonicalOutput17390 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩

theorem canonicalSound17390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17390.moment H = canonicalOutput17390.moment H :=
  canonical_of_padded canonicalInput17390 canonicalOutput17390 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17391 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -2, 0, 1], ![0, 1, 2, -3], ![0, 2, -2, 0]]⟩

def canonicalOutput17391 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩

theorem canonicalSound17391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17391.moment H = canonicalOutput17391.moment H :=
  canonical_of_padded canonicalInput17391 canonicalOutput17391 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17392 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -2, 2, -1], ![0, 1, -2, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput17392 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound17392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17392.moment H = canonicalOutput17392.moment H :=
  canonical_of_padded canonicalInput17392 canonicalOutput17392 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput17393 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -2, 3, -2], ![0, 0, -2, 2], ![0, 3, -1, -2]]⟩

def canonicalOutput17393 : ExponentCode := normalNode6245

theorem canonicalSound17393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17393.moment H = canonicalOutput17393.moment H :=
  canonical_of_padded canonicalInput17393 canonicalOutput17393 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17394 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -2, 3, -2], ![0, 1, -2, 1], ![0, 2, -1, -1]]⟩

def canonicalOutput17394 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound17394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17394.moment H = canonicalOutput17394.moment H :=
  canonical_of_padded canonicalInput17394 canonicalOutput17394 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17395 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -1, -3, 3], ![0, 0, 2, -2], ![0, 2, 1, -3]]⟩

def canonicalOutput17395 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1060⟩

theorem canonicalSound17395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17395.moment H = canonicalOutput17395.moment H :=
  canonical_of_padded canonicalInput17395 canonicalOutput17395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17396 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -1, -3, 3], ![0, 0, 3, -3], ![0, 2, 0, -2]]⟩

def canonicalOutput17396 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1068⟩

theorem canonicalSound17396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17396.moment H = canonicalOutput17396.moment H :=
  canonical_of_padded canonicalInput17396 canonicalOutput17396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17397 : ExponentCode := ⟨3, 4, ![![-1, -1, 0, 2], ![1, -1, -3, 3], ![0, 2, 3, -5]]⟩

def canonicalOutput17397 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node128⟩

theorem canonicalSound17397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17397.moment H = canonicalOutput17397.moment H :=
  canonical_of_padded canonicalInput17397 canonicalOutput17397 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17398 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -1, -2, 2], ![0, 0, 2, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput17398 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1059⟩

theorem canonicalSound17398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17398.moment H = canonicalOutput17398.moment H :=
  canonical_of_padded canonicalInput17398 canonicalOutput17398 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17399 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -1, -2, 2], ![0, 0, 3, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput17399 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1067⟩

theorem canonicalSound17399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17399.moment H = canonicalOutput17399.moment H :=
  canonical_of_padded canonicalInput17399 canonicalOutput17399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17400 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -1, -2, 2], ![0, 1, 1, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput17400 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1084⟩

theorem canonicalSound17400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17400.moment H = canonicalOutput17400.moment H :=
  canonical_of_padded canonicalInput17400 canonicalOutput17400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17401 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -1, -1, 1], ![0, 0, 2, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput17401 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound17401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17401.moment H = canonicalOutput17401.moment H :=
  canonical_of_padded canonicalInput17401 canonicalOutput17401 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17402 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput17402 : ExponentCode := normalNode5331

theorem canonicalSound17402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17402.moment H = canonicalOutput17402.moment H :=
  canonical_of_padded canonicalInput17402 canonicalOutput17402 (by decide) (by decide)
    ⟨false, true, canonicalPermutation132, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17403 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -1, 1, -1], ![0, 0, -2, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput17403 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1036⟩

theorem canonicalSound17403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17403.moment H = canonicalOutput17403.moment H :=
  canonical_of_padded canonicalInput17403 canonicalOutput17403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17404 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -1, 1, -1], ![0, 1, -2, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput17404 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound17404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17404.moment H = canonicalOutput17404.moment H :=
  canonical_of_padded canonicalInput17404 canonicalOutput17404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17405 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -1, 2, -2], ![0, 0, -2, 2], ![0, 2, 0, -2]]⟩

def canonicalOutput17405 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound17405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17405.moment H = canonicalOutput17405.moment H :=
  canonical_of_padded canonicalInput17405 canonicalOutput17405 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17406 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -1, 2, -2], ![0, 1, -3, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput17406 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1073⟩

theorem canonicalSound17406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17406.moment H = canonicalOutput17406.moment H :=
  canonical_of_padded canonicalInput17406 canonicalOutput17406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17407 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![1, -1, 3, -3], ![0, 0, -2, 2], ![0, 2, -1, -1]]⟩

def canonicalOutput17407 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound17407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17407.moment H = canonicalOutput17407.moment H :=
  canonical_of_padded canonicalInput17407 canonicalOutput17407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
