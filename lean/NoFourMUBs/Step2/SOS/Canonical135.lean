import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical109
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8640 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput8640 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1842⟩

theorem canonicalSound8640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8640.moment H = canonicalOutput8640.moment H :=
  canonical_of_padded canonicalInput8640 canonicalOutput8640 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8641 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -3, 2, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput8641 : ExponentCode := normalNode5407

theorem canonicalSound8641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8641.moment H = canonicalOutput8641.moment H :=
  canonical_of_padded canonicalInput8641 canonicalOutput8641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8642 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput8642 : ExponentCode := normalNode2391

theorem canonicalSound8642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8642.moment H = canonicalOutput8642.moment H :=
  canonical_of_padded canonicalInput8642 canonicalOutput8642 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8643 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8643 : ExponentCode := normalNode10532

theorem canonicalSound8643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8643.moment H = canonicalOutput8643.moment H :=
  canonical_of_padded canonicalInput8643 canonicalOutput8643 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8644 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput8644 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1818⟩

theorem canonicalSound8644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8644.moment H = canonicalOutput8644.moment H :=
  canonical_of_padded canonicalInput8644 canonicalOutput8644 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8645 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8645 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2631⟩

theorem canonicalSound8645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8645.moment H = canonicalOutput8645.moment H :=
  canonical_of_padded canonicalInput8645 canonicalOutput8645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8646 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput8646 : ExponentCode := normalNode10652

theorem canonicalSound8646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8646.moment H = canonicalOutput8646.moment H :=
  canonical_of_padded canonicalInput8646 canonicalOutput8646 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8647 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput8647 : ExponentCode := normalNode4385

theorem canonicalSound8647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8647.moment H = canonicalOutput8647.moment H :=
  canonical_of_padded canonicalInput8647 canonicalOutput8647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8648 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8648 : ExponentCode := normalNode8989

theorem canonicalSound8648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8648.moment H = canonicalOutput8648.moment H :=
  canonical_of_padded canonicalInput8648 canonicalOutput8648 (by decide) (by decide)
    ⟨false, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8649 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3494step0⟩

def canonicalOutput8649 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound8649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8649.moment H = canonicalOutput8649.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3494step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3494step0 = OAI.MUB6.Certificate.PairSemantics.raw3494.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3494).trans (OAI.MUB6.Certificate.PairSemantics.canonical3494 hH)

def canonicalInput8650 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput8650 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2706⟩

theorem canonicalSound8650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8650.moment H = canonicalOutput8650.moment H :=
  canonical_of_padded canonicalInput8650 canonicalOutput8650 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8651 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput8651 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2707⟩

theorem canonicalSound8651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8651.moment H = canonicalOutput8651.moment H :=
  canonical_of_padded canonicalInput8651 canonicalOutput8651 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8652 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput8652 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node971⟩

theorem canonicalSound8652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8652.moment H = canonicalOutput8652.moment H :=
  canonical_of_padded canonicalInput8652 canonicalOutput8652 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8653 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 2, -2, 0], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8653 : ExponentCode := normalNode3873

theorem canonicalSound8653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8653.moment H = canonicalOutput8653.moment H :=
  canonical_of_padded canonicalInput8653 canonicalOutput8653 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8654 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput8654 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1753⟩

theorem canonicalSound8654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8654.moment H = canonicalOutput8654.moment H :=
  canonical_of_padded canonicalInput8654 canonicalOutput8654 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput8655 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 2, -2, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput8655 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound8655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8655.moment H = canonicalOutput8655.moment H :=
  canonical_of_padded canonicalInput8655 canonicalOutput8655 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8656 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput8656 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩

theorem canonicalSound8656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8656.moment H = canonicalOutput8656.moment H :=
  canonical_of_padded canonicalInput8656 canonicalOutput8656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8657 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput8657 : ExponentCode := normalNode4490

theorem canonicalSound8657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8657.moment H = canonicalOutput8657.moment H :=
  canonical_of_padded canonicalInput8657 canonicalOutput8657 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8658 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 2, -1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput8658 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1112⟩

