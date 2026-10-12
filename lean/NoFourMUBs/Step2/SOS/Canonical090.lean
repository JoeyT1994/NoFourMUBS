import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5760 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, -1, -2, 2], ![0, 3, 1, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput5760 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code677

theorem canonicalSound5760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5760.moment H = canonicalOutput5760.moment H :=
  canonical_of_padded canonicalInput5760 canonicalOutput5760 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5761 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, -1, -1, 1], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput5761 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node515⟩

theorem canonicalSound5761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5761.moment H = canonicalOutput5761.moment H :=
  canonical_of_padded canonicalInput5761 canonicalOutput5761 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5762 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, -1, -1, 1], ![0, 2, 1, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput5762 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩

theorem canonicalSound5762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5762.moment H = canonicalOutput5762.moment H :=
  canonical_of_padded canonicalInput5762 canonicalOutput5762 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput5763 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![1, -1, 3, -3], ![1, 2, -5, 2]]⟩

def canonicalOutput5763 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code101

theorem canonicalSound5763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5763.moment H = canonicalOutput5763.moment H :=
  canonical_of_padded canonicalInput5763 canonicalOutput5763 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5764 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, 0, -3, 2], ![0, 3, 1, -4], ![1, -2, 0, 1]]⟩

def canonicalOutput5764 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code499

theorem canonicalSound5764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5764.moment H = canonicalOutput5764.moment H :=
  canonical_of_padded canonicalInput5764 canonicalOutput5764 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput5765 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![1, 0, -2, 1], ![0, 2, 1, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput5765 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩

theorem canonicalSound5765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5765.moment H = canonicalOutput5765.moment H :=
  canonical_of_padded canonicalInput5765 canonicalOutput5765 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput5766 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![1, 2, -4, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput5766 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound5766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5766.moment H = canonicalOutput5766.moment H :=
  canonical_of_padded canonicalInput5766 canonicalOutput5766 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5767 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![1, 2, 0, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput5767 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound5767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5767.moment H = canonicalOutput5767.moment H :=
  canonical_of_padded canonicalInput5767 canonicalOutput5767 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5768 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![1, 2, 1, -4], ![1, -1, -3, 3]]⟩

def canonicalOutput5768 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node161⟩

theorem canonicalSound5768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5768.moment H = canonicalOutput5768.moment H :=
  canonical_of_padded canonicalInput5768 canonicalOutput5768 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5769 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![1, 3, -4, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput5769 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound5769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5769.moment H = canonicalOutput5769.moment H :=
  canonical_of_padded canonicalInput5769 canonicalOutput5769 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5770 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![2, -4, 0, 2], ![0, 5, -2, -3]]⟩

def canonicalOutput5770 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1031

theorem canonicalSound5770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5770.moment H = canonicalOutput5770.moment H :=
  canonical_of_padded canonicalInput5770 canonicalOutput5770 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5771 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![2, -4, 1, 1], ![0, 5, -3, -2]]⟩

def canonicalOutput5771 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code679

theorem canonicalSound5771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5771.moment H = canonicalOutput5771.moment H :=
  canonical_of_padded canonicalInput5771 canonicalOutput5771 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5772 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![2, -2, -1, 1], ![0, 3, -1, -2]]⟩

def canonicalOutput5772 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound5772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5772.moment H = canonicalOutput5772.moment H :=
  canonical_of_padded canonicalInput5772 canonicalOutput5772 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5773 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![2, -2, 1, -1], ![0, 3, -3, 0]]⟩

def canonicalOutput5773 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node105⟩

theorem canonicalSound5773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5773.moment H = canonicalOutput5773.moment H :=
  canonical_of_padded canonicalInput5773 canonicalOutput5773 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5774 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![3, -4, 0, 1], ![-1, 5, -2, -2]]⟩

def canonicalOutput5774 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1033

theorem canonicalSound5774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5774.moment H = canonicalOutput5774.moment H :=
  canonical_of_padded canonicalInput5774 canonicalOutput5774 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5775 : ExponentCode := ⟨3, 4, ![![-2, -1, 2, 1], ![3, -3, 0, 0], ![-1, 4, -2, -1]]⟩

def canonicalOutput5775 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node81⟩

theorem canonicalSound5775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5775.moment H = canonicalOutput5775.moment H :=
  canonical_of_padded canonicalInput5775 canonicalOutput5775 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5776 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput5776 : ExponentCode := normalNode8467

theorem canonicalSound5776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5776.moment H = canonicalOutput5776.moment H :=
  canonical_of_padded canonicalInput5776 canonicalOutput5776 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput5777 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5777 : ExponentCode := normalNode7086

