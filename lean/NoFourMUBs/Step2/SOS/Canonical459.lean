import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29376 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![1, -2, 0, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput29376 : ExponentCode := normalNode3728

theorem canonicalSound29376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29376.moment H = canonicalOutput29376.moment H :=
  canonical_of_padded canonicalInput29376 canonicalOutput29376 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29377 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput29377 : ExponentCode := normalNode7738

theorem canonicalSound29377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29377.moment H = canonicalOutput29377.moment H :=
  canonical_of_padded canonicalInput29377 canonicalOutput29377 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29378 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, 1, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput29378 : ExponentCode := normalNode8829

theorem canonicalSound29378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29378.moment H = canonicalOutput29378.moment H :=
  canonical_of_padded canonicalInput29378 canonicalOutput29378 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29379 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, -1, 2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput29379 : ExponentCode := normalNode6676

theorem canonicalSound29379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29379.moment H = canonicalOutput29379.moment H :=
  canonical_of_padded canonicalInput29379 canonicalOutput29379 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29380 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput29380 : ExponentCode := normalNode8830

theorem canonicalSound29380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29380.moment H = canonicalOutput29380.moment H :=
  canonical_of_padded canonicalInput29380 canonicalOutput29380 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29381 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput29381 : ExponentCode := normalNode9325

theorem canonicalSound29381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29381.moment H = canonicalOutput29381.moment H :=
  canonical_of_padded canonicalInput29381 canonicalOutput29381 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29382 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput29382 : ExponentCode := normalNode6853

theorem canonicalSound29382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29382.moment H = canonicalOutput29382.moment H :=
  canonical_of_padded canonicalInput29382 canonicalOutput29382 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29383 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, -1, 1, -1], ![-1, 2, 1, -2]]⟩

def canonicalOutput29383 : ExponentCode := normalNode6881

theorem canonicalSound29383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29383.moment H = canonicalOutput29383.moment H :=
  canonical_of_padded canonicalInput29383 canonicalOutput29383 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation378, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29384 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![1, 1, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput29384 : ExponentCode := normalNode6866

theorem canonicalSound29384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29384.moment H = canonicalOutput29384.moment H :=
  canonical_of_padded canonicalInput29384 canonicalOutput29384 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29385 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-1, 2, 0, -1], ![1, 0, 1, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput29385 : ExponentCode := normalNode6899

theorem canonicalSound29385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29385.moment H = canonicalOutput29385.moment H :=
  canonical_of_padded canonicalInput29385 canonicalOutput29385 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29386 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 0, 1, -2], ![-2, 2, 1, -1]]⟩

def canonicalOutput29386 : ExponentCode := normalNode2798

theorem canonicalSound29386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29386.moment H = canonicalOutput29386.moment H :=
  canonical_of_padded canonicalInput29386 canonicalOutput29386 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation334, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29387 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29387 : ExponentCode := normalNode2247

theorem canonicalSound29387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29387.moment H = canonicalOutput29387.moment H :=
  canonical_of_padded canonicalInput29387 canonicalOutput29387 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29388 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, 0, 1, -2], ![-2, -1, 1, 2]]⟩

def canonicalOutput29388 : ExponentCode := normalNode2674

theorem canonicalSound29388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29388.moment H = canonicalOutput29388.moment H :=
  canonical_of_padded canonicalInput29388 canonicalOutput29388 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29389 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput29389 : ExponentCode := normalNode4462

theorem canonicalSound29389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29389.moment H = canonicalOutput29389.moment H :=
  canonical_of_padded canonicalInput29389 canonicalOutput29389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29390 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput29390 : ExponentCode := normalNode5214

theorem canonicalSound29390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29390.moment H = canonicalOutput29390.moment H :=
  canonical_of_padded canonicalInput29390 canonicalOutput29390 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29391 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput29391 : ExponentCode := normalNode2676

theorem canonicalSound29391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29391.moment H = canonicalOutput29391.moment H :=
  canonical_of_padded canonicalInput29391 canonicalOutput29391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29392 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 2, 1, -2]]⟩

def canonicalOutput29392 : ExponentCode := normalNode6890

