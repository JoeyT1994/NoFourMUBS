import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30464 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, 1, -1, -1], ![1, 0, 0, -2, -1, 2]]⟩

def canonicalOutput30464 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound30464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30464.moment H = canonicalOutput30464.moment H :=
  canonical_of_padded canonicalInput30464 canonicalOutput30464 (by decide) (by decide)
    ⟨true, false, canonicalPermutation375, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30465 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1], ![1, 0, 0, 2, -2, -1], ![1, 0, 0, -3, 0, 2]]⟩

def canonicalOutput30465 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound30465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30465.moment H = canonicalOutput30465.moment H :=
  canonical_of_padded canonicalInput30465 canonicalOutput30465 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30466 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -2, 2], ![0, 0, 0, -2, 3, -1], ![2, 0, 0, 0, -1, -1]]⟩

def canonicalOutput30466 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound30466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30466.moment H = canonicalOutput30466.moment H :=
  canonical_of_padded canonicalInput30466 canonicalOutput30466 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation60, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30467 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -2, 2], ![0, 0, 0, -1, 2, -1], ![2, 0, 0, -1, 0, -1]]⟩

def canonicalOutput30467 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node202⟩

theorem canonicalSound30467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30467.moment H = canonicalOutput30467.moment H :=
  canonical_of_padded canonicalInput30467 canonicalOutput30467 (by decide) (by decide)
    ⟨true, true, canonicalPermutation376, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30468 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -2, 2], ![0, 0, 0, 0, 1, -1], ![2, 0, 0, -2, 1, -1]]⟩

def canonicalOutput30468 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node279⟩

theorem canonicalSound30468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30468.moment H = canonicalOutput30468.moment H :=
  canonical_of_padded canonicalInput30468 canonicalOutput30468 (by decide) (by decide)
    ⟨true, false, canonicalPermutation377, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30469 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -2, 2], ![0, 0, 0, 1, 0, -1], ![2, 0, 0, -3, 2, -1]]⟩

def canonicalOutput30469 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node274⟩

theorem canonicalSound30469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30469.moment H = canonicalOutput30469.moment H :=
  canonical_of_padded canonicalInput30469 canonicalOutput30469 (by decide) (by decide)
    ⟨true, true, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30470 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![0, 0, 0, -2, 2, 0], ![2, 0, 0, 0, -1, -1]]⟩

def canonicalOutput30470 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound30470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30470.moment H = canonicalOutput30470.moment H :=
  canonical_of_padded canonicalInput30470 canonicalOutput30470 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30471 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -1, 0, -1]]⟩

def canonicalOutput30471 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound30471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30471.moment H = canonicalOutput30471.moment H :=
  canonical_of_padded canonicalInput30471 canonicalOutput30471 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30472 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![0, 0, 0, -1, 2, -1], ![2, 0, 0, -1, -1, 0]]⟩

def canonicalOutput30472 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound30472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30472.moment H = canonicalOutput30472.moment H :=
  canonical_of_padded canonicalInput30472 canonicalOutput30472 (by decide) (by decide)
    ⟨true, true, canonicalPermutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30473 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -2, 1, -1]]⟩

def canonicalOutput30473 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node46⟩

theorem canonicalSound30473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30473.moment H = canonicalOutput30473.moment H :=
  canonical_of_padded canonicalInput30473 canonicalOutput30473 (by decide) (by decide)
    ⟨true, false, canonicalPermutation372, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30474 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![0, 0, 0, 0, 1, -1], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30474 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node291⟩

theorem canonicalSound30474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30474.moment H = canonicalOutput30474.moment H :=
  canonical_of_padded canonicalInput30474 canonicalOutput30474 (by decide) (by decide)
    ⟨true, false, canonicalPermutation377, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30475 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![0, 0, 0, 1, 0, -1], ![2, 0, 0, -3, 1, 0]]⟩

def canonicalOutput30475 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node272⟩

theorem canonicalSound30475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30475.moment H = canonicalOutput30475.moment H :=
  canonical_of_padded canonicalInput30475 canonicalOutput30475 (by decide) (by decide)
    ⟨true, true, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30476 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, -2, 1, 0], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput30476 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound30476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30476.moment H = canonicalOutput30476.moment H :=
  canonical_of_padded canonicalInput30476 canonicalOutput30476 (by decide) (by decide)
    ⟨true, true, canonicalPermutation379, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30477 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, -2, 2, -1], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput30477 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound30477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30477.moment H = canonicalOutput30477.moment H :=
  canonical_of_padded canonicalInput30477 canonicalOutput30477 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation210, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30478 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 1, -1]]⟩

