import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17664 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 0, 1], ![-1, 1, 1, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput17664 : ExponentCode := normalNode3965

theorem canonicalSound17664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17664.moment H = canonicalOutput17664.moment H :=
  canonical_of_padded canonicalInput17664 canonicalOutput17664 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17665 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 0, 1], ![0, -1, 2, 1, -2], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput17665 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩

theorem canonicalSound17665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17665.moment H = canonicalOutput17665.moment H :=
  canonical_of_padded canonicalInput17665 canonicalOutput17665 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17666 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 0, 1], ![0, 1, 1, -3, 1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput17666 : ExponentCode := normalNode3521

theorem canonicalSound17666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17666.moment H = canonicalOutput17666.moment H :=
  canonical_of_padded canonicalInput17666 canonicalOutput17666 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17667 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 0, 1], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput17667 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2076⟩

theorem canonicalSound17667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17667.moment H = canonicalOutput17667.moment H :=
  canonical_of_padded canonicalInput17667 canonicalOutput17667 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17668 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput17668 : ExponentCode := normalNode3994

theorem canonicalSound17668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17668.moment H = canonicalOutput17668.moment H :=
  canonical_of_padded canonicalInput17668 canonicalOutput17668 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17669 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 1, 0], ![-1, 1, 1, -3, 2], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput17669 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code460

theorem canonicalSound17669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17669.moment H = canonicalOutput17669.moment H :=
  canonical_of_padded canonicalInput17669 canonicalOutput17669 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17670 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 1, 0], ![0, -1, 2, 0, -1], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput17670 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1688⟩

theorem canonicalSound17670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17670.moment H = canonicalOutput17670.moment H :=
  canonical_of_padded canonicalInput17670 canonicalOutput17670 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17671 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput17671 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound17671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17671.moment H = canonicalOutput17671.moment H :=
  canonical_of_padded canonicalInput17671 canonicalOutput17671 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17672 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -2, 1, 0], ![1, -1, 2, 0, -2], ![0, 1, 0, -3, 2]]⟩

def canonicalOutput17672 : ExponentCode := normalNode2054

theorem canonicalSound17672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17672.moment H = canonicalOutput17672.moment H :=
  canonical_of_padded canonicalInput17672 canonicalOutput17672 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17673 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -1, -1, 1], ![-1, 2, -1, 0, 0], ![2, -2, 2, -1, -1]]⟩

def canonicalOutput17673 : ExponentCode := normalNode2392

theorem canonicalSound17673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17673.moment H = canonicalOutput17673.moment H :=
  canonical_of_padded canonicalInput17673 canonicalOutput17673 (by decide) (by decide)
    ⟨true, true, canonicalPermutation37, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17674 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -1, -1, 1], ![0, -2, 2, 0, 0], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput17674 : ExponentCode := normalNode2373

theorem canonicalSound17674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17674.moment H = canonicalOutput17674.moment H :=
  canonical_of_padded canonicalInput17674 canonicalOutput17674 (by decide) (by decide)
    ⟨true, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17675 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -1, -1, 1], ![0, 2, -1, 0, -1], ![1, -2, 2, -1, 0]]⟩

def canonicalOutput17675 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1784⟩

theorem canonicalSound17675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17675.moment H = canonicalOutput17675.moment H :=
  canonical_of_padded canonicalInput17675 canonicalOutput17675 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17676 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, -1, -1, 1], ![1, -2, 2, 0, -1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput17676 : ExponentCode := normalNode2380

theorem canonicalSound17676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17676.moment H = canonicalOutput17676.moment H :=
  canonical_of_padded canonicalInput17676 canonicalOutput17676 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput17677 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, 0, -2, 1], ![-1, -1, 2, 1, -1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput17677 : ExponentCode := normalNode5872

theorem canonicalSound17677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17677.moment H = canonicalOutput17677.moment H :=
  canonical_of_padded canonicalInput17677 canonicalOutput17677 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17678 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, 0, -2, 1], ![0, -1, 2, 1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17678 : ExponentCode := normalNode5872

theorem canonicalSound17678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17678.moment H = canonicalOutput17678.moment H :=
  canonical_of_padded canonicalInput17678 canonicalOutput17678 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17679 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, 0, -2, 1], ![0, -1, 3, 0, -2], ![1, 1, -3, 0, 1]]⟩

def canonicalOutput17679 : ExponentCode := normalNode5948

theorem canonicalSound17679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17679.moment H = canonicalOutput17679.moment H :=
  canonical_of_padded canonicalInput17679 canonicalOutput17679 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17680 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, 1, -2, 0], ![0, -1, 1, 1, -1], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17680 : ExponentCode := normalNode2920

