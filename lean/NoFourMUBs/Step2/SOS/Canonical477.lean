import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
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

def canonicalInput30528 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, -2, 1, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30528 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30528.moment H = canonicalOutput30528.moment H :=
  canonical_of_padded canonicalInput30528 canonicalOutput30528 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput30529 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, -2, 2, -1], ![1, 0, 0, -1, -1, 1]]⟩

def canonicalOutput30529 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound30529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30529.moment H = canonicalOutput30529.moment H :=
  canonical_of_padded canonicalInput30529 canonicalOutput30529 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30530 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, -1, -1, 1], ![1, 0, 0, -2, 2, -1]]⟩

def canonicalOutput30530 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound30530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30530.moment H = canonicalOutput30530.moment H :=
  canonical_of_padded canonicalInput30530 canonicalOutput30530 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30531 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30531 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30531.moment H = canonicalOutput30531.moment H :=
  canonical_of_padded canonicalInput30531 canonicalOutput30531 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation375⟩ (by decide +kernel) hH

def canonicalInput30532 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, -1, 1, -1], ![1, 0, 0, -2, 0, 1]]⟩

def canonicalOutput30532 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound30532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30532.moment H = canonicalOutput30532.moment H :=
  canonical_of_padded canonicalInput30532 canonicalOutput30532 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30533 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, -3, 3, -1]]⟩

def canonicalOutput30533 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node187⟩

theorem canonicalSound30533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30533.moment H = canonicalOutput30533.moment H :=
  canonical_of_padded canonicalInput30533 canonicalOutput30533 (by decide) (by decide)
    ⟨true, false, canonicalPermutation383, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30534 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -3, 2, 0]]⟩

def canonicalOutput30534 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound30534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30534.moment H = canonicalOutput30534.moment H :=
  canonical_of_padded canonicalInput30534 canonicalOutput30534 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30535 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![1, 0, 0, 0, 0, -1], ![1, 0, 0, -3, 1, 1]]⟩

def canonicalOutput30535 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node285⟩

theorem canonicalSound30535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30535.moment H = canonicalOutput30535.moment H :=
  canonical_of_padded canonicalInput30535 canonicalOutput30535 (by decide) (by decide)
    ⟨true, true, canonicalPermutation379, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30536 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![0, 0, 0, -2, 0, 2], ![2, 0, 0, -1, 0, -1]]⟩

def canonicalOutput30536 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30536.moment H = canonicalOutput30536.moment H :=
  canonical_of_padded canonicalInput30536 canonicalOutput30536 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation382⟩ (by decide +kernel) hH

def canonicalInput30537 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![0, 0, 0, -2, 1, 1], ![2, 0, 0, -1, -1, 0]]⟩

def canonicalOutput30537 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node185⟩

theorem canonicalSound30537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30537.moment H = canonicalOutput30537.moment H :=
  canonical_of_padded canonicalInput30537 canonicalOutput30537 (by decide) (by decide)
    ⟨true, false, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30538 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![0, 0, 0, -1, 0, 1], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30538 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30538.moment H = canonicalOutput30538.moment H :=
  canonical_of_padded canonicalInput30538 canonicalOutput30538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput30539 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, -1, 1]]⟩

def canonicalOutput30539 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node272⟩

theorem canonicalSound30539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30539.moment H = canonicalOutput30539.moment H :=
  canonical_of_padded canonicalInput30539 canonicalOutput30539 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30540 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -3, 0, 1]]⟩

def canonicalOutput30540 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30540.moment H = canonicalOutput30540.moment H :=
  canonical_of_padded canonicalInput30540 canonicalOutput30540 (by decide) (by decide)
    ⟨true, false, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30541 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![0, 0, 0, 0, 1, -1], ![2, 0, 0, -3, -1, 2]]⟩

def canonicalOutput30541 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound30541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30541.moment H = canonicalOutput30541.moment H :=
  canonical_of_padded canonicalInput30541 canonicalOutput30541 (by decide) (by decide)
    ⟨true, false, canonicalPermutation355, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30542 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, -2, -1, 2], ![1, 0, 0, -1, 1, -1]]⟩

