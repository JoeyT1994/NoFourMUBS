import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30592 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30592 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound30592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30592.moment H = canonicalOutput30592.moment H :=
  canonical_of_padded canonicalInput30592 canonicalOutput30592 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30593 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30593 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30593.moment H = canonicalOutput30593.moment H :=
  canonical_of_padded canonicalInput30593 canonicalOutput30593 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30594 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30594 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30594.moment H = canonicalOutput30594.moment H :=
  canonical_of_padded canonicalInput30594 canonicalOutput30594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30595 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30595 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound30595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30595.moment H = canonicalOutput30595.moment H :=
  canonical_of_padded canonicalInput30595 canonicalOutput30595 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30596 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30596 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30596.moment H = canonicalOutput30596.moment H :=
  canonical_of_padded canonicalInput30596 canonicalOutput30596 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30597 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30597 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30597.moment H = canonicalOutput30597.moment H :=
  canonical_of_padded canonicalInput30597 canonicalOutput30597 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30598 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30598 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30598.moment H = canonicalOutput30598.moment H :=
  canonical_of_padded canonicalInput30598 canonicalOutput30598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30599 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30599 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30599.moment H = canonicalOutput30599.moment H :=
  canonical_of_padded canonicalInput30599 canonicalOutput30599 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30600 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30600 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30600.moment H = canonicalOutput30600.moment H :=
  canonical_of_padded canonicalInput30600 canonicalOutput30600 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30601 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30601 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30601.moment H = canonicalOutput30601.moment H :=
  canonical_of_padded canonicalInput30601 canonicalOutput30601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30602 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30602 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30602.moment H = canonicalOutput30602.moment H :=
  canonical_of_padded canonicalInput30602 canonicalOutput30602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30603 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30603 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30603.moment H = canonicalOutput30603.moment H :=
  canonical_of_padded canonicalInput30603 canonicalOutput30603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30604 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30604 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30604.moment H = canonicalOutput30604.moment H :=
  canonical_of_padded canonicalInput30604 canonicalOutput30604 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30605 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30605 : ExponentCode := ⟨0, 0, OAI.MUB6.Certificate.PairSemantics.node0⟩

theorem canonicalSound30605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30605.moment H = canonicalOutput30605.moment H :=
  canonical_of_padded canonicalInput30605 canonicalOutput30605 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30606 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30606 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30606.moment H = canonicalOutput30606.moment H :=
  canonical_of_padded canonicalInput30606 canonicalOutput30606 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30607 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30607 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30607.moment H = canonicalOutput30607.moment H :=
  canonical_of_padded canonicalInput30607 canonicalOutput30607 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30608 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30608 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30608.moment H = canonicalOutput30608.moment H :=
  canonical_of_padded canonicalInput30608 canonicalOutput30608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30609 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30609 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30609.moment H = canonicalOutput30609.moment H :=
  canonical_of_padded canonicalInput30609 canonicalOutput30609 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30610 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30610 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30610.moment H = canonicalOutput30610.moment H :=
  canonical_of_padded canonicalInput30610 canonicalOutput30610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30611 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30611 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30611.moment H = canonicalOutput30611.moment H :=
  canonical_of_padded canonicalInput30611 canonicalOutput30611 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30612 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30612 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30612.moment H = canonicalOutput30612.moment H :=
  canonical_of_padded canonicalInput30612 canonicalOutput30612 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30613 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30613 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30613.moment H = canonicalOutput30613.moment H :=
  canonical_of_padded canonicalInput30613 canonicalOutput30613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30614 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30614 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30614.moment H = canonicalOutput30614.moment H :=
  canonical_of_padded canonicalInput30614 canonicalOutput30614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30615 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, -2, 3, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30615 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30615.moment H = canonicalOutput30615.moment H :=
  canonical_of_padded canonicalInput30615 canonicalOutput30615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30616 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, -2, 4, -2], ![0, 0, 0, 1, -2, 1]]⟩

def canonicalOutput30616 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node35⟩

theorem canonicalSound30616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30616.moment H = canonicalOutput30616.moment H :=
  canonical_of_padded canonicalInput30616 canonicalOutput30616 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30617 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30617 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30617.moment H = canonicalOutput30617.moment H :=
  canonical_of_padded canonicalInput30617 canonicalOutput30617 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30618 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, -1, 3, -2], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30618 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30618.moment H = canonicalOutput30618.moment H :=
  canonical_of_padded canonicalInput30618 canonicalOutput30618 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30619 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30619 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30619.moment H = canonicalOutput30619.moment H :=
  canonical_of_padded canonicalInput30619 canonicalOutput30619 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30620 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 0, 2, -2], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30620 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30620.moment H = canonicalOutput30620.moment H :=
  canonical_of_padded canonicalInput30620 canonicalOutput30620 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30621 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -2, 2, 0]]⟩

def canonicalOutput30621 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30621.moment H = canonicalOutput30621.moment H :=
  canonical_of_padded canonicalInput30621 canonicalOutput30621 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30622 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30622 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound30622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30622.moment H = canonicalOutput30622.moment H :=
  canonical_of_padded canonicalInput30622 canonicalOutput30622 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30623 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -2, 2, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30623 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30623.moment H = canonicalOutput30623.moment H :=
  canonical_of_padded canonicalInput30623 canonicalOutput30623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30624 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -2, 3, -1], ![0, 0, 0, 1, -2, 1]]⟩

