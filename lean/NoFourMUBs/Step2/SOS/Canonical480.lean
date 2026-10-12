import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30720 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -2, -1], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30720 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30720.moment H = canonicalOutput30720.moment H :=
  canonical_of_padded canonicalInput30720 canonicalOutput30720 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30721 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -2, -1], ![0, 0, 0, -2, 2, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30721 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30721.moment H = canonicalOutput30721.moment H :=
  canonical_of_padded canonicalInput30721 canonicalOutput30721 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30722 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -2, -1], ![0, 0, 0, -2, 3, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30722 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound30722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30722.moment H = canonicalOutput30722.moment H :=
  canonical_of_padded canonicalInput30722 canonicalOutput30722 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30723 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -2, -1], ![0, 0, 0, -2, 4, -2], ![0, 0, 0, -1, -2, 3]]⟩

def canonicalOutput30723 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node20⟩

theorem canonicalSound30723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30723.moment H = canonicalOutput30723.moment H :=
  canonical_of_padded canonicalInput30723 canonicalOutput30723 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30724 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -2, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -2, 2, 0]]⟩

def canonicalOutput30724 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30724.moment H = canonicalOutput30724.moment H :=
  canonical_of_padded canonicalInput30724 canonicalOutput30724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30725 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -2, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30725 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30725.moment H = canonicalOutput30725.moment H :=
  canonical_of_padded canonicalInput30725 canonicalOutput30725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30726 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -2, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30726 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30726.moment H = canonicalOutput30726.moment H :=
  canonical_of_padded canonicalInput30726 canonicalOutput30726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30727 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -2, -1], ![0, 0, 0, -1, 3, -2], ![0, 0, 0, -2, -1, 3]]⟩

def canonicalOutput30727 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound30727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30727.moment H = canonicalOutput30727.moment H :=
  canonical_of_padded canonicalInput30727 canonicalOutput30727 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30728 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -2, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -3, 2, 1]]⟩

def canonicalOutput30728 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30728.moment H = canonicalOutput30728.moment H :=
  canonical_of_padded canonicalInput30728 canonicalOutput30728 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30729 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -2, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -3, 1, 2]]⟩

def canonicalOutput30729 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound30729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30729.moment H = canonicalOutput30729.moment H :=
  canonical_of_padded canonicalInput30729 canonicalOutput30729 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30730 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -2, 0, 2], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30730 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30730.moment H = canonicalOutput30730.moment H :=
  canonical_of_padded canonicalInput30730 canonicalOutput30730 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30731 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30731 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30731.moment H = canonicalOutput30731.moment H :=
  canonical_of_padded canonicalInput30731 canonicalOutput30731 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30732 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -2, 2, 0], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30732 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30732.moment H = canonicalOutput30732.moment H :=
  canonical_of_padded canonicalInput30732 canonicalOutput30732 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30733 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -2, 3, -1], ![0, 0, 0, -1, -2, 3]]⟩

def canonicalOutput30733 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound30733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30733.moment H = canonicalOutput30733.moment H :=
  canonical_of_padded canonicalInput30733 canonicalOutput30733 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30734 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -2, 2, 0]]⟩

def canonicalOutput30734 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound30734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30734.moment H = canonicalOutput30734.moment H :=
  canonical_of_padded canonicalInput30734 canonicalOutput30734 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30735 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30735 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound30735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30735.moment H = canonicalOutput30735.moment H :=
  canonical_of_padded canonicalInput30735 canonicalOutput30735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30736 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30736 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound30736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30736.moment H = canonicalOutput30736.moment H :=
  canonical_of_padded canonicalInput30736 canonicalOutput30736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30737 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -2, -1, 3]]⟩

def canonicalOutput30737 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound30737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30737.moment H = canonicalOutput30737.moment H :=
  canonical_of_padded canonicalInput30737 canonicalOutput30737 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30738 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 3, -2], ![0, 0, 0, -2, -2, 4]]⟩

def canonicalOutput30738 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node20⟩

theorem canonicalSound30738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30738.moment H = canonicalOutput30738.moment H :=
  canonical_of_padded canonicalInput30738 canonicalOutput30738 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30739 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, 0, -2, 2], ![0, 0, 0, -3, 3, 0]]⟩

