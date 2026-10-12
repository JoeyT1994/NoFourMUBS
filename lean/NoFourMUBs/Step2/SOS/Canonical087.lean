import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5568 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput5568 : ExponentCode := normalNode5840

theorem canonicalSound5568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5568.moment H = canonicalOutput5568.moment H :=
  canonical_of_padded canonicalInput5568 canonicalOutput5568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5569 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput5569 : ExponentCode := normalNode2569

theorem canonicalSound5569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5569.moment H = canonicalOutput5569.moment H :=
  canonical_of_padded canonicalInput5569 canonicalOutput5569 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5570 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput5570 : ExponentCode := normalNode5850

theorem canonicalSound5570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5570.moment H = canonicalOutput5570.moment H :=
  canonical_of_padded canonicalInput5570 canonicalOutput5570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5571 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput5571 : ExponentCode := normalNode2559

theorem canonicalSound5571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5571.moment H = canonicalOutput5571.moment H :=
  canonical_of_padded canonicalInput5571 canonicalOutput5571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5572 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5572 : ExponentCode := normalNode2920

theorem canonicalSound5572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5572.moment H = canonicalOutput5572.moment H :=
  canonical_of_padded canonicalInput5572 canonicalOutput5572 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5573 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput5573 : ExponentCode := normalNode2555

theorem canonicalSound5573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5573.moment H = canonicalOutput5573.moment H :=
  canonical_of_padded canonicalInput5573 canonicalOutput5573 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5574 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput5574 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node503⟩

theorem canonicalSound5574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5574.moment H = canonicalOutput5574.moment H :=
  canonical_of_padded canonicalInput5574 canonicalOutput5574 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5575 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 2, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput5575 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node504⟩

theorem canonicalSound5575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5575.moment H = canonicalOutput5575.moment H :=
  canonical_of_padded canonicalInput5575 canonicalOutput5575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5576 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput5576 : ExponentCode := normalNode2575

theorem canonicalSound5576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5576.moment H = canonicalOutput5576.moment H :=
  canonical_of_padded canonicalInput5576 canonicalOutput5576 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5577 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput5577 : ExponentCode := normalNode2574

theorem canonicalSound5577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5577.moment H = canonicalOutput5577.moment H :=
  canonical_of_padded canonicalInput5577 canonicalOutput5577 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5578 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 2, 1, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput5578 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code555

theorem canonicalSound5578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5578.moment H = canonicalOutput5578.moment H :=
  canonical_of_padded canonicalInput5578 canonicalOutput5578 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5579 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 3, 0, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput5579 : ExponentCode := normalNode5854

theorem canonicalSound5579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5579.moment H = canonicalOutput5579.moment H :=
  canonical_of_padded canonicalInput5579 canonicalOutput5579 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5580 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![0, 3, 1, -4], ![2, -1, -2, 1]]⟩

def canonicalOutput5580 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code273

theorem canonicalSound5580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5580.moment H = canonicalOutput5580.moment H :=
  canonical_of_padded canonicalInput5580 canonicalOutput5580 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5581 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput5581 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩

theorem canonicalSound5581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5581.moment H = canonicalOutput5581.moment H :=
  canonical_of_padded canonicalInput5581 canonicalOutput5581 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5582 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput5582 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node947⟩

theorem canonicalSound5582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5582.moment H = canonicalOutput5582.moment H :=
  canonical_of_padded canonicalInput5582 canonicalOutput5582 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput5583 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![1, -1, 1, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput5583 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node679⟩

theorem canonicalSound5583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5583.moment H = canonicalOutput5583.moment H :=
  canonical_of_padded canonicalInput5583 canonicalOutput5583 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5584 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![1, 0, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput5584 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node452⟩

theorem canonicalSound5584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5584.moment H = canonicalOutput5584.moment H :=
  canonical_of_padded canonicalInput5584 canonicalOutput5584 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5585 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput5585 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound5585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5585.moment H = canonicalOutput5585.moment H :=
  canonical_of_padded canonicalInput5585 canonicalOutput5585 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5586 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![1, 1, -3, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput5586 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code564

theorem canonicalSound5586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5586.moment H = canonicalOutput5586.moment H :=
  canonical_of_padded canonicalInput5586 canonicalOutput5586 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5587 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput5587 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩

theorem canonicalSound5587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5587.moment H = canonicalOutput5587.moment H :=
  canonical_of_padded canonicalInput5587 canonicalOutput5587 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5588 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput5588 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound5588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5588.moment H = canonicalOutput5588.moment H :=
  canonical_of_padded canonicalInput5588 canonicalOutput5588 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5589 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![1, 2, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput5589 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node452⟩

theorem canonicalSound5589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5589.moment H = canonicalOutput5589.moment H :=
  canonical_of_padded canonicalInput5589 canonicalOutput5589 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5590 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, -1, 2], ![1, 3, 0, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput5590 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩

theorem canonicalSound5590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5590.moment H = canonicalOutput5590.moment H :=
  canonical_of_padded canonicalInput5590 canonicalOutput5590 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5591 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput5591 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2349⟩

theorem canonicalSound5591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5591.moment H = canonicalOutput5591.moment H :=
  canonical_of_padded canonicalInput5591 canonicalOutput5591 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5592 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, 0, 1], ![1, -1, -2, 2], ![1, 3, 0, -4]]⟩

def canonicalOutput5592 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node757⟩

theorem canonicalSound5592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5592.moment H = canonicalOutput5592.moment H :=
  canonical_of_padded canonicalInput5592 canonicalOutput5592 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5593 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, 0, 1], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput5593 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node941⟩

theorem canonicalSound5593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5593.moment H = canonicalOutput5593.moment H :=
  canonical_of_padded canonicalInput5593 canonicalOutput5593 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5594 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, 1, 0], ![0, -1, -2, 3], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput5594 : ExponentCode := normalNode2884

