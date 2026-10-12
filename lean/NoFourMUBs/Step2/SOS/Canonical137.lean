import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical119
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical112
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8768 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput8768 : ExponentCode := normalNode4521

theorem canonicalSound8768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8768.moment H = canonicalOutput8768.moment H :=
  canonical_of_padded canonicalInput8768 canonicalOutput8768 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8769 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput8769 : ExponentCode := normalNode4522

theorem canonicalSound8769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8769.moment H = canonicalOutput8769.moment H :=
  canonical_of_padded canonicalInput8769 canonicalOutput8769 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8770 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput8770 : ExponentCode := normalNode4522

theorem canonicalSound8770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8770.moment H = canonicalOutput8770.moment H :=
  canonical_of_padded canonicalInput8770 canonicalOutput8770 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8771 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, -3, 1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8771 : ExponentCode := normalNode4436

theorem canonicalSound8771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8771.moment H = canonicalOutput8771.moment H :=
  canonical_of_padded canonicalInput8771 canonicalOutput8771 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8772 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, -3, 2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8772 : ExponentCode := normalNode4130

theorem canonicalSound8772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8772.moment H = canonicalOutput8772.moment H :=
  canonical_of_padded canonicalInput8772 canonicalOutput8772 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8773 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, -2, 1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput8773 : ExponentCode := normalNode4090

theorem canonicalSound8773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8773.moment H = canonicalOutput8773.moment H :=
  canonical_of_padded canonicalInput8773 canonicalOutput8773 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput8774 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 2, 1, -3], ![1, -3, 0, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput8774 : ExponentCode := normalNode4517

theorem canonicalSound8774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8774.moment H = canonicalOutput8774.moment H :=
  canonical_of_padded canonicalInput8774 canonicalOutput8774 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8775 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 2, 1, -3], ![1, -2, 0, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput8775 : ExponentCode := normalNode4532

theorem canonicalSound8775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8775.moment H = canonicalOutput8775.moment H :=
  canonical_of_padded canonicalInput8775 canonicalOutput8775 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8776 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3600step0⟩

def canonicalOutput8776 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound8776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8776.moment H = canonicalOutput8776.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3600step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3600step0 = OAI.MUB6.Certificate.PairSemantics.raw3600.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3600).trans (OAI.MUB6.Certificate.PairSemantics.canonical3600 hH)

def canonicalInput8777 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![0, 2, 2, -4], ![2, -3, -1, 2]]⟩

def canonicalOutput8777 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code921

theorem canonicalSound8777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8777.moment H = canonicalOutput8777.moment H :=
  canonical_of_padded canonicalInput8777 canonicalOutput8777 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8778 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, -3, 0, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput8778 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node615⟩

theorem canonicalSound8778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8778.moment H = canonicalOutput8778.moment H :=
  canonical_of_padded canonicalInput8778 canonicalOutput8778 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8779 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, -3, 1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput8779 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound8779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8779.moment H = canonicalOutput8779.moment H :=
  canonical_of_padded canonicalInput8779 canonicalOutput8779 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8780 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3826step0⟩

def canonicalOutput8780 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1251⟩

theorem canonicalSound8780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8780.moment H = canonicalOutput8780.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3826step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3826step0 = OAI.MUB6.Certificate.PairSemantics.raw3826.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3826).trans (OAI.MUB6.Certificate.PairSemantics.canonical3826 hH)

def canonicalInput8781 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3827step0⟩

def canonicalOutput8781 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound8781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8781.moment H = canonicalOutput8781.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3827step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3827step0 = OAI.MUB6.Certificate.PairSemantics.raw3827.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3827).trans (OAI.MUB6.Certificate.PairSemantics.canonical3827 hH)

def canonicalInput8782 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput8782 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound8782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8782.moment H = canonicalOutput8782.moment H :=
  canonical_of_padded canonicalInput8782 canonicalOutput8782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8783 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, -1, 3, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput8783 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound8783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8783.moment H = canonicalOutput8783.moment H :=
  canonical_of_padded canonicalInput8783 canonicalOutput8783 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8784 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, 0, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput8784 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound8784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8784.moment H = canonicalOutput8784.moment H :=
  canonical_of_padded canonicalInput8784 canonicalOutput8784 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8785 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput8785 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound8785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8785.moment H = canonicalOutput8785.moment H :=
  canonical_of_padded canonicalInput8785 canonicalOutput8785 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8786 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, 1, 2, -4], ![1, -2, -1, 2]]⟩

def canonicalOutput8786 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound8786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8786.moment H = canonicalOutput8786.moment H :=
  canonical_of_padded canonicalInput8786 canonicalOutput8786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8787 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, 2, 0, -3], ![1, -3, 1, 1]]⟩

