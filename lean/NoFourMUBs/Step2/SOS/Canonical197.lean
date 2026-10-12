import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12608 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 0, -2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput12608 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code624

theorem canonicalSound12608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12608.moment H = canonicalOutput12608.moment H :=
  canonical_of_padded canonicalInput12608 canonicalOutput12608 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12609 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput12609 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound12609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12609.moment H = canonicalOutput12609.moment H :=
  canonical_of_padded canonicalInput12609 canonicalOutput12609 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12610 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput12610 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1144

theorem canonicalSound12610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12610.moment H = canonicalOutput12610.moment H :=
  canonical_of_padded canonicalInput12610 canonicalOutput12610 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12611 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput12611 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node509⟩

theorem canonicalSound12611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12611.moment H = canonicalOutput12611.moment H :=
  canonical_of_padded canonicalInput12611 canonicalOutput12611 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12612 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput12612 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound12612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12612.moment H = canonicalOutput12612.moment H :=
  canonical_of_padded canonicalInput12612 canonicalOutput12612 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12613 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12613 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound12613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12613.moment H = canonicalOutput12613.moment H :=
  canonical_of_padded canonicalInput12613 canonicalOutput12613 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12614 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 1, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput12614 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node509⟩

theorem canonicalSound12614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12614.moment H = canonicalOutput12614.moment H :=
  canonical_of_padded canonicalInput12614 canonicalOutput12614 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12615 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 2, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12615 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1144

theorem canonicalSound12615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12615.moment H = canonicalOutput12615.moment H :=
  canonical_of_padded canonicalInput12615 canonicalOutput12615 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12616 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, 0, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12616 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1506⟩

theorem canonicalSound12616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12616.moment H = canonicalOutput12616.moment H :=
  canonical_of_padded canonicalInput12616 canonicalOutput12616 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12617 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, 0, 0], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12617 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1505⟩

theorem canonicalSound12617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12617.moment H = canonicalOutput12617.moment H :=
  canonical_of_padded canonicalInput12617 canonicalOutput12617 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12618 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, 0, 0], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput12618 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1215⟩

theorem canonicalSound12618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12618.moment H = canonicalOutput12618.moment H :=
  canonical_of_padded canonicalInput12618 canonicalOutput12618 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12619 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, 0, 0], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12619 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node976⟩

theorem canonicalSound12619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12619.moment H = canonicalOutput12619.moment H :=
  canonical_of_padded canonicalInput12619 canonicalOutput12619 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12620 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 1, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput12620 : ExponentCode := normalNode4871

theorem canonicalSound12620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12620.moment H = canonicalOutput12620.moment H :=
  canonical_of_padded canonicalInput12620 canonicalOutput12620 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12621 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, 1, -1], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput12621 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1144

theorem canonicalSound12621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12621.moment H = canonicalOutput12621.moment H :=
  canonical_of_padded canonicalInput12621 canonicalOutput12621 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12622 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, 1, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput12622 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound12622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12622.moment H = canonicalOutput12622.moment H :=
  canonical_of_padded canonicalInput12622 canonicalOutput12622 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12623 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, 1, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12623 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node509⟩

theorem canonicalSound12623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12623.moment H = canonicalOutput12623.moment H :=
  canonical_of_padded canonicalInput12623 canonicalOutput12623 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12624 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 1, 1, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput12624 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound12624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12624.moment H = canonicalOutput12624.moment H :=
  canonical_of_padded canonicalInput12624 canonicalOutput12624 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12625 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, -3, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12625 : ExponentCode := normalNode6175

theorem canonicalSound12625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12625.moment H = canonicalOutput12625.moment H :=
  canonical_of_padded canonicalInput12625 canonicalOutput12625 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12626 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -3, 2], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput12626 : ExponentCode := normalNode6244

theorem canonicalSound12626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12626.moment H = canonicalOutput12626.moment H :=
  canonical_of_padded canonicalInput12626 canonicalOutput12626 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12627 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -3, 2], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput12627 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code212

theorem canonicalSound12627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12627.moment H = canonicalOutput12627.moment H :=
  canonical_of_padded canonicalInput12627 canonicalOutput12627 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12628 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, -2, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12628 : ExponentCode := normalNode6179

theorem canonicalSound12628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12628.moment H = canonicalOutput12628.moment H :=
  canonical_of_padded canonicalInput12628 canonicalOutput12628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12629 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, -2, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12629 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1765⟩

