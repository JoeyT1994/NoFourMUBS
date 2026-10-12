import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31360 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput31360 : ExponentCode := normalNode2469

theorem canonicalSound31360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31360.moment H = canonicalOutput31360.moment H :=
  canonical_of_padded canonicalInput31360 canonicalOutput31360 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31361 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![2, 0, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput31361 : ExponentCode := normalNode2468

theorem canonicalSound31361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31361.moment H = canonicalOutput31361.moment H :=
  canonical_of_padded canonicalInput31361 canonicalOutput31361 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31362 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -1, 1, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput31362 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3057⟩

theorem canonicalSound31362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31362.moment H = canonicalOutput31362.moment H :=
  canonical_of_padded canonicalInput31362 canonicalOutput31362 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31363 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput31363 : ExponentCode := normalNode875

theorem canonicalSound31363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31363.moment H = canonicalOutput31363.moment H :=
  canonical_of_padded canonicalInput31363 canonicalOutput31363 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31364 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, 0, -2, 0], ![0, -3, 2, 1]]⟩

def canonicalOutput31364 : ExponentCode := normalNode4000

theorem canonicalSound31364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31364.moment H = canonicalOutput31364.moment H :=
  canonical_of_padded canonicalInput31364 canonicalOutput31364 (by decide) (by decide)
    ⟨false, true, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31365 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, 0, -1, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput31365 : ExponentCode := normalNode4352

theorem canonicalSound31365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31365.moment H = canonicalOutput31365.moment H :=
  canonical_of_padded canonicalInput31365 canonicalOutput31365 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31366 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput31366 : ExponentCode := normalNode4332

theorem canonicalSound31366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31366.moment H = canonicalOutput31366.moment H :=
  canonical_of_padded canonicalInput31366 canonicalOutput31366 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31367 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput31367 : ExponentCode := normalNode5314

theorem canonicalSound31367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31367.moment H = canonicalOutput31367.moment H :=
  canonical_of_padded canonicalInput31367 canonicalOutput31367 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31368 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput31368 : ExponentCode := normalNode4333

theorem canonicalSound31368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31368.moment H = canonicalOutput31368.moment H :=
  canonical_of_padded canonicalInput31368 canonicalOutput31368 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31369 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput31369 : ExponentCode := normalNode3856

theorem canonicalSound31369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31369.moment H = canonicalOutput31369.moment H :=
  canonical_of_padded canonicalInput31369 canonicalOutput31369 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31370 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput31370 : ExponentCode := normalNode3411

theorem canonicalSound31370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31370.moment H = canonicalOutput31370.moment H :=
  canonical_of_padded canonicalInput31370 canonicalOutput31370 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31371 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput31371 : ExponentCode := normalNode2358

theorem canonicalSound31371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31371.moment H = canonicalOutput31371.moment H :=
  canonical_of_padded canonicalInput31371 canonicalOutput31371 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31372 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, 1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput31372 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3210⟩

theorem canonicalSound31372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31372.moment H = canonicalOutput31372.moment H :=
  canonical_of_padded canonicalInput31372 canonicalOutput31372 (by decide) (by decide)
    ⟨false, true, canonicalPermutation388, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput31373 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput31373 : ExponentCode := normalNode5037

theorem canonicalSound31373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31373.moment H = canonicalOutput31373.moment H :=
  canonical_of_padded canonicalInput31373 canonicalOutput31373 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31374 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 1, -1, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput31374 : ExponentCode := normalNode2472

theorem canonicalSound31374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31374.moment H = canonicalOutput31374.moment H :=
  canonical_of_padded canonicalInput31374 canonicalOutput31374 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31375 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 0, 2], ![2, 0, -1, -1]]⟩

def canonicalOutput31375 : ExponentCode := normalNode4333

theorem canonicalSound31375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31375.moment H = canonicalOutput31375.moment H :=
  canonical_of_padded canonicalInput31375 canonicalOutput31375 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31376 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![2, 0, -2, 0]]⟩

def canonicalOutput31376 : ExponentCode := normalNode3857

theorem canonicalSound31376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31376.moment H = canonicalOutput31376.moment H :=
  canonical_of_padded canonicalInput31376 canonicalOutput31376 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31377 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -2, 3], ![2, -1, 1, -2]]⟩

def canonicalOutput31377 : ExponentCode := normalNode5034