def canonicalOutput8787 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound8787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8787.moment H = canonicalOutput8787.moment H :=
  canonical_of_padded canonicalInput8787 canonicalOutput8787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8788 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -2, 1], ![1, 2, 1, -4], ![1, -3, 0, 2]]⟩

def canonicalOutput8788 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node615⟩

theorem canonicalSound8788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8788.moment H = canonicalOutput8788.moment H :=
  canonical_of_padded canonicalInput8788 canonicalOutput8788 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8789 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8789 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩

theorem canonicalSound8789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8789.moment H = canonicalOutput8789.moment H :=
  canonical_of_padded canonicalInput8789 canonicalOutput8789 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8790 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput8790 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound8790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8790.moment H = canonicalOutput8790.moment H :=
  canonical_of_padded canonicalInput8790 canonicalOutput8790 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8791 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, -2, -2, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput8791 : ExponentCode := normalNode4501

theorem canonicalSound8791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8791.moment H = canonicalOutput8791.moment H :=
  canonical_of_padded canonicalInput8791 canonicalOutput8791 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8792 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput8792 : ExponentCode := normalNode4507

theorem canonicalSound8792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8792.moment H = canonicalOutput8792.moment H :=
  canonical_of_padded canonicalInput8792 canonicalOutput8792 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8793 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput8793 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2761⟩

theorem canonicalSound8793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8793.moment H = canonicalOutput8793.moment H :=
  canonical_of_padded canonicalInput8793 canonicalOutput8793 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8794 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput8794 : ExponentCode := normalNode10569

theorem canonicalSound8794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8794.moment H = canonicalOutput8794.moment H :=
  canonical_of_padded canonicalInput8794 canonicalOutput8794 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8795 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput8795 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1281⟩

theorem canonicalSound8795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8795.moment H = canonicalOutput8795.moment H :=
  canonical_of_padded canonicalInput8795 canonicalOutput8795 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8796 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -3, 0, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput8796 : ExponentCode := normalNode4529

theorem canonicalSound8796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8796.moment H = canonicalOutput8796.moment H :=
  canonical_of_padded canonicalInput8796 canonicalOutput8796 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8797 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -3, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8797 : ExponentCode := normalNode4530

theorem canonicalSound8797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8797.moment H = canonicalOutput8797.moment H :=
  canonical_of_padded canonicalInput8797 canonicalOutput8797 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8798 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput8798 : ExponentCode := normalNode5368

theorem canonicalSound8798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8798.moment H = canonicalOutput8798.moment H :=
  canonical_of_padded canonicalInput8798 canonicalOutput8798 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8799 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -3, 1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8799 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2064⟩

theorem canonicalSound8799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8799.moment H = canonicalOutput8799.moment H :=
  canonical_of_padded canonicalInput8799 canonicalOutput8799 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput8800 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput8800 : ExponentCode := normalNode4558

theorem canonicalSound8800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8800.moment H = canonicalOutput8800.moment H :=
  canonical_of_padded canonicalInput8800 canonicalOutput8800 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8801 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput8801 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound8801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8801.moment H = canonicalOutput8801.moment H :=
  canonical_of_padded canonicalInput8801 canonicalOutput8801 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput8802 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -3, -1, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput8802 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2257⟩

theorem canonicalSound8802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8802.moment H = canonicalOutput8802.moment H :=
  canonical_of_padded canonicalInput8802 canonicalOutput8802 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8803 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -3, 1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput8803 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2318⟩

theorem canonicalSound8803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8803.moment H = canonicalOutput8803.moment H :=
  canonical_of_padded canonicalInput8803 canonicalOutput8803 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput8804 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput8804 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound8804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8804.moment H = canonicalOutput8804.moment H :=
  canonical_of_padded canonicalInput8804 canonicalOutput8804 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8805 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput8805 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound8805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8805.moment H = canonicalOutput8805.moment H :=
  canonical_of_padded canonicalInput8805 canonicalOutput8805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8806 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput8806 : ExponentCode := normalNode4550

theorem canonicalSound8806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8806.moment H = canonicalOutput8806.moment H :=
  canonical_of_padded canonicalInput8806 canonicalOutput8806 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8807 : ExponentCode := ⟨6, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -2, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput8807 : ExponentCode := normalNode4416

theorem canonicalSound8807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8807.moment H = canonicalOutput8807.moment H :=
  canonical_of_padded canonicalInput8807 canonicalOutput8807 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8808 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -3, -1, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput8808 : ExponentCode := normalNode5408

theorem canonicalSound8808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8808.moment H = canonicalOutput8808.moment H :=
  canonical_of_padded canonicalInput8808 canonicalOutput8808 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8809 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -3, 0, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput8809 : ExponentCode := normalNode5409

theorem canonicalSound8809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8809.moment H = canonicalOutput8809.moment H :=
  canonical_of_padded canonicalInput8809 canonicalOutput8809 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8810 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -3, 1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput8810 : ExponentCode := normalNode4466