theorem canonicalSound29392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29392.moment H = canonicalOutput29392.moment H :=
  canonical_of_padded canonicalInput29392 canonicalOutput29392 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29393 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput29393 : ExponentCode := normalNode4193

theorem canonicalSound29393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29393.moment H = canonicalOutput29393.moment H :=
  canonical_of_padded canonicalInput29393 canonicalOutput29393 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29394 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![0, 1, 1, -2], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29394 : ExponentCode := normalNode2675

theorem canonicalSound29394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29394.moment H = canonicalOutput29394.moment H :=
  canonical_of_padded canonicalInput29394 canonicalOutput29394 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29395 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![0, 1, 1, -2], ![1, 0, 1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput29395 : ExponentCode := normalNode862

theorem canonicalSound29395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29395.moment H = canonicalOutput29395.moment H :=
  canonical_of_padded canonicalInput29395 canonicalOutput29395 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29396 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput29396 : ExponentCode := normalNode2799

theorem canonicalSound29396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29396.moment H = canonicalOutput29396.moment H :=
  canonical_of_padded canonicalInput29396 canonicalOutput29396 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29397 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput29397 : ExponentCode := normalNode2695

theorem canonicalSound29397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29397.moment H = canonicalOutput29397.moment H :=
  canonical_of_padded canonicalInput29397 canonicalOutput29397 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29398 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput29398 : ExponentCode := normalNode1984

theorem canonicalSound29398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29398.moment H = canonicalOutput29398.moment H :=
  canonical_of_padded canonicalInput29398 canonicalOutput29398 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29399 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput29399 : ExponentCode := normalNode7792

theorem canonicalSound29399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29399.moment H = canonicalOutput29399.moment H :=
  canonical_of_padded canonicalInput29399 canonicalOutput29399 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29400 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput29400 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2991⟩

theorem canonicalSound29400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29400.moment H = canonicalOutput29400.moment H :=
  canonical_of_padded canonicalInput29400 canonicalOutput29400 (by decide) (by decide)
    ⟨false, false, canonicalPermutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29401 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, -2, -1, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput29401 : ExponentCode := normalNode5662

theorem canonicalSound29401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29401.moment H = canonicalOutput29401.moment H :=
  canonical_of_padded canonicalInput29401 canonicalOutput29401 (by decide) (by decide)
    ⟨false, false, canonicalPermutation12, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29402 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29402 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3366⟩

theorem canonicalSound29402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29402.moment H = canonicalOutput29402.moment H :=
  canonical_of_padded canonicalInput29402 canonicalOutput29402 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29403 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput29403 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node968⟩

theorem canonicalSound29403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29403.moment H = canonicalOutput29403.moment H :=
  canonical_of_padded canonicalInput29403 canonicalOutput29403 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29404 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29404 : ExponentCode := normalNode7858

theorem canonicalSound29404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29404.moment H = canonicalOutput29404.moment H :=
  canonical_of_padded canonicalInput29404 canonicalOutput29404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29405 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-1, -1, 0, 2], ![2, 0, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput29405 : ExponentCode := normalNode9016

theorem canonicalSound29405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29405.moment H = canonicalOutput29405.moment H :=
  canonical_of_padded canonicalInput29405 canonicalOutput29405 (by decide) (by decide)
    ⟨false, false, canonicalPermutation364, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29406 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput29406 : ExponentCode := normalNode2628

theorem canonicalSound29406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29406.moment H = canonicalOutput29406.moment H :=
  canonical_of_padded canonicalInput29406 canonicalOutput29406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29407 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput29407 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3052⟩

theorem canonicalSound29407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29407.moment H = canonicalOutput29407.moment H :=
  canonical_of_padded canonicalInput29407 canonicalOutput29407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29408 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput29408 : ExponentCode := normalNode6986

theorem canonicalSound29408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29408.moment H = canonicalOutput29408.moment H :=
  canonical_of_padded canonicalInput29408 canonicalOutput29408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29409 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput29409 : ExponentCode := normalNode6737

theorem canonicalSound29409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29409.moment H = canonicalOutput29409.moment H :=
  canonical_of_padded canonicalInput29409 canonicalOutput29409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29410 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-2, 0, 0, 2], ![2, 0, -1, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput29410 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2696⟩

theorem canonicalSound29410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29410.moment H = canonicalOutput29410.moment H :=
  canonical_of_padded canonicalInput29410 canonicalOutput29410 (by decide) (by decide)
    ⟨false, false, canonicalPermutation342, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29411 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-2, 1, 0, 1], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput29411 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2285⟩