theorem canonicalSound31377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31377.moment H = canonicalOutput31377.moment H :=
  canonical_of_padded canonicalInput31377 canonicalOutput31377 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31378 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput31378 : ExponentCode := normalNode4354

theorem canonicalSound31378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31378.moment H = canonicalOutput31378.moment H :=
  canonical_of_padded canonicalInput31378 canonicalOutput31378 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31379 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, -2, 2], ![2, -2, 1, -1]]⟩

def canonicalOutput31379 : ExponentCode := normalNode2471

theorem canonicalSound31379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31379.moment H = canonicalOutput31379.moment H :=
  canonical_of_padded canonicalInput31379 canonicalOutput31379 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31380 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, -2, 0, 0]]⟩

def canonicalOutput31380 : ExponentCode := normalNode3929

theorem canonicalSound31380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31380.moment H = canonicalOutput31380.moment H :=
  canonical_of_padded canonicalInput31380 canonicalOutput31380 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31381 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -2, 3], ![-1, 0, 2, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput31381 : ExponentCode := normalNode5926

theorem canonicalSound31381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31381.moment H = canonicalOutput31381.moment H :=
  canonical_of_padded canonicalInput31381 canonicalOutput31381 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation389, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31382 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -2, 3], ![-1, 1, 1, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput31382 : ExponentCode := normalNode1772

theorem canonicalSound31382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31382.moment H = canonicalOutput31382.moment H :=
  canonical_of_padded canonicalInput31382 canonicalOutput31382 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31383 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -2, 3], ![2, 0, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput31383 : ExponentCode := normalNode2887

theorem canonicalSound31383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31383.moment H = canonicalOutput31383.moment H :=
  canonical_of_padded canonicalInput31383 canonicalOutput31383 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31384 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 0, 1, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput31384 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3174⟩

theorem canonicalSound31384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31384.moment H = canonicalOutput31384.moment H :=
  canonical_of_padded canonicalInput31384 canonicalOutput31384 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31385 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 0, 2, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput31385 : ExponentCode := normalNode5841

theorem canonicalSound31385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31385.moment H = canonicalOutput31385.moment H :=
  canonical_of_padded canonicalInput31385 canonicalOutput31385 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation389, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31386 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 0, 0], ![2, -3, 1, 0]]⟩

def canonicalOutput31386 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2968⟩

theorem canonicalSound31386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31386.moment H = canonicalOutput31386.moment H :=
  canonical_of_padded canonicalInput31386 canonicalOutput31386 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31387 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -3, 0, 1]]⟩

def canonicalOutput31387 : ExponentCode := normalNode3469

theorem canonicalSound31387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31387.moment H = canonicalOutput31387.moment H :=
  canonical_of_padded canonicalInput31387 canonicalOutput31387 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31388 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, 0, -1, -1], ![-1, -2, 2, 1]]⟩

def canonicalOutput31388 : ExponentCode := normalNode2537

theorem canonicalSound31388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31388.moment H = canonicalOutput31388.moment H :=
  canonical_of_padded canonicalInput31388 canonicalOutput31388 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation376, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31389 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, 0, 0, -2], ![-1, -2, 1, 2]]⟩

def canonicalOutput31389 : ExponentCode := normalNode2302

theorem canonicalSound31389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31389.moment H = canonicalOutput31389.moment H :=
  canonical_of_padded canonicalInput31389 canonicalOutput31389 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31390 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 1, 0], ![2, -1, 0, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput31390 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3203⟩

theorem canonicalSound31390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31390.moment H = canonicalOutput31390.moment H :=
  canonical_of_padded canonicalInput31390 canonicalOutput31390 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31391 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 1, 0], ![2, 0, -1, -1], ![-1, -2, 0, 3]]⟩

def canonicalOutput31391 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2969⟩

theorem canonicalSound31391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31391.moment H = canonicalOutput31391.moment H :=
  canonical_of_padded canonicalInput31391 canonicalOutput31391 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31392 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![2, -1, -1, 0], ![-1, -1, -1, 3]]⟩

def canonicalOutput31392 : ExponentCode := normalNode5314

theorem canonicalSound31392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31392.moment H = canonicalOutput31392.moment H :=
  canonical_of_padded canonicalInput31392 canonicalOutput31392 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31393 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![2, -1, 0, -1], ![-1, -1, -2, 4]]⟩

def canonicalOutput31393 : ExponentCode := normalNode5310