def canonicalOutput30542 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound30542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30542.moment H = canonicalOutput30542.moment H :=
  canonical_of_padded canonicalInput30542 canonicalOutput30542 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30543 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, -2, 0, 1], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30543 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30543.moment H = canonicalOutput30543.moment H :=
  canonical_of_padded canonicalInput30543 canonicalOutput30543 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput30544 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, -2, 1, 0], ![1, 0, 0, -1, -1, 1]]⟩

def canonicalOutput30544 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound30544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30544.moment H = canonicalOutput30544.moment H :=
  canonical_of_padded canonicalInput30544 canonicalOutput30544 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30545 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, -1, -2, 2], ![1, 0, 0, -2, 2, -1]]⟩

def canonicalOutput30545 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound30545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30545.moment H = canonicalOutput30545.moment H :=
  canonical_of_padded canonicalInput30545 canonicalOutput30545 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30546 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, -1, -1, 1], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30546 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound30546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30546.moment H = canonicalOutput30546.moment H :=
  canonical_of_padded canonicalInput30546 canonicalOutput30546 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30547 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -2, 0, 1]]⟩

def canonicalOutput30547 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30547.moment H = canonicalOutput30547.moment H :=
  canonical_of_padded canonicalInput30547 canonicalOutput30547 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput30548 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, -1, 1, -1], ![1, 0, 0, -2, -1, 2]]⟩

def canonicalOutput30548 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound30548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30548.moment H = canonicalOutput30548.moment H :=
  canonical_of_padded canonicalInput30548 canonicalOutput30548 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30549 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, 0, -2, 1], ![1, 0, 0, -3, 2, 0]]⟩

def canonicalOutput30549 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node215⟩

theorem canonicalSound30549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30549.moment H = canonicalOutput30549.moment H :=
  canonical_of_padded canonicalInput30549 canonicalOutput30549 (by decide) (by decide)
    ⟨true, false, canonicalPermutation383, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30550 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -3, 1, 1]]⟩

def canonicalOutput30550 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node285⟩

theorem canonicalSound30550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30550.moment H = canonicalOutput30550.moment H :=
  canonical_of_padded canonicalInput30550 canonicalOutput30550 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation207, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30551 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, 0, -1], ![1, 0, 0, 0, 0, -1], ![1, 0, 0, -3, 0, 2]]⟩

def canonicalOutput30551 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound30551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30551.moment H = canonicalOutput30551.moment H :=
  canonical_of_padded canonicalInput30551 canonicalOutput30551 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation210, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30552 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -2, 0], ![0, 0, 0, -2, 1, 1], ![2, 0, 0, -2, 1, -1]]⟩

def canonicalOutput30552 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound30552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30552.moment H = canonicalOutput30552.moment H :=
  canonical_of_padded canonicalInput30552 canonicalOutput30552 (by decide) (by decide)
    ⟨true, false, canonicalPermutation380, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30553 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -2, 0], ![0, 0, 0, -2, 2, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30553 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node31⟩

theorem canonicalSound30553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30553.moment H = canonicalOutput30553.moment H :=
  canonical_of_padded canonicalInput30553 canonicalOutput30553 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation381⟩ (by decide +kernel) hH

def canonicalInput30554 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -2, 0], ![0, 0, 0, -2, 3, -1], ![2, 0, 0, -2, -1, 1]]⟩

def canonicalOutput30554 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node102⟩

theorem canonicalSound30554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30554.moment H = canonicalOutput30554.moment H :=
  canonical_of_padded canonicalInput30554 canonicalOutput30554 (by decide) (by decide)
    ⟨true, true, canonicalPermutation382, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30555 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -2, 0], ![0, 0, 0, -1, 0, 1], ![2, 0, 0, -3, 2, -1]]⟩

def canonicalOutput30555 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node256⟩

theorem canonicalSound30555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30555.moment H = canonicalOutput30555.moment H :=
  canonical_of_padded canonicalInput30555 canonicalOutput30555 (by decide) (by decide)
    ⟨true, false, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30556 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -2, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -3, 1, 0]]⟩

def canonicalOutput30556 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node52⟩

theorem canonicalSound30556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30556.moment H = canonicalOutput30556.moment H :=
  canonical_of_padded canonicalInput30556 canonicalOutput30556 (by decide) (by decide)
    ⟨true, false, canonicalPermutation377, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30557 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -2, 0], ![0, 0, 0, -1, 2, -1], ![2, 0, 0, -3, 0, 1]]⟩

