import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22592 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 4, -4], ![0, 0, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput22592 : ExponentCode := normalNode9701

theorem canonicalSound22592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22592.moment H = canonicalOutput22592.moment H :=
  canonical_of_padded canonicalInput22592 canonicalOutput22592 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22593 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput22593 : ExponentCode := normalNode10970

theorem canonicalSound22593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22593.moment H = canonicalOutput22593.moment H :=
  canonical_of_padded canonicalInput22593 canonicalOutput22593 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22594 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput22594 : ExponentCode := normalNode9755

theorem canonicalSound22594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22594.moment H = canonicalOutput22594.moment H :=
  canonical_of_padded canonicalInput22594 canonicalOutput22594 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22595 : ExponentCode := ⟨5, 4, ![![-1, 1, -3, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, 0, 1]]⟩

def canonicalOutput22595 : ExponentCode := normalNode10970

theorem canonicalSound22595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22595.moment H = canonicalOutput22595.moment H :=
  canonical_of_padded canonicalInput22595 canonicalOutput22595 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22596 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 1, 0, -1], ![0, -1, 0, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput22596 : ExponentCode := normalNode11003

theorem canonicalSound22596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22596.moment H = canonicalOutput22596.moment H :=
  canonical_of_padded canonicalInput22596 canonicalOutput22596 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22597 : ExponentCode := ⟨3, 4, ![![-1, 1, -3, 3], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput22597 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node273⟩

theorem canonicalSound22597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22597.moment H = canonicalOutput22597.moment H :=
  canonical_of_padded canonicalInput22597 canonicalOutput22597 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput22598 : ExponentCode := ⟨4, 4, ![![-1, 1, -3, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput22598 : ExponentCode := normalNode9973

theorem canonicalSound22598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22598.moment H = canonicalOutput22598.moment H :=
  canonical_of_padded canonicalInput22598 canonicalOutput22598 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22599 : ExponentCode := ⟨4, 5, ![![-1, 1, -2, -1, 3], ![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput22599 : ExponentCode := normalNode7866

theorem canonicalSound22599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22599.moment H = canonicalOutput22599.moment H :=
  canonical_of_padded canonicalInput22599 canonicalOutput22599 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput22600 : ExponentCode := ⟨4, 5, ![![-1, 1, -2, -1, 3], ![0, -1, 0, 3, -2], ![0, 0, 1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput22600 : ExponentCode := normalNode4718

theorem canonicalSound22600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22600.moment H = canonicalOutput22600.moment H :=
  canonical_of_padded canonicalInput22600 canonicalOutput22600 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22601 : ExponentCode := ⟨4, 5, ![![-1, 1, -2, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput22601 : ExponentCode := normalNode2413

theorem canonicalSound22601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22601.moment H = canonicalOutput22601.moment H :=
  canonical_of_padded canonicalInput22601 canonicalOutput22601 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput22602 : ExponentCode := ⟨4, 5, ![![-1, 1, -2, 0, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, 2, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput22602 : ExponentCode := normalNode2375

theorem canonicalSound22602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22602.moment H = canonicalOutput22602.moment H :=
  canonical_of_padded canonicalInput22602 canonicalOutput22602 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22603 : ExponentCode := ⟨4, 5, ![![-1, 1, -2, 0, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput22603 : ExponentCode := normalNode2651

theorem canonicalSound22603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22603.moment H = canonicalOutput22603.moment H :=
  canonical_of_padded canonicalInput22603 canonicalOutput22603 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput22604 : ExponentCode := ⟨4, 5, ![![-1, 1, -2, 1, 1], ![0, -1, 1, -2, 2], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput22604 : ExponentCode := normalNode7031

theorem canonicalSound22604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22604.moment H = canonicalOutput22604.moment H :=
  canonical_of_padded canonicalInput22604 canonicalOutput22604 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput22605 : ExponentCode := ⟨4, 5, ![![-1, 1, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput22605 : ExponentCode := normalNode10529

theorem canonicalSound22605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22605.moment H = canonicalOutput22605.moment H :=
  canonical_of_padded canonicalInput22605 canonicalOutput22605 (by decide) (by decide)
    ⟨true, false, canonicalPermutation29, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput22606 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput22606 : ExponentCode := normalNode10185

theorem canonicalSound22606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22606.moment H = canonicalOutput22606.moment H :=
  canonical_of_padded canonicalInput22606 canonicalOutput22606 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22607 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput22607 : ExponentCode := normalNode9827

theorem canonicalSound22607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22607.moment H = canonicalOutput22607.moment H :=
  canonical_of_padded canonicalInput22607 canonicalOutput22607 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22608 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput22608 : ExponentCode := normalNode9816

theorem canonicalSound22608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22608.moment H = canonicalOutput22608.moment H :=
  canonical_of_padded canonicalInput22608 canonicalOutput22608 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22609 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput22609 : ExponentCode := normalNode9803

theorem canonicalSound22609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22609.moment H = canonicalOutput22609.moment H :=
  canonical_of_padded canonicalInput22609 canonicalOutput22609 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22610 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![2, -2, -1, 1]]⟩

def canonicalOutput22610 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1271

theorem canonicalSound22610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22610.moment H = canonicalOutput22610.moment H :=
  canonical_of_padded canonicalInput22610 canonicalOutput22610 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22611 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![-1, 1, -1, 1], ![1, -1, 4, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput22611 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1328

theorem canonicalSound22611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22611.moment H = canonicalOutput22611.moment H :=
  canonical_of_padded canonicalInput22611 canonicalOutput22611 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22612 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![-1, 1, 1, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput22612 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound22612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22612.moment H = canonicalOutput22612.moment H :=
  canonical_of_padded canonicalInput22612 canonicalOutput22612 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput22613 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![-1, 1, 1, -1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput22613 : ExponentCode := normalNode11017

theorem canonicalSound22613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22613.moment H = canonicalOutput22613.moment H :=
  canonical_of_padded canonicalInput22613 canonicalOutput22613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22614 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![-1, 1, 1, -1], ![0, 0, 2, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput22614 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node503⟩

theorem canonicalSound22614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22614.moment H = canonicalOutput22614.moment H :=
  canonical_of_padded canonicalInput22614 canonicalOutput22614 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22615 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22615 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound22615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22615.moment H = canonicalOutput22615.moment H :=
  canonical_of_padded canonicalInput22615 canonicalOutput22615 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput22616 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput22616 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1397

theorem canonicalSound22616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22616.moment H = canonicalOutput22616.moment H :=
  canonical_of_padded canonicalInput22616 canonicalOutput22616 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22617 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![-1, 1, 2, -2], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22617 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1107⟩

theorem canonicalSound22617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22617.moment H = canonicalOutput22617.moment H :=
  canonical_of_padded canonicalInput22617 canonicalOutput22617 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput22618 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![-1, 1, 2, -2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput22618 : ExponentCode := normalNode11019

theorem canonicalSound22618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22618.moment H = canonicalOutput22618.moment H :=
  canonical_of_padded canonicalInput22618 canonicalOutput22618 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22619 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![-1, 1, 2, -2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput22619 : ExponentCode := normalNode11019

theorem canonicalSound22619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22619.moment H = canonicalOutput22619.moment H :=
  canonical_of_padded canonicalInput22619 canonicalOutput22619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22620 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![-1, 1, 2, -2], ![0, 0, 2, -2], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput22620 : ExponentCode := normalNode11011

theorem canonicalSound22620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22620.moment H = canonicalOutput22620.moment H :=
  canonical_of_padded canonicalInput22620 canonicalOutput22620 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22621 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput22621 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1380

theorem canonicalSound22621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22621.moment H = canonicalOutput22621.moment H :=
  canonical_of_padded canonicalInput22621 canonicalOutput22621 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22622 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![-1, 1, 3, -3], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput22622 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1395

theorem canonicalSound22622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22622.moment H = canonicalOutput22622.moment H :=
  canonical_of_padded canonicalInput22622 canonicalOutput22622 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22623 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![-1, 1, 4, -4], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput22623 : ExponentCode := normalNode9346

theorem canonicalSound22623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22623.moment H = canonicalOutput22623.moment H :=
  canonical_of_padded canonicalInput22623 canonicalOutput22623 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput22624 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -2, -1, 3], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput22624 : ExponentCode := normalNode10548

theorem canonicalSound22624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22624.moment H = canonicalOutput22624.moment H :=
  canonical_of_padded canonicalInput22624 canonicalOutput22624 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22625 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -2, 1, 1], ![0, 1, 3, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput22625 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1251⟩

theorem canonicalSound22625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22625.moment H = canonicalOutput22625.moment H :=
  canonical_of_padded canonicalInput22625 canonicalOutput22625 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22626 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput22626 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1281⟩

theorem canonicalSound22626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22626.moment H = canonicalOutput22626.moment H :=
  canonical_of_padded canonicalInput22626 canonicalOutput22626 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22627 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -2, 4, -2], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput22627 : ExponentCode := normalNode10836

theorem canonicalSound22627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22627.moment H = canonicalOutput22627.moment H :=
  canonical_of_padded canonicalInput22627 canonicalOutput22627 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22628 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -2, 4, -2], ![0, 1, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput22628 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1243⟩

theorem canonicalSound22628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22628.moment H = canonicalOutput22628.moment H :=
  canonical_of_padded canonicalInput22628 canonicalOutput22628 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22629 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput22629 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node983⟩

theorem canonicalSound22629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22629.moment H = canonicalOutput22629.moment H :=
  canonical_of_padded canonicalInput22629 canonicalOutput22629 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22630 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput22630 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1073⟩

theorem canonicalSound22630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22630.moment H = canonicalOutput22630.moment H :=
  canonical_of_padded canonicalInput22630 canonicalOutput22630 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22631 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, -1, 2], ![0, -1, 4, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput22631 : ExponentCode := normalNode9475

theorem canonicalSound22631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22631.moment H = canonicalOutput22631.moment H :=
  canonical_of_padded canonicalInput22631 canonicalOutput22631 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22632 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput22632 : ExponentCode := normalNode10350

theorem canonicalSound22632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22632.moment H = canonicalOutput22632.moment H :=
  canonical_of_padded canonicalInput22632 canonicalOutput22632 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22633 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, -1, 2], ![0, 0, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput22633 : ExponentCode := normalNode10352

theorem canonicalSound22633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22633.moment H = canonicalOutput22633.moment H :=
  canonical_of_padded canonicalInput22633 canonicalOutput22633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22634 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput22634 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1326⟩

theorem canonicalSound22634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22634.moment H = canonicalOutput22634.moment H :=
  canonical_of_padded canonicalInput22634 canonicalOutput22634 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22635 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput22635 : ExponentCode := normalNode11069

theorem canonicalSound22635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22635.moment H = canonicalOutput22635.moment H :=
  canonical_of_padded canonicalInput22635 canonicalOutput22635 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput22636 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput22636 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound22636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22636.moment H = canonicalOutput22636.moment H :=
  canonical_of_padded canonicalInput22636 canonicalOutput22636 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22637 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 0, 1], ![0, 1, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput22637 : ExponentCode := normalNode7408

theorem canonicalSound22637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22637.moment H = canonicalOutput22637.moment H :=
  canonical_of_padded canonicalInput22637 canonicalOutput22637 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput22638 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput22638 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1335⟩

theorem canonicalSound22638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22638.moment H = canonicalOutput22638.moment H :=
  canonical_of_padded canonicalInput22638 canonicalOutput22638 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput22639 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput22639 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩

theorem canonicalSound22639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22639.moment H = canonicalOutput22639.moment H :=
  canonical_of_padded canonicalInput22639 canonicalOutput22639 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput22640 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput22640 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1368⟩

theorem canonicalSound22640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22640.moment H = canonicalOutput22640.moment H :=
  canonical_of_padded canonicalInput22640 canonicalOutput22640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22641 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22641 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound22641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22641.moment H = canonicalOutput22641.moment H :=
  canonical_of_padded canonicalInput22641 canonicalOutput22641 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput22642 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 3, -2], ![0, 0, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput22642 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1219⟩

theorem canonicalSound22642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22642.moment H = canonicalOutput22642.moment H :=
  canonical_of_padded canonicalInput22642 canonicalOutput22642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22643 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput22643 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1361⟩

theorem canonicalSound22643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22643.moment H = canonicalOutput22643.moment H :=
  canonical_of_padded canonicalInput22643 canonicalOutput22643 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22644 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22644 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound22644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22644.moment H = canonicalOutput22644.moment H :=
  canonical_of_padded canonicalInput22644 canonicalOutput22644 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22645 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 3, -2], ![1, -1, -2, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput22645 : ExponentCode := normalNode11041

theorem canonicalSound22645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22645.moment H = canonicalOutput22645.moment H :=
  canonical_of_padded canonicalInput22645 canonicalOutput22645 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22646 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 4, -3], ![0, 1, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput22646 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1298⟩

theorem canonicalSound22646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22646.moment H = canonicalOutput22646.moment H :=
  canonical_of_padded canonicalInput22646 canonicalOutput22646 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput22647 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput22647 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩

theorem canonicalSound22647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22647.moment H = canonicalOutput22647.moment H :=
  canonical_of_padded canonicalInput22647 canonicalOutput22647 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput22648 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput22648 : ExponentCode := normalNode11040

theorem canonicalSound22648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22648.moment H = canonicalOutput22648.moment H :=
  canonical_of_padded canonicalInput22648 canonicalOutput22648 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22649 : ExponentCode := ⟨4, 4, ![![-1, 1, -2, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 4, -3]]⟩

def canonicalOutput22649 : ExponentCode := normalNode10344

theorem canonicalSound22649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22649.moment H = canonicalOutput22649.moment H :=
  canonical_of_padded canonicalInput22649 canonicalOutput22649 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput22650 : ExponentCode := ⟨3, 4, ![![-1, 1, -2, 2], ![0, 0, -2, 2], ![1, -1, 4, -4]]⟩

def canonicalOutput22650 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node139⟩

theorem canonicalSound22650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22650.moment H = canonicalOutput22650.moment H :=
  canonical_of_padded canonicalInput22650 canonicalOutput22650 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22651 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput22651 : ExponentCode := normalNode11043

theorem canonicalSound22651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22651.moment H = canonicalOutput22651.moment H :=
  canonical_of_padded canonicalInput22651 canonicalOutput22651 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22652 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22652 : ExponentCode := normalNode11139

theorem canonicalSound22652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22652.moment H = canonicalOutput22652.moment H :=
  canonical_of_padded canonicalInput22652 canonicalOutput22652 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22653 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput22653 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1216⟩

theorem canonicalSound22653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22653.moment H = canonicalOutput22653.moment H :=
  canonical_of_padded canonicalInput22653 canonicalOutput22653 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput22654 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 3, -2]]⟩

def canonicalOutput22654 : ExponentCode := normalNode11187

theorem canonicalSound22654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22654.moment H = canonicalOutput22654.moment H :=
  canonical_of_padded canonicalInput22654 canonicalOutput22654 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22655 : ExponentCode := ⟨5, 4, ![![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput22655 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1201⟩

theorem canonicalSound22655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22655.moment H = canonicalOutput22655.moment H :=
  canonical_of_padded canonicalInput22655 canonicalOutput22655 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation190⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