theorem canonicalSound5777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5777.moment H = canonicalOutput5777.moment H :=
  canonical_of_padded canonicalInput5777 canonicalOutput5777 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput5778 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 1, 0], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![1, 0, 0, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput5778 : ExponentCode := normalNode8086

theorem canonicalSound5778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5778.moment H = canonicalOutput5778.moment H :=
  canonical_of_padded canonicalInput5778 canonicalOutput5778 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5779 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 1, 0], ![0, -1, -1, 0, 2], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput5779 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound5779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5779.moment H = canonicalOutput5779.moment H :=
  canonical_of_padded canonicalInput5779 canonicalOutput5779 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5780 : ExponentCode := ⟨6, 6, ![![-2, -1, 2, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5780 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound5780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5780.moment H = canonicalOutput5780.moment H :=
  canonical_of_padded canonicalInput5780 canonicalOutput5780 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation303⟩ (by decide +kernel) hH

def canonicalInput5781 : ExponentCode := ⟨6, 6, ![![-2, -1, 2, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5781 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound5781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5781.moment H = canonicalOutput5781.moment H :=
  canonical_of_padded canonicalInput5781 canonicalOutput5781 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation303⟩ (by decide +kernel) hH

def canonicalInput5782 : ExponentCode := ⟨6, 6, ![![-2, -1, 2, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -4, 1, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5782 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound5782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5782.moment H = canonicalOutput5782.moment H :=
  canonical_of_padded canonicalInput5782 canonicalOutput5782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation305, OAI.MUB6.Certificate.PairSemantics.permutation303⟩ (by decide +kernel) hH

def canonicalInput5783 : ExponentCode := ⟨6, 6, ![![-2, -1, 2, 1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 2, -1, -2, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5783 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node686⟩

theorem canonicalSound5783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5783.moment H = canonicalOutput5783.moment H :=
  canonical_of_padded canonicalInput5783 canonicalOutput5783 (by decide) (by decide)
    ⟨false, false, canonicalPermutation12, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput5784 : ExponentCode := ⟨6, 6, ![![-2, -1, 2, 1, 0, 0], ![1, -1, -1, 1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, 1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5784 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound5784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5784.moment H = canonicalOutput5784.moment H :=
  canonical_of_padded canonicalInput5784 canonicalOutput5784 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation295⟩ (by decide +kernel) hH

def canonicalInput5785 : ExponentCode := ⟨6, 6, ![![-2, -1, 2, 1, 0, 0], ![1, -1, -1, 1, 0, 0], ![1, 2, -1, -2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5785 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound5785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5785.moment H = canonicalOutput5785.moment H :=
  canonical_of_padded canonicalInput5785 canonicalOutput5785 (by decide) (by decide)
    ⟨true, false, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput5786 : ExponentCode := ⟨6, 6, ![![-2, -1, 2, 1, 0, 0], ![1, -1, 2, -2, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 1, -2, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5786 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound5786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5786.moment H = canonicalOutput5786.moment H :=
  canonical_of_padded canonicalInput5786 canonicalOutput5786 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation295⟩ (by decide +kernel) hH

def canonicalInput5787 : ExponentCode := ⟨6, 6, ![![-2, -1, 2, 1, 0, 0], ![1, -1, 2, -2, 0, 0], ![1, 2, -4, 1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5787 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound5787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5787.moment H = canonicalOutput5787.moment H :=
  canonical_of_padded canonicalInput5787 canonicalOutput5787 (by decide) (by decide)
    ⟨true, true, canonicalPermutation5, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput5788 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, -1, -1, 1], ![1, 0, 0, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5788 : ExponentCode := normalNode8076

theorem canonicalSound5788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5788.moment H = canonicalOutput5788.moment H :=
  canonical_of_padded canonicalInput5788 canonicalOutput5788 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput5789 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput5789 : ExponentCode := normalNode8082

theorem canonicalSound5789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5789.moment H = canonicalOutput5789.moment H :=
  canonical_of_padded canonicalInput5789 canonicalOutput5789 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5790 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5790 : ExponentCode := normalNode8225

theorem canonicalSound5790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5790.moment H = canonicalOutput5790.moment H :=
  canonical_of_padded canonicalInput5790 canonicalOutput5790 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput5791 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput5791 : ExponentCode := normalNode8097

theorem canonicalSound5791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5791.moment H = canonicalOutput5791.moment H :=
  canonical_of_padded canonicalInput5791 canonicalOutput5791 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5792 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput5792 : ExponentCode := normalNode8096

theorem canonicalSound5792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5792.moment H = canonicalOutput5792.moment H :=
  canonical_of_padded canonicalInput5792 canonicalOutput5792 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput5793 : ExponentCode := ⟨5, 5, ![![-2, -1, 2, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput5793 : ExponentCode := normalNode8476

theorem canonicalSound5793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5793.moment H = canonicalOutput5793.moment H :=
  canonical_of_padded canonicalInput5793 canonicalOutput5793 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput5794 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, -1, 2], ![0, 4, -4], ![2, -2, 0], ![1, 0, -1]]⟩

def canonicalOutput5794 : ExponentCode := normalNode2985

theorem canonicalSound5794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5794.moment H = canonicalOutput5794.moment H :=
  canonical_of_padded canonicalInput5794 canonicalOutput5794 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5795 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![-1, -1, 2], ![0, 4, -4], ![3, -2, -1]]⟩

def canonicalOutput5795 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code92

theorem canonicalSound5795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5795.moment H = canonicalOutput5795.moment H :=
  canonical_of_padded canonicalInput5795 canonicalOutput5795 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5796 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, -1, 2], ![1, -1, 0], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput5796 : ExponentCode := normalNode121

theorem canonicalSound5796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5796.moment H = canonicalOutput5796.moment H :=
  canonical_of_padded canonicalInput5796 canonicalOutput5796 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5797 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![-1, -1, 2], ![1, -1, 0], ![2, 3, -5]]⟩

def canonicalOutput5797 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node78⟩

theorem canonicalSound5797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5797.moment H = canonicalOutput5797.moment H :=
  canonical_of_padded canonicalInput5797 canonicalOutput5797 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5798 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, -1, 2], ![1, 0, -1], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput5798 : ExponentCode := normalNode121

theorem canonicalSound5798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5798.moment H = canonicalOutput5798.moment H :=
  canonical_of_padded canonicalInput5798 canonicalOutput5798 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5799 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, -1, 2], ![1, 3, -4], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput5799 : ExponentCode := normalNode121

theorem canonicalSound5799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5799.moment H = canonicalOutput5799.moment H :=
  canonical_of_padded canonicalInput5799 canonicalOutput5799 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5800 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![-1, -1, 2], ![2, -2, 0], ![1, 4, -5]]⟩

def canonicalOutput5800 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code679

theorem canonicalSound5800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5800.moment H = canonicalOutput5800.moment H :=
  canonical_of_padded canonicalInput5800 canonicalOutput5800 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5801 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, 0, 1], ![0, 1, -1], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput5801 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node870⟩

theorem canonicalSound5801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5801.moment H = canonicalOutput5801.moment H :=
  canonical_of_padded canonicalInput5801 canonicalOutput5801 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5802 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, 0, 1], ![1, -1, 0], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput5802 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node320⟩

theorem canonicalSound5802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5802.moment H = canonicalOutput5802.moment H :=
  canonical_of_padded canonicalInput5802 canonicalOutput5802 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5803 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, 1, 0], ![1, -1, 0], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput5803 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node868⟩

theorem canonicalSound5803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5803.moment H = canonicalOutput5803.moment H :=
  canonical_of_padded canonicalInput5803 canonicalOutput5803 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5804 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, 2, -1], ![0, 0, 0], ![1, -2, 1], ![2, 1, -3]]⟩

def canonicalOutput5804 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound5804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5804.moment H = canonicalOutput5804.moment H :=
  canonical_of_padded canonicalInput5804 canonicalOutput5804 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5805 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![-1, 2, -1], ![1, -3, 2], ![2, 2, -4]]⟩

def canonicalOutput5805 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code230

theorem canonicalSound5805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5805.moment H = canonicalOutput5805.moment H :=
  canonical_of_padded canonicalInput5805 canonicalOutput5805 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5806 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, 3, -2], ![0, 0, 0], ![1, 0, -1], ![2, -2, 0]]⟩

def canonicalOutput5806 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound5806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5806.moment H = canonicalOutput5806.moment H :=
  canonical_of_padded canonicalInput5806 canonicalOutput5806 (by decide) (by decide)
    ⟨false, true, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5807 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, 3, -2], ![0, 1, -1], ![1, -1, 0], ![2, -2, 0]]⟩

