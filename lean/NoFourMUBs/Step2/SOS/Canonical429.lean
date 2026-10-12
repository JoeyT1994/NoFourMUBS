import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27456 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput27456 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound27456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27456.moment H = canonicalOutput27456.moment H :=
  canonical_of_padded canonicalInput27456 canonicalOutput27456 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput27457 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![-1, 2, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput27457 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound27457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27457.moment H = canonicalOutput27457.moment H :=
  canonical_of_padded canonicalInput27457 canonicalOutput27457 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27458 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![-1, 3, -1, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput27458 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound27458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27458.moment H = canonicalOutput27458.moment H :=
  canonical_of_padded canonicalInput27458 canonicalOutput27458 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27459 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![-1, 3, 0, -2], ![0, -2, -1, 3], ![1, 0, -2, 1]]⟩

def canonicalOutput27459 : ExponentCode := normalNode10905

theorem canonicalSound27459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27459.moment H = canonicalOutput27459.moment H :=
  canonical_of_padded canonicalInput27459 canonicalOutput27459 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27460 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![-1, 3, 0, -2], ![0, -1, -2, 3], ![1, -1, -1, 1]]⟩

def canonicalOutput27460 : ExponentCode := normalNode10910

theorem canonicalSound27460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27460.moment H = canonicalOutput27460.moment H :=
  canonical_of_padded canonicalInput27460 canonicalOutput27460 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27461 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![-1, 4, -2, -1], ![1, -3, -1, 3]]⟩

def canonicalOutput27461 : ExponentCode := normalNode216

theorem canonicalSound27461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27461.moment H = canonicalOutput27461.moment H :=
  canonical_of_padded canonicalInput27461 canonicalOutput27461 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27462 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, -2, 0, 2], ![0, 0, -2, 2], ![0, 3, -1, -2]]⟩

def canonicalOutput27462 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound27462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27462.moment H = canonicalOutput27462.moment H :=
  canonical_of_padded canonicalInput27462 canonicalOutput27462 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27463 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, -1, -1, 2], ![0, 0, -2, 2], ![0, 2, 0, -2]]⟩

def canonicalOutput27463 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound27463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27463.moment H = canonicalOutput27463.moment H :=
  canonical_of_padded canonicalInput27463 canonicalOutput27463 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27464 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, 0, -2, 2], ![-1, 2, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput27464 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound27464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27464.moment H = canonicalOutput27464.moment H :=
  canonical_of_padded canonicalInput27464 canonicalOutput27464 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27465 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, 0, -2, 2], ![0, 2, -1, -1], ![0, -1, 0, 1]]⟩

def canonicalOutput27465 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound27465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27465.moment H = canonicalOutput27465.moment H :=
  canonical_of_padded canonicalInput27465 canonicalOutput27465 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27466 : ExponentCode := ⟨5, 4, ![![0, -1, 3, -2], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput27466 : ExponentCode := normalNode10978

theorem canonicalSound27466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27466.moment H = canonicalOutput27466.moment H :=
  canonical_of_padded canonicalInput27466 canonicalOutput27466 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27467 : ExponentCode := ⟨5, 4, ![![0, -1, 3, -2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput27467 : ExponentCode := normalNode10966

theorem canonicalSound27467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27467.moment H = canonicalOutput27467.moment H :=
  canonical_of_padded canonicalInput27467 canonicalOutput27467 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27468 : ExponentCode := ⟨5, 4, ![![0, -1, 3, -2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -3, 4]]⟩

def canonicalOutput27468 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node744⟩

theorem canonicalSound27468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27468.moment H = canonicalOutput27468.moment H :=
  canonical_of_padded canonicalInput27468 canonicalOutput27468 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27469 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, 1, -4, 3], ![-1, 1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput27469 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1340⟩

theorem canonicalSound27469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27469.moment H = canonicalOutput27469.moment H :=
  canonical_of_padded canonicalInput27469 canonicalOutput27469 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27470 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, 1, -4, 3], ![0, 1, 1, -2], ![0, -1, 0, 1]]⟩

def canonicalOutput27470 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound27470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27470.moment H = canonicalOutput27470.moment H :=
  canonical_of_padded canonicalInput27470 canonicalOutput27470 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27471 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, 1, -3, 2], ![-1, 1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput27471 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1345⟩

theorem canonicalSound27471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27471.moment H = canonicalOutput27471.moment H :=
  canonical_of_padded canonicalInput27471 canonicalOutput27471 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput27472 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, 1, -3, 2], ![0, 1, 0, -1], ![0, -1, 0, 1]]⟩