theorem canonicalSound8658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8658.moment H = canonicalOutput8658.moment H :=
  canonical_of_padded canonicalInput8658 canonicalOutput8658 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8659 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 2, 0, -2], ![1, -3, 2, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput8659 : ExponentCode := normalNode4125

theorem canonicalSound8659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8659.moment H = canonicalOutput8659.moment H :=
  canonical_of_padded canonicalInput8659 canonicalOutput8659 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8660 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 2, 0, -2], ![1, -2, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput8660 : ExponentCode := normalNode3982

theorem canonicalSound8660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8660.moment H = canonicalOutput8660.moment H :=
  canonical_of_padded canonicalInput8660 canonicalOutput8660 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8661 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 3, -2, -1], ![1, -2, 1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput8661 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2266⟩

theorem canonicalSound8661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8661.moment H = canonicalOutput8661.moment H :=
  canonical_of_padded canonicalInput8661 canonicalOutput8661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8662 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput8662 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2265⟩

theorem canonicalSound8662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8662.moment H = canonicalOutput8662.moment H :=
  canonical_of_padded canonicalInput8662 canonicalOutput8662 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8663 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![1, -3, 1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput8663 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node980⟩

theorem canonicalSound8663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8663.moment H = canonicalOutput8663.moment H :=
  canonical_of_padded canonicalInput8663 canonicalOutput8663 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8664 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![1, -3, 2, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput8664 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1067⟩

theorem canonicalSound8664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8664.moment H = canonicalOutput8664.moment H :=
  canonical_of_padded canonicalInput8664 canonicalOutput8664 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8665 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![1, -2, 2, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput8665 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound8665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8665.moment H = canonicalOutput8665.moment H :=
  canonical_of_padded canonicalInput8665 canonicalOutput8665 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8666 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput8666 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node845⟩

theorem canonicalSound8666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8666.moment H = canonicalOutput8666.moment H :=
  canonical_of_padded canonicalInput8666 canonicalOutput8666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8667 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput8667 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node965⟩

theorem canonicalSound8667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8667.moment H = canonicalOutput8667.moment H :=
  canonical_of_padded canonicalInput8667 canonicalOutput8667 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8668 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -3, 0, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput8668 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1067⟩

theorem canonicalSound8668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8668.moment H = canonicalOutput8668.moment H :=
  canonical_of_padded canonicalInput8668 canonicalOutput8668 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput8669 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput8669 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound8669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8669.moment H = canonicalOutput8669.moment H :=
  canonical_of_padded canonicalInput8669 canonicalOutput8669 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput8670 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput8670 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩

theorem canonicalSound8670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8670.moment H = canonicalOutput8670.moment H :=
  canonical_of_padded canonicalInput8670 canonicalOutput8670 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8671 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput8671 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node409⟩

theorem canonicalSound8671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8671.moment H = canonicalOutput8671.moment H :=
  canonical_of_padded canonicalInput8671 canonicalOutput8671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8672 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 0, 0], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput8672 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node621⟩

theorem canonicalSound8672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8672.moment H = canonicalOutput8672.moment H :=
  canonical_of_padded canonicalInput8672 canonicalOutput8672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8673 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 0, 0], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput8673 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1045⟩

theorem canonicalSound8673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8673.moment H = canonicalOutput8673.moment H :=
  canonical_of_padded canonicalInput8673 canonicalOutput8673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput8674 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 0, 0], ![1, -3, 1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput8674 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node223⟩

theorem canonicalSound8674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8674.moment H = canonicalOutput8674.moment H :=
  canonical_of_padded canonicalInput8674 canonicalOutput8674 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8675 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput8675 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound8675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8675.moment H = canonicalOutput8675.moment H :=
  canonical_of_padded canonicalInput8675 canonicalOutput8675 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8676 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 0, -3, 3], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput8676 : ExponentCode := normalNode7956

theorem canonicalSound8676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8676.moment H = canonicalOutput8676.moment H :=
  canonical_of_padded canonicalInput8676 canonicalOutput8676 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8677 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8677 : ExponentCode := normalNode9079

theorem canonicalSound8677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8677.moment H = canonicalOutput8677.moment H :=
  canonical_of_padded canonicalInput8677 canonicalOutput8677 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8678 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput8678 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound8678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8678.moment H = canonicalOutput8678.moment H :=
  canonical_of_padded canonicalInput8678 canonicalOutput8678 (by decide) (by decide)
    ⟨false, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput8679 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8679 : ExponentCode := normalNode9460

theorem canonicalSound8679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8679.moment H = canonicalOutput8679.moment H :=
  canonical_of_padded canonicalInput8679 canonicalOutput8679 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8680 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -3, 0, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput8680 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1067⟩

theorem canonicalSound8680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8680.moment H = canonicalOutput8680.moment H :=
  canonical_of_padded canonicalInput8680 canonicalOutput8680 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput8681 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput8681 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node942⟩

theorem canonicalSound8681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8681.moment H = canonicalOutput8681.moment H :=
  canonical_of_padded canonicalInput8681 canonicalOutput8681 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8682 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput8682 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2709⟩

theorem canonicalSound8682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8682.moment H = canonicalOutput8682.moment H :=
  canonical_of_padded canonicalInput8682 canonicalOutput8682 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8683 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput8683 : ExponentCode := normalNode4450

theorem canonicalSound8683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8683.moment H = canonicalOutput8683.moment H :=
  canonical_of_padded canonicalInput8683 canonicalOutput8683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8684 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -3, 0, 2], ![1, 3, -3, -1]]⟩