def canonicalOutput5807 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node378⟩

theorem canonicalSound5807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5807.moment H = canonicalOutput5807.moment H :=
  canonical_of_padded canonicalInput5807 canonicalOutput5807 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5808 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, 3, -2], ![0, 1, -1], ![1, 0, -1], ![2, -3, 1]]⟩

def canonicalOutput5808 : ExponentCode := normalNode2996

theorem canonicalSound5808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5808.moment H = canonicalOutput5808.moment H :=
  canonical_of_padded canonicalInput5808 canonicalOutput5808 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5809 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, 3, -2], ![1, -1, 0], ![1, -2, 1], ![1, 1, -2]]⟩

def canonicalOutput5809 : ExponentCode := normalNode3008

theorem canonicalSound5809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5809.moment H = canonicalOutput5809.moment H :=
  canonical_of_padded canonicalInput5809 canonicalOutput5809 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5810 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![-1, 3, -2], ![1, 0, -1], ![2, -2, 0]]⟩

def canonicalOutput5810 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound5810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5810.moment H = canonicalOutput5810.moment H :=
  canonical_of_padded canonicalInput5810 canonicalOutput5810 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5811 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![-1, 3, -2], ![2, -3, 1], ![1, 1, -2]]⟩

def canonicalOutput5811 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound5811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5811.moment H = canonicalOutput5811.moment H :=
  canonical_of_padded canonicalInput5811 canonicalOutput5811 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5812 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, 4, -3], ![0, -2, 2], ![2, -1, -1], ![1, 0, -1]]⟩