def canonicalOutput30624 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30624.moment H = canonicalOutput30624.moment H :=
  canonical_of_padded canonicalInput30624 canonicalOutput30624 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30625 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30625 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30625.moment H = canonicalOutput30625.moment H :=
  canonical_of_padded canonicalInput30625 canonicalOutput30625 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30626 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30626 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30626.moment H = canonicalOutput30626.moment H :=
  canonical_of_padded canonicalInput30626 canonicalOutput30626 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30627 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30627 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30627.moment H = canonicalOutput30627.moment H :=
  canonical_of_padded canonicalInput30627 canonicalOutput30627 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30628 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 3, -2], ![0, 0, 0, 0, -2, 2]]⟩

def canonicalOutput30628 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30628.moment H = canonicalOutput30628.moment H :=
  canonical_of_padded canonicalInput30628 canonicalOutput30628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30629 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30629 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30629.moment H = canonicalOutput30629.moment H :=
  canonical_of_padded canonicalInput30629 canonicalOutput30629 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30630 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30630 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30630.moment H = canonicalOutput30630.moment H :=
  canonical_of_padded canonicalInput30630 canonicalOutput30630 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30631 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30631 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30631.moment H = canonicalOutput30631.moment H :=
  canonical_of_padded canonicalInput30631 canonicalOutput30631 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30632 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 2, -2], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30632 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30632.moment H = canonicalOutput30632.moment H :=
  canonical_of_padded canonicalInput30632 canonicalOutput30632 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30633 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -2, 2, 0]]⟩

def canonicalOutput30633 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30633.moment H = canonicalOutput30633.moment H :=
  canonical_of_padded canonicalInput30633 canonicalOutput30633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30634 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30634 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30634.moment H = canonicalOutput30634.moment H :=
  canonical_of_padded canonicalInput30634 canonicalOutput30634 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30635 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30635 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30635.moment H = canonicalOutput30635.moment H :=
  canonical_of_padded canonicalInput30635 canonicalOutput30635 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30636 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, -3, 3, 0]]⟩

def canonicalOutput30636 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30636.moment H = canonicalOutput30636.moment H :=
  canonical_of_padded canonicalInput30636 canonicalOutput30636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30637 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30637 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30637.moment H = canonicalOutput30637.moment H :=
  canonical_of_padded canonicalInput30637 canonicalOutput30637 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30638 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -2, 2, 0], ![0, 0, 0, 1, -2, 1]]⟩

def canonicalOutput30638 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30638.moment H = canonicalOutput30638.moment H :=
  canonical_of_padded canonicalInput30638 canonicalOutput30638 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30639 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30639 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30639.moment H = canonicalOutput30639.moment H :=
  canonical_of_padded canonicalInput30639 canonicalOutput30639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30640 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30640 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30640.moment H = canonicalOutput30640.moment H :=
  canonical_of_padded canonicalInput30640 canonicalOutput30640 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30641 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30641 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30641.moment H = canonicalOutput30641.moment H :=
  canonical_of_padded canonicalInput30641 canonicalOutput30641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30642 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -2, 2]]⟩

def canonicalOutput30642 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30642.moment H = canonicalOutput30642.moment H :=
  canonical_of_padded canonicalInput30642 canonicalOutput30642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30643 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30643 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound30643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30643.moment H = canonicalOutput30643.moment H :=
  canonical_of_padded canonicalInput30643 canonicalOutput30643 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30644 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30644 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound30644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30644.moment H = canonicalOutput30644.moment H :=
  canonical_of_padded canonicalInput30644 canonicalOutput30644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30645 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30645 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30645.moment H = canonicalOutput30645.moment H :=
  canonical_of_padded canonicalInput30645 canonicalOutput30645 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30646 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 2, -2], ![0, 0, 0, -1, -2, 3]]⟩

def canonicalOutput30646 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30646.moment H = canonicalOutput30646.moment H :=
  canonical_of_padded canonicalInput30646 canonicalOutput30646 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30647 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, -2, 2, 0]]⟩

def canonicalOutput30647 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30647.moment H = canonicalOutput30647.moment H :=
  canonical_of_padded canonicalInput30647 canonicalOutput30647 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30648 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30648 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30648.moment H = canonicalOutput30648.moment H :=
  canonical_of_padded canonicalInput30648 canonicalOutput30648 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30649 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30649 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30649.moment H = canonicalOutput30649.moment H :=
  canonical_of_padded canonicalInput30649 canonicalOutput30649 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30650 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, -2, -1, 3]]⟩

def canonicalOutput30650 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30650.moment H = canonicalOutput30650.moment H :=
  canonical_of_padded canonicalInput30650 canonicalOutput30650 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30651 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, -3, 2, 1]]⟩

def canonicalOutput30651 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30651.moment H = canonicalOutput30651.moment H :=
  canonical_of_padded canonicalInput30651 canonicalOutput30651 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30652 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, -2, 0, 2], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30652 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30652.moment H = canonicalOutput30652.moment H :=
  canonical_of_padded canonicalInput30652 canonicalOutput30652 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30653 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, -2, 1]]⟩

def canonicalOutput30653 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound30653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30653.moment H = canonicalOutput30653.moment H :=
  canonical_of_padded canonicalInput30653 canonicalOutput30653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30654 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30654 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30654.moment H = canonicalOutput30654.moment H :=
  canonical_of_padded canonicalInput30654 canonicalOutput30654 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30655 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30655 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30655.moment H = canonicalOutput30655.moment H :=
  canonical_of_padded canonicalInput30655 canonicalOutput30655 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
