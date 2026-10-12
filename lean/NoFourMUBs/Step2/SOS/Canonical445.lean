import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28480 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -2, -1, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput28480 : ExponentCode := normalNode5187

theorem canonicalSound28480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28480.moment H = canonicalOutput28480.moment H :=
  canonical_of_padded canonicalInput28480 canonicalOutput28480 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28481 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -1, 0], ![-2, -1, 3, 0]]⟩

def canonicalOutput28481 : ExponentCode := normalNode6763

theorem canonicalSound28481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28481.moment H = canonicalOutput28481.moment H :=
  canonical_of_padded canonicalInput28481 canonicalOutput28481 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28482 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-2, -2, 3, 1]]⟩

def canonicalOutput28482 : ExponentCode := normalNode633

theorem canonicalSound28482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28482.moment H = canonicalOutput28482.moment H :=
  canonical_of_padded canonicalInput28482 canonicalOutput28482 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28483 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput28483 : ExponentCode := normalNode838

theorem canonicalSound28483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28483.moment H = canonicalOutput28483.moment H :=
  canonical_of_padded canonicalInput28483 canonicalOutput28483 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28484 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, -2, 1, 2], ![-1, 1, 2, -2]]⟩

def canonicalOutput28484 : ExponentCode := normalNode2633

theorem canonicalSound28484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28484.moment H = canonicalOutput28484.moment H :=
  canonical_of_padded canonicalInput28484 canonicalOutput28484 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28485 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 2, 3, -5], ![0, -2, -1, 3]]⟩

def canonicalOutput28485 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node119⟩

theorem canonicalSound28485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28485.moment H = canonicalOutput28485.moment H :=
  canonical_of_padded canonicalInput28485 canonicalOutput28485 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28486 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![-1, 1, -1, 1], ![-1, 2, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput28486 : ExponentCode := normalNode6033

theorem canonicalSound28486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28486.moment H = canonicalOutput28486.moment H :=
  canonical_of_padded canonicalInput28486 canonicalOutput28486 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28487 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput28487 : ExponentCode := normalNode9294

theorem canonicalSound28487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28487.moment H = canonicalOutput28487.moment H :=
  canonical_of_padded canonicalInput28487 canonicalOutput28487 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28488 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput28488 : ExponentCode := normalNode2960

theorem canonicalSound28488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28488.moment H = canonicalOutput28488.moment H :=
  canonical_of_padded canonicalInput28488 canonicalOutput28488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28489 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput28489 : ExponentCode := normalNode5484

theorem canonicalSound28489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28489.moment H = canonicalOutput28489.moment H :=
  canonical_of_padded canonicalInput28489 canonicalOutput28489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation221, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28490 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 0, -1, 0], ![-1, -1, 3, -1], ![-1, 3, 0, -2]]⟩

def canonicalOutput28490 : ExponentCode := normalNode6646

theorem canonicalSound28490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28490.moment H = canonicalOutput28490.moment H :=
  canonical_of_padded canonicalInput28490 canonicalOutput28490 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28491 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput28491 : ExponentCode := normalNode1734

theorem canonicalSound28491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28491.moment H = canonicalOutput28491.moment H :=
  canonical_of_padded canonicalInput28491 canonicalOutput28491 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28492 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput28492 : ExponentCode := normalNode7678

theorem canonicalSound28492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28492.moment H = canonicalOutput28492.moment H :=
  canonical_of_padded canonicalInput28492 canonicalOutput28492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28493 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 0, 0, -1], ![-1, 1, -1, 1], ![-1, 1, 3, -3]]⟩

def canonicalOutput28493 : ExponentCode := normalNode5485

theorem canonicalSound28493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28493.moment H = canonicalOutput28493.moment H :=
  canonical_of_padded canonicalInput28493 canonicalOutput28493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation221, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28494 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput28494 : ExponentCode := normalNode2003

theorem canonicalSound28494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28494.moment H = canonicalOutput28494.moment H :=
  canonical_of_padded canonicalInput28494 canonicalOutput28494 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28495 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![0, 2, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput28495 : ExponentCode := normalNode4068

theorem canonicalSound28495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28495.moment H = canonicalOutput28495.moment H :=
  canonical_of_padded canonicalInput28495 canonicalOutput28495 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28496 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![1, -1, 1, -1], ![0, 2, 1, -3]]⟩

