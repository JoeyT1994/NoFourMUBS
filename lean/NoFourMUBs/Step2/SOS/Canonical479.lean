import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30656 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -2, 2]]⟩

def canonicalOutput30656 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30656.moment H = canonicalOutput30656.moment H :=
  canonical_of_padded canonicalInput30656 canonicalOutput30656 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30657 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, -2, 2], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30657 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30657.moment H = canonicalOutput30657.moment H :=
  canonical_of_padded canonicalInput30657 canonicalOutput30657 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30658 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30658 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30658.moment H = canonicalOutput30658.moment H :=
  canonical_of_padded canonicalInput30658 canonicalOutput30658 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30659 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30659 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30659.moment H = canonicalOutput30659.moment H :=
  canonical_of_padded canonicalInput30659 canonicalOutput30659 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30660 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -2, 3]]⟩

def canonicalOutput30660 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30660.moment H = canonicalOutput30660.moment H :=
  canonical_of_padded canonicalInput30660 canonicalOutput30660 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30661 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30661 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound30661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30661.moment H = canonicalOutput30661.moment H :=
  canonical_of_padded canonicalInput30661 canonicalOutput30661 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30662 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30662 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30662.moment H = canonicalOutput30662.moment H :=
  canonical_of_padded canonicalInput30662 canonicalOutput30662 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30663 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -2, -1, 3]]⟩

def canonicalOutput30663 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30663.moment H = canonicalOutput30663.moment H :=
  canonical_of_padded canonicalInput30663 canonicalOutput30663 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30664 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, -2, -2, 4]]⟩

def canonicalOutput30664 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node35⟩

theorem canonicalSound30664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30664.moment H = canonicalOutput30664.moment H :=
  canonical_of_padded canonicalInput30664 canonicalOutput30664 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30665 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, -3, 1, 2]]⟩

def canonicalOutput30665 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30665.moment H = canonicalOutput30665.moment H :=
  canonical_of_padded canonicalInput30665 canonicalOutput30665 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30666 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 2, -3], ![0, 0, 0, -1, -2, 3], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30666 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30666.moment H = canonicalOutput30666.moment H :=
  canonical_of_padded canonicalInput30666 canonicalOutput30666 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30667 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 2, -3], ![0, 0, 0, 0, -2, 2], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30667 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30667.moment H = canonicalOutput30667.moment H :=
  canonical_of_padded canonicalInput30667 canonicalOutput30667 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30668 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 2, -3], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30668 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30668.moment H = canonicalOutput30668.moment H :=
  canonical_of_padded canonicalInput30668 canonicalOutput30668 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30669 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 2, -3], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, -3, 0, 3]]⟩

def canonicalOutput30669 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound30669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30669.moment H = canonicalOutput30669.moment H :=
  canonical_of_padded canonicalInput30669 canonicalOutput30669 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30670 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, -2, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30670 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound30670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30670.moment H = canonicalOutput30670.moment H :=
  canonical_of_padded canonicalInput30670 canonicalOutput30670 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30671 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, -2, 3, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30671 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30671.moment H = canonicalOutput30671.moment H :=
  canonical_of_padded canonicalInput30671 canonicalOutput30671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30672 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, -2, 4, -2], ![0, 0, 0, 0, -2, 2]]⟩

def canonicalOutput30672 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node31⟩

theorem canonicalSound30672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30672.moment H = canonicalOutput30672.moment H :=
  canonical_of_padded canonicalInput30672 canonicalOutput30672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30673 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30673 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30673.moment H = canonicalOutput30673.moment H :=
  canonical_of_padded canonicalInput30673 canonicalOutput30673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30674 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30674 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30674.moment H = canonicalOutput30674.moment H :=
  canonical_of_padded canonicalInput30674 canonicalOutput30674 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30675 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, -1, 3, -2], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30675 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30675.moment H = canonicalOutput30675.moment H :=
  canonical_of_padded canonicalInput30675 canonicalOutput30675 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30676 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -2, 2, 0]]⟩