theorem canonicalSound31393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31393.moment H = canonicalOutput31393.moment H :=
  canonical_of_padded canonicalInput31393 canonicalOutput31393 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31394 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![2, 0, -2, 0], ![-1, -2, 0, 3]]⟩

def canonicalOutput31394 : ExponentCode := normalNode1838

theorem canonicalSound31394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31394.moment H = canonicalOutput31394.moment H :=
  canonical_of_padded canonicalInput31394 canonicalOutput31394 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31395 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![2, 0, -1, -1], ![-1, -2, -1, 4]]⟩

def canonicalOutput31395 : ExponentCode := normalNode1292

theorem canonicalSound31395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31395.moment H = canonicalOutput31395.moment H :=
  canonical_of_padded canonicalInput31395 canonicalOutput31395 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31396 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3], ![2, -2, 0, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput31396 : ExponentCode := normalNode2329

theorem canonicalSound31396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31396.moment H = canonicalOutput31396.moment H :=
  canonical_of_padded canonicalInput31396 canonicalOutput31396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31397 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3], ![2, 0, 0, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput31397 : ExponentCode := normalNode2885

theorem canonicalSound31397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31397.moment H = canonicalOutput31397.moment H :=
  canonical_of_padded canonicalInput31397 canonicalOutput31397 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31398 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, -2, -1, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput31398 : ExponentCode := normalNode2229

theorem canonicalSound31398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31398.moment H = canonicalOutput31398.moment H :=
  canonical_of_padded canonicalInput31398 canonicalOutput31398 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31399 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, -2, 0, 0], ![-2, 1, 1, 0]]⟩

def canonicalOutput31399 : ExponentCode := normalNode3747

theorem canonicalSound31399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31399.moment H = canonicalOutput31399.moment H :=
  canonical_of_padded canonicalInput31399 canonicalOutput31399 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput31400 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, 0, -1, -1], ![-2, -1, 2, 1]]⟩

def canonicalOutput31400 : ExponentCode := normalNode2531

theorem canonicalSound31400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31400.moment H = canonicalOutput31400.moment H :=
  canonical_of_padded canonicalInput31400 canonicalOutput31400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31401 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, 0, 0, -2], ![-2, -1, 1, 2]]⟩

def canonicalOutput31401 : ExponentCode := normalNode2295

theorem canonicalSound31401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31401.moment H = canonicalOutput31401.moment H :=
  canonical_of_padded canonicalInput31401 canonicalOutput31401 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31402 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 1, 0], ![2, -1, 0, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput31402 : ExponentCode := normalNode1767

theorem canonicalSound31402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31402.moment H = canonicalOutput31402.moment H :=
  canonical_of_padded canonicalInput31402 canonicalOutput31402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31403 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 1, 0], ![2, 0, -1, -1], ![-2, -1, 0, 3]]⟩

def canonicalOutput31403 : ExponentCode := normalNode1767

theorem canonicalSound31403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31403.moment H = canonicalOutput31403.moment H :=
  canonical_of_padded canonicalInput31403 canonicalOutput31403 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31404 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, -1, -1, 0], ![-2, 0, -1, 3]]⟩

def canonicalOutput31404 : ExponentCode := normalNode3503

theorem canonicalSound31404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31404.moment H = canonicalOutput31404.moment H :=
  canonical_of_padded canonicalInput31404 canonicalOutput31404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31405 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, -1, 0, -1], ![-2, 0, -2, 4]]⟩

def canonicalOutput31405 : ExponentCode := normalNode3232

theorem canonicalSound31405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31405.moment H = canonicalOutput31405.moment H :=
  canonical_of_padded canonicalInput31405 canonicalOutput31405 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31406 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, 0, -2, 0], ![-2, -1, 0, 3]]⟩

def canonicalOutput31406 : ExponentCode := normalNode1832

theorem canonicalSound31406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31406.moment H = canonicalOutput31406.moment H :=
  canonical_of_padded canonicalInput31406 canonicalOutput31406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31407 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, 0, -1, -1], ![-2, -1, -1, 4]]⟩

def canonicalOutput31407 : ExponentCode := normalNode1288

theorem canonicalSound31407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31407.moment H = canonicalOutput31407.moment H :=
  canonical_of_padded canonicalInput31407 canonicalOutput31407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31408 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 2, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31408 : ExponentCode := normalNode1380