def canonicalOutput28496 : ExponentCode := normalNode3597

theorem canonicalSound28496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28496.moment H = canonicalOutput28496.moment H :=
  canonical_of_padded canonicalInput28496 canonicalOutput28496 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28497 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 0, 2, 0], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput28497 : ExponentCode := normalNode4067

theorem canonicalSound28497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28497.moment H = canonicalOutput28497.moment H :=
  canonical_of_padded canonicalInput28497 canonicalOutput28497 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28498 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28498 : ExponentCode := normalNode5419

theorem canonicalSound28498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28498.moment H = canonicalOutput28498.moment H :=
  canonical_of_padded canonicalInput28498 canonicalOutput28498 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28499 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput28499 : ExponentCode := normalNode5486

theorem canonicalSound28499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28499.moment H = canonicalOutput28499.moment H :=
  canonical_of_padded canonicalInput28499 canonicalOutput28499 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28500 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 1, 0, 1], ![1, -1, 1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput28500 : ExponentCode := normalNode5488

theorem canonicalSound28500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28500.moment H = canonicalOutput28500.moment H :=
  canonical_of_padded canonicalInput28500 canonicalOutput28500 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28501 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 1, 1, 0], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput28501 : ExponentCode := normalNode4178

theorem canonicalSound28501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28501.moment H = canonicalOutput28501.moment H :=
  canonical_of_padded canonicalInput28501 canonicalOutput28501 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28502 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 2, 0, 0], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput28502 : ExponentCode := normalNode5944

theorem canonicalSound28502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28502.moment H = canonicalOutput28502.moment H :=
  canonical_of_padded canonicalInput28502 canonicalOutput28502 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28503 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 2, 0, 0], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput28503 : ExponentCode := normalNode5964

theorem canonicalSound28503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28503.moment H = canonicalOutput28503.moment H :=
  canonical_of_padded canonicalInput28503 canonicalOutput28503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28504 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-2, 2, 0, 0], ![1, -2, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput28504 : ExponentCode := normalNode3709

theorem canonicalSound28504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28504.moment H = canonicalOutput28504.moment H :=
  canonical_of_padded canonicalInput28504 canonicalOutput28504 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28505 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput28505 : ExponentCode := normalNode1996

theorem canonicalSound28505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28505.moment H = canonicalOutput28505.moment H :=
  canonical_of_padded canonicalInput28505 canonicalOutput28505 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28506 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![1, 0, 1, -2], ![-1, 2, 1, -2]]⟩

def canonicalOutput28506 : ExponentCode := normalNode5019

theorem canonicalSound28506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28506.moment H = canonicalOutput28506.moment H :=
  canonical_of_padded canonicalInput28506 canonicalOutput28506 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28507 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-1, -1, 2, 0], ![-1, 1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput28507 : ExponentCode := normalNode8860

theorem canonicalSound28507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28507.moment H = canonicalOutput28507.moment H :=
  canonical_of_padded canonicalInput28507 canonicalOutput28507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28508 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-1, -1, 2, 0], ![-1, 2, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput28508 : ExponentCode := normalNode5295

theorem canonicalSound28508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28508.moment H = canonicalOutput28508.moment H :=
  canonical_of_padded canonicalInput28508 canonicalOutput28508 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28509 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput28509 : ExponentCode := normalNode5517

theorem canonicalSound28509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28509.moment H = canonicalOutput28509.moment H :=
  canonical_of_padded canonicalInput28509 canonicalOutput28509 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28510 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![0, -2, 1, 1], ![-2, 2, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28510 : ExponentCode := normalNode5689

theorem canonicalSound28510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28510.moment H = canonicalOutput28510.moment H :=
  canonical_of_padded canonicalInput28510 canonicalOutput28510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28511 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![0, -2, 1, 1], ![-2, 3, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput28511 : ExponentCode := normalNode4707

theorem canonicalSound28511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28511.moment H = canonicalOutput28511.moment H :=
  canonical_of_padded canonicalInput28511 canonicalOutput28511 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28512 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![0, -2, 2, 0], ![1, 0, 1, -2], ![-2, 3, 0, -1]]⟩

def canonicalOutput28512 : ExponentCode := normalNode2045

theorem canonicalSound28512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28512.moment H = canonicalOutput28512.moment H :=
  canonical_of_padded canonicalInput28512 canonicalOutput28512 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28513 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![0, -2, 2, 0], ![1, 1, 0, -2], ![-2, 2, 1, -1]]⟩

def canonicalOutput28513 : ExponentCode := normalNode2769

theorem canonicalSound28513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28513.moment H = canonicalOutput28513.moment H :=
  canonical_of_padded canonicalInput28513 canonicalOutput28513 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28514 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![0, -1, 2, -1], ![1, -1, 1, -1], ![-2, 3, 0, -1]]⟩

