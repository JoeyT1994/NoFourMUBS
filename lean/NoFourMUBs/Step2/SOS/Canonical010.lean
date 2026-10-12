import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput640 : ExponentCode := ⟨4, 4, ![![-3, 1, 0, 2], ![0, -3, 2, 1], ![1, 1, -2, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput640 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code400

theorem canonicalSound640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput640.moment H = canonicalOutput640.moment H :=
  canonical_of_padded canonicalInput640 canonicalOutput640 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput641 : ExponentCode := ⟨5, 4, ![![-3, 1, 0, 2], ![0, -2, 1, 1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput641 : ExponentCode := normalNode4491

theorem canonicalSound641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput641.moment H = canonicalOutput641.moment H :=
  canonical_of_padded canonicalInput641 canonicalOutput641 (by decide) (by decide)
    ⟨false, false, canonicalPermutation61, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput642 : ExponentCode := ⟨4, 4, ![![-3, 1, 0, 2], ![1, -3, 1, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput642 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1024

theorem canonicalSound642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput642.moment H = canonicalOutput642.moment H :=
  canonical_of_padded canonicalInput642 canonicalOutput642 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput643 : ExponentCode := ⟨6, 6, ![![-3, 1, 0, 2, 0, 0], ![0, -2, 3, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput643 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code431

theorem canonicalSound643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput643.moment H = canonicalOutput643.moment H :=
  canonical_of_padded canonicalInput643 canonicalOutput643 (by decide) (by decide)
    ⟨false, false, canonicalPermutation4, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput644 : ExponentCode := ⟨6, 6, ![![-3, 1, 0, 2, 0, 0], ![0, -2, 3, -1, 0, 0], ![3, 1, -3, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput644 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput644.moment H = canonicalOutput644.moment H :=
  canonical_of_padded canonicalInput644 canonicalOutput644 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput645 : ExponentCode := ⟨6, 6, ![![-3, 1, 0, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, 0, -1, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput645 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput645.moment H = canonicalOutput645.moment H :=
  canonical_of_padded canonicalInput645 canonicalOutput645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation307, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput646 : ExponentCode := ⟨6, 6, ![![-3, 1, 0, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 2, -1, 0, 0], ![2, 0, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput646 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput646.moment H = canonicalOutput646.moment H :=
  canonical_of_padded canonicalInput646 canonicalOutput646 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput647 : ExponentCode := ⟨6, 6, ![![-3, 1, 0, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, -1, -1, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput647 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput647.moment H = canonicalOutput647.moment H :=
  canonical_of_padded canonicalInput647 canonicalOutput647 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput648 : ExponentCode := ⟨6, 6, ![![-3, 1, 0, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 1, -3, -1, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput648 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput648.moment H = canonicalOutput648.moment H :=
  canonical_of_padded canonicalInput648 canonicalOutput648 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput649 : ExponentCode := ⟨6, 6, ![![-3, 1, 0, 2, 0, 0], ![3, -2, 0, -1, 0, 0], ![0, 1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput649 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput649.moment H = canonicalOutput649.moment H :=
  canonical_of_padded canonicalInput649 canonicalOutput649 (by decide) (by decide)
    ⟨true, false, canonicalPermutation62, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput650 : ExponentCode := ⟨6, 6, ![![-3, 1, 0, 2, 0, 0], ![3, -2, 0, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput650 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput650.moment H = canonicalOutput650.moment H :=
  canonical_of_padded canonicalInput650 canonicalOutput650 (by decide) (by decide)
    ⟨false, false, canonicalPermutation4, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput651 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, -1, 2, 0], ![0, -2, 1, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput651 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput651.moment H = canonicalOutput651.moment H :=
  canonical_of_padded canonicalInput651 canonicalOutput651 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation11⟩ (by decide +kernel) hH

def canonicalInput652 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, -1, 2, 0], ![0, -2, 1, 2, -1, 0], ![3, 1, -2, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput652 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput652.moment H = canonicalOutput652.moment H :=
  canonical_of_padded canonicalInput652 canonicalOutput652 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation349, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput653 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -2, 2, -1, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput653 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput653.moment H = canonicalOutput653.moment H :=
  canonical_of_padded canonicalInput653 canonicalOutput653 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation306⟩ (by decide +kernel) hH

def canonicalInput654 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, 2, -1, 0], ![2, 0, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput654 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput654.moment H = canonicalOutput654.moment H :=
  canonical_of_padded canonicalInput654 canonicalOutput654 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput655 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, 0, 0, -1, -1, 0], ![-1, 0, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput655 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput655.moment H = canonicalOutput655.moment H :=
  canonical_of_padded canonicalInput655 canonicalOutput655 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation401⟩ (by decide +kernel) hH

def canonicalInput656 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![3, 1, -2, -1, -1, 0], ![-1, 0, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput656 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput656.moment H = canonicalOutput656.moment H :=
  canonical_of_padded canonicalInput656 canonicalOutput656 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput657 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, -1, 2, 0], ![3, -2, 1, -1, -1, 0], ![0, 1, -2, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput657 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput657.moment H = canonicalOutput657.moment H :=
  canonical_of_padded canonicalInput657 canonicalOutput657 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation368, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput658 : ExponentCode := ⟨6, 6, ![![-3, 1, 1, -1, 2, 0], ![3, -2, 1, -1, -1, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput658 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput658.moment H = canonicalOutput658.moment H :=
  canonical_of_padded canonicalInput658 canonicalOutput658 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput659 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![-2, 1, 2, -1], ![5, -2, -3, 0]]⟩

def canonicalOutput659 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node78⟩

theorem canonicalSound659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput659.moment H = canonicalOutput659.moment H :=
  canonical_of_padded canonicalInput659 canonicalOutput659 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput660 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -3, 1, 2], ![1, 0, -1, 0], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput660 : ExponentCode := normalNode154

theorem canonicalSound660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput660.moment H = canonicalOutput660.moment H :=
  canonical_of_padded canonicalInput660 canonicalOutput660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput661 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![0, -3, 1, 2], ![3, 2, -2, -3]]⟩

def canonicalOutput661 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node100⟩

theorem canonicalSound661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput661.moment H = canonicalOutput661.moment H :=
  canonical_of_padded canonicalInput661 canonicalOutput661 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput662 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![0, -3, 2, 1], ![3, 2, -3, -2]]⟩

def canonicalOutput662 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node100⟩

theorem canonicalSound662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput662.moment H = canonicalOutput662.moment H :=
  canonical_of_padded canonicalInput662 canonicalOutput662 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput663 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput663 : ExponentCode := normalNode4554

theorem canonicalSound663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput663.moment H = canonicalOutput663.moment H :=
  canonical_of_padded canonicalInput663 canonicalOutput663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput664 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![0, 1, -2, 1], ![2, -1, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput664 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code64

theorem canonicalSound664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput664.moment H = canonicalOutput664.moment H :=
  canonical_of_padded canonicalInput664 canonicalOutput664 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput665 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput665 : ExponentCode := normalNode7669

theorem canonicalSound665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput665.moment H = canonicalOutput665.moment H :=
  canonical_of_padded canonicalInput665 canonicalOutput665 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput666 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput666 : ExponentCode := normalNode4402

theorem canonicalSound666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput666.moment H = canonicalOutput666.moment H :=
  canonical_of_padded canonicalInput666 canonicalOutput666 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput667 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, -1, 0, 0], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput667 : ExponentCode := normalNode4402

theorem canonicalSound667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput667.moment H = canonicalOutput667.moment H :=
  canonical_of_padded canonicalInput667 canonicalOutput667 (by decide) (by decide)
    ⟨false, false, canonicalPermutation23, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput668 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, -1, 1, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput668 : ExponentCode := normalNode7669

theorem canonicalSound668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput668.moment H = canonicalOutput668.moment H :=
  canonical_of_padded canonicalInput668 canonicalOutput668 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput669 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, 0, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput669 : ExponentCode := normalNode4530

theorem canonicalSound669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput669.moment H = canonicalOutput669.moment H :=
  canonical_of_padded canonicalInput669 canonicalOutput669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput670 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput670 : ExponentCode := normalNode4530

theorem canonicalSound670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput670.moment H = canonicalOutput670.moment H :=
  canonical_of_padded canonicalInput670 canonicalOutput670 (by decide) (by decide)
    ⟨false, false, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput671 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, 0, -1, 0], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput671 : ExponentCode := normalNode4466

theorem canonicalSound671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput671.moment H = canonicalOutput671.moment H :=
  canonical_of_padded canonicalInput671 canonicalOutput671 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput672 : ExponentCode := ⟨4, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, 1, -3, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput672 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1024

theorem canonicalSound672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput672.moment H = canonicalOutput672.moment H :=
  canonical_of_padded canonicalInput672 canonicalOutput672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput673 : ExponentCode := ⟨4, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, 1, 1, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput673 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1024

theorem canonicalSound673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput673.moment H = canonicalOutput673.moment H :=
  canonical_of_padded canonicalInput673 canonicalOutput673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput674 : ExponentCode := ⟨4, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![1, 2, 0, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput674 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code630

theorem canonicalSound674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput674.moment H = canonicalOutput674.moment H :=
  canonical_of_padded canonicalInput674 canonicalOutput674 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput675 : ExponentCode := ⟨4, 4, ![![-3, 1, 1, 1], ![0, -2, 1, 1], ![2, 0, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput675 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1024

theorem canonicalSound675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput675.moment H = canonicalOutput675.moment H :=
  canonical_of_padded canonicalInput675 canonicalOutput675 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput676 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![0, -2, 2, 0], ![3, 1, -3, -1]]⟩

def canonicalOutput676 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node170⟩

theorem canonicalSound676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput676.moment H = canonicalOutput676.moment H :=
  canonical_of_padded canonicalInput676 canonicalOutput676 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput677 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![0, -2, 3, -1], ![3, 1, -4, 0]]⟩

def canonicalOutput677 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput677.moment H = canonicalOutput677.moment H :=
  canonical_of_padded canonicalInput677 canonicalOutput677 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput678 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![0, -2, 4, -2], ![3, 1, -5, 1]]⟩

def canonicalOutput678 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code63

theorem canonicalSound678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput678.moment H = canonicalOutput678.moment H :=
  canonical_of_padded canonicalInput678 canonicalOutput678 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput679 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -1, 0, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput679 : ExponentCode := normalNode7685

theorem canonicalSound679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput679.moment H = canonicalOutput679.moment H :=
  canonical_of_padded canonicalInput679 canonicalOutput679 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput680 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput680 : ExponentCode := normalNode4347

theorem canonicalSound680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput680.moment H = canonicalOutput680.moment H :=
  canonical_of_padded canonicalInput680 canonicalOutput680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput681 : ExponentCode := ⟨4, 4, ![![-3, 1, 1, 1], ![0, -1, 0, 1], ![1, 1, 1, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput681 : ExponentCode := normalNode7838

theorem canonicalSound681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput681.moment H = canonicalOutput681.moment H :=
  canonical_of_padded canonicalInput681 canonicalOutput681 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput682 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 1, 1, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput682 : ExponentCode := normalNode6872

theorem canonicalSound682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput682.moment H = canonicalOutput682.moment H :=
  canonical_of_padded canonicalInput682 canonicalOutput682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput683 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput683 : ExponentCode := normalNode4394

theorem canonicalSound683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput683.moment H = canonicalOutput683.moment H :=
  canonical_of_padded canonicalInput683 canonicalOutput683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput684 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 1, 1, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput684 : ExponentCode := normalNode184

theorem canonicalSound684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput684.moment H = canonicalOutput684.moment H :=
  canonical_of_padded canonicalInput684 canonicalOutput684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput685 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, 0, 0, 0], ![1, -2, 1, 0], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput685 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code955

theorem canonicalSound685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput685.moment H = canonicalOutput685.moment H :=
  canonical_of_padded canonicalInput685 canonicalOutput685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput686 : ExponentCode := ⟨4, 4, ![![-3, 1, 1, 1], ![0, 0, 0, 0], ![1, 1, -3, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput686 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node114⟩

theorem canonicalSound686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput686.moment H = canonicalOutput686.moment H :=
  canonical_of_padded canonicalInput686 canonicalOutput686 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput687 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, 1, 0, -1], ![1, -3, 1, 1], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput687 : ExponentCode := normalNode181

theorem canonicalSound687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput687.moment H = canonicalOutput687.moment H :=
  canonical_of_padded canonicalInput687 canonicalOutput687 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput688 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput688 : ExponentCode := normalNode7689

theorem canonicalSound688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput688.moment H = canonicalOutput688.moment H :=
  canonical_of_padded canonicalInput688 canonicalOutput688 (by decide) (by decide)
    ⟨false, true, canonicalPermutation65, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput689 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput689 : ExponentCode := normalNode4217

theorem canonicalSound689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput689.moment H = canonicalOutput689.moment H :=
  canonical_of_padded canonicalInput689 canonicalOutput689 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput690 : ExponentCode := ⟨4, 4, ![![-3, 1, 1, 1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput690 : ExponentCode := normalNode9033

theorem canonicalSound690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput690.moment H = canonicalOutput690.moment H :=
  canonical_of_padded canonicalInput690 canonicalOutput690 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput691 : ExponentCode := ⟨4, 4, ![![-3, 1, 1, 1], ![0, 1, 0, -1], ![1, 1, -3, 1], ![2, -3, 2, -1]]⟩

def canonicalOutput691 : ExponentCode := normalNode7918

theorem canonicalSound691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput691.moment H = canonicalOutput691.moment H :=
  canonical_of_padded canonicalInput691 canonicalOutput691 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput692 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![0, 1, 2, -3], ![3, -2, -3, 2]]⟩

def canonicalOutput692 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node100⟩

theorem canonicalSound692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput692.moment H = canonicalOutput692.moment H :=
  canonical_of_padded canonicalInput692 canonicalOutput692 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput693 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![1, -4, 1, 2], ![2, 3, -2, -3]]⟩

def canonicalOutput693 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code85

theorem canonicalSound693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput693.moment H = canonicalOutput693.moment H :=
  canonical_of_padded canonicalInput693 canonicalOutput693 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput694 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![1, -4, 2, 1], ![2, 3, -3, -2]]⟩

def canonicalOutput694 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code85

theorem canonicalSound694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput694.moment H = canonicalOutput694.moment H :=
  canonical_of_padded canonicalInput694 canonicalOutput694 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput695 : ExponentCode := ⟨5, 4, ![![-3, 1, 1, 1], ![1, -3, 1, 1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput695 : ExponentCode := normalNode181

theorem canonicalSound695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput695.moment H = canonicalOutput695.moment H :=
  canonical_of_padded canonicalInput695 canonicalOutput695 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput696 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![1, -3, 1, 1], ![2, 2, -2, -2]]⟩

def canonicalOutput696 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node114⟩

theorem canonicalSound696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput696.moment H = canonicalOutput696.moment H :=
  canonical_of_padded canonicalInput696 canonicalOutput696 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput697 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![1, -3, 2, 0], ![2, 2, -3, -1]]⟩

def canonicalOutput697 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput697.moment H = canonicalOutput697.moment H :=
  canonical_of_padded canonicalInput697 canonicalOutput697 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput698 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![1, -2, -2, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput698 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput698.moment H = canonicalOutput698.moment H :=
  canonical_of_padded canonicalInput698 canonicalOutput698 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput699 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![1, -2, 2, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput699 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node109⟩

theorem canonicalSound699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput699.moment H = canonicalOutput699.moment H :=
  canonical_of_padded canonicalInput699 canonicalOutput699 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput700 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![1, 1, 1, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput700 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node114⟩

theorem canonicalSound700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput700.moment H = canonicalOutput700.moment H :=
  canonical_of_padded canonicalInput700 canonicalOutput700 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput701 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![2, -3, 1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput701 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node109⟩

theorem canonicalSound701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput701.moment H = canonicalOutput701.moment H :=
  canonical_of_padded canonicalInput701 canonicalOutput701 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput702 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![2, -3, 2, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput702 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput702.moment H = canonicalOutput702.moment H :=
  canonical_of_padded canonicalInput702 canonicalOutput702 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput703 : ExponentCode := ⟨3, 4, ![![-3, 1, 1, 1], ![2, -2, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput703 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node114⟩

theorem canonicalSound703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput703.moment H = canonicalOutput703.moment H :=
  canonical_of_padded canonicalInput703 canonicalOutput703 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
