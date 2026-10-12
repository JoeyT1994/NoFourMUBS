import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraCanonical3
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4672 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 0, 2], ![1, 1, -2, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput4672 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node579⟩

theorem canonicalSound4672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4672.moment H = canonicalOutput4672.moment H :=
  canonical_of_padded canonicalInput4672 canonicalOutput4672 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4673 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 0, 2], ![1, 1, 2, -4], ![1, 2, -3, 0]]⟩

def canonicalOutput4673 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code121

theorem canonicalSound4673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4673.moment H = canonicalOutput4673.moment H :=
  canonical_of_padded canonicalInput4673 canonicalOutput4673 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4674 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 0, 2], ![1, 2, -3, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput4674 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code121

theorem canonicalSound4674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4674.moment H = canonicalOutput4674.moment H :=
  canonical_of_padded canonicalInput4674 canonicalOutput4674 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4675 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, -2, 1], ![2, 2, 0, -4]]⟩

def canonicalOutput4675 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node579⟩

theorem canonicalSound4675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4675.moment H = canonicalOutput4675.moment H :=
  canonical_of_padded canonicalInput4675 canonicalOutput4675 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4676 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput4676 : ExponentCode := normalNode5098

theorem canonicalSound4676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4676.moment H = canonicalOutput4676.moment H :=
  canonical_of_padded canonicalInput4676 canonicalOutput4676 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4677 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput4677 : ExponentCode := normalNode3988

theorem canonicalSound4677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4677.moment H = canonicalOutput4677.moment H :=
  canonical_of_padded canonicalInput4677 canonicalOutput4677 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4678 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput4678 : ExponentCode := normalNode5109

theorem canonicalSound4678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4678.moment H = canonicalOutput4678.moment H :=
  canonical_of_padded canonicalInput4678 canonicalOutput4678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4679 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput4679 : ExponentCode := normalNode5110

theorem canonicalSound4679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4679.moment H = canonicalOutput4679.moment H :=
  canonical_of_padded canonicalInput4679 canonicalOutput4679 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4680 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairTargetSemantics.extraRaw55step0⟩

def canonicalOutput4680 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2204⟩

theorem canonicalSound4680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4680.moment H = canonicalOutput4680.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairTargetSemantics.extraRaw55step0 = _
  have hz : ∀ j, OAI.MUB6.Certificate.PairTargetSemantics.extraRaw55 (OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation62 0) j = 0 := by decide +kernel
  have heq : OAI.MUB6.Certificate.PairTargetSemantics.extraRaw55step0 = (fun u v => OAI.MUB6.Certificate.PairTargetSemantics.extraRaw55 (OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation62 u.succ) v) := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (moment_delete_zero_row (by decide) H OAI.MUB6.Certificate.PairTargetSemantics.extraRaw55 OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation62 hz).symm.trans
    (OAI.MUB6.Certificate.PairTargetSemantics.extraCanonical55 hH)

def canonicalInput4681 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput4681 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2232⟩

theorem canonicalSound4681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4681.moment H = canonicalOutput4681.moment H :=
  canonical_of_padded canonicalInput4681 canonicalOutput4681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4682 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput4682 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2237⟩

theorem canonicalSound4682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4682.moment H = canonicalOutput4682.moment H :=
  canonical_of_padded canonicalInput4682 canonicalOutput4682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4683 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput4683 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2227⟩

theorem canonicalSound4683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4683.moment H = canonicalOutput4683.moment H :=
  canonical_of_padded canonicalInput4683 canonicalOutput4683 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4684 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput4684 : ExponentCode := normalNode5237

theorem canonicalSound4684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4684.moment H = canonicalOutput4684.moment H :=
  canonical_of_padded canonicalInput4684 canonicalOutput4684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4685 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput4685 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code527

theorem canonicalSound4685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4685.moment H = canonicalOutput4685.moment H :=
  canonical_of_padded canonicalInput4685 canonicalOutput4685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4686 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![2, 2, -3, -1]]⟩

def canonicalOutput4686 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node682⟩

theorem canonicalSound4686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4686.moment H = canonicalOutput4686.moment H :=
  canonical_of_padded canonicalInput4686 canonicalOutput4686 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4687 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput4687 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2040⟩

theorem canonicalSound4687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4687.moment H = canonicalOutput4687.moment H :=
  canonical_of_padded canonicalInput4687 canonicalOutput4687 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4688 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 2, -2, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput4688 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code528

theorem canonicalSound4688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4688.moment H = canonicalOutput4688.moment H :=
  canonical_of_padded canonicalInput4688 canonicalOutput4688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4689 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 2, -2, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput4689 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩

theorem canonicalSound4689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4689.moment H = canonicalOutput4689.moment H :=
  canonical_of_padded canonicalInput4689 canonicalOutput4689 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4690 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput4690 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2240⟩

