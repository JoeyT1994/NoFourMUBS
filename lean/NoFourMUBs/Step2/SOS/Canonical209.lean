import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13376 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13376 : ExponentCode := normalNode5396

theorem canonicalSound13376 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13376.moment H = canonicalOutput13376.moment H :=
  canonical_of_padded canonicalInput13376 canonicalOutput13376 (by decide) (by decide)
    ⟨false, true, canonicalPermutation64, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13377 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 2, 1, -3], ![2, 1, -3, 0]]⟩

def canonicalOutput13377 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code406

theorem canonicalSound13377 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13377.moment H = canonicalOutput13377.moment H :=
  canonical_of_padded canonicalInput13377 canonicalOutput13377 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13378 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13378 : ExponentCode := normalNode3534

theorem canonicalSound13378 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13378.moment H = canonicalOutput13378.moment H :=
  canonical_of_padded canonicalInput13378 canonicalOutput13378 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13379 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput13379 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node589⟩

theorem canonicalSound13379 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13379.moment H = canonicalOutput13379.moment H :=
  canonical_of_padded canonicalInput13379 canonicalOutput13379 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13380 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13380 : ExponentCode := normalNode5402

theorem canonicalSound13380 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13380.moment H = canonicalOutput13380.moment H :=
  canonical_of_padded canonicalInput13380 canonicalOutput13380 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13381 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13381 : ExponentCode := normalNode5402