def canonicalOutput30676 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound30676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30676.moment H = canonicalOutput30676.moment H :=
  canonical_of_padded canonicalInput30676 canonicalOutput30676 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30677 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30677 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30677.moment H = canonicalOutput30677.moment H :=
  canonical_of_padded canonicalInput30677 canonicalOutput30677 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30678 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, 0, 2, -2], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30678 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound30678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30678.moment H = canonicalOutput30678.moment H :=
  canonical_of_padded canonicalInput30678 canonicalOutput30678 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30679 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -2, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -3, 2, 1]]⟩

def canonicalOutput30679 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30679.moment H = canonicalOutput30679.moment H :=
  canonical_of_padded canonicalInput30679 canonicalOutput30679 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30680 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30680 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30680.moment H = canonicalOutput30680.moment H :=
  canonical_of_padded canonicalInput30680 canonicalOutput30680 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30681 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -2, 2, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30681 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30681.moment H = canonicalOutput30681.moment H :=
  canonical_of_padded canonicalInput30681 canonicalOutput30681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30682 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -2, 3, -1], ![0, 0, 0, 0, -2, 2]]⟩

def canonicalOutput30682 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30682.moment H = canonicalOutput30682.moment H :=
  canonical_of_padded canonicalInput30682 canonicalOutput30682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30683 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30683 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound30683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30683.moment H = canonicalOutput30683.moment H :=
  canonical_of_padded canonicalInput30683 canonicalOutput30683 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30684 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30684 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30684.moment H = canonicalOutput30684.moment H :=
  canonical_of_padded canonicalInput30684 canonicalOutput30684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30685 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30685 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound30685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30685.moment H = canonicalOutput30685.moment H :=
  canonical_of_padded canonicalInput30685 canonicalOutput30685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30686 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30686 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node44⟩

theorem canonicalSound30686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30686.moment H = canonicalOutput30686.moment H :=
  canonical_of_padded canonicalInput30686 canonicalOutput30686 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30687 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 3, -2], ![0, 0, 0, -1, -2, 3]]⟩

def canonicalOutput30687 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound30687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30687.moment H = canonicalOutput30687.moment H :=
  canonical_of_padded canonicalInput30687 canonicalOutput30687 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30688 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 2, 0]]⟩

def canonicalOutput30688 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30688.moment H = canonicalOutput30688.moment H :=
  canonical_of_padded canonicalInput30688 canonicalOutput30688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30689 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30689 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30689.moment H = canonicalOutput30689.moment H :=
  canonical_of_padded canonicalInput30689 canonicalOutput30689 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30690 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30690 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30690.moment H = canonicalOutput30690.moment H :=
  canonical_of_padded canonicalInput30690 canonicalOutput30690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30691 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 0, 2, -2], ![0, 0, 0, -2, -1, 3]]⟩

def canonicalOutput30691 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30691.moment H = canonicalOutput30691.moment H :=
  canonical_of_padded canonicalInput30691 canonicalOutput30691 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30692 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, -3, 3, 0]]⟩

def canonicalOutput30692 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound30692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30692.moment H = canonicalOutput30692.moment H :=
  canonical_of_padded canonicalInput30692 canonicalOutput30692 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30693 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -3, 2, 1]]⟩

def canonicalOutput30693 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30693.moment H = canonicalOutput30693.moment H :=
  canonical_of_padded canonicalInput30693 canonicalOutput30693 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30694 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -3, 1, 2]]⟩

def canonicalOutput30694 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30694.moment H = canonicalOutput30694.moment H :=
  canonical_of_padded canonicalInput30694 canonicalOutput30694 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30695 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, -2, 0, 2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30695 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound30695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30695.moment H = canonicalOutput30695.moment H :=
  canonical_of_padded canonicalInput30695 canonicalOutput30695 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30696 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30696 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30696.moment H = canonicalOutput30696.moment H :=
  canonical_of_padded canonicalInput30696 canonicalOutput30696 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30697 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, -2, 2, 0], ![0, 0, 0, 0, -2, 2]]⟩

def canonicalOutput30697 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound30697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30697.moment H = canonicalOutput30697.moment H :=
  canonical_of_padded canonicalInput30697 canonicalOutput30697 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30698 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30698 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30698.moment H = canonicalOutput30698.moment H :=
  canonical_of_padded canonicalInput30698 canonicalOutput30698 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30699 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30699 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30699.moment H = canonicalOutput30699.moment H :=
  canonical_of_padded canonicalInput30699 canonicalOutput30699 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30700 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30700 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30700.moment H = canonicalOutput30700.moment H :=
  canonical_of_padded canonicalInput30700 canonicalOutput30700 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30701 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -2, 3]]⟩