theorem canonicalSound31408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31408.moment H = canonicalOutput31408.moment H :=
  canonical_of_padded canonicalInput31408 canonicalOutput31408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31409 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3], ![-2, -1, -2, 5]]⟩

def canonicalOutput31409 : ExponentCode := normalNode1082

theorem canonicalSound31409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31409.moment H = canonicalOutput31409.moment H :=
  canonical_of_padded canonicalInput31409 canonicalOutput31409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31410 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, -1, 0, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput31410 : ExponentCode := normalNode2025

theorem canonicalSound31410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31410.moment H = canonicalOutput31410.moment H :=
  canonical_of_padded canonicalInput31410 canonicalOutput31410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31411 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 2, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput31411 : ExponentCode := normalNode447

theorem canonicalSound31411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31411.moment H = canonicalOutput31411.moment H :=
  canonical_of_padded canonicalInput31411 canonicalOutput31411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31412 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![1, -1, 2, -2]]⟩

def canonicalOutput31412 : ExponentCode := normalNode1381

theorem canonicalSound31412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31412.moment H = canonicalOutput31412.moment H :=
  canonical_of_padded canonicalInput31412 canonicalOutput31412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31413 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput31413 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3013⟩

theorem canonicalSound31413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31413.moment H = canonicalOutput31413.moment H :=
  canonical_of_padded canonicalInput31413 canonicalOutput31413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31414 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, -2, 2, -1]]⟩

def canonicalOutput31414 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3144⟩

theorem canonicalSound31414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31414.moment H = canonicalOutput31414.moment H :=
  canonical_of_padded canonicalInput31414 canonicalOutput31414 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31415 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 3, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput31415 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3132⟩

theorem canonicalSound31415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31415.moment H = canonicalOutput31415.moment H :=
  canonical_of_padded canonicalInput31415 canonicalOutput31415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31416 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, -1, 5]]⟩

def canonicalOutput31416 : ExponentCode := normalNode368

theorem canonicalSound31416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31416.moment H = canonicalOutput31416.moment H :=
  canonical_of_padded canonicalInput31416 canonicalOutput31416 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31417 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-2, -2, 3, 1]]⟩

def canonicalOutput31417 : ExponentCode := normalNode617

theorem canonicalSound31417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31417.moment H = canonicalOutput31417.moment H :=
  canonical_of_padded canonicalInput31417 canonicalOutput31417 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31418 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -1, 0], ![-1, -1, 3, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput31418 : ExponentCode := normalNode5313

theorem canonicalSound31418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31418.moment H = canonicalOutput31418.moment H :=
  canonical_of_padded canonicalInput31418 canonicalOutput31418 (by decide) (by decide)
    ⟨false, true, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31419 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1], ![-1, -1, 2, 0], ![-1, 0, -2, 3]]⟩

def canonicalOutput31419 : ExponentCode := normalNode5311

theorem canonicalSound31419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31419.moment H = canonicalOutput31419.moment H :=
  canonical_of_padded canonicalInput31419 canonicalOutput31419 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31420 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1], ![-1, -1, 3, -1], ![-1, 0, -3, 4]]⟩

def canonicalOutput31420 : ExponentCode := normalNode5312

theorem canonicalSound31420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31420.moment H = canonicalOutput31420.moment H :=
  canonical_of_padded canonicalInput31420 canonicalOutput31420 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31421 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, 0, -1, 3], ![0, -2, 3, -1]]⟩

def canonicalOutput31421 : ExponentCode := normalNode3382

theorem canonicalSound31421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31421.moment H = canonicalOutput31421.moment H :=
  canonical_of_padded canonicalInput31421 canonicalOutput31421 (by decide) (by decide)
    ⟨false, false, canonicalPermutation293, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31422 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput31422 : ExponentCode := normalNode3855

theorem canonicalSound31422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31422.moment H = canonicalOutput31422.moment H :=
  canonical_of_padded canonicalInput31422 canonicalOutput31422 (by decide) (by decide)
    ⟨false, true, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31423 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, -1, -2, 4], ![-1, -1, 3, -1]]⟩

def canonicalOutput31423 : ExponentCode := normalNode4331

theorem canonicalSound31423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31423.moment H = canonicalOutput31423.moment H :=
  canonical_of_padded canonicalInput31423 canonicalOutput31423 (by decide) (by decide)
    ⟨false, true, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
