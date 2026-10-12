import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput3776 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 2, -1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput3776 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code404

theorem canonicalSound3776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3776.moment H = canonicalOutput3776.moment H :=
  canonical_of_padded canonicalInput3776 canonicalOutput3776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3777 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 2, 0, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput3777 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code403

theorem canonicalSound3777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3777.moment H = canonicalOutput3777.moment H :=
  canonical_of_padded canonicalInput3777 canonicalOutput3777 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3778 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 3, -3, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput3778 : ExponentCode := normalNode9578

theorem canonicalSound3778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3778.moment H = canonicalOutput3778.moment H :=
  canonical_of_padded canonicalInput3778 canonicalOutput3778 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput3779 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -2, 3, -1], ![1, 3, -2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput3779 : ExponentCode := normalNode10905

theorem canonicalSound3779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3779.moment H = canonicalOutput3779.moment H :=
  canonical_of_padded canonicalInput3779 canonicalOutput3779 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput3780 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput3780 : ExponentCode := normalNode420

theorem canonicalSound3780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3780.moment H = canonicalOutput3780.moment H :=
  canonical_of_padded canonicalInput3780 canonicalOutput3780 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3781 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput3781 : ExponentCode := normalNode1216

theorem canonicalSound3781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3781.moment H = canonicalOutput3781.moment H :=
  canonical_of_padded canonicalInput3781 canonicalOutput3781 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3782 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput3782 : ExponentCode := normalNode1694

theorem canonicalSound3782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3782.moment H = canonicalOutput3782.moment H :=
  canonical_of_padded canonicalInput3782 canonicalOutput3782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3783 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, -1, 0], ![2, 1, 2, -5]]⟩

def canonicalOutput3783 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1038⟩

theorem canonicalSound3783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3783.moment H = canonicalOutput3783.moment H :=
  canonical_of_padded canonicalInput3783 canonicalOutput3783 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3784 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput3784 : ExponentCode := normalNode420

theorem canonicalSound3784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3784.moment H = canonicalOutput3784.moment H :=
  canonical_of_padded canonicalInput3784 canonicalOutput3784 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3785 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput3785 : ExponentCode := normalNode1215

theorem canonicalSound3785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3785.moment H = canonicalOutput3785.moment H :=
  canonical_of_padded canonicalInput3785 canonicalOutput3785 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3786 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput3786 : ExponentCode := normalNode1697

theorem canonicalSound3786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3786.moment H = canonicalOutput3786.moment H :=
  canonical_of_padded canonicalInput3786 canonicalOutput3786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3787 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput3787 : ExponentCode := normalNode1699

theorem canonicalSound3787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3787.moment H = canonicalOutput3787.moment H :=
  canonical_of_padded canonicalInput3787 canonicalOutput3787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3788 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput3788 : ExponentCode := normalNode1698

theorem canonicalSound3788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3788.moment H = canonicalOutput3788.moment H :=
  canonical_of_padded canonicalInput3788 canonicalOutput3788 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3789 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 2, -1, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput3789 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node400⟩

theorem canonicalSound3789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3789.moment H = canonicalOutput3789.moment H :=
  canonical_of_padded canonicalInput3789 canonicalOutput3789 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3790 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 2, 0, -2], ![2, 0, 1, -3]]⟩

def canonicalOutput3790 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node794⟩

theorem canonicalSound3790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3790.moment H = canonicalOutput3790.moment H :=
  canonical_of_padded canonicalInput3790 canonicalOutput3790 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3791 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 2, 2, -4], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput3791 : ExponentCode := normalNode425

theorem canonicalSound3791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3791.moment H = canonicalOutput3791.moment H :=
  canonical_of_padded canonicalInput3791 canonicalOutput3791 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3792 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![0, 2, 2, -4], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput3792 : ExponentCode := normalNode425

theorem canonicalSound3792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3792.moment H = canonicalOutput3792.moment H :=
  canonical_of_padded canonicalInput3792 canonicalOutput3792 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3793 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 2, 2, -5]]⟩

def canonicalOutput3793 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node999⟩

theorem canonicalSound3793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3793.moment H = canonicalOutput3793.moment H :=
  canonical_of_padded canonicalInput3793 canonicalOutput3793 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3794 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![1, 1, -1, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput3794 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node466⟩

theorem canonicalSound3794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3794.moment H = canonicalOutput3794.moment H :=
  canonical_of_padded canonicalInput3794 canonicalOutput3794 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3795 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![1, 1, 0, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput3795 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound3795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3795.moment H = canonicalOutput3795.moment H :=
  canonical_of_padded canonicalInput3795 canonicalOutput3795 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3796 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![1, 1, 3, -5], ![1, 1, -2, 0]]⟩

def canonicalOutput3796 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code414

theorem canonicalSound3796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3796.moment H = canonicalOutput3796.moment H :=
  canonical_of_padded canonicalInput3796 canonicalOutput3796 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3797 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![1, 2, -2, -1], ![1, 0, 3, -4]]⟩