theorem canonicalSound4690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4690.moment H = canonicalOutput4690.moment H :=
  canonical_of_padded canonicalInput4690 canonicalOutput4690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4691 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput4691 : ExponentCode := normalNode5246

theorem canonicalSound4691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4691.moment H = canonicalOutput4691.moment H :=
  canonical_of_padded canonicalInput4691 canonicalOutput4691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4692 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 2, 0, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput4692 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node683⟩

theorem canonicalSound4692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4692.moment H = canonicalOutput4692.moment H :=
  canonical_of_padded canonicalInput4692 canonicalOutput4692 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4693 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 2, 1, -3], ![2, 1, -3, 0]]⟩

def canonicalOutput4693 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code398

theorem canonicalSound4693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4693.moment H = canonicalOutput4693.moment H :=
  canonical_of_padded canonicalInput4693 canonicalOutput4693 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4694 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 3, -3, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput4694 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code395

theorem canonicalSound4694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4694.moment H = canonicalOutput4694.moment H :=
  canonical_of_padded canonicalInput4694 canonicalOutput4694 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4695 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 3, -2, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput4695 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node602⟩

theorem canonicalSound4695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4695.moment H = canonicalOutput4695.moment H :=
  canonical_of_padded canonicalInput4695 canonicalOutput4695 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4696 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4696 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2210⟩

theorem canonicalSound4696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4696.moment H = canonicalOutput4696.moment H :=
  canonical_of_padded canonicalInput4696 canonicalOutput4696 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4697 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 3, -1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput4697 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node603⟩

theorem canonicalSound4697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4697.moment H = canonicalOutput4697.moment H :=
  canonical_of_padded canonicalInput4697 canonicalOutput4697 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4698 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 3, 0, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput4698 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node601⟩

theorem canonicalSound4698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4698.moment H = canonicalOutput4698.moment H :=
  canonical_of_padded canonicalInput4698 canonicalOutput4698 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4699 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![0, 3, 1, -4], ![2, 0, -3, 1]]⟩

def canonicalOutput4699 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code394