def canonicalOutput30478 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node283⟩

theorem canonicalSound30478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30478.moment H = canonicalOutput30478.moment H :=
  canonical_of_padded canonicalInput30478 canonicalOutput30478 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30479 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, -1, 1, -1], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30479 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node283⟩

theorem canonicalSound30479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30479.moment H = canonicalOutput30479.moment H :=
  canonical_of_padded canonicalInput30479 canonicalOutput30479 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30480 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 2, -1]]⟩

def canonicalOutput30480 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound30480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30480.moment H = canonicalOutput30480.moment H :=
  canonical_of_padded canonicalInput30480 canonicalOutput30480 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation210, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30481 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, 0, 0, -1], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30481 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound30481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30481.moment H = canonicalOutput30481.moment H :=
  canonical_of_padded canonicalInput30481 canonicalOutput30481 (by decide) (by decide)
    ⟨true, true, canonicalPermutation379, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30482 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, 1, -2, 0], ![1, 0, 0, -3, 3, -1]]⟩

def canonicalOutput30482 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node180⟩

theorem canonicalSound30482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30482.moment H = canonicalOutput30482.moment H :=
  canonical_of_padded canonicalInput30482 canonicalOutput30482 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation209, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30483 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, -1, 1], ![1, 0, 0, 1, -1, -1], ![1, 0, 0, -3, 2, 0]]⟩

def canonicalOutput30483 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound30483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30483.moment H = canonicalOutput30483.moment H :=
  canonical_of_padded canonicalInput30483 canonicalOutput30483 (by decide) (by decide)
    ⟨true, true, canonicalPermutation380, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30484 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![0, 0, 0, -2, 1, 1], ![2, 0, 0, 0, -1, -1]]⟩

def canonicalOutput30484 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node207⟩

theorem canonicalSound30484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30484.moment H = canonicalOutput30484.moment H :=
  canonical_of_padded canonicalInput30484 canonicalOutput30484 (by decide) (by decide)
    ⟨true, false, canonicalPermutation372, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30485 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![0, 0, 0, -1, 0, 1], ![2, 0, 0, -1, 0, -1]]⟩

def canonicalOutput30485 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30485.moment H = canonicalOutput30485.moment H :=
  canonical_of_padded canonicalInput30485 canonicalOutput30485 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput30486 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -1, -1, 0]]⟩

def canonicalOutput30486 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30486.moment H = canonicalOutput30486.moment H :=
  canonical_of_padded canonicalInput30486 canonicalOutput30486 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation211⟩ (by decide +kernel) hH

def canonicalInput30487 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30487 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound30487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30487.moment H = canonicalOutput30487.moment H :=
  canonical_of_padded canonicalInput30487 canonicalOutput30487 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput30488 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![0, 0, 0, 0, 1, -1], ![2, 0, 0, -2, -1, 1]]⟩

def canonicalOutput30488 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node291⟩

theorem canonicalSound30488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30488.moment H = canonicalOutput30488.moment H :=
  canonical_of_padded canonicalInput30488 canonicalOutput30488 (by decide) (by decide)
    ⟨true, false, canonicalPermutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30489 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![0, 0, 0, 1, 0, -1], ![2, 0, 0, -3, 0, 1]]⟩

def canonicalOutput30489 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30489.moment H = canonicalOutput30489.moment H :=
  canonical_of_padded canonicalInput30489 canonicalOutput30489 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput30490 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -2, 0, 1], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput30490 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30490.moment H = canonicalOutput30490.moment H :=
  canonical_of_padded canonicalInput30490 canonicalOutput30490 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput30491 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -2, 1, 0], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput30491 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30491.moment H = canonicalOutput30491.moment H :=
  canonical_of_padded canonicalInput30491 canonicalOutput30491 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput30492 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, -1, 1], ![1, 0, 0, -1, 1, -1]]⟩

def canonicalOutput30492 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node227⟩

theorem canonicalSound30492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30492.moment H = canonicalOutput30492.moment H :=
  canonical_of_padded canonicalInput30492 canonicalOutput30492 (by decide) (by decide)
    ⟨true, false, canonicalPermutation372, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30493 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30493 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30493.moment H = canonicalOutput30493.moment H :=
  canonical_of_padded canonicalInput30493 canonicalOutput30493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput30494 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 1, -1], ![1, 0, 0, -1, -1, 1]]⟩

def canonicalOutput30494 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node227⟩

theorem canonicalSound30494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30494.moment H = canonicalOutput30494.moment H :=
  canonical_of_padded canonicalInput30494 canonicalOutput30494 (by decide) (by decide)
    ⟨true, false, canonicalPermutation374, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30495 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, -2, 2, -1]]⟩