def canonicalOutput27472 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node259⟩

theorem canonicalSound27472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27472.moment H = canonicalOutput27472.moment H :=
  canonical_of_padded canonicalInput27472 canonicalOutput27472 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27473 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput27473 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound27473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27473.moment H = canonicalOutput27473.moment H :=
  canonical_of_padded canonicalInput27473 canonicalOutput27473 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27474 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput27474 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node263⟩

theorem canonicalSound27474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27474.moment H = canonicalOutput27474.moment H :=
  canonical_of_padded canonicalInput27474 canonicalOutput27474 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27475 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput27475 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound27475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27475.moment H = canonicalOutput27475.moment H :=
  canonical_of_padded canonicalInput27475 canonicalOutput27475 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput27476 : ExponentCode := ⟨4, 4, ![![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -1, -3, 4]]⟩

def canonicalOutput27476 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node248⟩

theorem canonicalSound27476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27476.moment H = canonicalOutput27476.moment H :=
  canonical_of_padded canonicalInput27476 canonicalOutput27476 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27477 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![0, 2, 0, -2], ![0, -1, -3, 4]]⟩

def canonicalOutput27477 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound27477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27477.moment H = canonicalOutput27477.moment H :=
  canonical_of_padded canonicalInput27477 canonicalOutput27477 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27478 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![0, 3, -1, -2], ![0, -2, -2, 4]]⟩

def canonicalOutput27478 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node20⟩

theorem canonicalSound27478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27478.moment H = canonicalOutput27478.moment H :=
  canonical_of_padded canonicalInput27478 canonicalOutput27478 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27479 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![1, -3, 1, 1], ![-1, 4, -4, 1]]⟩

def canonicalOutput27479 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node80⟩

theorem canonicalSound27479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27479.moment H = canonicalOutput27479.moment H :=
  canonical_of_padded canonicalInput27479 canonicalOutput27479 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27480 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![1, -1, 1, -1], ![-1, 2, -4, 3]]⟩

def canonicalOutput27480 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node241⟩

theorem canonicalSound27480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27480.moment H = canonicalOutput27480.moment H :=
  canonical_of_padded canonicalInput27480 canonicalOutput27480 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27481 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![2, -3, 1, 0], ![-2, 4, -4, 2]]⟩

def canonicalOutput27481 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code35

theorem canonicalSound27481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27481.moment H = canonicalOutput27481.moment H :=
  canonical_of_padded canonicalInput27481 canonicalOutput27481 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27482 : ExponentCode := ⟨3, 4, ![![0, -1, 3, -2], ![2, -1, 1, -2], ![-2, 2, -4, 4]]⟩

def canonicalOutput27482 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code33