theorem canonicalSound4699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4699.moment H = canonicalOutput4699.moment H :=
  canonical_of_padded canonicalInput4699 canonicalOutput4699 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4700 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![1, 0, -2, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput4700 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node596⟩

theorem canonicalSound4700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4700.moment H = canonicalOutput4700.moment H :=
  canonical_of_padded canonicalInput4700 canonicalOutput4700 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4701 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput4701 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1308⟩

theorem canonicalSound4701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4701.moment H = canonicalOutput4701.moment H :=
  canonical_of_padded canonicalInput4701 canonicalOutput4701 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4702 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput4702 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1310⟩

theorem canonicalSound4702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4702.moment H = canonicalOutput4702.moment H :=
  canonical_of_padded canonicalInput4702 canonicalOutput4702 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4703 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![1, 0, 1, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput4703 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code799

theorem canonicalSound4703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4703.moment H = canonicalOutput4703.moment H :=
  canonical_of_padded canonicalInput4703 canonicalOutput4703 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4704 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![1, 1, -2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput4704 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1139

theorem canonicalSound4704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4704.moment H = canonicalOutput4704.moment H :=
  canonical_of_padded canonicalInput4704 canonicalOutput4704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4705 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![1, 1, 0, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput4705 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node684⟩

theorem canonicalSound4705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4705.moment H = canonicalOutput4705.moment H :=
  canonical_of_padded canonicalInput4705 canonicalOutput4705 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4706 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![1, 2, -3, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput4706 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code531

theorem canonicalSound4706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4706.moment H = canonicalOutput4706.moment H :=
  canonical_of_padded canonicalInput4706 canonicalOutput4706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4707 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![1, 2, 0, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput4707 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1139

theorem canonicalSound4707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4707.moment H = canonicalOutput4707.moment H :=
  canonical_of_padded canonicalInput4707 canonicalOutput4707 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4708 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![1, 3, -3, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput4708 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code799

theorem canonicalSound4708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4708.moment H = canonicalOutput4708.moment H :=
  canonical_of_padded canonicalInput4708 canonicalOutput4708 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4709 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 1, 1], ![1, 3, 0, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput4709 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node596⟩

theorem canonicalSound4709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4709.moment H = canonicalOutput4709.moment H :=
  canonical_of_padded canonicalInput4709 canonicalOutput4709 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4710 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -2, 1], ![1, 2, -1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput4710 : ExponentCode := normalNode2264

theorem canonicalSound4710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4710.moment H = canonicalOutput4710.moment H :=
  canonical_of_padded canonicalInput4710 canonicalOutput4710 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4711 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -2, 1], ![2, 2, -1, -3]]⟩

def canonicalOutput4711 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1125

theorem canonicalSound4711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4711.moment H = canonicalOutput4711.moment H :=
  canonical_of_padded canonicalInput4711 canonicalOutput4711 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4712 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput4712 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2224⟩

theorem canonicalSound4712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4712.moment H = canonicalOutput4712.moment H :=
  canonical_of_padded canonicalInput4712 canonicalOutput4712 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4713 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 2, -2, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput4713 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2352⟩

theorem canonicalSound4713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4713.moment H = canonicalOutput4713.moment H :=
  canonical_of_padded canonicalInput4713 canonicalOutput4713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4714 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput4714 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2281⟩

theorem canonicalSound4714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4714.moment H = canonicalOutput4714.moment H :=
  canonical_of_padded canonicalInput4714 canonicalOutput4714 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4715 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput4715 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2224⟩

theorem canonicalSound4715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4715.moment H = canonicalOutput4715.moment H :=
  canonical_of_padded canonicalInput4715 canonicalOutput4715 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4716 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput4716 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2353⟩

theorem canonicalSound4716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4716.moment H = canonicalOutput4716.moment H :=
  canonical_of_padded canonicalInput4716 canonicalOutput4716 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4717 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput4717 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2281⟩

theorem canonicalSound4717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4717.moment H = canonicalOutput4717.moment H :=
  canonical_of_padded canonicalInput4717 canonicalOutput4717 (by decide) (by decide)
    ⟨false, false, canonicalPermutation33, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4718 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput4718 : ExponentCode := normalNode5873

theorem canonicalSound4718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4718.moment H = canonicalOutput4718.moment H :=
  canonical_of_padded canonicalInput4718 canonicalOutput4718 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4719 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput4719 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2350⟩

theorem canonicalSound4719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4719.moment H = canonicalOutput4719.moment H :=
  canonical_of_padded canonicalInput4719 canonicalOutput4719 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4720 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput4720 : ExponentCode := normalNode5872

theorem canonicalSound4720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4720.moment H = canonicalOutput4720.moment H :=
  canonical_of_padded canonicalInput4720 canonicalOutput4720 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4721 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 2, -3, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput4721 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code397

theorem canonicalSound4721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4721.moment H = canonicalOutput4721.moment H :=
  canonical_of_padded canonicalInput4721 canonicalOutput4721 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4722 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 2, -2, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput4722 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node719⟩

theorem canonicalSound4722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4722.moment H = canonicalOutput4722.moment H :=
  canonical_of_padded canonicalInput4722 canonicalOutput4722 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4723 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput4723 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2036⟩

theorem canonicalSound4723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4723.moment H = canonicalOutput4723.moment H :=
  canonical_of_padded canonicalInput4723 canonicalOutput4723 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4724 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4724 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2036⟩

theorem canonicalSound4724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4724.moment H = canonicalOutput4724.moment H :=
  canonical_of_padded canonicalInput4724 canonicalOutput4724 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4725 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 2, 0, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput4725 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node591⟩

theorem canonicalSound4725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4725.moment H = canonicalOutput4725.moment H :=
  canonical_of_padded canonicalInput4725 canonicalOutput4725 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4726 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 3, -3, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput4726 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node587⟩

theorem canonicalSound4726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4726.moment H = canonicalOutput4726.moment H :=
  canonical_of_padded canonicalInput4726 canonicalOutput4726 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4727 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4727 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2350⟩

theorem canonicalSound4727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4727.moment H = canonicalOutput4727.moment H :=
  canonical_of_padded canonicalInput4727 canonicalOutput4727 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4728 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 3, -2, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput4728 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩

theorem canonicalSound4728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4728.moment H = canonicalOutput4728.moment H :=
  canonical_of_padded canonicalInput4728 canonicalOutput4728 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4729 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4729 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1960⟩

theorem canonicalSound4729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4729.moment H = canonicalOutput4729.moment H :=
  canonical_of_padded canonicalInput4729 canonicalOutput4729 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4730 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 3, -1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput4730 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node591⟩

theorem canonicalSound4730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4730.moment H = canonicalOutput4730.moment H :=
  canonical_of_padded canonicalInput4730 canonicalOutput4730 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4731 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![0, 3, 0, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput4731 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code391

theorem canonicalSound4731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4731.moment H = canonicalOutput4731.moment H :=
  canonical_of_padded canonicalInput4731 canonicalOutput4731 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4732 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 0, -2, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput4732 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node594⟩

theorem canonicalSound4732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4732.moment H = canonicalOutput4732.moment H :=
  canonical_of_padded canonicalInput4732 canonicalOutput4732 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4733 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput4733 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1315⟩

theorem canonicalSound4733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4733.moment H = canonicalOutput4733.moment H :=
  canonical_of_padded canonicalInput4733 canonicalOutput4733 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4734 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 0, 0, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput4734 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1303⟩

theorem canonicalSound4734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4734.moment H = canonicalOutput4734.moment H :=
  canonical_of_padded canonicalInput4734 canonicalOutput4734 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4735 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 1, -3, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput4735 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code398

theorem canonicalSound4735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4735.moment H = canonicalOutput4735.moment H :=
  canonical_of_padded canonicalInput4735 canonicalOutput4735 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