def canonicalOutput30495 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound30495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30495.moment H = canonicalOutput30495.moment H :=
  canonical_of_padded canonicalInput30495 canonicalOutput30495 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30496 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30496 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30496.moment H = canonicalOutput30496.moment H :=
  canonical_of_padded canonicalInput30496 canonicalOutput30496 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput30497 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, 0, -1], ![1, 0, 0, -2, 0, 1]]⟩

def canonicalOutput30497 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30497.moment H = canonicalOutput30497.moment H :=
  canonical_of_padded canonicalInput30497 canonicalOutput30497 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput30498 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 1, -2, 0], ![1, 0, 0, -3, 2, 0]]⟩

def canonicalOutput30498 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30498.moment H = canonicalOutput30498.moment H :=
  canonical_of_padded canonicalInput30498 canonicalOutput30498 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput30499 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 1, -1, -1], ![1, 0, 0, -3, 1, 1]]⟩

def canonicalOutput30499 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node176⟩

theorem canonicalSound30499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30499.moment H = canonicalOutput30499.moment H :=
  canonical_of_padded canonicalInput30499 canonicalOutput30499 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30500 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![0, 0, 0, -2, 0, 2], ![2, 0, 0, 0, -1, -1]]⟩

def canonicalOutput30500 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound30500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30500.moment H = canonicalOutput30500.moment H :=
  canonical_of_padded canonicalInput30500 canonicalOutput30500 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30501 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![0, 0, 0, -1, 0, 1], ![2, 0, 0, -1, -1, 0]]⟩

def canonicalOutput30501 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound30501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30501.moment H = canonicalOutput30501.moment H :=
  canonical_of_padded canonicalInput30501 canonicalOutput30501 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30502 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -2, -1, 1]]⟩

def canonicalOutput30502 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node46⟩

theorem canonicalSound30502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30502.moment H = canonicalOutput30502.moment H :=
  canonical_of_padded canonicalInput30502 canonicalOutput30502 (by decide) (by decide)
    ⟨true, false, canonicalPermutation374, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30503 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![0, 0, 0, 1, 0, -1], ![2, 0, 0, -3, -1, 2]]⟩

def canonicalOutput30503 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node268⟩

theorem canonicalSound30503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30503.moment H = canonicalOutput30503.moment H :=
  canonical_of_padded canonicalInput30503 canonicalOutput30503 (by decide) (by decide)
    ⟨true, true, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30504 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, -2, -1, 2], ![1, 0, 0, 0, 0, -1]]⟩

def canonicalOutput30504 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound30504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30504.moment H = canonicalOutput30504.moment H :=
  canonical_of_padded canonicalInput30504 canonicalOutput30504 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30505 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, -2, 0, 1], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput30505 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound30505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30505.moment H = canonicalOutput30505.moment H :=
  canonical_of_padded canonicalInput30505 canonicalOutput30505 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation207, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30506 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, -1, -2, 2], ![1, 0, 0, -1, 1, -1]]⟩

def canonicalOutput30506 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound30506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30506.moment H = canonicalOutput30506.moment H :=
  canonical_of_padded canonicalInput30506 canonicalOutput30506 (by decide) (by decide)
    ⟨true, false, canonicalPermutation377, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30507 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, -1, -1, 1], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30507 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node283⟩

theorem canonicalSound30507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30507.moment H = canonicalOutput30507.moment H :=
  canonical_of_padded canonicalInput30507 canonicalOutput30507 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30508 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, -1, 1]]⟩

def canonicalOutput30508 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node283⟩

theorem canonicalSound30508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30508.moment H = canonicalOutput30508.moment H :=
  canonical_of_padded canonicalInput30508 canonicalOutput30508 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30509 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30509 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound30509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30509.moment H = canonicalOutput30509.moment H :=
  canonical_of_padded canonicalInput30509 canonicalOutput30509 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30510 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 0, 1]]⟩

def canonicalOutput30510 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound30510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30510.moment H = canonicalOutput30510.moment H :=
  canonical_of_padded canonicalInput30510 canonicalOutput30510 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation207, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30511 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, 0, 0, -1], ![1, 0, 0, -2, -1, 2]]⟩

def canonicalOutput30511 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound30511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30511.moment H = canonicalOutput30511.moment H :=
  canonical_of_padded canonicalInput30511 canonicalOutput30511 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30512 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, 1, -2, 0], ![1, 0, 0, -3, 1, 1]]⟩