def canonicalOutput30701 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30701.moment H = canonicalOutput30701.moment H :=
  canonical_of_padded canonicalInput30701 canonicalOutput30701 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30702 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -2, 2], ![0, 0, 0, -2, 2, 0]]⟩

def canonicalOutput30702 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node41⟩

theorem canonicalSound30702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30702.moment H = canonicalOutput30702.moment H :=
  canonical_of_padded canonicalInput30702 canonicalOutput30702 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30703 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30703 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound30703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30703.moment H = canonicalOutput30703.moment H :=
  canonical_of_padded canonicalInput30703 canonicalOutput30703 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30704 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30704 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound30704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30704.moment H = canonicalOutput30704.moment H :=
  canonical_of_padded canonicalInput30704 canonicalOutput30704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30705 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -2, -1, 3]]⟩

def canonicalOutput30705 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30705.moment H = canonicalOutput30705.moment H :=
  canonical_of_padded canonicalInput30705 canonicalOutput30705 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30706 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, 2, -2], ![0, 0, 0, -2, -2, 4]]⟩

def canonicalOutput30706 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node31⟩

theorem canonicalSound30706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30706.moment H = canonicalOutput30706.moment H :=
  canonical_of_padded canonicalInput30706 canonicalOutput30706 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30707 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, -3, 2, 1]]⟩

def canonicalOutput30707 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30707.moment H = canonicalOutput30707.moment H :=
  canonical_of_padded canonicalInput30707 canonicalOutput30707 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30708 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -3, 1, 2]]⟩

def canonicalOutput30708 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30708.moment H = canonicalOutput30708.moment H :=
  canonical_of_padded canonicalInput30708 canonicalOutput30708 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30709 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -3, 0, 3]]⟩

def canonicalOutput30709 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30709.moment H = canonicalOutput30709.moment H :=
  canonical_of_padded canonicalInput30709 canonicalOutput30709 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30710 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 1, -3], ![0, 0, 0, -2, 0, 2], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30710 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30710.moment H = canonicalOutput30710.moment H :=
  canonical_of_padded canonicalInput30710 canonicalOutput30710 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30711 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 1, -3], ![0, 0, 0, -1, -2, 3], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30711 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound30711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30711.moment H = canonicalOutput30711.moment H :=
  canonical_of_padded canonicalInput30711 canonicalOutput30711 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30712 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 1, -3], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30712 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30712.moment H = canonicalOutput30712.moment H :=
  canonical_of_padded canonicalInput30712 canonicalOutput30712 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30713 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 1, -3], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30713 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30713.moment H = canonicalOutput30713.moment H :=
  canonical_of_padded canonicalInput30713 canonicalOutput30713 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30714 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 1, -3], ![0, 0, 0, 0, -2, 2], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30714 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30714.moment H = canonicalOutput30714.moment H :=
  canonical_of_padded canonicalInput30714 canonicalOutput30714 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30715 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 1, -3], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30715 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30715.moment H = canonicalOutput30715.moment H :=
  canonical_of_padded canonicalInput30715 canonicalOutput30715 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30716 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 1, -3], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -2, -1, 3]]⟩

def canonicalOutput30716 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30716.moment H = canonicalOutput30716.moment H :=
  canonical_of_padded canonicalInput30716 canonicalOutput30716 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30717 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 1, -3], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, -3, 1, 2]]⟩

def canonicalOutput30717 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound30717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30717.moment H = canonicalOutput30717.moment H :=
  canonical_of_padded canonicalInput30717 canonicalOutput30717 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30718 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 1, -3], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -3, 0, 3]]⟩

def canonicalOutput30718 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound30718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30718.moment H = canonicalOutput30718.moment H :=
  canonical_of_padded canonicalInput30718 canonicalOutput30718 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30719 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 2, 1, -3], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -3, -1, 4]]⟩

def canonicalOutput30719 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node51⟩

theorem canonicalSound30719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30719.moment H = canonicalOutput30719.moment H :=
  canonical_of_padded canonicalInput30719 canonicalOutput30719 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
