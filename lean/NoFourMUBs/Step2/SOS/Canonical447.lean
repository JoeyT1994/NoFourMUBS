import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28608 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 2, 0, -2], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput28608 : ExponentCode := normalNode5868

theorem canonicalSound28608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28608.moment H = canonicalOutput28608.moment H :=
  canonical_of_padded canonicalInput28608 canonicalOutput28608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28609 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 2, 0, -2], ![1, -2, 1, 0], ![-2, 1, 1, 0]]⟩

def canonicalOutput28609 : ExponentCode := normalNode3779

theorem canonicalSound28609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28609.moment H = canonicalOutput28609.moment H :=
  canonical_of_padded canonicalInput28609 canonicalOutput28609 (by decide) (by decide)
    ⟨false, false, canonicalPermutation209, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput28610 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 2, 0, -2], ![1, 0, 0, -1], ![-2, -1, 2, 1]]⟩

def canonicalOutput28610 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3099⟩

theorem canonicalSound28610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28610.moment H = canonicalOutput28610.moment H :=
  canonical_of_padded canonicalInput28610 canonicalOutput28610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28611 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 2, 0, -2], ![1, 0, 1, -2], ![-2, -1, 1, 2]]⟩

def canonicalOutput28611 : ExponentCode := normalNode2635

theorem canonicalSound28611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28611.moment H = canonicalOutput28611.moment H :=
  canonical_of_padded canonicalInput28611 canonicalOutput28611 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28612 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, -1, 2, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput28612 : ExponentCode := normalNode2961

theorem canonicalSound28612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28612.moment H = canonicalOutput28612.moment H :=
  canonical_of_padded canonicalInput28612 canonicalOutput28612 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28613 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, 1, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput28613 : ExponentCode := normalNode5515

theorem canonicalSound28613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28613.moment H = canonicalOutput28613.moment H :=
  canonical_of_padded canonicalInput28613 canonicalOutput28613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28614 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, 2, 0, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput28614 : ExponentCode := normalNode5956

theorem canonicalSound28614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28614.moment H = canonicalOutput28614.moment H :=
  canonical_of_padded canonicalInput28614 canonicalOutput28614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28615 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, 3, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput28615 : ExponentCode := normalNode1658

theorem canonicalSound28615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28615.moment H = canonicalOutput28615.moment H :=
  canonical_of_padded canonicalInput28615 canonicalOutput28615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28616 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-1, -1, 3, -1], ![-1, 3, 0, -2]]⟩

def canonicalOutput28616 : ExponentCode := normalNode6647

theorem canonicalSound28616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28616.moment H = canonicalOutput28616.moment H :=
  canonical_of_padded canonicalInput28616 canonicalOutput28616 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28617 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 2, 3, -5]]⟩

def canonicalOutput28617 : ExponentCode := normalNode3084

theorem canonicalSound28617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28617.moment H = canonicalOutput28617.moment H :=
  canonical_of_padded canonicalInput28617 canonicalOutput28617 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28618 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput28618 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3193⟩

theorem canonicalSound28618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28618.moment H = canonicalOutput28618.moment H :=
  canonical_of_padded canonicalInput28618 canonicalOutput28618 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28619 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput28619 : ExponentCode := normalNode5897

theorem canonicalSound28619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28619.moment H = canonicalOutput28619.moment H :=
  canonical_of_padded canonicalInput28619 canonicalOutput28619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28620 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, 0, 2, -2]]⟩

def canonicalOutput28620 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3155⟩

theorem canonicalSound28620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28620.moment H = canonicalOutput28620.moment H :=
  canonical_of_padded canonicalInput28620 canonicalOutput28620 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28621 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 3, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput28621 : ExponentCode := normalNode3387

theorem canonicalSound28621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28621.moment H = canonicalOutput28621.moment H :=
  canonical_of_padded canonicalInput28621 canonicalOutput28621 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28622 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![0, -1, 2, -1]]⟩

def canonicalOutput28622 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2976⟩

theorem canonicalSound28622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28622.moment H = canonicalOutput28622.moment H :=
  canonical_of_padded canonicalInput28622 canonicalOutput28622 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28623 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 3, 0, -2]]⟩