def canonicalOutput5812 : ExponentCode := normalNode3010

theorem canonicalSound5812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5812.moment H = canonicalOutput5812.moment H :=
  canonical_of_padded canonicalInput5812 canonicalOutput5812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5813 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![-1, 4, -3], ![0, -2, 2], ![3, -1, -2]]⟩

def canonicalOutput5813 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code78

theorem canonicalSound5813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5813.moment H = canonicalOutput5813.moment H :=
  canonical_of_padded canonicalInput5813 canonicalOutput5813 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5814 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![-1, 4, -3], ![1, -2, 1], ![1, 0, -1], ![1, -1, 0]]⟩

def canonicalOutput5814 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node540⟩

theorem canonicalSound5814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5814.moment H = canonicalOutput5814.moment H :=
  canonical_of_padded canonicalInput5814 canonicalOutput5814 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5815 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![-1, 4, -3], ![1, -1, 0], ![2, -2, 0]]⟩

def canonicalOutput5815 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node81⟩

theorem canonicalSound5815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5815.moment H = canonicalOutput5815.moment H :=
  canonical_of_padded canonicalInput5815 canonicalOutput5815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5816 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![0, -3, 3], ![1, 4, -5], ![1, 0, -1]]⟩

def canonicalOutput5816 : ExponentCode := normalNode3016

theorem canonicalSound5816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5816.moment H = canonicalOutput5816.moment H :=
  canonical_of_padded canonicalInput5816 canonicalOutput5816 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5817 : ExponentCode := ⟨3, 3, ![![-2, -1, 3], ![0, -3, 3], ![2, 4, -6]]⟩

def canonicalOutput5817 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code96

theorem canonicalSound5817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5817.moment H = canonicalOutput5817.moment H :=
  canonical_of_padded canonicalInput5817 canonicalOutput5817 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5818 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, -2, 2], ![0, 0, 0], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput5818 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node166⟩

theorem canonicalSound5818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5818.moment H = canonicalOutput5818.moment H :=
  canonical_of_padded canonicalInput5818 canonicalOutput5818 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5819 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, -2, 2], ![0, 4, -4], ![1, 0, -1], ![1, -1, 0]]⟩

def canonicalOutput5819 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node550⟩

theorem canonicalSound5819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5819.moment H = canonicalOutput5819.moment H :=
  canonical_of_padded canonicalInput5819 canonicalOutput5819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5820 : ExponentCode := ⟨4, 3, ![![-2, -1, 3], ![0, -2, 2], ![1, 4, -5], ![1, -1, 0]]⟩

def canonicalOutput5820 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node165⟩

theorem canonicalSound5820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5820.moment H = canonicalOutput5820.moment H :=
  canonical_of_padded canonicalInput5820 canonicalOutput5820 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5821 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, -1, 1], ![-1, 2, -1], ![1, 2, -3], ![2, -2, 0]]⟩

def canonicalOutput5821 : ExponentCode := normalNode3002

theorem canonicalSound5821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5821.moment H = canonicalOutput5821.moment H :=
  canonical_of_padded canonicalInput5821 canonicalOutput5821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5822 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, -1, 1], ![-1, 3, -2], ![1, -2, 1], ![2, 1, -3]]⟩

def canonicalOutput5822 : ExponentCode := normalNode3004

theorem canonicalSound5822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5822.moment H = canonicalOutput5822.moment H :=
  canonical_of_padded canonicalInput5822 canonicalOutput5822 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5823 : ExponentCode := ⟨5, 3, ![![-2, -1, 3], ![0, -1, 1], ![0, 0, 0], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput5823 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node175⟩

theorem canonicalSound5823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5823.moment H = canonicalOutput5823.moment H :=
  canonical_of_padded canonicalInput5823 canonicalOutput5823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