def canonicalOutput30739 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound30739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30739.moment H = canonicalOutput30739.moment H :=
  canonical_of_padded canonicalInput30739 canonicalOutput30739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30740 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -3, 2, 1]]⟩

def canonicalOutput30740 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound30740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30740.moment H = canonicalOutput30740.moment H :=
  canonical_of_padded canonicalInput30740 canonicalOutput30740 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30741 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -3, 1, 2]]⟩

def canonicalOutput30741 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30741.moment H = canonicalOutput30741.moment H :=
  canonical_of_padded canonicalInput30741 canonicalOutput30741 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30742 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -3, 0, 3]]⟩

def canonicalOutput30742 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound30742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30742.moment H = canonicalOutput30742.moment H :=
  canonical_of_padded canonicalInput30742 canonicalOutput30742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30743 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, 0, -3], ![0, 0, 0, -2, 0, 2], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30743 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30743.moment H = canonicalOutput30743.moment H :=
  canonical_of_padded canonicalInput30743 canonicalOutput30743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30744 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, 0, -3], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30744 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound30744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30744.moment H = canonicalOutput30744.moment H :=
  canonical_of_padded canonicalInput30744 canonicalOutput30744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30745 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, 0, -3], ![0, 0, 0, -1, -2, 3], ![0, 0, 0, -2, 2, 0]]⟩

def canonicalOutput30745 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound30745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30745.moment H = canonicalOutput30745.moment H :=
  canonical_of_padded canonicalInput30745 canonicalOutput30745 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30746 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, 0, -3], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30746 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound30746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30746.moment H = canonicalOutput30746.moment H :=
  canonical_of_padded canonicalInput30746 canonicalOutput30746 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30747 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, 0, -3], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30747 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30747.moment H = canonicalOutput30747.moment H :=
  canonical_of_padded canonicalInput30747 canonicalOutput30747 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30748 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, 0, -3], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, -1, 3]]⟩

def canonicalOutput30748 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound30748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30748.moment H = canonicalOutput30748.moment H :=
  canonical_of_padded canonicalInput30748 canonicalOutput30748 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30749 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, 0, -3], ![0, 0, 0, 0, -2, 2], ![0, 0, 0, -3, 2, 1]]⟩

def canonicalOutput30749 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound30749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30749.moment H = canonicalOutput30749.moment H :=
  canonical_of_padded canonicalInput30749 canonicalOutput30749 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30750 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, 0, -3], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -3, 1, 2]]⟩

def canonicalOutput30750 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound30750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30750.moment H = canonicalOutput30750.moment H :=
  canonical_of_padded canonicalInput30750 canonicalOutput30750 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30751 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, 0, -3], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -3, 0, 3]]⟩

def canonicalOutput30751 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound30751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30751.moment H = canonicalOutput30751.moment H :=
  canonical_of_padded canonicalInput30751 canonicalOutput30751 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30752 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 3, 0, -3], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -3, -1, 4]]⟩

def canonicalOutput30752 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node53⟩

theorem canonicalSound30752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30752.moment H = canonicalOutput30752.moment H :=
  canonical_of_padded canonicalInput30752 canonicalOutput30752 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30753 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -2, -2], ![0, 0, 0, -2, 0, 2], ![0, 0, 0, -2, 2, 0]]⟩

def canonicalOutput30753 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node31⟩

theorem canonicalSound30753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30753.moment H = canonicalOutput30753.moment H :=
  canonical_of_padded canonicalInput30753 canonicalOutput30753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30754 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -2, -2], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30754 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node35⟩

theorem canonicalSound30754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30754.moment H = canonicalOutput30754.moment H :=
  canonical_of_padded canonicalInput30754 canonicalOutput30754 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30755 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -2, -2], ![0, 0, 0, -2, 2, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30755 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node31⟩

theorem canonicalSound30755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30755.moment H = canonicalOutput30755.moment H :=
  canonical_of_padded canonicalInput30755 canonicalOutput30755 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30756 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -2, -2], ![0, 0, 0, -2, 3, -1], ![0, 0, 0, -2, -1, 3]]⟩

def canonicalOutput30756 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node20⟩

theorem canonicalSound30756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30756.moment H = canonicalOutput30756.moment H :=
  canonical_of_padded canonicalInput30756 canonicalOutput30756 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30757 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -2, -2], ![0, 0, 0, -2, 4, -2], ![0, 0, 0, -2, -2, 4]]⟩