def canonicalOutput28623 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2979⟩

theorem canonicalSound28623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28623.moment H = canonicalOutput28623.moment H :=
  canonical_of_padded canonicalInput28623 canonicalOutput28623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput28624 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 3, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput28624 : ExponentCode := normalNode7679

theorem canonicalSound28624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28624.moment H = canonicalOutput28624.moment H :=
  canonical_of_padded canonicalInput28624 canonicalOutput28624 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28625 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput28625 : ExponentCode := normalNode4767

theorem canonicalSound28625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28625.moment H = canonicalOutput28625.moment H :=
  canonical_of_padded canonicalInput28625 canonicalOutput28625 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28626 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -2, 2, 2], ![0, 3, 1, -4]]⟩

def canonicalOutput28626 : ExponentCode := normalNode840

theorem canonicalSound28626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28626.moment H = canonicalOutput28626.moment H :=
  canonical_of_padded canonicalInput28626 canonicalOutput28626 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28627 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 2, 3, -5]]⟩

def canonicalOutput28627 : ExponentCode := normalNode1942

theorem canonicalSound28627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28627.moment H = canonicalOutput28627.moment H :=
  canonical_of_padded canonicalInput28627 canonicalOutput28627 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28628 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput28628 : ExponentCode := normalNode2734

theorem canonicalSound28628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28628.moment H = canonicalOutput28628.moment H :=
  canonical_of_padded canonicalInput28628 canonicalOutput28628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28629 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, 0, 2, -2]]⟩

def canonicalOutput28629 : ExponentCode := normalNode10818

theorem canonicalSound28629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28629.moment H = canonicalOutput28629.moment H :=
  canonical_of_padded canonicalInput28629 canonicalOutput28629 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation239, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28630 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput28630 : ExponentCode := normalNode1776

theorem canonicalSound28630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28630.moment H = canonicalOutput28630.moment H :=
  canonical_of_padded canonicalInput28630 canonicalOutput28630 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput28631 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 3, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput28631 : ExponentCode := normalNode1882

theorem canonicalSound28631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28631.moment H = canonicalOutput28631.moment H :=
  canonical_of_padded canonicalInput28631 canonicalOutput28631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28632 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 3, 0], ![-1, 3, 0, -2]]⟩

def canonicalOutput28632 : ExponentCode := normalNode1885

theorem canonicalSound28632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28632.moment H = canonicalOutput28632.moment H :=
  canonical_of_padded canonicalInput28632 canonicalOutput28632 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation408, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput28633 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput28633 : ExponentCode := normalNode4734

theorem canonicalSound28633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28633.moment H = canonicalOutput28633.moment H :=
  canonical_of_padded canonicalInput28633 canonicalOutput28633 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28634 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 3, -1], ![-1, 2, 0, -1]]⟩

def canonicalOutput28634 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3301⟩

theorem canonicalSound28634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28634.moment H = canonicalOutput28634.moment H :=
  canonical_of_padded canonicalInput28634 canonicalOutput28634 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28635 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![-1, -1, 3, -1]]⟩

def canonicalOutput28635 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3301⟩

theorem canonicalSound28635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28635.moment H = canonicalOutput28635.moment H :=
  canonical_of_padded canonicalInput28635 canonicalOutput28635 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28636 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 1, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput28636 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2992⟩

theorem canonicalSound28636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28636.moment H = canonicalOutput28636.moment H :=
  canonical_of_padded canonicalInput28636 canonicalOutput28636 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28637 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput28637 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3099⟩

theorem canonicalSound28637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28637.moment H = canonicalOutput28637.moment H :=
  canonical_of_padded canonicalInput28637 canonicalOutput28637 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28638 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, -2, 2], ![0, -1, 4, -3]]⟩

def canonicalOutput28638 : ExponentCode := normalNode5795

theorem canonicalSound28638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28638.moment H = canonicalOutput28638.moment H :=
  canonical_of_padded canonicalInput28638 canonicalOutput28638 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28639 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![0, -1, 3, -2]]⟩

def canonicalOutput28639 : ExponentCode := normalNode5875

theorem canonicalSound28639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28639.moment H = canonicalOutput28639.moment H :=
  canonical_of_padded canonicalInput28639 canonicalOutput28639 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28640 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, 2, -1]]⟩