def canonicalOutput28514 : ExponentCode := normalNode1854

theorem canonicalSound28514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28514.moment H = canonicalOutput28514.moment H :=
  canonical_of_padded canonicalInput28514 canonicalOutput28514 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28515 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![0, 0, 2, -2], ![1, -2, 1, 0], ![-2, 3, 0, -1]]⟩

def canonicalOutput28515 : ExponentCode := normalNode1645

theorem canonicalSound28515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28515.moment H = canonicalOutput28515.moment H :=
  canonical_of_padded canonicalInput28515 canonicalOutput28515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28516 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![0, 1, 1, -2], ![1, -2, 1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput28516 : ExponentCode := normalNode2241

theorem canonicalSound28516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28516.moment H = canonicalOutput28516.moment H :=
  canonical_of_padded canonicalInput28516 canonicalOutput28516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28517 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![0, 1, 1, -2], ![1, 1, 0, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput28517 : ExponentCode := normalNode2957

theorem canonicalSound28517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28517.moment H = canonicalOutput28517.moment H :=
  canonical_of_padded canonicalInput28517 canonicalOutput28517 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28518 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![0, 2, 0, -2], ![1, -2, 1, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput28518 : ExponentCode := normalNode2267

theorem canonicalSound28518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28518.moment H = canonicalOutput28518.moment H :=
  canonical_of_padded canonicalInput28518 canonicalOutput28518 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28519 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![0, 2, 0, -2], ![1, 0, 1, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput28519 : ExponentCode := normalNode2958

theorem canonicalSound28519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28519.moment H = canonicalOutput28519.moment H :=
  canonical_of_padded canonicalInput28519 canonicalOutput28519 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28520 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput28520 : ExponentCode := normalNode5515

theorem canonicalSound28520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28520.moment H = canonicalOutput28520.moment H :=
  canonical_of_padded canonicalInput28520 canonicalOutput28520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28521 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput28521 : ExponentCode := normalNode5956

theorem canonicalSound28521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28521.moment H = canonicalOutput28521.moment H :=
  canonical_of_padded canonicalInput28521 canonicalOutput28521 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28522 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput28522 : ExponentCode := normalNode1658

theorem canonicalSound28522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28522.moment H = canonicalOutput28522.moment H :=
  canonical_of_padded canonicalInput28522 canonicalOutput28522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28523 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-1, -1, 3, -1], ![-1, 3, 0, -2]]⟩

def canonicalOutput28523 : ExponentCode := normalNode6647

theorem canonicalSound28523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28523.moment H = canonicalOutput28523.moment H :=
  canonical_of_padded canonicalInput28523 canonicalOutput28523 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28524 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput28524 : ExponentCode := normalNode2959

theorem canonicalSound28524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28524.moment H = canonicalOutput28524.moment H :=
  canonical_of_padded canonicalInput28524 canonicalOutput28524 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28525 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput28525 : ExponentCode := normalNode5931

theorem canonicalSound28525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28525.moment H = canonicalOutput28525.moment H :=
  canonical_of_padded canonicalInput28525 canonicalOutput28525 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28526 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 3, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput28526 : ExponentCode := normalNode1881

theorem canonicalSound28526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28526.moment H = canonicalOutput28526.moment H :=
  canonical_of_padded canonicalInput28526 canonicalOutput28526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28527 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 3, 1, -3]]⟩