def canonicalOutput8684 : ExponentCode := normalNode4451

theorem canonicalSound8684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8684.moment H = canonicalOutput8684.moment H :=
  canonical_of_padded canonicalInput8684 canonicalOutput8684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8685 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput8685 : ExponentCode := normalNode9458

theorem canonicalSound8685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8685.moment H = canonicalOutput8685.moment H :=
  canonical_of_padded canonicalInput8685 canonicalOutput8685 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8686 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput8686 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2542⟩

theorem canonicalSound8686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8686.moment H = canonicalOutput8686.moment H :=
  canonical_of_padded canonicalInput8686 canonicalOutput8686 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8687 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![0, 1, -1, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput8687 : ExponentCode := normalNode4482

theorem canonicalSound8687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8687.moment H = canonicalOutput8687.moment H :=
  canonical_of_padded canonicalInput8687 canonicalOutput8687 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8688 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8688 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2707⟩

theorem canonicalSound8688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8688.moment H = canonicalOutput8688.moment H :=
  canonical_of_padded canonicalInput8688 canonicalOutput8688 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8689 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8689 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound8689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8689.moment H = canonicalOutput8689.moment H :=
  canonical_of_padded canonicalInput8689 canonicalOutput8689 (by decide) (by decide)
    ⟨false, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8690 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput8690 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1242⟩

theorem canonicalSound8690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8690.moment H = canonicalOutput8690.moment H :=
  canonical_of_padded canonicalInput8690 canonicalOutput8690 (by decide) (by decide)
    ⟨false, false, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput8691 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput8691 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1786⟩

theorem canonicalSound8691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8691.moment H = canonicalOutput8691.moment H :=
  canonical_of_padded canonicalInput8691 canonicalOutput8691 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput8692 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput8692 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound8692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8692.moment H = canonicalOutput8692.moment H :=
  canonical_of_padded canonicalInput8692 canonicalOutput8692 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8693 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput8693 : ExponentCode := normalNode10652

theorem canonicalSound8693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8693.moment H = canonicalOutput8693.moment H :=
  canonical_of_padded canonicalInput8693 canonicalOutput8693 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8694 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput8694 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1510⟩

theorem canonicalSound8694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8694.moment H = canonicalOutput8694.moment H :=
  canonical_of_padded canonicalInput8694 canonicalOutput8694 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8695 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput8695 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound8695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8695.moment H = canonicalOutput8695.moment H :=
  canonical_of_padded canonicalInput8695 canonicalOutput8695 (by decide) (by decide)
    ⟨false, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8696 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput8696 : ExponentCode := normalNode10572

theorem canonicalSound8696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8696.moment H = canonicalOutput8696.moment H :=
  canonical_of_padded canonicalInput8696 canonicalOutput8696 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8697 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput8697 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2779⟩

theorem canonicalSound8697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8697.moment H = canonicalOutput8697.moment H :=
  canonical_of_padded canonicalInput8697 canonicalOutput8697 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8698 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -2, 0, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput8698 : ExponentCode := normalNode4466

theorem canonicalSound8698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8698.moment H = canonicalOutput8698.moment H :=
  canonical_of_padded canonicalInput8698 canonicalOutput8698 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8699 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput8699 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2728⟩

theorem canonicalSound8699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8699.moment H = canonicalOutput8699.moment H :=
  canonical_of_padded canonicalInput8699 canonicalOutput8699 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8700 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput8700 : ExponentCode := normalNode3991

theorem canonicalSound8700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8700.moment H = canonicalOutput8700.moment H :=
  canonical_of_padded canonicalInput8700 canonicalOutput8700 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8701 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput8701 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2609⟩

theorem canonicalSound8701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8701.moment H = canonicalOutput8701.moment H :=
  canonical_of_padded canonicalInput8701 canonicalOutput8701 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput8702 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput8702 : ExponentCode := normalNode4490

theorem canonicalSound8702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8702.moment H = canonicalOutput8702.moment H :=
  canonical_of_padded canonicalInput8702 canonicalOutput8702 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8703 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput8703 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2085⟩

theorem canonicalSound8703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8703.moment H = canonicalOutput8703.moment H :=
  canonical_of_padded canonicalInput8703 canonicalOutput8703 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