theorem canonicalSound17680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17680.moment H = canonicalOutput17680.moment H :=
  canonical_of_padded canonicalInput17680 canonicalOutput17680 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17681 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, 1, -2, 0], ![1, -1, 1, 1, -2], ![0, 1, -2, -1, 2]]⟩

def canonicalOutput17681 : ExponentCode := normalNode5852

theorem canonicalSound17681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17681.moment H = canonicalOutput17681.moment H :=
  canonical_of_padded canonicalInput17681 canonicalOutput17681 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17682 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, 1, -1, -1], ![-1, -1, 1, -1, 2], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput17682 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1172

theorem canonicalSound17682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17682.moment H = canonicalOutput17682.moment H :=
  canonical_of_padded canonicalInput17682 canonicalOutput17682 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17683 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, 1, 0, -2], ![-1, -1, 1, -1, 2], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput17683 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code889

theorem canonicalSound17683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17683.moment H = canonicalOutput17683.moment H :=
  canonical_of_padded canonicalInput17683 canonicalOutput17683 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17684 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, 1, 0, -2], ![-1, 1, -2, -1, 3], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput17684 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code776

theorem canonicalSound17684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17684.moment H = canonicalOutput17684.moment H :=
  canonical_of_padded canonicalInput17684 canonicalOutput17684 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17685 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, 1, 0, -2], ![0, 1, -2, -1, 2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput17685 : ExponentCode := normalNode3965

theorem canonicalSound17685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17685.moment H = canonicalOutput17685.moment H :=
  canonical_of_padded canonicalInput17685 canonicalOutput17685 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17686 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, 1, 0, -2], ![0, 1, -2, 0, 1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput17686 : ExponentCode := normalNode3994

theorem canonicalSound17686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17686.moment H = canonicalOutput17686.moment H :=
  canonical_of_padded canonicalInput17686 canonicalOutput17686 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17687 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, -2, 0, 0], ![0, -1, 1, -2, 2]]⟩

def canonicalOutput17687 : ExponentCode := normalNode3968

theorem canonicalSound17687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17687.moment H = canonicalOutput17687.moment H :=
  canonical_of_padded canonicalInput17687 canonicalOutput17687 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17688 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -2, -1, 1], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput17688 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node705⟩

theorem canonicalSound17688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17688.moment H = canonicalOutput17688.moment H :=
  canonical_of_padded canonicalInput17688 canonicalOutput17688 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17689 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -2, 0, 0], ![-2, -1, 2, -1, 2], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput17689 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code893

theorem canonicalSound17689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17689.moment H = canonicalOutput17689.moment H :=
  canonical_of_padded canonicalInput17689 canonicalOutput17689 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17690 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -2, 0, 0], ![-1, -1, 2, -1, 1], ![2, 0, 0, -1, -1]]⟩

def canonicalOutput17690 : ExponentCode := normalNode3873

theorem canonicalSound17690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17690.moment H = canonicalOutput17690.moment H :=
  canonical_of_padded canonicalInput17690 canonicalOutput17690 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17691 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -2, 0, 0], ![-1, 1, 2, -1, -1], ![2, -2, 0, -1, 1]]⟩

def canonicalOutput17691 : ExponentCode := normalNode3982

theorem canonicalSound17691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17691.moment H = canonicalOutput17691.moment H :=
  canonical_of_padded canonicalInput17691 canonicalOutput17691 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17692 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -2, 0, 0], ![0, -3, 1, 0, 2], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput17692 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2029⟩

theorem canonicalSound17692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17692.moment H = canonicalOutput17692.moment H :=
  canonical_of_padded canonicalInput17692 canonicalOutput17692 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17693 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -2, 0, 0], ![0, -2, 1, -1, 2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput17693 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2066⟩

theorem canonicalSound17693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17693.moment H = canonicalOutput17693.moment H :=
  canonical_of_padded canonicalInput17693 canonicalOutput17693 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17694 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -2, 0, 0], ![0, -1, 1, 1, -1], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput17694 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound17694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17694.moment H = canonicalOutput17694.moment H :=
  canonical_of_padded canonicalInput17694 canonicalOutput17694 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17695 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -2, 0, 0], ![0, 1, 2, -1, -2], ![1, -2, 0, -1, 2]]⟩

def canonicalOutput17695 : ExponentCode := normalNode3939

theorem canonicalSound17695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17695.moment H = canonicalOutput17695.moment H :=
  canonical_of_padded canonicalInput17695 canonicalOutput17695 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17696 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -2, 0, 0], ![1, -3, 1, 0, 1], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput17696 : ExponentCode := normalNode4061