def canonicalOutput30557 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node201⟩

theorem canonicalSound30557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30557.moment H = canonicalOutput30557.moment H :=
  canonical_of_padded canonicalInput30557 canonicalOutput30557 (by decide) (by decide)
    ⟨true, true, canonicalPermutation382, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30558 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![0, 0, 0, -2, 0, 2], ![2, 0, 0, -2, 1, -1]]⟩

def canonicalOutput30558 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node146⟩

theorem canonicalSound30558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30558.moment H = canonicalOutput30558.moment H :=
  canonical_of_padded canonicalInput30558 canonicalOutput30558 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30559 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![0, 0, 0, -2, 1, 1], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30559 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node145⟩

theorem canonicalSound30559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30559.moment H = canonicalOutput30559.moment H :=
  canonical_of_padded canonicalInput30559 canonicalOutput30559 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30560 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![0, 0, 0, -2, 2, 0], ![2, 0, 0, -2, -1, 1]]⟩

def canonicalOutput30560 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node146⟩

theorem canonicalSound30560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30560.moment H = canonicalOutput30560.moment H :=
  canonical_of_padded canonicalInput30560 canonicalOutput30560 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30561 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![0, 0, 0, -1, 0, 1], ![2, 0, 0, -3, 1, 0]]⟩

def canonicalOutput30561 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node254⟩

theorem canonicalSound30561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30561.moment H = canonicalOutput30561.moment H :=
  canonical_of_padded canonicalInput30561 canonicalOutput30561 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30562 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -3, 0, 1]]⟩

def canonicalOutput30562 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node254⟩

theorem canonicalSound30562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30562.moment H = canonicalOutput30562.moment H :=
  canonical_of_padded canonicalInput30562 canonicalOutput30562 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30563 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![0, 0, 0, -1, 2, -1], ![2, 0, 0, -3, -1, 2]]⟩

def canonicalOutput30563 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound30563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30563.moment H = canonicalOutput30563.moment H :=
  canonical_of_padded canonicalInput30563 canonicalOutput30563 (by decide) (by decide)
    ⟨true, true, canonicalPermutation382, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30564 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -2, -1, 2], ![1, 0, 0, -2, 2, -1]]⟩

def canonicalOutput30564 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound30564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30564.moment H = canonicalOutput30564.moment H :=
  canonical_of_padded canonicalInput30564 canonicalOutput30564 (by decide) (by decide)
    ⟨true, false, canonicalPermutation289, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30565 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -2, 0, 1], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30565 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node150⟩

theorem canonicalSound30565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30565.moment H = canonicalOutput30565.moment H :=
  canonical_of_padded canonicalInput30565 canonicalOutput30565 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30566 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -2, 1, 0], ![1, 0, 0, -2, 0, 1]]⟩

def canonicalOutput30566 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node150⟩

theorem canonicalSound30566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30566.moment H = canonicalOutput30566.moment H :=
  canonical_of_padded canonicalInput30566 canonicalOutput30566 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30567 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -2, 2, -1], ![1, 0, 0, -2, -1, 2]]⟩

def canonicalOutput30567 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound30567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30567.moment H = canonicalOutput30567.moment H :=
  canonical_of_padded canonicalInput30567 canonicalOutput30567 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30568 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -1, -2, 2], ![1, 0, 0, -3, 3, -1]]⟩

def canonicalOutput30568 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound30568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30568.moment H = canonicalOutput30568.moment H :=
  canonical_of_padded canonicalInput30568 canonicalOutput30568 (by decide) (by decide)
    ⟨true, false, canonicalPermutation383, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30569 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -1, -1, 1], ![1, 0, 0, -3, 2, 0]]⟩

def canonicalOutput30569 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound30569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30569.moment H = canonicalOutput30569.moment H :=
  canonical_of_padded canonicalInput30569 canonicalOutput30569 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30570 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -3, 1, 1]]⟩

def canonicalOutput30570 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node253⟩

theorem canonicalSound30570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30570.moment H = canonicalOutput30570.moment H :=
  canonical_of_padded canonicalInput30570 canonicalOutput30570 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30571 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 4, -1, -1], ![1, 0, 0, -1, 1, -1], ![1, 0, 0, -3, 0, 2]]⟩

