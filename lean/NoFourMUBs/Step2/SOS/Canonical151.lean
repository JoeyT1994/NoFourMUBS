import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9664 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![2, -1, 2, -3]]⟩

def canonicalOutput9664 : ExponentCode := normalNode11176

theorem canonicalSound9664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9664.moment H = canonicalOutput9664.moment H :=
  canonical_of_padded canonicalInput9664 canonicalOutput9664 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9665 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput9665 : ExponentCode := normalNode7470

theorem canonicalSound9665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9665.moment H = canonicalOutput9665.moment H :=
  canonical_of_padded canonicalInput9665 canonicalOutput9665 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9666 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 2, -1], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput9666 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code922

theorem canonicalSound9666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9666.moment H = canonicalOutput9666.moment H :=
  canonical_of_padded canonicalInput9666 canonicalOutput9666 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput9667 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 2, -1], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput9667 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1082

theorem canonicalSound9667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9667.moment H = canonicalOutput9667.moment H :=
  canonical_of_padded canonicalInput9667 canonicalOutput9667 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9668 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 2, -1], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput9668 : ExponentCode := normalNode10359

theorem canonicalSound9668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9668.moment H = canonicalOutput9668.moment H :=
  canonical_of_padded canonicalInput9668 canonicalOutput9668 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput9669 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput9669 : ExponentCode := normalNode11166

theorem canonicalSound9669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9669.moment H = canonicalOutput9669.moment H :=
  canonical_of_padded canonicalInput9669 canonicalOutput9669 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9670 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput9670 : ExponentCode := normalNode7475

theorem canonicalSound9670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9670.moment H = canonicalOutput9670.moment H :=
  canonical_of_padded canonicalInput9670 canonicalOutput9670 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9671 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 3, -2], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput9671 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code752

theorem canonicalSound9671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9671.moment H = canonicalOutput9671.moment H :=
  canonical_of_padded canonicalInput9671 canonicalOutput9671 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9672 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9672 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1330

theorem canonicalSound9672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9672.moment H = canonicalOutput9672.moment H :=
  canonical_of_padded canonicalInput9672 canonicalOutput9672 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9673 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput9673 : ExponentCode := normalNode9104

theorem canonicalSound9673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9673.moment H = canonicalOutput9673.moment H :=
  canonical_of_padded canonicalInput9673 canonicalOutput9673 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9674 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 3, -2], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput9674 : ExponentCode := normalNode9104

theorem canonicalSound9674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9674.moment H = canonicalOutput9674.moment H :=
  canonical_of_padded canonicalInput9674 canonicalOutput9674 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9675 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput9675 : ExponentCode := normalNode9124

theorem canonicalSound9675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9675.moment H = canonicalOutput9675.moment H :=
  canonical_of_padded canonicalInput9675 canonicalOutput9675 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9676 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9676 : ExponentCode := normalNode9092

theorem canonicalSound9676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9676.moment H = canonicalOutput9676.moment H :=
  canonical_of_padded canonicalInput9676 canonicalOutput9676 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9677 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 4, -3], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput9677 : ExponentCode := normalNode9092

theorem canonicalSound9677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9677.moment H = canonicalOutput9677.moment H :=
  canonical_of_padded canonicalInput9677 canonicalOutput9677 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9678 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput9678 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node241⟩

theorem canonicalSound9678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9678.moment H = canonicalOutput9678.moment H :=
  canonical_of_padded canonicalInput9678 canonicalOutput9678 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9679 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput9679 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node144⟩

theorem canonicalSound9679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9679.moment H = canonicalOutput9679.moment H :=
  canonical_of_padded canonicalInput9679 canonicalOutput9679 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9680 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 0, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput9680 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node251⟩

theorem canonicalSound9680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9680.moment H = canonicalOutput9680.moment H :=
  canonical_of_padded canonicalInput9680 canonicalOutput9680 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9681 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput9681 : ExponentCode := normalNode4738

theorem canonicalSound9681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9681.moment H = canonicalOutput9681.moment H :=
  canonical_of_padded canonicalInput9681 canonicalOutput9681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9682 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput9682 : ExponentCode := normalNode4739

theorem canonicalSound9682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9682.moment H = canonicalOutput9682.moment H :=
  canonical_of_padded canonicalInput9682 canonicalOutput9682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9683 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput9683 : ExponentCode := normalNode4751

theorem canonicalSound9683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9683.moment H = canonicalOutput9683.moment H :=
  canonical_of_padded canonicalInput9683 canonicalOutput9683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9684 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9684 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2148⟩

theorem canonicalSound9684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9684.moment H = canonicalOutput9684.moment H :=
  canonical_of_padded canonicalInput9684 canonicalOutput9684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9685 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput9685 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩

theorem canonicalSound9685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9685.moment H = canonicalOutput9685.moment H :=
  canonical_of_padded canonicalInput9685 canonicalOutput9685 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput9686 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput9686 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2862⟩

theorem canonicalSound9686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9686.moment H = canonicalOutput9686.moment H :=
  canonical_of_padded canonicalInput9686 canonicalOutput9686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9687 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput9687 : ExponentCode := normalNode11163

theorem canonicalSound9687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9687.moment H = canonicalOutput9687.moment H :=
  canonical_of_padded canonicalInput9687 canonicalOutput9687 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9688 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9688 : ExponentCode := normalNode11177

theorem canonicalSound9688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9688.moment H = canonicalOutput9688.moment H :=
  canonical_of_padded canonicalInput9688 canonicalOutput9688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9689 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9689 : ExponentCode := normalNode11164

theorem canonicalSound9689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9689.moment H = canonicalOutput9689.moment H :=
  canonical_of_padded canonicalInput9689 canonicalOutput9689 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9690 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9690 : ExponentCode := normalNode11151

theorem canonicalSound9690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9690.moment H = canonicalOutput9690.moment H :=
  canonical_of_padded canonicalInput9690 canonicalOutput9690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9691 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 3, -3]]⟩

def canonicalOutput9691 : ExponentCode := normalNode9742

theorem canonicalSound9691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9691.moment H = canonicalOutput9691.moment H :=
  canonical_of_padded canonicalInput9691 canonicalOutput9691 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9692 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput9692 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2157⟩

theorem canonicalSound9692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9692.moment H = canonicalOutput9692.moment H :=
  canonical_of_padded canonicalInput9692 canonicalOutput9692 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9693 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput9693 : ExponentCode := normalNode9870

theorem canonicalSound9693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9693.moment H = canonicalOutput9693.moment H :=
  canonical_of_padded canonicalInput9693 canonicalOutput9693 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9694 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput9694 : ExponentCode := normalNode9674

theorem canonicalSound9694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9694.moment H = canonicalOutput9694.moment H :=
  canonical_of_padded canonicalInput9694 canonicalOutput9694 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9695 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput9695 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩

theorem canonicalSound9695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9695.moment H = canonicalOutput9695.moment H :=
  canonical_of_padded canonicalInput9695 canonicalOutput9695 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9696 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput9696 : ExponentCode := normalNode7455

theorem canonicalSound9696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9696.moment H = canonicalOutput9696.moment H :=
  canonical_of_padded canonicalInput9696 canonicalOutput9696 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9697 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput9697 : ExponentCode := normalNode4770

theorem canonicalSound9697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9697.moment H = canonicalOutput9697.moment H :=
  canonical_of_padded canonicalInput9697 canonicalOutput9697 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9698 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput9698 : ExponentCode := normalNode4771

theorem canonicalSound9698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9698.moment H = canonicalOutput9698.moment H :=
  canonical_of_padded canonicalInput9698 canonicalOutput9698 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9699 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput9699 : ExponentCode := normalNode10902

theorem canonicalSound9699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9699.moment H = canonicalOutput9699.moment H :=
  canonical_of_padded canonicalInput9699 canonicalOutput9699 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9700 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 2, -2], ![1, -2, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput9700 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code770

theorem canonicalSound9700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9700.moment H = canonicalOutput9700.moment H :=
  canonical_of_padded canonicalInput9700 canonicalOutput9700 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9701 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 2, -2], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9701 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code317

theorem canonicalSound9701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9701.moment H = canonicalOutput9701.moment H :=
  canonical_of_padded canonicalInput9701 canonicalOutput9701 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9702 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 2, -2], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput9702 : ExponentCode := normalNode10344

theorem canonicalSound9702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9702.moment H = canonicalOutput9702.moment H :=
  canonical_of_padded canonicalInput9702 canonicalOutput9702 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput9703 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput9703 : ExponentCode := normalNode10344

theorem canonicalSound9703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9703.moment H = canonicalOutput9703.moment H :=
  canonical_of_padded canonicalInput9703 canonicalOutput9703 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9704 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput9704 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node764⟩

theorem canonicalSound9704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9704.moment H = canonicalOutput9704.moment H :=
  canonical_of_padded canonicalInput9704 canonicalOutput9704 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9705 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9705 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1023⟩

theorem canonicalSound9705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9705.moment H = canonicalOutput9705.moment H :=
  canonical_of_padded canonicalInput9705 canonicalOutput9705 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput9706 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 3, -3], ![0, 1, -1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput9706 : ExponentCode := normalNode10903

theorem canonicalSound9706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9706.moment H = canonicalOutput9706.moment H :=
  canonical_of_padded canonicalInput9706 canonicalOutput9706 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9707 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 3, -3], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput9707 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1150

