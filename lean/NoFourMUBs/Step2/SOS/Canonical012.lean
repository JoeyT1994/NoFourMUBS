import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput768 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![0, 3, -2, -1], ![3, -4, 0, 1]]⟩

def canonicalOutput768 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node88⟩

theorem canonicalSound768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput768.moment H = canonicalOutput768.moment H :=
  canonical_of_padded canonicalInput768 canonicalOutput768 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput769 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![0, 3, -1, -2], ![3, -4, -1, 2]]⟩

def canonicalOutput769 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node86⟩

theorem canonicalSound769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput769.moment H = canonicalOutput769.moment H :=
  canonical_of_padded canonicalInput769 canonicalOutput769 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput770 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![1, -3, -1, 3], ![2, 2, -1, -3]]⟩

def canonicalOutput770 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput770.moment H = canonicalOutput770.moment H :=
  canonical_of_padded canonicalInput770 canonicalOutput770 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput771 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![1, -3, 0, 2], ![2, 2, -2, -2]]⟩

def canonicalOutput771 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput771.moment H = canonicalOutput771.moment H :=
  canonical_of_padded canonicalInput771 canonicalOutput771 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput772 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![1, -3, 1, 1], ![2, 2, -3, -1]]⟩

def canonicalOutput772 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput772.moment H = canonicalOutput772.moment H :=
  canonical_of_padded canonicalInput772 canonicalOutput772 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput773 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![1, 1, -4, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput773 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput773.moment H = canonicalOutput773.moment H :=
  canonical_of_padded canonicalInput773 canonicalOutput773 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput774 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![1, 1, 0, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput774 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput774.moment H = canonicalOutput774.moment H :=
  canonical_of_padded canonicalInput774 canonicalOutput774 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput775 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![1, 2, -4, 1], ![2, -3, 2, -1]]⟩

def canonicalOutput775 : ExponentCode := normalNode235

theorem canonicalSound775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput775.moment H = canonicalOutput775.moment H :=
  canonical_of_padded canonicalInput775 canonicalOutput775 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput776 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![1, 2, -1, -2], ![2, -3, -1, 2]]⟩

def canonicalOutput776 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput776.moment H = canonicalOutput776.moment H :=
  canonical_of_padded canonicalInput776 canonicalOutput776 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput777 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![1, 3, -2, -2], ![2, -4, 0, 2]]⟩