theorem canonicalSound12629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12629.moment H = canonicalOutput12629.moment H :=
  canonical_of_padded canonicalInput12629 canonicalOutput12629 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12630 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -2, 1], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput12630 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code634

theorem canonicalSound12630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12630.moment H = canonicalOutput12630.moment H :=
  canonical_of_padded canonicalInput12630 canonicalOutput12630 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12631 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput12631 : ExponentCode := normalNode7067

theorem canonicalSound12631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12631.moment H = canonicalOutput12631.moment H :=
  canonical_of_padded canonicalInput12631 canonicalOutput12631 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12632 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -2, 1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput12632 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node829⟩

theorem canonicalSound12632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12632.moment H = canonicalOutput12632.moment H :=
  canonical_of_padded canonicalInput12632 canonicalOutput12632 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12633 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -2, 1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput12633 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code622

theorem canonicalSound12633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12633.moment H = canonicalOutput12633.moment H :=
  canonical_of_padded canonicalInput12633 canonicalOutput12633 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12634 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -2, 1], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12634 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code622

theorem canonicalSound12634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12634.moment H = canonicalOutput12634.moment H :=
  canonical_of_padded canonicalInput12634 canonicalOutput12634 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12635 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -2, 1], ![1, 1, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12635 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node829⟩

theorem canonicalSound12635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12635.moment H = canonicalOutput12635.moment H :=
  canonical_of_padded canonicalInput12635 canonicalOutput12635 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12636 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, -2, 1], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput12636 : ExponentCode := normalNode6189

theorem canonicalSound12636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12636.moment H = canonicalOutput12636.moment H :=
  canonical_of_padded canonicalInput12636 canonicalOutput12636 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12637 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput12637 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code444

theorem canonicalSound12637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12637.moment H = canonicalOutput12637.moment H :=
  canonical_of_padded canonicalInput12637 canonicalOutput12637 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12638 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12638 : ExponentCode := normalNode4887

theorem canonicalSound12638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12638.moment H = canonicalOutput12638.moment H :=
  canonical_of_padded canonicalInput12638 canonicalOutput12638 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12639 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12639 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1512⟩

theorem canonicalSound12639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12639.moment H = canonicalOutput12639.moment H :=
  canonical_of_padded canonicalInput12639 canonicalOutput12639 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12640 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12640 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1513⟩

theorem canonicalSound12640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12640.moment H = canonicalOutput12640.moment H :=
  canonical_of_padded canonicalInput12640 canonicalOutput12640 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12641 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12641 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2061⟩

theorem canonicalSound12641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12641.moment H = canonicalOutput12641.moment H :=
  canonical_of_padded canonicalInput12641 canonicalOutput12641 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12642 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput12642 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node496⟩

theorem canonicalSound12642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12642.moment H = canonicalOutput12642.moment H :=
  canonical_of_padded canonicalInput12642 canonicalOutput12642 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12643 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput12643 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node519⟩

theorem canonicalSound12643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12643.moment H = canonicalOutput12643.moment H :=
  canonical_of_padded canonicalInput12643 canonicalOutput12643 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12644 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12644 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1036⟩

theorem canonicalSound12644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12644.moment H = canonicalOutput12644.moment H :=
  canonical_of_padded canonicalInput12644 canonicalOutput12644 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12645 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput12645 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node995⟩

theorem canonicalSound12645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12645.moment H = canonicalOutput12645.moment H :=
  canonical_of_padded canonicalInput12645 canonicalOutput12645 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12646 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12646 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node483⟩

theorem canonicalSound12646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12646.moment H = canonicalOutput12646.moment H :=
  canonical_of_padded canonicalInput12646 canonicalOutput12646 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12647 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12647 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node483⟩

theorem canonicalSound12647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12647.moment H = canonicalOutput12647.moment H :=
  canonical_of_padded canonicalInput12647 canonicalOutput12647 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12648 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, -1, 0], ![1, 1, 1, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput12648 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node519⟩

theorem canonicalSound12648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12648.moment H = canonicalOutput12648.moment H :=
  canonical_of_padded canonicalInput12648 canonicalOutput12648 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12649 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 0, -2, 2], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12649 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1289

theorem canonicalSound12649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12649.moment H = canonicalOutput12649.moment H :=
  canonical_of_padded canonicalInput12649 canonicalOutput12649 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12650 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 0, -2, 2], ![2, 1, 0, -3]]⟩

def canonicalOutput12650 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code810

theorem canonicalSound12650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12650.moment H = canonicalOutput12650.moment H :=
  canonical_of_padded canonicalInput12650 canonicalOutput12650 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12651 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 0, 0, 0], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12651 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node483⟩