def canonicalOutput28527 : ExponentCode := normalNode7102

theorem canonicalSound28527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28527.moment H = canonicalOutput28527.moment H :=
  canonical_of_padded canonicalInput28527 canonicalOutput28527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28528 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -2, 3, 0], ![-1, 3, 0, -2]]⟩

def canonicalOutput28528 : ExponentCode := normalNode6669

theorem canonicalSound28528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28528.moment H = canonicalOutput28528.moment H :=
  canonical_of_padded canonicalInput28528 canonicalOutput28528 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28529 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![-1, -1, 3, -1]]⟩

def canonicalOutput28529 : ExponentCode := normalNode5343

theorem canonicalSound28529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28529.moment H = canonicalOutput28529.moment H :=
  canonical_of_padded canonicalInput28529 canonicalOutput28529 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28530 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput28530 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3006⟩

theorem canonicalSound28530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28530.moment H = canonicalOutput28530.moment H :=
  canonical_of_padded canonicalInput28530 canonicalOutput28530 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28531 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput28531 : ExponentCode := normalNode2423

theorem canonicalSound28531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28531.moment H = canonicalOutput28531.moment H :=
  canonical_of_padded canonicalInput28531 canonicalOutput28531 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28532 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![1, -1, 1, -1], ![0, 2, 1, -3]]⟩

def canonicalOutput28532 : ExponentCode := normalNode2050

theorem canonicalSound28532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28532.moment H = canonicalOutput28532.moment H :=
  canonical_of_padded canonicalInput28532 canonicalOutput28532 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28533 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput28533 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3004⟩

theorem canonicalSound28533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28533.moment H = canonicalOutput28533.moment H :=
  canonical_of_padded canonicalInput28533 canonicalOutput28533 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28534 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput28534 : ExponentCode := normalNode2736

theorem canonicalSound28534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28534.moment H = canonicalOutput28534.moment H :=
  canonical_of_padded canonicalInput28534 canonicalOutput28534 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28535 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput28535 : ExponentCode := normalNode4449

theorem canonicalSound28535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28535.moment H = canonicalOutput28535.moment H :=
  canonical_of_padded canonicalInput28535 canonicalOutput28535 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28536 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput28536 : ExponentCode := normalNode3990

theorem canonicalSound28536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28536.moment H = canonicalOutput28536.moment H :=
  canonical_of_padded canonicalInput28536 canonicalOutput28536 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation289, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28537 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -1, 0, 0], ![0, 2, 1, -3]]⟩

def canonicalOutput28537 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2979⟩

theorem canonicalSound28537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28537.moment H = canonicalOutput28537.moment H :=
  canonical_of_padded canonicalInput28537 canonicalOutput28537 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28538 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -1, 1, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput28538 : ExponentCode := normalNode3990

theorem canonicalSound28538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28538.moment H = canonicalOutput28538.moment H :=
  canonical_of_padded canonicalInput28538 canonicalOutput28538 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28539 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput28539 : ExponentCode := normalNode3990

theorem canonicalSound28539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28539.moment H = canonicalOutput28539.moment H :=
  canonical_of_padded canonicalInput28539 canonicalOutput28539 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28540 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![0, 2, 0, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput28540 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3157⟩

theorem canonicalSound28540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28540.moment H = canonicalOutput28540.moment H :=
  canonical_of_padded canonicalInput28540 canonicalOutput28540 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28541 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28541 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3249⟩

theorem canonicalSound28541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28541.moment H = canonicalOutput28541.moment H :=
  canonical_of_padded canonicalInput28541 canonicalOutput28541 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28542 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput28542 : ExponentCode := normalNode5189

theorem canonicalSound28542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28542.moment H = canonicalOutput28542.moment H :=
  canonical_of_padded canonicalInput28542 canonicalOutput28542 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28543 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 1, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput28543 : ExponentCode := normalNode5190

theorem canonicalSound28543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28543.moment H = canonicalOutput28543.moment H :=
  canonical_of_padded canonicalInput28543 canonicalOutput28543 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