def canonicalOutput30757 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code16

theorem canonicalSound30757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30757.moment H = canonicalOutput30757.moment H :=
  canonical_of_padded canonicalInput30757 canonicalOutput30757 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30758 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -2, -2], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -3, 2, 1]]⟩

def canonicalOutput30758 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node52⟩

theorem canonicalSound30758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30758.moment H = canonicalOutput30758.moment H :=
  canonical_of_padded canonicalInput30758 canonicalOutput30758 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30759 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -2, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -3, 1, 2]]⟩

def canonicalOutput30759 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node52⟩

theorem canonicalSound30759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30759.moment H = canonicalOutput30759.moment H :=
  canonical_of_padded canonicalInput30759 canonicalOutput30759 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30760 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -2, -2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -3, 0, 3]]⟩

def canonicalOutput30760 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound30760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30760.moment H = canonicalOutput30760.moment H :=
  canonical_of_padded canonicalInput30760 canonicalOutput30760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30761 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -1, -3], ![0, 0, 0, -2, 0, 2], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput30761 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node52⟩

theorem canonicalSound30761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30761.moment H = canonicalOutput30761.moment H :=
  canonical_of_padded canonicalInput30761 canonicalOutput30761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30762 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -1, -3], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput30762 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node52⟩

theorem canonicalSound30762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30762.moment H = canonicalOutput30762.moment H :=
  canonical_of_padded canonicalInput30762 canonicalOutput30762 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30763 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -1, -3], ![0, 0, 0, -2, 2, 0], ![0, 0, 0, -2, -1, 3]]⟩

def canonicalOutput30763 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound30763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30763.moment H = canonicalOutput30763.moment H :=
  canonical_of_padded canonicalInput30763 canonicalOutput30763 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30764 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -1, -3], ![0, 0, 0, -1, -2, 3], ![0, 0, 0, -3, 3, 0]]⟩

def canonicalOutput30764 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node18⟩

theorem canonicalSound30764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30764.moment H = canonicalOutput30764.moment H :=
  canonical_of_padded canonicalInput30764 canonicalOutput30764 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30765 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -1, -3], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -3, 2, 1]]⟩

def canonicalOutput30765 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node40⟩

theorem canonicalSound30765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30765.moment H = canonicalOutput30765.moment H :=
  canonical_of_padded canonicalInput30765 canonicalOutput30765 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30766 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -1, -3], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -3, 1, 2]]⟩

def canonicalOutput30766 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node51⟩

theorem canonicalSound30766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30766.moment H = canonicalOutput30766.moment H :=
  canonical_of_padded canonicalInput30766 canonicalOutput30766 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30767 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -1, -3], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -3, 0, 3]]⟩

def canonicalOutput30767 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node53⟩

theorem canonicalSound30767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30767.moment H = canonicalOutput30767.moment H :=
  canonical_of_padded canonicalInput30767 canonicalOutput30767 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30768 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 4, -1, -3], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -3, -1, 4]]⟩

def canonicalOutput30768 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node42⟩

theorem canonicalSound30768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30768.moment H = canonicalOutput30768.moment H :=
  canonical_of_padded canonicalInput30768 canonicalOutput30768 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30769 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 5, -2, -3], ![0, 0, 0, -2, 0, 2], ![0, 0, 0, -3, 2, 1]]⟩

def canonicalOutput30769 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node27⟩

theorem canonicalSound30769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30769.moment H = canonicalOutput30769.moment H :=
  canonical_of_padded canonicalInput30769 canonicalOutput30769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30770 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 5, -2, -3], ![0, 0, 0, -2, 1, 1], ![0, 0, 0, -3, 1, 2]]⟩

def canonicalOutput30770 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node30⟩

theorem canonicalSound30770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30770.moment H = canonicalOutput30770.moment H :=
  canonical_of_padded canonicalInput30770 canonicalOutput30770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30771 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 5, -2, -3], ![0, 0, 0, -2, 2, 0], ![0, 0, 0, -3, 0, 3]]⟩

def canonicalOutput30771 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node28⟩

theorem canonicalSound30771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30771.moment H = canonicalOutput30771.moment H :=
  canonical_of_padded canonicalInput30771 canonicalOutput30771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30772 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 5, -2, -3], ![0, 0, 0, -2, 3, -1], ![0, 0, 0, -3, -1, 4]]⟩