def canonicalOutput3797 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code413

theorem canonicalSound3797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3797.moment H = canonicalOutput3797.moment H :=
  canonical_of_padded canonicalInput3797 canonicalOutput3797 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3798 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![1, 2, -1, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput3798 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code412

theorem canonicalSound3798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3798.moment H = canonicalOutput3798.moment H :=
  canonical_of_padded canonicalInput3798 canonicalOutput3798 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3799 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, -1, 2], ![1, 2, 2, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput3799 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node999⟩

theorem canonicalSound3799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3799.moment H = canonicalOutput3799.moment H :=
  canonical_of_padded canonicalInput3799 canonicalOutput3799 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput3800 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput3800 : ExponentCode := normalNode10621

theorem canonicalSound3800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3800.moment H = canonicalOutput3800.moment H :=
  canonical_of_padded canonicalInput3800 canonicalOutput3800 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3801 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput3801 : ExponentCode := normalNode10513

theorem canonicalSound3801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3801.moment H = canonicalOutput3801.moment H :=
  canonical_of_padded canonicalInput3801 canonicalOutput3801 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3802 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput3802 : ExponentCode := normalNode10575

theorem canonicalSound3802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3802.moment H = canonicalOutput3802.moment H :=
  canonical_of_padded canonicalInput3802 canonicalOutput3802 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3803 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput3803 : ExponentCode := normalNode7864

theorem canonicalSound3803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3803.moment H = canonicalOutput3803.moment H :=
  canonical_of_padded canonicalInput3803 canonicalOutput3803 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3804 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput3804 : ExponentCode := normalNode8933

theorem canonicalSound3804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3804.moment H = canonicalOutput3804.moment H :=
  canonical_of_padded canonicalInput3804 canonicalOutput3804 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3805 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 0, 1], ![0, 2, -1, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput3805 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node803⟩

theorem canonicalSound3805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3805.moment H = canonicalOutput3805.moment H :=
  canonical_of_padded canonicalInput3805 canonicalOutput3805 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3806 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 0, 1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput3806 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2589⟩

theorem canonicalSound3806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3806.moment H = canonicalOutput3806.moment H :=
  canonical_of_padded canonicalInput3806 canonicalOutput3806 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3807 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 0, 1], ![0, 3, -2, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput3807 : ExponentCode := normalNode3384

theorem canonicalSound3807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3807.moment H = canonicalOutput3807.moment H :=
  canonical_of_padded canonicalInput3807 canonicalOutput3807 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3808 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 0, 1], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput3808 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1050⟩

theorem canonicalSound3808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3808.moment H = canonicalOutput3808.moment H :=
  canonical_of_padded canonicalInput3808 canonicalOutput3808 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3809 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 0, 1], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput3809 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1173⟩

theorem canonicalSound3809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3809.moment H = canonicalOutput3809.moment H :=
  canonical_of_padded canonicalInput3809 canonicalOutput3809 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3810 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 0, 1], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput3810 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩

theorem canonicalSound3810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3810.moment H = canonicalOutput3810.moment H :=
  canonical_of_padded canonicalInput3810 canonicalOutput3810 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3811 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 2, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput3811 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1374⟩

theorem canonicalSound3811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3811.moment H = canonicalOutput3811.moment H :=
  canonical_of_padded canonicalInput3811 canonicalOutput3811 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput3812 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 3, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput3812 : ExponentCode := normalNode3390

theorem canonicalSound3812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3812.moment H = canonicalOutput3812.moment H :=
  canonical_of_padded canonicalInput3812 canonicalOutput3812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3813 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput3813 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1981⟩

theorem canonicalSound3813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3813.moment H = canonicalOutput3813.moment H :=
  canonical_of_padded canonicalInput3813 canonicalOutput3813 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3814 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput3814 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1980⟩

theorem canonicalSound3814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3814.moment H = canonicalOutput3814.moment H :=
  canonical_of_padded canonicalInput3814 canonicalOutput3814 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3815 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput3815 : ExponentCode := normalNode10816

theorem canonicalSound3815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3815.moment H = canonicalOutput3815.moment H :=
  canonical_of_padded canonicalInput3815 canonicalOutput3815 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3816 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 2, -2, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput3816 : ExponentCode := normalNode517

theorem canonicalSound3816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3816.moment H = canonicalOutput3816.moment H :=
  canonical_of_padded canonicalInput3816 canonicalOutput3816 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3817 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput3817 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2811⟩