theorem canonicalSound5594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5594.moment H = canonicalOutput5594.moment H :=
  canonical_of_padded canonicalInput5594 canonicalOutput5594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5595 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 0, -2, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput5595 : ExponentCode := normalNode2900

theorem canonicalSound5595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5595.moment H = canonicalOutput5595.moment H :=
  canonical_of_padded canonicalInput5595 canonicalOutput5595 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5596 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput5596 : ExponentCode := normalNode1792

theorem canonicalSound5596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5596.moment H = canonicalOutput5596.moment H :=
  canonical_of_padded canonicalInput5596 canonicalOutput5596 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5597 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput5597 : ExponentCode := normalNode1851

theorem canonicalSound5597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5597.moment H = canonicalOutput5597.moment H :=
  canonical_of_padded canonicalInput5597 canonicalOutput5597 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5598 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput5598 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1725⟩

theorem canonicalSound5598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5598.moment H = canonicalOutput5598.moment H :=
  canonical_of_padded canonicalInput5598 canonicalOutput5598 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5599 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput5599 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1727⟩

theorem canonicalSound5599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5599.moment H = canonicalOutput5599.moment H :=
  canonical_of_padded canonicalInput5599 canonicalOutput5599 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5600 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, -1, 2, -1], ![0, 2, -4, 2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5600 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1735⟩

theorem canonicalSound5600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5600.moment H = canonicalOutput5600.moment H :=
  canonical_of_padded canonicalInput5600 canonicalOutput5600 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5601 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, 0, -4, 2]]⟩

def canonicalOutput5601 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node498⟩

theorem canonicalSound5601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5601.moment H = canonicalOutput5601.moment H :=
  canonical_of_padded canonicalInput5601 canonicalOutput5601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5602 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, 2, -1], ![1, 0, -3, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput5602 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code547

theorem canonicalSound5602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5602.moment H = canonicalOutput5602.moment H :=
  canonical_of_padded canonicalInput5602 canonicalOutput5602 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5603 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, -1, 2, -1], ![1, 1, -4, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput5603 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node501⟩

theorem canonicalSound5603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5603.moment H = canonicalOutput5603.moment H :=
  canonical_of_padded canonicalInput5603 canonicalOutput5603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5604 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput5604 : ExponentCode := normalNode7121

theorem canonicalSound5604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5604.moment H = canonicalOutput5604.moment H :=
  canonical_of_padded canonicalInput5604 canonicalOutput5604 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5605 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -3, 3], ![0, 1, 1, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput5605 : ExponentCode := normalNode7120

theorem canonicalSound5605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5605.moment H = canonicalOutput5605.moment H :=
  canonical_of_padded canonicalInput5605 canonicalOutput5605 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5606 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -3, 3], ![1, -2, 1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput5606 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code496

theorem canonicalSound5606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5606.moment H = canonicalOutput5606.moment H :=
  canonical_of_padded canonicalInput5606 canonicalOutput5606 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput5607 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -3, 3], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput5607 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1086⟩

theorem canonicalSound5607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5607.moment H = canonicalOutput5607.moment H :=
  canonical_of_padded canonicalInput5607 canonicalOutput5607 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput5608 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -3, 3], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput5608 : ExponentCode := normalNode7118

theorem canonicalSound5608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5608.moment H = canonicalOutput5608.moment H :=
  canonical_of_padded canonicalInput5608 canonicalOutput5608 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5609 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -3, 3], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput5609 : ExponentCode := normalNode7119