def canonicalOutput30571 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound30571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30571.moment H = canonicalOutput30571.moment H :=
  canonical_of_padded canonicalInput30571 canonicalOutput30571 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30572 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 5, -2, -1], ![0, 0, 0, -2, 0, 2], ![2, 0, 0, -3, 2, -1]]⟩

def canonicalOutput30572 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node125⟩

theorem canonicalSound30572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30572.moment H = canonicalOutput30572.moment H :=
  canonical_of_padded canonicalInput30572 canonicalOutput30572 (by decide) (by decide)
    ⟨true, false, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30573 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 5, -2, -1], ![0, 0, 0, -2, 1, 1], ![2, 0, 0, -3, 1, 0]]⟩

def canonicalOutput30573 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node127⟩

theorem canonicalSound30573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30573.moment H = canonicalOutput30573.moment H :=
  canonical_of_padded canonicalInput30573 canonicalOutput30573 (by decide) (by decide)
    ⟨true, false, canonicalPermutation380, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30574 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 5, -2, -1], ![0, 0, 0, -2, 2, 0], ![2, 0, 0, -3, 0, 1]]⟩

def canonicalOutput30574 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node120⟩

theorem canonicalSound30574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30574.moment H = canonicalOutput30574.moment H :=
  canonical_of_padded canonicalInput30574 canonicalOutput30574 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30575 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 5, -2, -1], ![0, 0, 0, -2, 3, -1], ![2, 0, 0, -3, -1, 2]]⟩

def canonicalOutput30575 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code75

theorem canonicalSound30575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30575.moment H = canonicalOutput30575.moment H :=
  canonical_of_padded canonicalInput30575 canonicalOutput30575 (by decide) (by decide)
    ⟨true, true, canonicalPermutation382, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30576 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30576 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound30576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30576.moment H = canonicalOutput30576.moment H :=
  canonical_of_padded canonicalInput30576 canonicalOutput30576 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30577 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30577 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30577.moment H = canonicalOutput30577.moment H :=
  canonical_of_padded canonicalInput30577 canonicalOutput30577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30578 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30578 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30578.moment H = canonicalOutput30578.moment H :=
  canonical_of_padded canonicalInput30578 canonicalOutput30578 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30579 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30579 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound30579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30579.moment H = canonicalOutput30579.moment H :=
  canonical_of_padded canonicalInput30579 canonicalOutput30579 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30580 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30580 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30580.moment H = canonicalOutput30580.moment H :=
  canonical_of_padded canonicalInput30580 canonicalOutput30580 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30581 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30581 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30581.moment H = canonicalOutput30581.moment H :=
  canonical_of_padded canonicalInput30581 canonicalOutput30581 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30582 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30582 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30582.moment H = canonicalOutput30582.moment H :=
  canonical_of_padded canonicalInput30582 canonicalOutput30582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30583 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30583 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30583.moment H = canonicalOutput30583.moment H :=
  canonical_of_padded canonicalInput30583 canonicalOutput30583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30584 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30584 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30584.moment H = canonicalOutput30584.moment H :=
  canonical_of_padded canonicalInput30584 canonicalOutput30584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30585 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30585 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30585.moment H = canonicalOutput30585.moment H :=
  canonical_of_padded canonicalInput30585 canonicalOutput30585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30586 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30586 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30586.moment H = canonicalOutput30586.moment H :=
  canonical_of_padded canonicalInput30586 canonicalOutput30586 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30587 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30587 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30587.moment H = canonicalOutput30587.moment H :=
  canonical_of_padded canonicalInput30587 canonicalOutput30587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30588 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30588 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30588.moment H = canonicalOutput30588.moment H :=
  canonical_of_padded canonicalInput30588 canonicalOutput30588 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30589 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30589 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30589.moment H = canonicalOutput30589.moment H :=
  canonical_of_padded canonicalInput30589 canonicalOutput30589 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30590 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30590 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30590.moment H = canonicalOutput30590.moment H :=
  canonical_of_padded canonicalInput30590 canonicalOutput30590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30591 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30591 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30591.moment H = canonicalOutput30591.moment H :=
  canonical_of_padded canonicalInput30591 canonicalOutput30591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