theorem canonicalSound3817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3817.moment H = canonicalOutput3817.moment H :=
  canonical_of_padded canonicalInput3817 canonicalOutput3817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput3818 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput3818 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound3818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3818.moment H = canonicalOutput3818.moment H :=
  canonical_of_padded canonicalInput3818 canonicalOutput3818 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput3819 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput3819 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1982⟩

theorem canonicalSound3819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3819.moment H = canonicalOutput3819.moment H :=
  canonical_of_padded canonicalInput3819 canonicalOutput3819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3820 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput3820 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1056⟩

theorem canonicalSound3820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3820.moment H = canonicalOutput3820.moment H :=
  canonical_of_padded canonicalInput3820 canonicalOutput3820 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3821 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 2, -2, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput3821 : ExponentCode := normalNode3369

theorem canonicalSound3821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3821.moment H = canonicalOutput3821.moment H :=
  canonical_of_padded canonicalInput3821 canonicalOutput3821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3822 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 2, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput3822 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1374⟩

theorem canonicalSound3822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3822.moment H = canonicalOutput3822.moment H :=
  canonical_of_padded canonicalInput3822 canonicalOutput3822 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3823 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 2, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput3823 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound3823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3823.moment H = canonicalOutput3823.moment H :=
  canonical_of_padded canonicalInput3823 canonicalOutput3823 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput3824 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 2, 2, -4], ![2, 0, -3, 1]]⟩

def canonicalOutput3824 : ExponentCode := normalNode8905

theorem canonicalSound3824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3824.moment H = canonicalOutput3824.moment H :=
  canonical_of_padded canonicalInput3824 canonicalOutput3824 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3825 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput3825 : ExponentCode := normalNode3391

theorem canonicalSound3825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3825.moment H = canonicalOutput3825.moment H :=
  canonical_of_padded canonicalInput3825 canonicalOutput3825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3826 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput3826 : ExponentCode := normalNode1817

theorem canonicalSound3826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3826.moment H = canonicalOutput3826.moment H :=
  canonical_of_padded canonicalInput3826 canonicalOutput3826 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput3827 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 3, 1, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput3827 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1987⟩

theorem canonicalSound3827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3827.moment H = canonicalOutput3827.moment H :=
  canonical_of_padded canonicalInput3827 canonicalOutput3827 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3828 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 3, 1, -4], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput3828 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1986⟩

theorem canonicalSound3828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3828.moment H = canonicalOutput3828.moment H :=
  canonical_of_padded canonicalInput3828 canonicalOutput3828 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput3829 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![0, 3, 1, -4], ![2, -1, -2, 1]]⟩

def canonicalOutput3829 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node929⟩

theorem canonicalSound3829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3829.moment H = canonicalOutput3829.moment H :=
  canonical_of_padded canonicalInput3829 canonicalOutput3829 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3830 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![1, -1, 2, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput3830 : ExponentCode := normalNode6701

theorem canonicalSound3830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3830.moment H = canonicalOutput3830.moment H :=
  canonical_of_padded canonicalInput3830 canonicalOutput3830 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3831 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![1, 0, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput3831 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1278⟩

theorem canonicalSound3831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3831.moment H = canonicalOutput3831.moment H :=
  canonical_of_padded canonicalInput3831 canonicalOutput3831 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3832 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput3832 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound3832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3832.moment H = canonicalOutput3832.moment H :=
  canonical_of_padded canonicalInput3832 canonicalOutput3832 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3833 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![1, 0, 2, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput3833 : ExponentCode := normalNode6703

theorem canonicalSound3833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3833.moment H = canonicalOutput3833.moment H :=
  canonical_of_padded canonicalInput3833 canonicalOutput3833 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput3834 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![1, 1, -3, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput3834 : ExponentCode := normalNode9355

theorem canonicalSound3834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3834.moment H = canonicalOutput3834.moment H :=
  canonical_of_padded canonicalInput3834 canonicalOutput3834 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3835 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![1, 1, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput3835 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound3835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3835.moment H = canonicalOutput3835.moment H :=
  canonical_of_padded canonicalInput3835 canonicalOutput3835 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput3836 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, -1, 1, 0], ![1, 1, 2, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput3836 : ExponentCode := normalNode9355

theorem canonicalSound3836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3836.moment H = canonicalOutput3836.moment H :=
  canonical_of_padded canonicalInput3836 canonicalOutput3836 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput3837 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput3837 : ExponentCode := normalNode1721

theorem canonicalSound3837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3837.moment H = canonicalOutput3837.moment H :=
  canonical_of_padded canonicalInput3837 canonicalOutput3837 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput3838 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput3838 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node953⟩

theorem canonicalSound3838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3838.moment H = canonicalOutput3838.moment H :=
  canonical_of_padded canonicalInput3838 canonicalOutput3838 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput3839 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput3839 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound3839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput3839.moment H = canonicalOutput3839.moment H :=
  canonical_of_padded canonicalInput3839 canonicalOutput3839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