theorem canonicalSound27482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27482.moment H = canonicalOutput27482.moment H :=
  canonical_of_padded canonicalInput27482 canonicalOutput27482 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27483 : ExponentCode := ⟨5, 4, ![![0, -1, 4, -3], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput27483 : ExponentCode := normalNode10309

theorem canonicalSound27483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27483.moment H = canonicalOutput27483.moment H :=
  canonical_of_padded canonicalInput27483 canonicalOutput27483 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27484 : ExponentCode := ⟨4, 4, ![![0, -1, 4, -3], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput27484 : ExponentCode := normalNode9474

theorem canonicalSound27484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27484.moment H = canonicalOutput27484.moment H :=
  canonical_of_padded canonicalInput27484 canonicalOutput27484 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput27485 : ExponentCode := ⟨3, 4, ![![0, -1, 4, -3], ![-1, 2, -1, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput27485 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound27485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27485.moment H = canonicalOutput27485.moment H :=
  canonical_of_padded canonicalInput27485 canonicalOutput27485 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27486 : ExponentCode := ⟨5, 4, ![![0, -1, 4, -3], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput27486 : ExponentCode := normalNode11038

theorem canonicalSound27486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27486.moment H = canonicalOutput27486.moment H :=
  canonical_of_padded canonicalInput27486 canonicalOutput27486 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27487 : ExponentCode := ⟨5, 4, ![![0, -1, 4, -3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput27487 : ExponentCode := normalNode11029

theorem canonicalSound27487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27487.moment H = canonicalOutput27487.moment H :=
  canonical_of_padded canonicalInput27487 canonicalOutput27487 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27488 : ExponentCode := ⟨5, 4, ![![0, -1, 4, -3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput27488 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node744⟩

theorem canonicalSound27488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27488.moment H = canonicalOutput27488.moment H :=
  canonical_of_padded canonicalInput27488 canonicalOutput27488 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27489 : ExponentCode := ⟨4, 4, ![![0, -1, 4, -3], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, -3, 3]]⟩

def canonicalOutput27489 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound27489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27489.moment H = canonicalOutput27489.moment H :=
  canonical_of_padded canonicalInput27489 canonicalOutput27489 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27490 : ExponentCode := ⟨4, 4, ![![0, -1, 4, -3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -3, 4]]⟩

def canonicalOutput27490 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node249⟩

theorem canonicalSound27490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27490.moment H = canonicalOutput27490.moment H :=
  canonical_of_padded canonicalInput27490 canonicalOutput27490 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27491 : ExponentCode := ⟨3, 4, ![![0, -1, 4, -3], ![0, 2, -1, -1], ![0, -1, -3, 4]]⟩

def canonicalOutput27491 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node42⟩

theorem canonicalSound27491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27491.moment H = canonicalOutput27491.moment H :=
  canonical_of_padded canonicalInput27491 canonicalOutput27491 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27492 : ExponentCode := ⟨5, 4, ![![0, 0, -4, 4], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput27492 : ExponentCode := normalNode11124

theorem canonicalSound27492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27492.moment H = canonicalOutput27492.moment H :=
  canonical_of_padded canonicalInput27492 canonicalOutput27492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27493 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![-1, 1, 1, -1], ![0, 0, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput27493 : ExponentCode := normalNode11112

theorem canonicalSound27493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27493.moment H = canonicalOutput27493.moment H :=
  canonical_of_padded canonicalInput27493 canonicalOutput27493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27494 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput27494 : ExponentCode := normalNode7409

theorem canonicalSound27494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27494.moment H = canonicalOutput27494.moment H :=
  canonical_of_padded canonicalInput27494 canonicalOutput27494 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput27495 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput27495 : ExponentCode := normalNode11129

theorem canonicalSound27495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27495.moment H = canonicalOutput27495.moment H :=
  canonical_of_padded canonicalInput27495 canonicalOutput27495 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27496 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![-1, 1, 1, -1], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput27496 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1353⟩

theorem canonicalSound27496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27496.moment H = canonicalOutput27496.moment H :=
  canonical_of_padded canonicalInput27496 canonicalOutput27496 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27497 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput27497 : ExponentCode := normalNode11073

theorem canonicalSound27497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27497.moment H = canonicalOutput27497.moment H :=
  canonical_of_padded canonicalInput27497 canonicalOutput27497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27498 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput27498 : ExponentCode := normalNode9755

theorem canonicalSound27498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27498.moment H = canonicalOutput27498.moment H :=
  canonical_of_padded canonicalInput27498 canonicalOutput27498 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput27499 : ExponentCode := ⟨3, 4, ![![0, 0, -4, 4], ![-1, 2, 2, -3], ![1, -2, 2, -1]]⟩

def canonicalOutput27499 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node133⟩

theorem canonicalSound27499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27499.moment H = canonicalOutput27499.moment H :=
  canonical_of_padded canonicalInput27499 canonicalOutput27499 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27500 : ExponentCode := ⟨3, 4, ![![0, 0, -4, 4], ![-1, 2, 3, -4], ![1, -2, 1, 0]]⟩

def canonicalOutput27500 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node216⟩

theorem canonicalSound27500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27500.moment H = canonicalOutput27500.moment H :=
  canonical_of_padded canonicalInput27500 canonicalOutput27500 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27501 : ExponentCode := ⟨3, 4, ![![0, 0, -4, 4], ![0, -2, 2, 0], ![0, 2, 2, -4]]⟩

def canonicalOutput27501 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node33⟩

theorem canonicalSound27501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27501.moment H = canonicalOutput27501.moment H :=
  canonical_of_padded canonicalInput27501 canonicalOutput27501 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27502 : ExponentCode := ⟨3, 4, ![![0, 0, -4, 4], ![0, -2, 3, -1], ![0, 2, 1, -3]]⟩

def canonicalOutput27502 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node38⟩

theorem canonicalSound27502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27502.moment H = canonicalOutput27502.moment H :=
  canonical_of_padded canonicalInput27502 canonicalOutput27502 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27503 : ExponentCode := ⟨3, 4, ![![0, 0, -4, 4], ![0, -2, 4, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput27503 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node33⟩

theorem canonicalSound27503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27503.moment H = canonicalOutput27503.moment H :=
  canonical_of_padded canonicalInput27503 canonicalOutput27503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27504 : ExponentCode := ⟨3, 4, ![![0, 0, -4, 4], ![0, -1, 2, -1], ![0, 1, 2, -3]]⟩

def canonicalOutput27504 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩

theorem canonicalSound27504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27504.moment H = canonicalOutput27504.moment H :=
  canonical_of_padded canonicalInput27504 canonicalOutput27504 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27505 : ExponentCode := ⟨5, 4, ![![0, 0, -4, 4], ![0, 0, 1, -1], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput27505 : ExponentCode := normalNode11124

theorem canonicalSound27505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27505.moment H = canonicalOutput27505.moment H :=
  canonical_of_padded canonicalInput27505 canonicalOutput27505 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27506 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput27506 : ExponentCode := normalNode7410

theorem canonicalSound27506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27506.moment H = canonicalOutput27506.moment H :=
  canonical_of_padded canonicalInput27506 canonicalOutput27506 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput27507 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![0, 0, 1, -1], ![-1, 2, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput27507 : ExponentCode := normalNode11210

theorem canonicalSound27507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27507.moment H = canonicalOutput27507.moment H :=
  canonical_of_padded canonicalInput27507 canonicalOutput27507 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27508 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput27508 : ExponentCode := normalNode7410

theorem canonicalSound27508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27508.moment H = canonicalOutput27508.moment H :=
  canonical_of_padded canonicalInput27508 canonicalOutput27508 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput27509 : ExponentCode := ⟨5, 4, ![![0, 0, -4, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput27509 : ExponentCode := normalNode11208

theorem canonicalSound27509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27509.moment H = canonicalOutput27509.moment H :=
  canonical_of_padded canonicalInput27509 canonicalOutput27509 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27510 : ExponentCode := ⟨5, 4, ![![0, 0, -4, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 2, -1]]⟩

def canonicalOutput27510 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1150⟩

theorem canonicalSound27510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27510.moment H = canonicalOutput27510.moment H :=
  canonical_of_padded canonicalInput27510 canonicalOutput27510 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27511 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput27511 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node270⟩

theorem canonicalSound27511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27511.moment H = canonicalOutput27511.moment H :=
  canonical_of_padded canonicalInput27511 canonicalOutput27511 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27512 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, -1, 2, -1]]⟩

def canonicalOutput27512 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node286⟩

theorem canonicalSound27512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27512.moment H = canonicalOutput27512.moment H :=
  canonical_of_padded canonicalInput27512 canonicalOutput27512 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27513 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![0, -1, 1, 0]]⟩

def canonicalOutput27513 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node270⟩

theorem canonicalSound27513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27513.moment H = canonicalOutput27513.moment H :=
  canonical_of_padded canonicalInput27513 canonicalOutput27513 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27514 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![0, 0, 2, -2], ![-1, 2, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput27514 : ExponentCode := normalNode11207

theorem canonicalSound27514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27514.moment H = canonicalOutput27514.moment H :=
  canonical_of_padded canonicalInput27514 canonicalOutput27514 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27515 : ExponentCode := ⟨3, 4, ![![0, 0, -4, 4], ![0, 0, 2, -2], ![0, 0, 2, -2]]⟩

def canonicalOutput27515 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node9⟩

theorem canonicalSound27515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27515.moment H = canonicalOutput27515.moment H :=
  canonical_of_padded canonicalInput27515 canonicalOutput27515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27516 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![0, 0, 2, -2], ![0, 1, 0, -1], ![0, -1, 2, -1]]⟩

def canonicalOutput27516 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound27516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27516.moment H = canonicalOutput27516.moment H :=
  canonical_of_padded canonicalInput27516 canonicalOutput27516 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27517 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![0, 0, 3, -3], ![-1, 2, 0, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput27517 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1373⟩

theorem canonicalSound27517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27517.moment H = canonicalOutput27517.moment H :=
  canonical_of_padded canonicalInput27517 canonicalOutput27517 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27518 : ExponentCode := ⟨4, 4, ![![0, 0, -4, 4], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, -1, 1, 0]]⟩

def canonicalOutput27518 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node290⟩

theorem canonicalSound27518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27518.moment H = canonicalOutput27518.moment H :=
  canonical_of_padded canonicalInput27518 canonicalOutput27518 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27519 : ExponentCode := ⟨3, 4, ![![0, 0, -4, 4], ![0, 1, 2, -3], ![0, -1, 2, -1]]⟩

def canonicalOutput27519 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩

theorem canonicalSound27519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27519.moment H = canonicalOutput27519.moment H :=
  canonical_of_padded canonicalInput27519 canonicalOutput27519 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