def canonicalOutput28640 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3170⟩

theorem canonicalSound28640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28640.moment H = canonicalOutput28640.moment H :=
  canonical_of_padded canonicalInput28640 canonicalOutput28640 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput28641 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![0, -2, 3, -1]]⟩

def canonicalOutput28641 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3128⟩

theorem canonicalSound28641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28641.moment H = canonicalOutput28641.moment H :=
  canonical_of_padded canonicalInput28641 canonicalOutput28641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28642 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 3, 0, -1], ![0, -2, 2, 0]]⟩

def canonicalOutput28642 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3017⟩

theorem canonicalSound28642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28642.moment H = canonicalOutput28642.moment H :=
  canonical_of_padded canonicalInput28642 canonicalOutput28642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28643 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 3, 0], ![-1, 3, -1, -1]]⟩

def canonicalOutput28643 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3362⟩

theorem canonicalSound28643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28643.moment H = canonicalOutput28643.moment H :=
  canonical_of_padded canonicalInput28643 canonicalOutput28643 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28644 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, 2, 3, -4]]⟩

def canonicalOutput28644 : ExponentCode := normalNode4722

theorem canonicalSound28644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28644.moment H = canonicalOutput28644.moment H :=
  canonical_of_padded canonicalInput28644 canonicalOutput28644 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28645 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 2, -1, 0]]⟩

def canonicalOutput28645 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3197⟩

theorem canonicalSound28645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28645.moment H = canonicalOutput28645.moment H :=
  canonical_of_padded canonicalInput28645 canonicalOutput28645 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28646 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput28646 : ExponentCode := normalNode10962

theorem canonicalSound28646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28646.moment H = canonicalOutput28646.moment H :=
  canonical_of_padded canonicalInput28646 canonicalOutput28646 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28647 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, -1, 1], ![-1, 0, 3, -2]]⟩

def canonicalOutput28647 : ExponentCode := normalNode11098

theorem canonicalSound28647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28647.moment H = canonicalOutput28647.moment H :=
  canonical_of_padded canonicalInput28647 canonicalOutput28647 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation289, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28648 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![-1, -1, 4, -2]]⟩

def canonicalOutput28648 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3245⟩

theorem canonicalSound28648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28648.moment H = canonicalOutput28648.moment H :=
  canonical_of_padded canonicalInput28648 canonicalOutput28648 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28649 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -1, 0], ![-1, -1, 3, -1]]⟩

def canonicalOutput28649 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3197⟩

theorem canonicalSound28649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28649.moment H = canonicalOutput28649.moment H :=
  canonical_of_padded canonicalInput28649 canonicalOutput28649 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28650 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![-1, -1, 2, 0]]⟩

def canonicalOutput28650 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3217⟩

theorem canonicalSound28650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28650.moment H = canonicalOutput28650.moment H :=
  canonical_of_padded canonicalInput28650 canonicalOutput28650 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput28651 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -1, 2], ![-2, 2, 3, -3]]⟩

def canonicalOutput28651 : ExponentCode := normalNode5748

theorem canonicalSound28651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28651.moment H = canonicalOutput28651.moment H :=
  canonical_of_padded canonicalInput28651 canonicalOutput28651 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28652 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput28652 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2903⟩