theorem canonicalSound5609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5609.moment H = canonicalOutput5609.moment H :=
  canonical_of_padded canonicalInput5609 canonicalOutput5609 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5610 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -3, 3], ![1, 1, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput5610 : ExponentCode := normalNode7119

theorem canonicalSound5610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5610.moment H = canonicalOutput5610.moment H :=
  canonical_of_padded canonicalInput5610 canonicalOutput5610 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5611 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -3, 3], ![1, 1, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput5611 : ExponentCode := normalNode7118

theorem canonicalSound5611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5611.moment H = canonicalOutput5611.moment H :=
  canonical_of_padded canonicalInput5611 canonicalOutput5611 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5612 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput5612 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2033⟩

theorem canonicalSound5612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5612.moment H = canonicalOutput5612.moment H :=
  canonical_of_padded canonicalInput5612 canonicalOutput5612 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput5613 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput5613 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1588⟩

theorem canonicalSound5613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5613.moment H = canonicalOutput5613.moment H :=
  canonical_of_padded canonicalInput5613 canonicalOutput5613 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5614 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput5614 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node854⟩

theorem canonicalSound5614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5614.moment H = canonicalOutput5614.moment H :=
  canonical_of_padded canonicalInput5614 canonicalOutput5614 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5615 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput5615 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node853⟩

theorem canonicalSound5615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5615.moment H = canonicalOutput5615.moment H :=
  canonical_of_padded canonicalInput5615 canonicalOutput5615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5616 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput5616 : ExponentCode := normalNode2667

theorem canonicalSound5616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5616.moment H = canonicalOutput5616.moment H :=
  canonical_of_padded canonicalInput5616 canonicalOutput5616 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5617 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput5617 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1810⟩

theorem canonicalSound5617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5617.moment H = canonicalOutput5617.moment H :=
  canonical_of_padded canonicalInput5617 canonicalOutput5617 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5618 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 0, 0, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput5618 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node854⟩

theorem canonicalSound5618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5618.moment H = canonicalOutput5618.moment H :=
  canonical_of_padded canonicalInput5618 canonicalOutput5618 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5619 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput5619 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1810⟩

theorem canonicalSound5619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5619.moment H = canonicalOutput5619.moment H :=
  canonical_of_padded canonicalInput5619 canonicalOutput5619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5620 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput5620 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1808⟩

theorem canonicalSound5620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5620.moment H = canonicalOutput5620.moment H :=
  canonical_of_padded canonicalInput5620 canonicalOutput5620 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5621 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput5621 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1811⟩

theorem canonicalSound5621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5621.moment H = canonicalOutput5621.moment H :=
  canonical_of_padded canonicalInput5621 canonicalOutput5621 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5622 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput5622 : ExponentCode := normalNode2775

theorem canonicalSound5622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5622.moment H = canonicalOutput5622.moment H :=
  canonical_of_padded canonicalInput5622 canonicalOutput5622 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5623 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput5623 : ExponentCode := normalNode2768

theorem canonicalSound5623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5623.moment H = canonicalOutput5623.moment H :=
  canonical_of_padded canonicalInput5623 canonicalOutput5623 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5624 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput5624 : ExponentCode := normalNode7051

theorem canonicalSound5624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5624.moment H = canonicalOutput5624.moment H :=
  canonical_of_padded canonicalInput5624 canonicalOutput5624 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5625 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput5625 : ExponentCode := normalNode2781

theorem canonicalSound5625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5625.moment H = canonicalOutput5625.moment H :=
  canonical_of_padded canonicalInput5625 canonicalOutput5625 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5626 : ExponentCode := ⟨5, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5626 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1816⟩

theorem canonicalSound5626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5626.moment H = canonicalOutput5626.moment H :=
  canonical_of_padded canonicalInput5626 canonicalOutput5626 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5627 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput5627 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node507⟩

theorem canonicalSound5627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5627.moment H = canonicalOutput5627.moment H :=
  canonical_of_padded canonicalInput5627 canonicalOutput5627 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5628 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput5628 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node504⟩

theorem canonicalSound5628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5628.moment H = canonicalOutput5628.moment H :=
  canonical_of_padded canonicalInput5628 canonicalOutput5628 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput5629 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![0, 3, 1, -4], ![2, -2, -1, 1]]⟩

def canonicalOutput5629 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code271

theorem canonicalSound5629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5629.moment H = canonicalOutput5629.moment H :=
  canonical_of_padded canonicalInput5629 canonicalOutput5629 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5630 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![1, -2, 0, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput5630 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node451⟩

theorem canonicalSound5630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5630.moment H = canonicalOutput5630.moment H :=
  canonical_of_padded canonicalInput5630 canonicalOutput5630 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5631 : ExponentCode := ⟨4, 4, ![![-2, -1, 2, 1], ![0, 0, -2, 2], ![1, -2, 1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput5631 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code777

theorem canonicalSound5631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5631.moment H = canonicalOutput5631.moment H :=
  canonical_of_padded canonicalInput5631 canonicalOutput5631 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