theorem canonicalSound17696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17696.moment H = canonicalOutput17696.moment H :=
  canonical_of_padded canonicalInput17696 canonicalOutput17696 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17697 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -2, 0, 0], ![1, -2, 1, -1, 1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput17697 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩

theorem canonicalSound17697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17697.moment H = canonicalOutput17697.moment H :=
  canonical_of_padded canonicalInput17697 canonicalOutput17697 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17698 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -2, 0, 0], ![1, -1, 1, 1, -2], ![0, 0, 1, -3, 2]]⟩

def canonicalOutput17698 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1965⟩

theorem canonicalSound17698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17698.moment H = canonicalOutput17698.moment H :=
  canonical_of_padded canonicalInput17698 canonicalOutput17698 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17699 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, -1, 0], ![-2, -1, 2, -1, 2], ![3, 0, -1, 0, -2]]⟩

def canonicalOutput17699 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1194

theorem canonicalSound17699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17699.moment H = canonicalOutput17699.moment H :=
  canonical_of_padded canonicalInput17699 canonicalOutput17699 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17700 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, -1, 0], ![-1, -1, 2, -1, 1], ![2, 0, -1, 0, -1]]⟩

def canonicalOutput17700 : ExponentCode := normalNode4212

theorem canonicalSound17700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17700.moment H = canonicalOutput17700.moment H :=
  canonical_of_padded canonicalInput17700 canonicalOutput17700 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput17701 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, -1, 0], ![-1, 1, 2, -1, -1], ![2, -2, -1, 0, 1]]⟩

def canonicalOutput17701 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2239⟩

theorem canonicalSound17701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17701.moment H = canonicalOutput17701.moment H :=
  canonical_of_padded canonicalInput17701 canonicalOutput17701 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17702 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, -1, 0], ![0, 1, 2, -1, -2], ![1, -2, -1, 0, 2]]⟩

def canonicalOutput17702 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2241⟩

theorem canonicalSound17702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17702.moment H = canonicalOutput17702.moment H :=
  canonical_of_padded canonicalInput17702 canonicalOutput17702 (by decide) (by decide)
    ⟨true, true, canonicalPermutation44, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17703 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![-1, 1, 2, -2, 0], ![2, -2, -1, 0, 1]]⟩

def canonicalOutput17703 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2050⟩

theorem canonicalSound17703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17703.moment H = canonicalOutput17703.moment H :=
  canonical_of_padded canonicalInput17703 canonicalOutput17703 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17704 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![0, -1, -1, -1, 3], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput17704 : ExponentCode := normalNode4521

theorem canonicalSound17704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17704.moment H = canonicalOutput17704.moment H :=
  canonical_of_padded canonicalInput17704 canonicalOutput17704 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17705 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![0, -1, -1, 0, 2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput17705 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound17705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17705.moment H = canonicalOutput17705.moment H :=
  canonical_of_padded canonicalInput17705 canonicalOutput17705 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17706 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![0, 0, -1, -1, 2], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput17706 : ExponentCode := normalNode4498

theorem canonicalSound17706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17706.moment H = canonicalOutput17706.moment H :=
  canonical_of_padded canonicalInput17706 canonicalOutput17706 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17707 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![0, 1, 2, -2, -1], ![1, -2, -1, 0, 2]]⟩

def canonicalOutput17707 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2044⟩

theorem canonicalSound17707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17707.moment H = canonicalOutput17707.moment H :=
  canonical_of_padded canonicalInput17707 canonicalOutput17707 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17708 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![1, -1, -1, -1, 2], ![0, 0, 2, -1, -1]]⟩

def canonicalOutput17708 : ExponentCode := normalNode4498

theorem canonicalSound17708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17708.moment H = canonicalOutput17708.moment H :=
  canonical_of_padded canonicalInput17708 canonicalOutput17708 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17709 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![1, -1, -1, 0, 1], ![0, 0, 2, -2, 0]]⟩

def canonicalOutput17709 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound17709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17709.moment H = canonicalOutput17709.moment H :=
  canonical_of_padded canonicalInput17709 canonicalOutput17709 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput17710 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![1, 0, -1, -1, 1], ![0, -1, 2, -1, 0]]⟩

def canonicalOutput17710 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound17710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17710.moment H = canonicalOutput17710.moment H :=
  canonical_of_padded canonicalInput17710 canonicalOutput17710 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput17711 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, 0, -2, 0], ![0, -1, -2, 1, 2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput17711 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2273⟩

theorem canonicalSound17711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17711.moment H = canonicalOutput17711.moment H :=
  canonical_of_padded canonicalInput17711 canonicalOutput17711 (by decide) (by decide)
    ⟨true, true, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17712 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, 0, -2, 0], ![1, -1, -2, 1, 1], ![0, 0, 2, -1, -1]]⟩

def canonicalOutput17712 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1840⟩

theorem canonicalSound17712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17712.moment H = canonicalOutput17712.moment H :=
  canonical_of_padded canonicalInput17712 canonicalOutput17712 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17713 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, 0, -1, -1], ![-2, -1, 2, 0, 1], ![3, 0, -2, -1, 0]]⟩