theorem canonicalSound29411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29411.moment H = canonicalOutput29411.moment H :=
  canonical_of_padded canonicalInput29411 canonicalOutput29411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation228, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29412 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-1, -1, 0, 2], ![2, 0, -1, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput29412 : ExponentCode := normalNode9021

theorem canonicalSound29412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29412.moment H = canonicalOutput29412.moment H :=
  canonical_of_padded canonicalInput29412 canonicalOutput29412 (by decide) (by decide)
    ⟨false, false, canonicalPermutation340, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29413 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput29413 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2161⟩

theorem canonicalSound29413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29413.moment H = canonicalOutput29413.moment H :=
  canonical_of_padded canonicalInput29413 canonicalOutput29413 (by decide) (by decide)
    ⟨false, true, canonicalPermutation360, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29414 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput29414 : ExponentCode := normalNode5801

theorem canonicalSound29414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29414.moment H = canonicalOutput29414.moment H :=
  canonical_of_padded canonicalInput29414 canonicalOutput29414 (by decide) (by decide)
    ⟨false, true, canonicalPermutation360, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29415 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-1, 0, -1, 2], ![2, -1, 0, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput29415 : ExponentCode := normalNode10706

theorem canonicalSound29415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29415.moment H = canonicalOutput29415.moment H :=
  canonical_of_padded canonicalInput29415 canonicalOutput29415 (by decide) (by decide)
    ⟨false, true, canonicalPermutation365, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29416 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-1, 1, -1, 1], ![-1, -2, 2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput29416 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1798⟩

theorem canonicalSound29416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29416.moment H = canonicalOutput29416.moment H :=
  canonical_of_padded canonicalInput29416 canonicalOutput29416 (by decide) (by decide)
    ⟨false, false, canonicalPermutation183, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29417 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, -1, 1], ![-2, -1, 2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput29417 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1794⟩

theorem canonicalSound29417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29417.moment H = canonicalOutput29417.moment H :=
  canonical_of_padded canonicalInput29417 canonicalOutput29417 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29418 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput29418 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2228⟩

theorem canonicalSound29418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29418.moment H = canonicalOutput29418.moment H :=
  canonical_of_padded canonicalInput29418 canonicalOutput29418 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29419 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput29419 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2754⟩

theorem canonicalSound29419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29419.moment H = canonicalOutput29419.moment H :=
  canonical_of_padded canonicalInput29419 canonicalOutput29419 (by decide) (by decide)
    ⟨false, true, canonicalPermutation366, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29420 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput29420 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2189⟩

theorem canonicalSound29420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29420.moment H = canonicalOutput29420.moment H :=
  canonical_of_padded canonicalInput29420 canonicalOutput29420 (by decide) (by decide)
    ⟨false, false, canonicalPermutation251, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29421 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput29421 : ExponentCode := normalNode10846

theorem canonicalSound29421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29421.moment H = canonicalOutput29421.moment H :=
  canonical_of_padded canonicalInput29421 canonicalOutput29421 (by decide) (by decide)
    ⟨false, true, canonicalPermutation367, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29422 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29422 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2770⟩

theorem canonicalSound29422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29422.moment H = canonicalOutput29422.moment H :=
  canonical_of_padded canonicalInput29422 canonicalOutput29422 (by decide) (by decide)
    ⟨false, true, canonicalPermutation316, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29423 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 0, -1, -1], ![-1, -2, 1, 2], ![-1, 1, 2, -2]]⟩

def canonicalOutput29423 : ExponentCode := normalNode2718

theorem canonicalSound29423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29423.moment H = canonicalOutput29423.moment H :=
  canonical_of_padded canonicalInput29423 canonicalOutput29423 (by decide) (by decide)
    ⟨false, false, canonicalPermutation249, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29424 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput29424 : ExponentCode := normalNode2668