theorem canonicalSound13381 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13381.moment H = canonicalOutput13381.moment H :=
  canonical_of_padded canonicalInput13381 canonicalOutput13381 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13382 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![0, 3, 0, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13382 : ExponentCode := normalNode5541

theorem canonicalSound13382 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13382.moment H = canonicalOutput13382.moment H :=
  canonical_of_padded canonicalInput13382 canonicalOutput13382 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13383 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![1, 0, 1, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput13383 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node494⟩

theorem canonicalSound13383 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13383.moment H = canonicalOutput13383.moment H :=
  canonical_of_padded canonicalInput13383 canonicalOutput13383 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13384 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![1, 1, -1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput13384 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1204

theorem canonicalSound13384 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13384.moment H = canonicalOutput13384.moment H :=
  canonical_of_padded canonicalInput13384 canonicalOutput13384 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13385 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput13385 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node603⟩

theorem canonicalSound13385 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13385.moment H = canonicalOutput13385.moment H :=
  canonical_of_padded canonicalInput13385 canonicalOutput13385 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13386 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![1, 1, 1, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput13386 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code512

theorem canonicalSound13386 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13386.moment H = canonicalOutput13386.moment H :=
  canonical_of_padded canonicalInput13386 canonicalOutput13386 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput13387 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![1, 2, 0, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput13387 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node689⟩

theorem canonicalSound13387 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13387.moment H = canonicalOutput13387.moment H :=
  canonical_of_padded canonicalInput13387 canonicalOutput13387 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13388 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 2, 0], ![1, 3, -3, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput13388 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node494⟩

theorem canonicalSound13388 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13388.moment H = canonicalOutput13388.moment H :=
  canonical_of_padded canonicalInput13388 canonicalOutput13388 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13389 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13389 : ExponentCode := normalNode6656

theorem canonicalSound13389 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13389.moment H = canonicalOutput13389.moment H :=
  canonical_of_padded canonicalInput13389 canonicalOutput13389 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13390 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput13390 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code398

theorem canonicalSound13390 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13390.moment H = canonicalOutput13390.moment H :=
  canonical_of_padded canonicalInput13390 canonicalOutput13390 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13391 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13391 : ExponentCode := normalNode6658

theorem canonicalSound13391 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13391.moment H = canonicalOutput13391.moment H :=
  canonical_of_padded canonicalInput13391 canonicalOutput13391 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13392 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput13392 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code531

theorem canonicalSound13392 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13392.moment H = canonicalOutput13392.moment H :=
  canonical_of_padded canonicalInput13392 canonicalOutput13392 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13393 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 3, -3, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput13393 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code440

theorem canonicalSound13393 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13393.moment H = canonicalOutput13393.moment H :=
  canonical_of_padded canonicalInput13393 canonicalOutput13393 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13394 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 3, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput13394 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code934

theorem canonicalSound13394 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13394.moment H = canonicalOutput13394.moment H :=
  canonical_of_padded canonicalInput13394 canonicalOutput13394 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13395 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput13395 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code400

theorem canonicalSound13395 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13395.moment H = canonicalOutput13395.moment H :=
  canonical_of_padded canonicalInput13395 canonicalOutput13395 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13396 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput13396 : ExponentCode := normalNode10910

theorem canonicalSound13396 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13396.moment H = canonicalOutput13396.moment H :=
  canonical_of_padded canonicalInput13396 canonicalOutput13396 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13397 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 0, 0, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput13397 : ExponentCode := normalNode9581

theorem canonicalSound13397 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13397.moment H = canonicalOutput13397.moment H :=
  canonical_of_padded canonicalInput13397 canonicalOutput13397 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput13398 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 1, -2, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput13398 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code405

theorem canonicalSound13398 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13398.moment H = canonicalOutput13398.moment H :=
  canonical_of_padded canonicalInput13398 canonicalOutput13398 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13399 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 2, -3, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput13399 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code512

theorem canonicalSound13399 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13399.moment H = canonicalOutput13399.moment H :=
  canonical_of_padded canonicalInput13399 canonicalOutput13399 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput13400 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 2, -2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13400 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1301

theorem canonicalSound13400 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13400.moment H = canonicalOutput13400.moment H :=
  canonical_of_padded canonicalInput13400 canonicalOutput13400 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13401 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 2, -1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13401 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code405

theorem canonicalSound13401 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13401.moment H = canonicalOutput13401.moment H :=
  canonical_of_padded canonicalInput13401 canonicalOutput13401 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13402 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 3, -3, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13402 : ExponentCode := normalNode9581

theorem canonicalSound13402 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13402.moment H = canonicalOutput13402.moment H :=
  canonical_of_padded canonicalInput13402 canonicalOutput13402 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13403 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, -1, 3, -1], ![1, 3, -2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput13403 : ExponentCode := normalNode10910

theorem canonicalSound13403 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13403.moment H = canonicalOutput13403.moment H :=
  canonical_of_padded canonicalInput13403 canonicalOutput13403 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput13404 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 1, 0], ![0, 0, 2, -2], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13404 : ExponentCode := normalNode1793

theorem canonicalSound13404 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13404.moment H = canonicalOutput13404.moment H :=
  canonical_of_padded canonicalInput13404 canonicalOutput13404 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13405 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13405 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1641⟩

theorem canonicalSound13405 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13405.moment H = canonicalOutput13405.moment H :=
  canonical_of_padded canonicalInput13405 canonicalOutput13405 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13406 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13406 : ExponentCode := normalNode1852

theorem canonicalSound13406 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13406.moment H = canonicalOutput13406.moment H :=
  canonical_of_padded canonicalInput13406 canonicalOutput13406 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13407 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput13407 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound13407 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13407.moment H = canonicalOutput13407.moment H :=
  canonical_of_padded canonicalInput13407 canonicalOutput13407 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13408 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13408 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound13408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13408.moment H = canonicalOutput13408.moment H :=
  canonical_of_padded canonicalInput13408 canonicalOutput13408 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13409 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13409 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound13409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13409.moment H = canonicalOutput13409.moment H :=
  canonical_of_padded canonicalInput13409 canonicalOutput13409 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13410 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13410 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound13410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13410.moment H = canonicalOutput13410.moment H :=
  canonical_of_padded canonicalInput13410 canonicalOutput13410 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13411 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput13411 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1650⟩

theorem canonicalSound13411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13411.moment H = canonicalOutput13411.moment H :=
  canonical_of_padded canonicalInput13411 canonicalOutput13411 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13412 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13412 : ExponentCode := normalNode5412

theorem canonicalSound13412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13412.moment H = canonicalOutput13412.moment H :=
  canonical_of_padded canonicalInput13412 canonicalOutput13412 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13413 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13413 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound13413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13413.moment H = canonicalOutput13413.moment H :=
  canonical_of_padded canonicalInput13413 canonicalOutput13413 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13414 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13414 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound13414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13414.moment H = canonicalOutput13414.moment H :=
  canonical_of_padded canonicalInput13414 canonicalOutput13414 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13415 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13415 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1646⟩

theorem canonicalSound13415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13415.moment H = canonicalOutput13415.moment H :=
  canonical_of_padded canonicalInput13415 canonicalOutput13415 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13416 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13416 : ExponentCode := normalNode3535

theorem canonicalSound13416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13416.moment H = canonicalOutput13416.moment H :=
  canonical_of_padded canonicalInput13416 canonicalOutput13416 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13417 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput13417 : ExponentCode := normalNode6668

theorem canonicalSound13417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13417.moment H = canonicalOutput13417.moment H :=
  canonical_of_padded canonicalInput13417 canonicalOutput13417 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13418 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput13418 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound13418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13418.moment H = canonicalOutput13418.moment H :=
  canonical_of_padded canonicalInput13418 canonicalOutput13418 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput13419 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13419 : ExponentCode := normalNode5413

theorem canonicalSound13419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13419.moment H = canonicalOutput13419.moment H :=
  canonical_of_padded canonicalInput13419 canonicalOutput13419 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13420 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput13420 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound13420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13420.moment H = canonicalOutput13420.moment H :=
  canonical_of_padded canonicalInput13420 canonicalOutput13420 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13421 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput13421 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound13421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13421.moment H = canonicalOutput13421.moment H :=
  canonical_of_padded canonicalInput13421 canonicalOutput13421 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13422 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput13422 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code420

theorem canonicalSound13422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13422.moment H = canonicalOutput13422.moment H :=
  canonical_of_padded canonicalInput13422 canonicalOutput13422 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13423 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput13423 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound13423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13423.moment H = canonicalOutput13423.moment H :=
  canonical_of_padded canonicalInput13423 canonicalOutput13423 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13424 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput13424 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound13424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13424.moment H = canonicalOutput13424.moment H :=
  canonical_of_padded canonicalInput13424 canonicalOutput13424 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13425 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 2, -1], ![1, 3, -3, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput13425 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node492⟩

theorem canonicalSound13425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13425.moment H = canonicalOutput13425.moment H :=
  canonical_of_padded canonicalInput13425 canonicalOutput13425 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput13426 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13426 : ExponentCode := normalNode1889

theorem canonicalSound13426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13426.moment H = canonicalOutput13426.moment H :=
  canonical_of_padded canonicalInput13426 canonicalOutput13426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13427 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13427 : ExponentCode := normalNode1894

theorem canonicalSound13427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13427.moment H = canonicalOutput13427.moment H :=
  canonical_of_padded canonicalInput13427 canonicalOutput13427 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13428 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput13428 : ExponentCode := normalNode1886

theorem canonicalSound13428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13428.moment H = canonicalOutput13428.moment H :=
  canonical_of_padded canonicalInput13428 canonicalOutput13428 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13429 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput13429 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code438

theorem canonicalSound13429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13429.moment H = canonicalOutput13429.moment H :=
  canonical_of_padded canonicalInput13429 canonicalOutput13429 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13430 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput13430 : ExponentCode := normalNode1883

theorem canonicalSound13430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13430.moment H = canonicalOutput13430.moment H :=
  canonical_of_padded canonicalInput13430 canonicalOutput13430 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13431 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput13431 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code437

theorem canonicalSound13431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13431.moment H = canonicalOutput13431.moment H :=
  canonical_of_padded canonicalInput13431 canonicalOutput13431 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13432 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![0, 3, -2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput13432 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1002

theorem canonicalSound13432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13432.moment H = canonicalOutput13432.moment H :=
  canonical_of_padded canonicalInput13432 canonicalOutput13432 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13433 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![1, -1, 0, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput13433 : ExponentCode := normalNode6795

theorem canonicalSound13433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13433.moment H = canonicalOutput13433.moment H :=
  canonical_of_padded canonicalInput13433 canonicalOutput13433 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13434 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput13434 : ExponentCode := normalNode6713

theorem canonicalSound13434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13434.moment H = canonicalOutput13434.moment H :=
  canonical_of_padded canonicalInput13434 canonicalOutput13434 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput13435 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput13435 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code446

theorem canonicalSound13435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13435.moment H = canonicalOutput13435.moment H :=
  canonical_of_padded canonicalInput13435 canonicalOutput13435 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13436 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13436 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code446

theorem canonicalSound13436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13436.moment H = canonicalOutput13436.moment H :=
  canonical_of_padded canonicalInput13436 canonicalOutput13436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput13437 : ExponentCode := ⟨4, 4, ![![-1, -2, 0, 3], ![-1, 0, 3, -2], ![1, 2, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput13437 : ExponentCode := normalNode6713

theorem canonicalSound13437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13437.moment H = canonicalOutput13437.moment H :=
  canonical_of_padded canonicalInput13437 canonicalOutput13437 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13438 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput13438 : ExponentCode := normalNode2694

theorem canonicalSound13438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13438.moment H = canonicalOutput13438.moment H :=
  canonical_of_padded canonicalInput13438 canonicalOutput13438 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13439 : ExponentCode := ⟨5, 4, ![![-1, -2, 0, 3], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput13439 : ExponentCode := normalNode9823

theorem canonicalSound13439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13439.moment H = canonicalOutput13439.moment H :=
  canonical_of_padded canonicalInput13439 canonicalOutput13439 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
