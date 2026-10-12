import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4736 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 1, -2, 0], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput4736 : ExponentCode := normalNode5883

theorem canonicalSound4736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4736.moment H = canonicalOutput4736.moment H :=
  canonical_of_padded canonicalInput4736 canonicalOutput4736 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput4737 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 1, -2, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput4737 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node683⟩

theorem canonicalSound4737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4737.moment H = canonicalOutput4737.moment H :=
  canonical_of_padded canonicalInput4737 canonicalOutput4737 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4738 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 1, -1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput4738 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node678⟩

theorem canonicalSound4738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4738.moment H = canonicalOutput4738.moment H :=
  canonical_of_padded canonicalInput4738 canonicalOutput4738 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4739 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 1, 0, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput4739 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩

theorem canonicalSound4739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4739.moment H = canonicalOutput4739.moment H :=
  canonical_of_padded canonicalInput4739 canonicalOutput4739 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4740 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 2, -3, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput4740 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩

theorem canonicalSound4740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4740.moment H = canonicalOutput4740.moment H :=
  canonical_of_padded canonicalInput4740 canonicalOutput4740 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4741 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 2, 0, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput4741 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code398

theorem canonicalSound4741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4741.moment H = canonicalOutput4741.moment H :=
  canonical_of_padded canonicalInput4741 canonicalOutput4741 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4742 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -2, 2, 0], ![1, 3, -1, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput4742 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node594⟩

theorem canonicalSound4742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4742.moment H = canonicalOutput4742.moment H :=
  canonical_of_padded canonicalInput4742 canonicalOutput4742 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4743 : ExponentCode := ⟨3, 4, ![![-2, -1, 1, 2], ![0, -2, 4, -2], ![2, 3, -5, 0]]⟩

def canonicalOutput4743 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1031

theorem canonicalSound4743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4743.moment H = canonicalOutput4743.moment H :=
  canonical_of_padded canonicalInput4743 canonicalOutput4743 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4744 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput4744 : ExponentCode := normalNode1710

theorem canonicalSound4744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4744.moment H = canonicalOutput4744.moment H :=
  canonical_of_padded canonicalInput4744 canonicalOutput4744 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4745 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -2, 3], ![0, 0, 2, -2], ![2, 2, -1, -3]]⟩

def canonicalOutput4745 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code154

theorem canonicalSound4745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4745.moment H = canonicalOutput4745.moment H :=
  canonical_of_padded canonicalInput4745 canonicalOutput4745 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4746 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -2, 3], ![0, 1, 0, -1], ![2, 1, 1, -4]]⟩

def canonicalOutput4746 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1364⟩

theorem canonicalSound4746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4746.moment H = canonicalOutput4746.moment H :=
  canonical_of_padded canonicalInput4746 canonicalOutput4746 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4747 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -2, 3], ![0, 1, 1, -2], ![2, 1, 0, -3]]⟩

def canonicalOutput4747 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node470⟩

theorem canonicalSound4747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4747.moment H = canonicalOutput4747.moment H :=
  canonical_of_padded canonicalInput4747 canonicalOutput4747 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4748 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -2, 3], ![1, 0, -1, 0], ![1, 2, 2, -5]]⟩

def canonicalOutput4748 : ExponentCode := normalNode6932

theorem canonicalSound4748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4748.moment H = canonicalOutput4748.moment H :=
  canonical_of_padded canonicalInput4748 canonicalOutput4748 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4749 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -2, 3], ![1, 0, 0, -1], ![1, 2, 1, -4]]⟩

def canonicalOutput4749 : ExponentCode := normalNode10907

theorem canonicalSound4749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4749.moment H = canonicalOutput4749.moment H :=
  canonical_of_padded canonicalInput4749 canonicalOutput4749 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4750 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -2, 3], ![1, 2, 1, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput4750 : ExponentCode := normalNode10907

theorem canonicalSound4750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4750.moment H = canonicalOutput4750.moment H :=
  canonical_of_padded canonicalInput4750 canonicalOutput4750 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput4751 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![2, 3, -2, -3]]⟩

def canonicalOutput4751 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1092

theorem canonicalSound4751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4751.moment H = canonicalOutput4751.moment H :=
  canonical_of_padded canonicalInput4751 canonicalOutput4751 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4752 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput4752 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1100⟩

theorem canonicalSound4752 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4752.moment H = canonicalOutput4752.moment H :=
  canonical_of_padded canonicalInput4752 canonicalOutput4752 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput4753 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput4753 : ExponentCode := normalNode5028

theorem canonicalSound4753 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4753.moment H = canonicalOutput4753.moment H :=
  canonical_of_padded canonicalInput4753 canonicalOutput4753 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4754 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput4754 : ExponentCode := normalNode1757

theorem canonicalSound4754 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4754.moment H = canonicalOutput4754.moment H :=
  canonical_of_padded canonicalInput4754 canonicalOutput4754 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4755 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 0, 2, -2], ![2, 2, -2, -2]]⟩