def canonicalOutput777 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput777.moment H = canonicalOutput777.moment H :=
  canonical_of_padded canonicalInput777 canonicalOutput777 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput778 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![2, -3, 0, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput778 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput778.moment H = canonicalOutput778.moment H :=
  canonical_of_padded canonicalInput778 canonicalOutput778 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput779 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![2, -2, 2, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput779 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput779.moment H = canonicalOutput779.moment H :=
  canonical_of_padded canonicalInput779 canonicalOutput779 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput780 : ExponentCode := ⟨3, 4, ![![-3, 1, 2, 0], ![2, 1, 0, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput780 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput780.moment H = canonicalOutput780.moment H :=
  canonical_of_padded canonicalInput780 canonicalOutput780 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput781 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput781 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput781.moment H = canonicalOutput781.moment H :=
  canonical_of_padded canonicalInput781 canonicalOutput781 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput782 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput782 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput782.moment H = canonicalOutput782.moment H :=
  canonical_of_padded canonicalInput782 canonicalOutput782 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput783 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput783 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput783.moment H = canonicalOutput783.moment H :=
  canonical_of_padded canonicalInput783 canonicalOutput783 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput784 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput784 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput784.moment H = canonicalOutput784.moment H :=
  canonical_of_padded canonicalInput784 canonicalOutput784 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput785 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput785 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput785.moment H = canonicalOutput785.moment H :=
  canonical_of_padded canonicalInput785 canonicalOutput785 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput786 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput786 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput786.moment H = canonicalOutput786.moment H :=
  canonical_of_padded canonicalInput786 canonicalOutput786 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput787 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput787 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput787.moment H = canonicalOutput787.moment H :=
  canonical_of_padded canonicalInput787 canonicalOutput787 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput788 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput788 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput788.moment H = canonicalOutput788.moment H :=
  canonical_of_padded canonicalInput788 canonicalOutput788 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput789 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput789 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput789.moment H = canonicalOutput789.moment H :=
  canonical_of_padded canonicalInput789 canonicalOutput789 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput790 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput790 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput790.moment H = canonicalOutput790.moment H :=
  canonical_of_padded canonicalInput790 canonicalOutput790 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput791 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput791 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput791.moment H = canonicalOutput791.moment H :=
  canonical_of_padded canonicalInput791 canonicalOutput791 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput792 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput792 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput792.moment H = canonicalOutput792.moment H :=
  canonical_of_padded canonicalInput792 canonicalOutput792 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput793 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput793 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput793.moment H = canonicalOutput793.moment H :=
  canonical_of_padded canonicalInput793 canonicalOutput793 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput794 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput794 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput794.moment H = canonicalOutput794.moment H :=
  canonical_of_padded canonicalInput794 canonicalOutput794 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput795 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput795 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput795.moment H = canonicalOutput795.moment H :=
  canonical_of_padded canonicalInput795 canonicalOutput795 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput796 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput796 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput796.moment H = canonicalOutput796.moment H :=
  canonical_of_padded canonicalInput796 canonicalOutput796 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput797 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput797 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput797.moment H = canonicalOutput797.moment H :=
  canonical_of_padded canonicalInput797 canonicalOutput797 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput798 : ExponentCode := ⟨6, 6, ![![-3, 1, 2, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput798 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput798.moment H = canonicalOutput798.moment H :=
  canonical_of_padded canonicalInput798 canonicalOutput798 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput799 : ExponentCode := ⟨6, 6, ![![-3, 1, 3, -1, 0, 0], ![0, -2, 0, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput799 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput799.moment H = canonicalOutput799.moment H :=
  canonical_of_padded canonicalInput799 canonicalOutput799 (by decide) (by decide)
    ⟨true, false, canonicalPermutation5, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput800 : ExponentCode := ⟨6, 6, ![![-3, 1, 3, -1, 0, 0], ![0, -2, 0, 2, 0, 0], ![3, 1, -3, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput800 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node220⟩

theorem canonicalSound800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput800.moment H = canonicalOutput800.moment H :=
  canonical_of_padded canonicalInput800 canonicalOutput800 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput801 : ExponentCode := ⟨6, 6, ![![-3, 1, 3, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -3, 2, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput801 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput801.moment H = canonicalOutput801.moment H :=
  canonical_of_padded canonicalInput801 canonicalOutput801 (by decide) (by decide)
    ⟨false, true, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation305⟩ (by decide +kernel) hH

def canonicalInput802 : ExponentCode := ⟨6, 6, ![![-3, 1, 3, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, -1, 2, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput802 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput802.moment H = canonicalOutput802.moment H :=
  canonical_of_padded canonicalInput802 canonicalOutput802 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput803 : ExponentCode := ⟨6, 6, ![![-3, 1, 3, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, -1, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput803 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput803.moment H = canonicalOutput803.moment H :=
  canonical_of_padded canonicalInput803 canonicalOutput803 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput804 : ExponentCode := ⟨6, 6, ![![-3, 1, 3, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 1, -3, -1, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput804 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1025

theorem canonicalSound804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput804.moment H = canonicalOutput804.moment H :=
  canonical_of_padded canonicalInput804 canonicalOutput804 (by decide) (by decide)
    ⟨false, false, canonicalPermutation10, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput805 : ExponentCode := ⟨6, 6, ![![-3, 1, 3, -1, 0, 0], ![3, -2, 0, -1, 0, 0], ![0, 1, -3, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput805 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput805.moment H = canonicalOutput805.moment H :=
  canonical_of_padded canonicalInput805 canonicalOutput805 (by decide) (by decide)
    ⟨true, false, canonicalPermutation67, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput806 : ExponentCode := ⟨6, 6, ![![-3, 1, 3, -1, 0, 0], ![3, -2, 0, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput806 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput806.moment H = canonicalOutput806.moment H :=
  canonical_of_padded canonicalInput806 canonicalOutput806 (by decide) (by decide)
    ⟨false, false, canonicalPermutation10, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput807 : ExponentCode := ⟨5, 4, ![![-3, 2, 0, 1], ![0, -2, 1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput807 : ExponentCode := normalNode7747

theorem canonicalSound807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput807.moment H = canonicalOutput807.moment H :=
  canonical_of_padded canonicalInput807 canonicalOutput807 (by decide) (by decide)
    ⟨false, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput808 : ExponentCode := ⟨5, 4, ![![-3, 2, 0, 1], ![0, -2, 1, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput808 : ExponentCode := normalNode4404

theorem canonicalSound808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput808.moment H = canonicalOutput808.moment H :=
  canonical_of_padded canonicalInput808 canonicalOutput808 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput809 : ExponentCode := ⟨4, 4, ![![-3, 2, 0, 1], ![0, -2, 1, 1], ![1, 1, 1, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput809 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code640

theorem canonicalSound809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput809.moment H = canonicalOutput809.moment H :=
  canonical_of_padded canonicalInput809 canonicalOutput809 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput810 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![-1, 2, -1], ![1, -3, 2], ![3, -1, -2]]⟩

def canonicalOutput810 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node160⟩

theorem canonicalSound810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput810.moment H = canonicalOutput810.moment H :=
  canonical_of_padded canonicalInput810 canonicalOutput810 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput811 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![0, -2, 2], ![0, 2, -2], ![3, -2, -1]]⟩

def canonicalOutput811 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node101⟩

theorem canonicalSound811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput811.moment H = canonicalOutput811.moment H :=
  canonical_of_padded canonicalInput811 canonicalOutput811 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput812 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, -2, 2], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput812 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node373⟩

theorem canonicalSound812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput812.moment H = canonicalOutput812.moment H :=
  canonical_of_padded canonicalInput812 canonicalOutput812 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput813 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![0, -2, 2], ![1, 2, -3], ![2, -2, 0]]⟩

def canonicalOutput813 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput813.moment H = canonicalOutput813.moment H :=
  canonical_of_padded canonicalInput813 canonicalOutput813 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput814 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, -1, 1], ![0, -2, 2], ![1, 0, -1], ![2, 1, -3]]⟩

def canonicalOutput814 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node378⟩

theorem canonicalSound814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput814.moment H = canonicalOutput814.moment H :=
  canonical_of_padded canonicalInput814 canonicalOutput814 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput815 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![2, 1, -3]]⟩

def canonicalOutput815 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node372⟩

theorem canonicalSound815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput815.moment H = canonicalOutput815.moment H :=
  canonical_of_padded canonicalInput815 canonicalOutput815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput816 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![2, 0, -2]]⟩

def canonicalOutput816 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node573⟩

theorem canonicalSound816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput816.moment H = canonicalOutput816.moment H :=
  canonical_of_padded canonicalInput816 canonicalOutput816 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput817 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, 1, -1], ![0, 1, -1], ![1, -4, 3], ![2, 0, -2]]⟩

def canonicalOutput817 : ExponentCode := normalNode209

theorem canonicalSound817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput817.moment H = canonicalOutput817.moment H :=
  canonical_of_padded canonicalInput817 canonicalOutput817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput818 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, 1, -1], ![0, 1, -1], ![1, -3, 2], ![2, -1, -1]]⟩

def canonicalOutput818 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node363⟩

theorem canonicalSound818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput818.moment H = canonicalOutput818.moment H :=
  canonical_of_padded canonicalInput818 canonicalOutput818 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput819 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, 1, -1], ![0, 1, -1], ![1, 0, -1], ![2, -4, 2]]⟩

def canonicalOutput819 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node362⟩

theorem canonicalSound819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput819.moment H = canonicalOutput819.moment H :=
  canonical_of_padded canonicalInput819 canonicalOutput819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput820 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, 1, -1], ![1, -4, 3], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput820 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node370⟩

theorem canonicalSound820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput820.moment H = canonicalOutput820.moment H :=
  canonical_of_padded canonicalInput820 canonicalOutput820 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput821 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![0, 1, -1], ![1, -4, 3], ![2, 1, -3]]⟩

def canonicalOutput821 : ExponentCode := normalNode216

theorem canonicalSound821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput821.moment H = canonicalOutput821.moment H :=
  canonical_of_padded canonicalInput821 canonicalOutput821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput822 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, 1, -1], ![1, -3, 2], ![1, -1, 0], ![1, 1, -2]]⟩

def canonicalOutput822 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node371⟩

theorem canonicalSound822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput822.moment H = canonicalOutput822.moment H :=
  canonical_of_padded canonicalInput822 canonicalOutput822 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput823 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, 1, -1], ![1, -2, 1], ![1, -2, 1], ![1, 1, -2]]⟩

def canonicalOutput823 : ExponentCode := normalNode215

theorem canonicalSound823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput823.moment H = canonicalOutput823.moment H :=
  canonical_of_padded canonicalInput823 canonicalOutput823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput824 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![0, 1, -1], ![1, 1, -2], ![2, -4, 2]]⟩

def canonicalOutput824 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node106⟩

theorem canonicalSound824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput824.moment H = canonicalOutput824.moment H :=
  canonical_of_padded canonicalInput824 canonicalOutput824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput825 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![0, 2, -2], ![1, -4, 3], ![2, 0, -2]]⟩

def canonicalOutput825 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput825.moment H = canonicalOutput825.moment H :=
  canonical_of_padded canonicalInput825 canonicalOutput825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput826 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, 2, -2], ![1, -3, 2], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput826 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node360⟩

theorem canonicalSound826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput826.moment H = canonicalOutput826.moment H :=
  canonical_of_padded canonicalInput826 canonicalOutput826 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput827 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![0, 2, -2], ![1, -3, 2], ![2, -1, -1]]⟩

def canonicalOutput827 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput827.moment H = canonicalOutput827.moment H :=
  canonical_of_padded canonicalInput827 canonicalOutput827 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput828 : ExponentCode := ⟨5, 3, ![![-3, 2, 1], ![0, 2, -2], ![1, -2, 1], ![1, -2, 1], ![1, 0, -1]]⟩

def canonicalOutput828 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node361⟩

theorem canonicalSound828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput828.moment H = canonicalOutput828.moment H :=
  canonical_of_padded canonicalInput828 canonicalOutput828 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput829 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![0, 2, -2], ![1, 0, -1], ![2, -4, 2]]⟩

def canonicalOutput829 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node102⟩

theorem canonicalSound829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput829.moment H = canonicalOutput829.moment H :=
  canonical_of_padded canonicalInput829 canonicalOutput829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput830 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![1, -4, 3], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput830 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node113⟩

theorem canonicalSound830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput830.moment H = canonicalOutput830.moment H :=
  canonical_of_padded canonicalInput830 canonicalOutput830 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput831 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![1, -4, 3], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput831 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput831.moment H = canonicalOutput831.moment H :=
  canonical_of_padded canonicalInput831 canonicalOutput831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