def canonicalOutput30772 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code86

theorem canonicalSound30772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30772.moment H = canonicalOutput30772.moment H :=
  canonical_of_padded canonicalInput30772 canonicalOutput30772 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30773 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -3, 2], ![0, 0, 0, -2, 3, -1], ![-2, 0, 0, 3, 0, -1]]⟩

def canonicalOutput30773 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound30773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30773.moment H = canonicalOutput30773.moment H :=
  canonical_of_padded canonicalInput30773 canonicalOutput30773 (by decide) (by decide)
    ⟨true, true, canonicalPermutation382, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30774 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -3, 2], ![0, 0, 0, -1, 2, -1], ![-2, 0, 0, 2, 1, -1]]⟩

def canonicalOutput30774 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node184⟩

theorem canonicalSound30774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30774.moment H = canonicalOutput30774.moment H :=
  canonical_of_padded canonicalInput30774 canonicalOutput30774 (by decide) (by decide)
    ⟨true, true, canonicalPermutation376, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30775 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -3, 2], ![0, 0, 0, 0, 1, -1], ![-2, 0, 0, 1, 2, -1]]⟩

def canonicalOutput30775 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node268⟩

theorem canonicalSound30775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30775.moment H = canonicalOutput30775.moment H :=
  canonical_of_padded canonicalInput30775 canonicalOutput30775 (by decide) (by decide)
    ⟨true, true, canonicalPermutation383, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30776 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -3, 2], ![0, 0, 0, 1, 0, -1], ![-2, 0, 0, 0, 3, -1]]⟩

def canonicalOutput30776 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node280⟩

theorem canonicalSound30776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30776.moment H = canonicalOutput30776.moment H :=
  canonical_of_padded canonicalInput30776 canonicalOutput30776 (by decide) (by decide)
    ⟨true, false, canonicalPermutation381, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30777 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -2, 1], ![0, 0, 0, -2, 2, 0], ![-2, 0, 0, 3, 0, -1]]⟩

def canonicalOutput30777 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node177⟩

theorem canonicalSound30777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30777.moment H = canonicalOutput30777.moment H :=
  canonical_of_padded canonicalInput30777 canonicalOutput30777 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30778 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -2, 1], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 2, 1, -1]]⟩

def canonicalOutput30778 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound30778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30778.moment H = canonicalOutput30778.moment H :=
  canonical_of_padded canonicalInput30778 canonicalOutput30778 (by decide) (by decide)
    ⟨true, false, canonicalPermutation378, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30779 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -2, 1], ![0, 0, 0, -1, 2, -1], ![-2, 0, 0, 2, 0, 0]]⟩

def canonicalOutput30779 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound30779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30779.moment H = canonicalOutput30779.moment H :=
  canonical_of_padded canonicalInput30779 canonicalOutput30779 (by decide) (by decide)
    ⟨true, false, canonicalPermutation374, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30780 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -2, 1], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 1, 2, -1]]⟩

def canonicalOutput30780 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node46⟩

theorem canonicalSound30780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30780.moment H = canonicalOutput30780.moment H :=
  canonical_of_padded canonicalInput30780 canonicalOutput30780 (by decide) (by decide)
    ⟨true, false, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30781 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -2, 1], ![0, 0, 0, 0, 1, -1], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput30781 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound30781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30781.moment H = canonicalOutput30781.moment H :=
  canonical_of_padded canonicalInput30781 canonicalOutput30781 (by decide) (by decide)
    ⟨true, true, canonicalPermutation383, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30782 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -2, 1], ![0, 0, 0, 1, 0, -1], ![-2, 0, 0, 0, 2, 0]]⟩

def canonicalOutput30782 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node291⟩

theorem canonicalSound30782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30782.moment H = canonicalOutput30782.moment H :=
  canonical_of_padded canonicalInput30782 canonicalOutput30782 (by decide) (by decide)
    ⟨true, false, canonicalPermutation381, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30783 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, -2, 1, 1], ![-2, 0, 0, 3, 0, -1]]⟩

def canonicalOutput30783 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node185⟩

theorem canonicalSound30783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30783.moment H = canonicalOutput30783.moment H :=
  canonical_of_padded canonicalInput30783 canonicalOutput30783 (by decide) (by decide)
    ⟨true, false, canonicalPermutation290, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