def canonicalOutput17713 : ExponentCode := normalNode5474

theorem canonicalSound17713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17713.moment H = canonicalOutput17713.moment H :=
  canonical_of_padded canonicalInput17713 canonicalOutput17713 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17714 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, 0, -1, -1], ![0, 0, -2, 0, 2], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput17714 : ExponentCode := normalNode3873

theorem canonicalSound17714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17714.moment H = canonicalOutput17714.moment H :=
  canonical_of_padded canonicalInput17714 canonicalOutput17714 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17715 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, 0, -1, -1], ![1, 0, -2, 0, 1], ![0, -1, 2, -1, 0]]⟩

def canonicalOutput17715 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound17715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17715.moment H = canonicalOutput17715.moment H :=
  canonical_of_padded canonicalInput17715 canonicalOutput17715 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17716 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, 0, -1, -1], ![2, 0, -2, 0, 0], ![-1, -1, 2, -1, 1]]⟩

def canonicalOutput17716 : ExponentCode := normalNode3873

theorem canonicalSound17716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17716.moment H = canonicalOutput17716.moment H :=
  canonical_of_padded canonicalInput17716 canonicalOutput17716 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17717 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, 0, -1, -1], ![3, 0, -2, 0, -1], ![-2, -1, 2, -1, 2]]⟩

def canonicalOutput17717 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1194

theorem canonicalSound17717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17717.moment H = canonicalOutput17717.moment H :=
  canonical_of_padded canonicalInput17717 canonicalOutput17717 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17718 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, 0, 0, -2], ![-2, -1, 2, -1, 2], ![3, 0, -2, -1, 0]]⟩

def canonicalOutput17718 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code893

theorem canonicalSound17718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17718.moment H = canonicalOutput17718.moment H :=
  canonical_of_padded canonicalInput17718 canonicalOutput17718 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17719 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, 0, 0, -2], ![-1, -1, 2, -1, 1], ![2, 0, -2, -1, 1]]⟩

def canonicalOutput17719 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code966

theorem canonicalSound17719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17719.moment H = canonicalOutput17719.moment H :=
  canonical_of_padded canonicalInput17719 canonicalOutput17719 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17720 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, 0, 0, -2], ![0, -1, -2, 1, 2], ![1, 0, 2, -3, 0]]⟩

def canonicalOutput17720 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1963⟩

theorem canonicalSound17720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17720.moment H = canonicalOutput17720.moment H :=
  canonical_of_padded canonicalInput17720 canonicalOutput17720 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17721 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 2, 0, 0, -2], ![1, -1, -2, 1, 1], ![0, 0, 2, -3, 1]]⟩

def canonicalOutput17721 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1965⟩

theorem canonicalSound17721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17721.moment H = canonicalOutput17721.moment H :=
  canonical_of_padded canonicalInput17721 canonicalOutput17721 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17722 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 3, -2, -1, 0], ![0, -3, 1, 0, 2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput17722 : ExponentCode := normalNode4174

theorem canonicalSound17722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17722.moment H = canonicalOutput17722.moment H :=
  canonical_of_padded canonicalInput17722 canonicalOutput17722 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17723 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![0, 3, -2, -1, 0], ![1, -3, 1, 0, 1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput17723 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2251⟩

theorem canonicalSound17723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17723.moment H = canonicalOutput17723.moment H :=
  canonical_of_padded canonicalInput17723 canonicalOutput17723 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput17724 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, -1, -2, -1, 3], ![0, 0, 2, 0, -2], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput17724 : ExponentCode := normalNode1827

theorem canonicalSound17724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17724.moment H = canonicalOutput17724.moment H :=
  canonical_of_padded canonicalInput17724 canonicalOutput17724 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17725 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, -1, -2, -1, 3], ![0, 1, 1, -1, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput17725 : ExponentCode := normalNode1828

theorem canonicalSound17725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17725.moment H = canonicalOutput17725.moment H :=
  canonical_of_padded canonicalInput17725 canonicalOutput17725 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17726 : ExponentCode := ⟨3, 5, ![![-1, -1, 0, 2, 0], ![1, -1, -2, 0, 2], ![0, 2, 2, -2, -2]]⟩

def canonicalOutput17726 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node647⟩

theorem canonicalSound17726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17726.moment H = canonicalOutput17726.moment H :=
  canonical_of_padded canonicalInput17726 canonicalOutput17726 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17727 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 2, 0], ![1, -1, 0, -1, 1], ![-1, 1, 2, 0, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17727 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1168

theorem canonicalSound17727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17727.moment H = canonicalOutput17727.moment H :=
  canonical_of_padded canonicalInput17727 canonicalOutput17727 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