theorem canonicalSound29424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29424.moment H = canonicalOutput29424.moment H :=
  canonical_of_padded canonicalInput29424 canonicalOutput29424 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29425 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput29425 : ExponentCode := normalNode3973

theorem canonicalSound29425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29425.moment H = canonicalOutput29425.moment H :=
  canonical_of_padded canonicalInput29425 canonicalOutput29425 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29426 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![2, -1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput29426 : ExponentCode := normalNode3999

theorem canonicalSound29426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29426.moment H = canonicalOutput29426.moment H :=
  canonical_of_padded canonicalInput29426 canonicalOutput29426 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29427 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput29427 : ExponentCode := normalNode3435

theorem canonicalSound29427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29427.moment H = canonicalOutput29427.moment H :=
  canonical_of_padded canonicalInput29427 canonicalOutput29427 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29428 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![2, -1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput29428 : ExponentCode := normalNode5389

theorem canonicalSound29428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29428.moment H = canonicalOutput29428.moment H :=
  canonical_of_padded canonicalInput29428 canonicalOutput29428 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation259, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29429 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![2, 0, 0, -2], ![0, -3, 3, 0]]⟩

def canonicalOutput29429 : ExponentCode := normalNode5482

theorem canonicalSound29429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29429.moment H = canonicalOutput29429.moment H :=
  canonical_of_padded canonicalInput29429 canonicalOutput29429 (by decide) (by decide)
    ⟨false, false, canonicalPermutation338, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29430 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 0, 3], ![2, 0, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput29430 : ExponentCode := normalNode1875

theorem canonicalSound29430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29430.moment H = canonicalOutput29430.moment H :=
  canonical_of_padded canonicalInput29430 canonicalOutput29430 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29431 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput29431 : ExponentCode := normalNode5076

theorem canonicalSound29431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29431.moment H = canonicalOutput29431.moment H :=
  canonical_of_padded canonicalInput29431 canonicalOutput29431 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29432 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![2, -1, 0, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput29432 : ExponentCode := normalNode5365

theorem canonicalSound29432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29432.moment H = canonicalOutput29432.moment H :=
  canonical_of_padded canonicalInput29432 canonicalOutput29432 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29433 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![2, 0, -1, -1], ![-1, -1, 4, -2]]⟩

def canonicalOutput29433 : ExponentCode := normalNode4315

theorem canonicalSound29433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29433.moment H = canonicalOutput29433.moment H :=
  canonical_of_padded canonicalInput29433 canonicalOutput29433 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29434 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![2, 0, 0, -2], ![-1, -1, 3, -1]]⟩

def canonicalOutput29434 : ExponentCode := normalNode3907

theorem canonicalSound29434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29434.moment H = canonicalOutput29434.moment H :=
  canonical_of_padded canonicalInput29434 canonicalOutput29434 (by decide) (by decide)
    ⟨false, true, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29435 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput29435 : ExponentCode := normalNode3439

theorem canonicalSound29435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29435.moment H = canonicalOutput29435.moment H :=
  canonical_of_padded canonicalInput29435 canonicalOutput29435 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29436 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -2, 1, 1], ![2, -1, 0, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29436 : ExponentCode := normalNode2725

theorem canonicalSound29436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29436.moment H = canonicalOutput29436.moment H :=
  canonical_of_padded canonicalInput29436 canonicalOutput29436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29437 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-1, -2, 1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput29437 : ExponentCode := normalNode6984

theorem canonicalSound29437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29437.moment H = canonicalOutput29437.moment H :=
  canonical_of_padded canonicalInput29437 canonicalOutput29437 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29438 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-2, -1, 1, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput29438 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1765⟩

theorem canonicalSound29438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29438.moment H = canonicalOutput29438.moment H :=
  canonical_of_padded canonicalInput29438 canonicalOutput29438 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29439 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-1, -2, 0, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput29439 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2414⟩

theorem canonicalSound29439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29439.moment H = canonicalOutput29439.moment H :=
  canonical_of_padded canonicalInput29439 canonicalOutput29439 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