def canonicalOutput4755 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node410⟩

theorem canonicalSound4755 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4755.moment H = canonicalOutput4755.moment H :=
  canonical_of_padded canonicalInput4755 canonicalOutput4755 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4756 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -2, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput4756 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code248

theorem canonicalSound4756 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4756.moment H = canonicalOutput4756.moment H :=
  canonical_of_padded canonicalInput4756 canonicalOutput4756 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4757 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput4757 : ExponentCode := normalNode1977

theorem canonicalSound4757 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4757.moment H = canonicalOutput4757.moment H :=
  canonical_of_padded canonicalInput4757 canonicalOutput4757 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4758 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput4758 : ExponentCode := normalNode5007

theorem canonicalSound4758 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4758.moment H = canonicalOutput4758.moment H :=
  canonical_of_padded canonicalInput4758 canonicalOutput4758 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4759 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput4759 : ExponentCode := normalNode2317

theorem canonicalSound4759 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4759.moment H = canonicalOutput4759.moment H :=
  canonical_of_padded canonicalInput4759 canonicalOutput4759 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4760 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput4760 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2615⟩

theorem canonicalSound4760 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4760.moment H = canonicalOutput4760.moment H :=
  canonical_of_padded canonicalInput4760 canonicalOutput4760 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4761 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput4761 : ExponentCode := normalNode9101

theorem canonicalSound4761 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4761.moment H = canonicalOutput4761.moment H :=
  canonical_of_padded canonicalInput4761 canonicalOutput4761 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4762 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput4762 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1731⟩

theorem canonicalSound4762 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4762.moment H = canonicalOutput4762.moment H :=
  canonical_of_padded canonicalInput4762 canonicalOutput4762 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4763 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![2, 1, 0, -3]]⟩

def canonicalOutput4763 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1083⟩

theorem canonicalSound4763 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4763.moment H = canonicalOutput4763.moment H :=
  canonical_of_padded canonicalInput4763 canonicalOutput4763 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4764 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput4764 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1729⟩

theorem canonicalSound4764 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4764.moment H = canonicalOutput4764.moment H :=
  canonical_of_padded canonicalInput4764 canonicalOutput4764 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4765 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4765 : ExponentCode := normalNode2321

theorem canonicalSound4765 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4765.moment H = canonicalOutput4765.moment H :=
  canonical_of_padded canonicalInput4765 canonicalOutput4765 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4766 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 1, 3, -4], ![2, 1, -3, 0]]⟩

def canonicalOutput4766 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code447

theorem canonicalSound4766 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4766.moment H = canonicalOutput4766.moment H :=
  canonical_of_padded canonicalInput4766 canonicalOutput4766 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput4767 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput4767 : ExponentCode := normalNode2324

theorem canonicalSound4767 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4767.moment H = canonicalOutput4767.moment H :=
  canonical_of_padded canonicalInput4767 canonicalOutput4767 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4768 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput4768 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2610⟩

theorem canonicalSound4768 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4768.moment H = canonicalOutput4768.moment H :=
  canonical_of_padded canonicalInput4768 canonicalOutput4768 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4769 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4769 : ExponentCode := normalNode1981

theorem canonicalSound4769 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4769.moment H = canonicalOutput4769.moment H :=
  canonical_of_padded canonicalInput4769 canonicalOutput4769 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4770 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 3, -1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput4770 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code593

theorem canonicalSound4770 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4770.moment H = canonicalOutput4770.moment H :=
  canonical_of_padded canonicalInput4770 canonicalOutput4770 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4771 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 3, 1, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4771 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2203⟩

theorem canonicalSound4771 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4771.moment H = canonicalOutput4771.moment H :=
  canonical_of_padded canonicalInput4771 canonicalOutput4771 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4772 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput4772 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2203⟩

theorem canonicalSound4772 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4772.moment H = canonicalOutput4772.moment H :=
  canonical_of_padded canonicalInput4772 canonicalOutput4772 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4773 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, -1, 1, -1], ![1, 3, -1, -3]]⟩

def canonicalOutput4773 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node673⟩

theorem canonicalSound4773 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4773.moment H = canonicalOutput4773.moment H :=
  canonical_of_padded canonicalInput4773 canonicalOutput4773 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4774 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, -1, 2, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput4774 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code219

theorem canonicalSound4774 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4774.moment H = canonicalOutput4774.moment H :=
  canonical_of_padded canonicalInput4774 canonicalOutput4774 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4775 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, 0, 3, -4], ![1, 2, -3, 0]]⟩

def canonicalOutput4775 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code450

theorem canonicalSound4775 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4775.moment H = canonicalOutput4775.moment H :=
  canonical_of_padded canonicalInput4775 canonicalOutput4775 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4776 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput4776 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1084⟩

theorem canonicalSound4776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4776.moment H = canonicalOutput4776.moment H :=
  canonical_of_padded canonicalInput4776 canonicalOutput4776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4777 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, 1, 2, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput4777 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node501⟩