theorem canonicalSound28652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28652.moment H = canonicalOutput28652.moment H :=
  canonical_of_padded canonicalInput28652 canonicalOutput28652 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28653 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -3, 1, 2], ![-2, 2, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28653 : ExponentCode := normalNode5688

theorem canonicalSound28653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28653.moment H = canonicalOutput28653.moment H :=
  canonical_of_padded canonicalInput28653 canonicalOutput28653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28654 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -3, 1, 2], ![-2, 3, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput28654 : ExponentCode := normalNode4706

theorem canonicalSound28654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28654.moment H = canonicalOutput28654.moment H :=
  canonical_of_padded canonicalInput28654 canonicalOutput28654 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28655 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput28655 : ExponentCode := normalNode1761

theorem canonicalSound28655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28655.moment H = canonicalOutput28655.moment H :=
  canonical_of_padded canonicalInput28655 canonicalOutput28655 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28656 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28656 : ExponentCode := normalNode4037

theorem canonicalSound28656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28656.moment H = canonicalOutput28656.moment H :=
  canonical_of_padded canonicalInput28656 canonicalOutput28656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28657 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![-2, 1, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput28657 : ExponentCode := normalNode4446

theorem canonicalSound28657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28657.moment H = canonicalOutput28657.moment H :=
  canonical_of_padded canonicalInput28657 canonicalOutput28657 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28658 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![-2, 2, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput28658 : ExponentCode := normalNode4444

theorem canonicalSound28658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28658.moment H = canonicalOutput28658.moment H :=
  canonical_of_padded canonicalInput28658 canonicalOutput28658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28659 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![-2, 2, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput28659 : ExponentCode := normalNode4443

theorem canonicalSound28659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28659.moment H = canonicalOutput28659.moment H :=
  canonical_of_padded canonicalInput28659 canonicalOutput28659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28660 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![-2, 3, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput28660 : ExponentCode := normalNode2107

theorem canonicalSound28660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28660.moment H = canonicalOutput28660.moment H :=
  canonical_of_padded canonicalInput28660 canonicalOutput28660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28661 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, 0, -1, 1], ![-1, -2, 2, 1], ![0, 2, 2, -4]]⟩

def canonicalOutput28661 : ExponentCode := normalNode7014

theorem canonicalSound28661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28661.moment H = canonicalOutput28661.moment H :=
  canonical_of_padded canonicalInput28661 canonicalOutput28661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28662 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, 0, 0, 0], ![-1, -2, 1, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput28662 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2437⟩

theorem canonicalSound28662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28662.moment H = canonicalOutput28662.moment H :=
  canonical_of_padded canonicalInput28662 canonicalOutput28662 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28663 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, 0, 0, 0], ![0, -2, 0, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput28663 : ExponentCode := normalNode10863

theorem canonicalSound28663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28663.moment H = canonicalOutput28663.moment H :=
  canonical_of_padded canonicalInput28663 canonicalOutput28663 (by decide) (by decide)
    ⟨false, true, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28664 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, 2, 0, -2], ![1, 0, 1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput28664 : ExponentCode := normalNode830

theorem canonicalSound28664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28664.moment H = canonicalOutput28664.moment H :=
  canonical_of_padded canonicalInput28664 canonicalOutput28664 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28665 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput28665 : ExponentCode := normalNode2734

theorem canonicalSound28665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28665.moment H = canonicalOutput28665.moment H :=
  canonical_of_padded canonicalInput28665 canonicalOutput28665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28666 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-1, -2, 2, 1], ![-1, 3, 1, -3]]⟩

def canonicalOutput28666 : ExponentCode := normalNode6063

theorem canonicalSound28666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28666.moment H = canonicalOutput28666.moment H :=
  canonical_of_padded canonicalInput28666 canonicalOutput28666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28667 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-1, -2, 3, 0], ![-1, 3, 0, -2]]⟩

def canonicalOutput28667 : ExponentCode := normalNode1885

theorem canonicalSound28667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28667.moment H = canonicalOutput28667.moment H :=
  canonical_of_padded canonicalInput28667 canonicalOutput28667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput28668 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 2, 2, -3]]⟩

def canonicalOutput28668 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3230⟩

theorem canonicalSound28668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28668.moment H = canonicalOutput28668.moment H :=
  canonical_of_padded canonicalInput28668 canonicalOutput28668 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28669 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -2, 2, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput28669 : ExponentCode := normalNode828

theorem canonicalSound28669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28669.moment H = canonicalOutput28669.moment H :=
  canonical_of_padded canonicalInput28669 canonicalOutput28669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28670 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 2, 2, -3]]⟩

def canonicalOutput28670 : ExponentCode := normalNode2729

theorem canonicalSound28670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28670.moment H = canonicalOutput28670.moment H :=
  canonical_of_padded canonicalInput28670 canonicalOutput28670 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28671 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, -2, 1, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput28671 : ExponentCode := normalNode582

theorem canonicalSound28671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28671.moment H = canonicalOutput28671.moment H :=
  canonical_of_padded canonicalInput28671 canonicalOutput28671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