theorem canonicalSound9707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9707.moment H = canonicalOutput9707.moment H :=
  canonical_of_padded canonicalInput9707 canonicalOutput9707 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9708 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 3, -3], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput9708 : ExponentCode := normalNode9133

theorem canonicalSound9708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9708.moment H = canonicalOutput9708.moment H :=
  canonical_of_padded canonicalInput9708 canonicalOutput9708 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9709 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput9709 : ExponentCode := normalNode9133

theorem canonicalSound9709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9709.moment H = canonicalOutput9709.moment H :=
  canonical_of_padded canonicalInput9709 canonicalOutput9709 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9710 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9710 : ExponentCode := normalNode9113

theorem canonicalSound9710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9710.moment H = canonicalOutput9710.moment H :=
  canonical_of_padded canonicalInput9710 canonicalOutput9710 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9711 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput9711 : ExponentCode := normalNode9113

theorem canonicalSound9711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9711.moment H = canonicalOutput9711.moment H :=
  canonical_of_padded canonicalInput9711 canonicalOutput9711 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9712 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput9712 : ExponentCode := normalNode11190

theorem canonicalSound9712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9712.moment H = canonicalOutput9712.moment H :=
  canonical_of_padded canonicalInput9712 canonicalOutput9712 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9713 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput9713 : ExponentCode := normalNode10897

theorem canonicalSound9713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9713.moment H = canonicalOutput9713.moment H :=
  canonical_of_padded canonicalInput9713 canonicalOutput9713 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9714 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput9714 : ExponentCode := normalNode10896

theorem canonicalSound9714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9714.moment H = canonicalOutput9714.moment H :=
  canonical_of_padded canonicalInput9714 canonicalOutput9714 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9715 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, -1, 0], ![1, -2, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput9715 : ExponentCode := normalNode9724

theorem canonicalSound9715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9715.moment H = canonicalOutput9715.moment H :=
  canonical_of_padded canonicalInput9715 canonicalOutput9715 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9716 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput9716 : ExponentCode := normalNode9750

theorem canonicalSound9716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9716.moment H = canonicalOutput9716.moment H :=
  canonical_of_padded canonicalInput9716 canonicalOutput9716 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9717 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput9717 : ExponentCode := normalNode11169

theorem canonicalSound9717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9717.moment H = canonicalOutput9717.moment H :=
  canonical_of_padded canonicalInput9717 canonicalOutput9717 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9718 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput9718 : ExponentCode := normalNode11170

theorem canonicalSound9718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9718.moment H = canonicalOutput9718.moment H :=
  canonical_of_padded canonicalInput9718 canonicalOutput9718 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9719 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput9719 : ExponentCode := normalNode11169

theorem canonicalSound9719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9719.moment H = canonicalOutput9719.moment H :=
  canonical_of_padded canonicalInput9719 canonicalOutput9719 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9720 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput9720 : ExponentCode := normalNode10941

theorem canonicalSound9720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9720.moment H = canonicalOutput9720.moment H :=
  canonical_of_padded canonicalInput9720 canonicalOutput9720 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9721 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput9721 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1187⟩

theorem canonicalSound9721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9721.moment H = canonicalOutput9721.moment H :=
  canonical_of_padded canonicalInput9721 canonicalOutput9721 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9722 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, 0, -1], ![1, -2, 4, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput9722 : ExponentCode := normalNode9728

theorem canonicalSound9722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9722.moment H = canonicalOutput9722.moment H :=
  canonical_of_padded canonicalInput9722 canonicalOutput9722 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9723 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput9723 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node923⟩

theorem canonicalSound9723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9723.moment H = canonicalOutput9723.moment H :=
  canonical_of_padded canonicalInput9723 canonicalOutput9723 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9724 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput9724 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node402⟩

theorem canonicalSound9724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9724.moment H = canonicalOutput9724.moment H :=
  canonical_of_padded canonicalInput9724 canonicalOutput9724 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput9725 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, 1, -2], ![1, -2, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput9725 : ExponentCode := normalNode10303

theorem canonicalSound9725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9725.moment H = canonicalOutput9725.moment H :=
  canonical_of_padded canonicalInput9725 canonicalOutput9725 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput9726 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput9726 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1021

theorem canonicalSound9726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9726.moment H = canonicalOutput9726.moment H :=
  canonical_of_padded canonicalInput9726 canonicalOutput9726 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9727 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, 1, 2, -3], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9727 : ExponentCode := normalNode8921

theorem canonicalSound9727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9727.moment H = canonicalOutput9727.moment H :=
  canonical_of_padded canonicalInput9727 canonicalOutput9727 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