def canonicalOutput30512 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound30512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30512.moment H = canonicalOutput30512.moment H :=
  canonical_of_padded canonicalInput30512 canonicalOutput30512 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation209, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30513 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 1, -1], ![1, 0, 0, 1, -1, -1], ![1, 0, 0, -3, 0, 2]]⟩

def canonicalOutput30513 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound30513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30513.moment H = canonicalOutput30513.moment H :=
  canonical_of_padded canonicalInput30513 canonicalOutput30513 (by decide) (by decide)
    ⟨true, true, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30514 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -2, 1], ![0, 0, 0, -2, 2, 0], ![2, 0, 0, -1, 0, -1]]⟩

def canonicalOutput30514 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node169⟩

theorem canonicalSound30514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30514.moment H = canonicalOutput30514.moment H :=
  canonical_of_padded canonicalInput30514 canonicalOutput30514 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30515 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -2, 1], ![0, 0, 0, -2, 3, -1], ![2, 0, 0, -1, -1, 0]]⟩

def canonicalOutput30515 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node209⟩

theorem canonicalSound30515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30515.moment H = canonicalOutput30515.moment H :=
  canonical_of_padded canonicalInput30515 canonicalOutput30515 (by decide) (by decide)
    ⟨true, true, canonicalPermutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30516 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -2, 1], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 1, -1]]⟩

def canonicalOutput30516 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node268⟩

theorem canonicalSound30516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30516.moment H = canonicalOutput30516.moment H :=
  canonical_of_padded canonicalInput30516 canonicalOutput30516 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30517 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -2, 1], ![0, 0, 0, -1, 2, -1], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30517 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node169⟩

theorem canonicalSound30517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30517.moment H = canonicalOutput30517.moment H :=
  canonical_of_padded canonicalInput30517 canonicalOutput30517 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30518 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -2, 1], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -3, 2, -1]]⟩

def canonicalOutput30518 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node25⟩

theorem canonicalSound30518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30518.moment H = canonicalOutput30518.moment H :=
  canonical_of_padded canonicalInput30518 canonicalOutput30518 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30519 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -2, 1], ![0, 0, 0, 0, 1, -1], ![2, 0, 0, -3, 1, 0]]⟩

def canonicalOutput30519 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound30519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30519.moment H = canonicalOutput30519.moment H :=
  canonical_of_padded canonicalInput30519 canonicalOutput30519 (by decide) (by decide)
    ⟨true, true, canonicalPermutation376, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30520 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -2, 1, 1], ![2, 0, 0, -1, 0, -1]]⟩

def canonicalOutput30520 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node185⟩

theorem canonicalSound30520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30520.moment H = canonicalOutput30520.moment H :=
  canonical_of_padded canonicalInput30520 canonicalOutput30520 (by decide) (by decide)
    ⟨true, false, canonicalPermutation380, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30521 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -2, 2, 0], ![2, 0, 0, -1, -1, 0]]⟩

def canonicalOutput30521 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30521.moment H = canonicalOutput30521.moment H :=
  canonical_of_padded canonicalInput30521 canonicalOutput30521 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput30522 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 0, 1], ![2, 0, 0, -2, 1, -1]]⟩

def canonicalOutput30522 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node272⟩

theorem canonicalSound30522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30522.moment H = canonicalOutput30522.moment H :=
  canonical_of_padded canonicalInput30522 canonicalOutput30522 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30523 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30523 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30523.moment H = canonicalOutput30523.moment H :=
  canonical_of_padded canonicalInput30523 canonicalOutput30523 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput30524 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 2, -1], ![2, 0, 0, -2, -1, 1]]⟩

def canonicalOutput30524 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound30524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30524.moment H = canonicalOutput30524.moment H :=
  canonical_of_padded canonicalInput30524 canonicalOutput30524 (by decide) (by decide)
    ⟨true, true, canonicalPermutation382, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30525 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -3, 1, 0]]⟩

def canonicalOutput30525 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30525.moment H = canonicalOutput30525.moment H :=
  canonical_of_padded canonicalInput30525 canonicalOutput30525 (by decide) (by decide)
    ⟨true, false, canonicalPermutation232, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30526 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, 0, 1, -1], ![2, 0, 0, -3, 0, 1]]⟩

def canonicalOutput30526 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node292⟩

theorem canonicalSound30526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30526.moment H = canonicalOutput30526.moment H :=
  canonical_of_padded canonicalInput30526 canonicalOutput30526 (by decide) (by decide)
    ⟨true, false, canonicalPermutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30527 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, -2, 0, 1], ![1, 0, 0, -1, 1, -1]]⟩

def canonicalOutput30527 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound30527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30527.moment H = canonicalOutput30527.moment H :=
  canonical_of_padded canonicalInput30527 canonicalOutput30527 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