theorem canonicalSound12651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12651.moment H = canonicalOutput12651.moment H :=
  canonical_of_padded canonicalInput12651 canonicalOutput12651 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput12652 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput12652 : ExponentCode := normalNode6185

theorem canonicalSound12652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12652.moment H = canonicalOutput12652.moment H :=
  canonical_of_padded canonicalInput12652 canonicalOutput12652 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12653 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12653 : ExponentCode := normalNode6191

theorem canonicalSound12653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12653.moment H = canonicalOutput12653.moment H :=
  canonical_of_padded canonicalInput12653 canonicalOutput12653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12654 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12654 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2061⟩

theorem canonicalSound12654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12654.moment H = canonicalOutput12654.moment H :=
  canonical_of_padded canonicalInput12654 canonicalOutput12654 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12655 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12655 : ExponentCode := normalNode6190

theorem canonicalSound12655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12655.moment H = canonicalOutput12655.moment H :=
  canonical_of_padded canonicalInput12655 canonicalOutput12655 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12656 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12656 : ExponentCode := normalNode4887

theorem canonicalSound12656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12656.moment H = canonicalOutput12656.moment H :=
  canonical_of_padded canonicalInput12656 canonicalOutput12656 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12657 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput12657 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code442

theorem canonicalSound12657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12657.moment H = canonicalOutput12657.moment H :=
  canonical_of_padded canonicalInput12657 canonicalOutput12657 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12658 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12658 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node483⟩

theorem canonicalSound12658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12658.moment H = canonicalOutput12658.moment H :=
  canonical_of_padded canonicalInput12658 canonicalOutput12658 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12659 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput12659 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node519⟩

theorem canonicalSound12659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12659.moment H = canonicalOutput12659.moment H :=
  canonical_of_padded canonicalInput12659 canonicalOutput12659 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12660 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, 0, -1], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12660 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node519⟩

theorem canonicalSound12660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12660.moment H = canonicalOutput12660.moment H :=
  canonical_of_padded canonicalInput12660 canonicalOutput12660 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12661 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 0, -2, 2], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12661 : ExponentCode := normalNode6199

theorem canonicalSound12661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12661.moment H = canonicalOutput12661.moment H :=
  canonical_of_padded canonicalInput12661 canonicalOutput12661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12662 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 0, -2, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput12662 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code589

theorem canonicalSound12662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12662.moment H = canonicalOutput12662.moment H :=
  canonical_of_padded canonicalInput12662 canonicalOutput12662 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12663 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 1, -3, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput12663 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code209

theorem canonicalSound12663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12663.moment H = canonicalOutput12663.moment H :=
  canonical_of_padded canonicalInput12663 canonicalOutput12663 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12664 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12664 : ExponentCode := normalNode6181

theorem canonicalSound12664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12664.moment H = canonicalOutput12664.moment H :=
  canonical_of_padded canonicalInput12664 canonicalOutput12664 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12665 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12665 : ExponentCode := normalNode6181

theorem canonicalSound12665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12665.moment H = canonicalOutput12665.moment H :=
  canonical_of_padded canonicalInput12665 canonicalOutput12665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12666 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12666 : ExponentCode := normalNode6180

theorem canonicalSound12666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12666.moment H = canonicalOutput12666.moment H :=
  canonical_of_padded canonicalInput12666 canonicalOutput12666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12667 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12667 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1765⟩

theorem canonicalSound12667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12667.moment H = canonicalOutput12667.moment H :=
  canonical_of_padded canonicalInput12667 canonicalOutput12667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12668 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 2, 1, -2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput12668 : ExponentCode := normalNode6179

theorem canonicalSound12668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12668.moment H = canonicalOutput12668.moment H :=
  canonical_of_padded canonicalInput12668 canonicalOutput12668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12669 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, 1, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput12669 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code210

theorem canonicalSound12669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12669.moment H = canonicalOutput12669.moment H :=
  canonical_of_padded canonicalInput12669 canonicalOutput12669 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12670 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, 1, -2], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput12670 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code622

theorem canonicalSound12670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12670.moment H = canonicalOutput12670.moment H :=
  canonical_of_padded canonicalInput12670 canonicalOutput12670 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12671 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 2, 1, -2], ![1, 1, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12671 : ExponentCode := normalNode7067

theorem canonicalSound12671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12671.moment H = canonicalOutput12671.moment H :=
  canonical_of_padded canonicalInput12671 canonicalOutput12671 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