theorem canonicalSound8810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8810.moment H = canonicalOutput8810.moment H :=
  canonical_of_padded canonicalInput8810 canonicalOutput8810 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8811 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, -1, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput8811 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1784⟩

theorem canonicalSound8811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8811.moment H = canonicalOutput8811.moment H :=
  canonical_of_padded canonicalInput8811 canonicalOutput8811 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8812 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, -3, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput8812 : ExponentCode := normalNode4535

theorem canonicalSound8812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8812.moment H = canonicalOutput8812.moment H :=
  canonical_of_padded canonicalInput8812 canonicalOutput8812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8813 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput8813 : ExponentCode := normalNode4536

theorem canonicalSound8813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8813.moment H = canonicalOutput8813.moment H :=
  canonical_of_padded canonicalInput8813 canonicalOutput8813 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8814 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput8814 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2086⟩

theorem canonicalSound8814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8814.moment H = canonicalOutput8814.moment H :=
  canonical_of_padded canonicalInput8814 canonicalOutput8814 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8815 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput8815 : ExponentCode := normalNode4518

theorem canonicalSound8815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8815.moment H = canonicalOutput8815.moment H :=
  canonical_of_padded canonicalInput8815 canonicalOutput8815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8816 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput8816 : ExponentCode := normalNode4519

theorem canonicalSound8816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8816.moment H = canonicalOutput8816.moment H :=
  canonical_of_padded canonicalInput8816 canonicalOutput8816 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8817 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput8817 : ExponentCode := normalNode4520

theorem canonicalSound8817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8817.moment H = canonicalOutput8817.moment H :=
  canonical_of_padded canonicalInput8817 canonicalOutput8817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8818 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput8818 : ExponentCode := normalNode4519

theorem canonicalSound8818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8818.moment H = canonicalOutput8818.moment H :=
  canonical_of_padded canonicalInput8818 canonicalOutput8818 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8819 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, -3, 1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8819 : ExponentCode := normalNode5525

theorem canonicalSound8819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8819.moment H = canonicalOutput8819.moment H :=
  canonical_of_padded canonicalInput8819 canonicalOutput8819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput8820 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -3, 0, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput8820 : ExponentCode := normalNode5369

theorem canonicalSound8820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8820.moment H = canonicalOutput8820.moment H :=
  canonical_of_padded canonicalInput8820 canonicalOutput8820 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8821 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -3, 1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8821 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2315⟩

theorem canonicalSound8821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8821.moment H = canonicalOutput8821.moment H :=
  canonical_of_padded canonicalInput8821 canonicalOutput8821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput8822 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -3, 1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput8822 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2007⟩

theorem canonicalSound8822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8822.moment H = canonicalOutput8822.moment H :=
  canonical_of_padded canonicalInput8822 canonicalOutput8822 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput8823 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -2, 1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput8823 : ExponentCode := normalNode3901

theorem canonicalSound8823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8823.moment H = canonicalOutput8823.moment H :=
  canonical_of_padded canonicalInput8823 canonicalOutput8823 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput8824 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, -3, -1, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput8824 : ExponentCode := normalNode5410

theorem canonicalSound8824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8824.moment H = canonicalOutput8824.moment H :=
  canonical_of_padded canonicalInput8824 canonicalOutput8824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8825 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, -3, 0, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput8825 : ExponentCode := normalNode5413

theorem canonicalSound8825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8825.moment H = canonicalOutput8825.moment H :=
  canonical_of_padded canonicalInput8825 canonicalOutput8825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8826 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, -2, 0, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput8826 : ExponentCode := normalNode5412

theorem canonicalSound8826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8826.moment H = canonicalOutput8826.moment H :=
  canonical_of_padded canonicalInput8826 canonicalOutput8826 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8827 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![1, -3, -1, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput8827 : ExponentCode := normalNode9945

theorem canonicalSound8827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8827.moment H = canonicalOutput8827.moment H :=
  canonical_of_padded canonicalInput8827 canonicalOutput8827 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8828 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8828 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound8828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8828.moment H = canonicalOutput8828.moment H :=
  canonical_of_padded canonicalInput8828 canonicalOutput8828 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput8829 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![1, -1, -3, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput8829 : ExponentCode := normalNode10669

theorem canonicalSound8829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8829.moment H = canonicalOutput8829.moment H :=
  canonical_of_padded canonicalInput8829 canonicalOutput8829 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8830 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput8830 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1283⟩

theorem canonicalSound8830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8830.moment H = canonicalOutput8830.moment H :=
  canonical_of_padded canonicalInput8830 canonicalOutput8830 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8831 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput8831 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩

theorem canonicalSound8831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8831.moment H = canonicalOutput8831.moment H :=
  canonical_of_padded canonicalInput8831 canonicalOutput8831 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