theorem canonicalSound4777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4777.moment H = canonicalOutput4777.moment H :=
  canonical_of_padded canonicalInput4777 canonicalOutput4777 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4778 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, 2, -3, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput4778 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code450

theorem canonicalSound4778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4778.moment H = canonicalOutput4778.moment H :=
  canonical_of_padded canonicalInput4778 canonicalOutput4778 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4779 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, 2, -2, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput4779 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code547

theorem canonicalSound4779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4779.moment H = canonicalOutput4779.moment H :=
  canonical_of_padded canonicalInput4779 canonicalOutput4779 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4780 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, 2, 2, -5], ![1, 0, -2, 1]]⟩

def canonicalOutput4780 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code251

theorem canonicalSound4780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4780.moment H = canonicalOutput4780.moment H :=
  canonical_of_padded canonicalInput4780 canonicalOutput4780 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4781 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, -1, 2], ![1, 3, -2, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput4781 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code219

theorem canonicalSound4781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4781.moment H = canonicalOutput4781.moment H :=
  canonical_of_padded canonicalInput4781 canonicalOutput4781 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput4782 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput4782 : ExponentCode := normalNode10622

theorem canonicalSound4782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4782.moment H = canonicalOutput4782.moment H :=
  canonical_of_padded canonicalInput4782 canonicalOutput4782 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4783 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput4783 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2192⟩

theorem canonicalSound4783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4783.moment H = canonicalOutput4783.moment H :=
  canonical_of_padded canonicalInput4783 canonicalOutput4783 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4784 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput4784 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2083⟩

theorem canonicalSound4784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4784.moment H = canonicalOutput4784.moment H :=
  canonical_of_padded canonicalInput4784 canonicalOutput4784 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4785 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput4785 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1680⟩

theorem canonicalSound4785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4785.moment H = canonicalOutput4785.moment H :=
  canonical_of_padded canonicalInput4785 canonicalOutput4785 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4786 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput4786 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2821⟩

theorem canonicalSound4786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4786.moment H = canonicalOutput4786.moment H :=
  canonical_of_padded canonicalInput4786 canonicalOutput4786 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4787 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput4787 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1780⟩

theorem canonicalSound4787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4787.moment H = canonicalOutput4787.moment H :=
  canonical_of_padded canonicalInput4787 canonicalOutput4787 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4788 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput4788 : ExponentCode := normalNode5092

theorem canonicalSound4788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4788.moment H = canonicalOutput4788.moment H :=
  canonical_of_padded canonicalInput4788 canonicalOutput4788 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4789 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput4789 : ExponentCode := normalNode5094

theorem canonicalSound4789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4789.moment H = canonicalOutput4789.moment H :=
  canonical_of_padded canonicalInput4789 canonicalOutput4789 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4790 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput4790 : ExponentCode := normalNode5095

theorem canonicalSound4790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4790.moment H = canonicalOutput4790.moment H :=
  canonical_of_padded canonicalInput4790 canonicalOutput4790 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4791 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput4791 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2822⟩

theorem canonicalSound4791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4791.moment H = canonicalOutput4791.moment H :=
  canonical_of_padded canonicalInput4791 canonicalOutput4791 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4792 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput4792 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2857⟩

theorem canonicalSound4792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4792.moment H = canonicalOutput4792.moment H :=
  canonical_of_padded canonicalInput4792 canonicalOutput4792 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4793 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput4793 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1335⟩

theorem canonicalSound4793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4793.moment H = canonicalOutput4793.moment H :=
  canonical_of_padded canonicalInput4793 canonicalOutput4793 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput4794 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput4794 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2229⟩

theorem canonicalSound4794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4794.moment H = canonicalOutput4794.moment H :=
  canonical_of_padded canonicalInput4794 canonicalOutput4794 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4795 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput4795 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1346⟩

theorem canonicalSound4795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4795.moment H = canonicalOutput4795.moment H :=
  canonical_of_padded canonicalInput4795 canonicalOutput4795 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4796 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput4796 : ExponentCode := normalNode4088

theorem canonicalSound4796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4796.moment H = canonicalOutput4796.moment H :=
  canonical_of_padded canonicalInput4796 canonicalOutput4796 (by decide) (by decide)
    ⟨false, false, canonicalPermutation32, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4797 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 2, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput4797 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1223⟩

theorem canonicalSound4797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4797.moment H = canonicalOutput4797.moment H :=
  canonical_of_padded canonicalInput4797 canonicalOutput4797 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4798 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4798 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1716⟩

theorem canonicalSound4798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4798.moment H = canonicalOutput4798.moment H :=
  canonical_of_padded canonicalInput4798 canonicalOutput4798 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4799 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, -1, 0, 1], ![0, 2, 1, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput4799 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1190⟩

theorem canonicalSound4799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4799.moment H = canonicalOutput4799.moment H :=
  canonical_of_padded canonicalInput4799 canonicalOutput4799 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
