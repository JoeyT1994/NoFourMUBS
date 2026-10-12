import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24640 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput24640 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound24640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24640.moment H = canonicalOutput24640.moment H :=
  canonical_of_padded canonicalInput24640 canonicalOutput24640 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput24641 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput24641 : ExponentCode := normalNode9973

theorem canonicalSound24641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24641.moment H = canonicalOutput24641.moment H :=
  canonical_of_padded canonicalInput24641 canonicalOutput24641 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput24642 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput24642 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node263⟩

theorem canonicalSound24642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24642.moment H = canonicalOutput24642.moment H :=
  canonical_of_padded canonicalInput24642 canonicalOutput24642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24643 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, -1, 0, 1]]⟩

def canonicalOutput24643 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node243⟩

theorem canonicalSound24643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24643.moment H = canonicalOutput24643.moment H :=
  canonical_of_padded canonicalInput24643 canonicalOutput24643 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24644 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput24644 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1363⟩

theorem canonicalSound24644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24644.moment H = canonicalOutput24644.moment H :=
  canonical_of_padded canonicalInput24644 canonicalOutput24644 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24645 : ExponentCode := ⟨4, 4, ![![0, -1, -2, 3], ![0, 1, 0, -1], ![0, 1, 3, -4], ![0, -1, -1, 2]]⟩

def canonicalOutput24645 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node241⟩

theorem canonicalSound24645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24645.moment H = canonicalOutput24645.moment H :=
  canonical_of_padded canonicalInput24645 canonicalOutput24645 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24646 : ExponentCode := ⟨3, 4, ![![0, -1, -2, 3], ![0, 2, -1, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput24646 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound24646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24646.moment H = canonicalOutput24646.moment H :=
  canonical_of_padded canonicalInput24646 canonicalOutput24646 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24647 : ExponentCode := ⟨4, 5, ![![0, -1, -1, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24647 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code768

theorem canonicalSound24647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24647.moment H = canonicalOutput24647.moment H :=
  canonical_of_padded canonicalInput24647 canonicalOutput24647 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput24648 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![-1, -1, 1, 2, -1], ![0, 2, 1, -1, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput24648 : ExponentCode := normalNode2497

theorem canonicalSound24648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24648.moment H = canonicalOutput24648.moment H :=
  canonical_of_padded canonicalInput24648 canonicalOutput24648 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24649 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 0, 2], ![-1, -1, 2, 0, 0], ![0, 0, 0, 2, -2], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24649 : ExponentCode := normalNode9144

theorem canonicalSound24649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24649.moment H = canonicalOutput24649.moment H :=
  canonical_of_padded canonicalInput24649 canonicalOutput24649 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24650 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 0, 2], ![-1, -1, 2, 1, -1], ![0, 0, 0, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24650 : ExponentCode := normalNode9504

theorem canonicalSound24650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24650.moment H = canonicalOutput24650.moment H :=
  canonical_of_padded canonicalInput24650 canonicalOutput24650 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24651 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![-1, -1, 2, 1, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24651 : ExponentCode := normalNode2520

theorem canonicalSound24651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24651.moment H = canonicalOutput24651.moment H :=
  canonical_of_padded canonicalInput24651 canonicalOutput24651 (by decide) (by decide)
    ⟨true, true, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24652 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![0, -1, -1, 1, 1], ![0, 0, 2, -2, 0], ![0, 2, 0, 1, -3]]⟩

def canonicalOutput24652 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound24652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24652.moment H = canonicalOutput24652.moment H :=
  canonical_of_padded canonicalInput24652 canonicalOutput24652 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24653 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, -1, -1], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput24653 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node613⟩

theorem canonicalSound24653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24653.moment H = canonicalOutput24653.moment H :=
  canonical_of_padded canonicalInput24653 canonicalOutput24653 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24654 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput24654 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node608⟩

theorem canonicalSound24654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24654.moment H = canonicalOutput24654.moment H :=
  canonical_of_padded canonicalInput24654 canonicalOutput24654 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput24655 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput24655 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node620⟩

theorem canonicalSound24655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24655.moment H = canonicalOutput24655.moment H :=
  canonical_of_padded canonicalInput24655 canonicalOutput24655 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24656 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![0, 2, -1, 1, -2]]⟩

def canonicalOutput24656 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node517⟩

theorem canonicalSound24656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24656.moment H = canonicalOutput24656.moment H :=
  canonical_of_padded canonicalInput24656 canonicalOutput24656 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24657 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![0, -1, 1, 2, -2], ![-1, 2, 1, -1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput24657 : ExponentCode := normalNode2514

theorem canonicalSound24657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24657.moment H = canonicalOutput24657.moment H :=
  canonical_of_padded canonicalInput24657 canonicalOutput24657 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24658 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![0, -1, 1, 2, -2], ![0, 2, 1, -1, -2], ![0, 0, -1, -1, 2]]⟩

def canonicalOutput24658 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code616

theorem canonicalSound24658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24658.moment H = canonicalOutput24658.moment H :=
  canonical_of_padded canonicalInput24658 canonicalOutput24658 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24659 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![-1, 0, 0, 2, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24659 : ExponentCode := normalNode10759

theorem canonicalSound24659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24659.moment H = canonicalOutput24659.moment H :=
  canonical_of_padded canonicalInput24659 canonicalOutput24659 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24660 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![-1, 2, -1, 2, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24660 : ExponentCode := normalNode2414

theorem canonicalSound24660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24660.moment H = canonicalOutput24660.moment H :=
  canonical_of_padded canonicalInput24660 canonicalOutput24660 (by decide) (by decide)
    ⟨true, true, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24661 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, 1, -1], ![-1, 2, -1, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24661 : ExponentCode := normalNode9504

theorem canonicalSound24661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24661.moment H = canonicalOutput24661.moment H :=
  canonical_of_padded canonicalInput24661 canonicalOutput24661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput24662 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, 1, -1], ![0, 2, -1, 0, -1], ![0, 0, 0, -1, 1]]⟩

def canonicalOutput24662 : ExponentCode := normalNode10529

theorem canonicalSound24662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24662.moment H = canonicalOutput24662.moment H :=
  canonical_of_padded canonicalInput24662 canonicalOutput24662 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24663 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, 2, -2], ![-1, 2, -1, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24663 : ExponentCode := normalNode9144

theorem canonicalSound24663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24663.moment H = canonicalOutput24663.moment H :=
  canonical_of_padded canonicalInput24663 canonicalOutput24663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput24664 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, 2, -2], ![0, 2, -1, 0, -1], ![0, 0, 0, -2, 2]]⟩

def canonicalOutput24664 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound24664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24664.moment H = canonicalOutput24664.moment H :=
  canonical_of_padded canonicalInput24664 canonicalOutput24664 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24665 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 1, -2], ![0, 0, 0, -1, 1]]⟩

def canonicalOutput24665 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound24665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24665.moment H = canonicalOutput24665.moment H :=
  canonical_of_padded canonicalInput24665 canonicalOutput24665 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24666 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![0, -1, 2, 1, -2], ![-1, 2, -1, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput24666 : ExponentCode := normalNode2520

theorem canonicalSound24666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24666.moment H = canonicalOutput24666.moment H :=
  canonical_of_padded canonicalInput24666 canonicalOutput24666 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput24667 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 0, 2], ![0, -1, 2, 1, -2], ![0, 2, -1, 1, -2], ![0, 0, 0, -2, 2]]⟩

def canonicalOutput24667 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node518⟩

theorem canonicalSound24667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24667.moment H = canonicalOutput24667.moment H :=
  canonical_of_padded canonicalInput24667 canonicalOutput24667 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24668 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 1, 1], ![-1, -1, 1, 0, 1], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24668 : ExponentCode := normalNode8534

theorem canonicalSound24668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24668.moment H = canonicalOutput24668.moment H :=
  canonical_of_padded canonicalInput24668 canonicalOutput24668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24669 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 1, 1], ![-1, -1, 1, 1, 0], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput24669 : ExponentCode := normalNode10147

theorem canonicalSound24669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24669.moment H = canonicalOutput24669.moment H :=
  canonical_of_padded canonicalInput24669 canonicalOutput24669 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation198⟩ (by decide +kernel) hH

def canonicalInput24670 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput24670 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound24670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24670.moment H = canonicalOutput24670.moment H :=
  canonical_of_padded canonicalInput24670 canonicalOutput24670 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24671 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 2, -2, 0], ![0, 2, 0, 1, -3]]⟩

def canonicalOutput24671 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound24671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24671.moment H = canonicalOutput24671.moment H :=
  canonical_of_padded canonicalInput24671 canonicalOutput24671 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24672 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput24672 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound24672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24672.moment H = canonicalOutput24672.moment H :=
  canonical_of_padded canonicalInput24672 canonicalOutput24672 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24673 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput24673 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1385

theorem canonicalSound24673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24673.moment H = canonicalOutput24673.moment H :=
  canonical_of_padded canonicalInput24673 canonicalOutput24673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24674 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 1, 1], ![0, -1, 1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24674 : ExponentCode := normalNode10148

theorem canonicalSound24674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24674.moment H = canonicalOutput24674.moment H :=
  canonical_of_padded canonicalInput24674 canonicalOutput24674 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, canonicalPermutation37⟩ (by decide +kernel) hH

def canonicalInput24675 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 1, 1], ![0, -1, 1, 0, 0], ![0, 1, -1, 1, -1], ![-1, 1, 1, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput24675 : ExponentCode := normalNode10154

theorem canonicalSound24675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24675.moment H = canonicalOutput24675.moment H :=
  canonical_of_padded canonicalInput24675 canonicalOutput24675 (by decide) (by decide)
    ⟨false, false, canonicalPermutation53, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput24676 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 1, 1], ![0, -1, 1, 0, 0], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1], ![0, 0, 0, -1, 1]]⟩

def canonicalOutput24676 : ExponentCode := normalNode9326

theorem canonicalSound24676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24676.moment H = canonicalOutput24676.moment H :=
  canonical_of_padded canonicalInput24676 canonicalOutput24676 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput24677 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 1, 1], ![0, -1, 1, 1, -1], ![-1, 1, 0, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput24677 : ExponentCode := normalNode8534

theorem canonicalSound24677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24677.moment H = canonicalOutput24677.moment H :=
  canonical_of_padded canonicalInput24677 canonicalOutput24677 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput24678 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 1, 1], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput24678 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node621⟩

theorem canonicalSound24678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24678.moment H = canonicalOutput24678.moment H :=
  canonical_of_padded canonicalInput24678 canonicalOutput24678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24679 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 0, -1, 0], ![-1, 1, 1, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput24679 : ExponentCode := normalNode10148

theorem canonicalSound24679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24679.moment H = canonicalOutput24679.moment H :=
  canonical_of_padded canonicalInput24679 canonicalOutput24679 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation198⟩ (by decide +kernel) hH

def canonicalInput24680 : ExponentCode := ⟨5, 5, ![![0, -1, -1, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![0, 0, -1, 0, 1]]⟩

def canonicalOutput24680 : ExponentCode := normalNode9290

theorem canonicalSound24680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24680.moment H = canonicalOutput24680.moment H :=
  canonical_of_padded canonicalInput24680 canonicalOutput24680 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24681 : ExponentCode := ⟨4, 5, ![![0, -1, -1, 1, 1], ![0, -1, 2, 0, -1], ![0, 0, 0, -2, 2], ![0, 2, -1, 1, -2]]⟩

def canonicalOutput24681 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound24681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24681.moment H = canonicalOutput24681.moment H :=
  canonical_of_padded canonicalInput24681 canonicalOutput24681 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24682 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, -1, -1, 3], ![0, 2, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput24682 : ExponentCode := normalNode7855

theorem canonicalSound24682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24682.moment H = canonicalOutput24682.moment H :=
  canonical_of_padded canonicalInput24682 canonicalOutput24682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24683 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![-1, -1, 0, 2], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput24683 : ExponentCode := normalNode8934

theorem canonicalSound24683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24683.moment H = canonicalOutput24683.moment H :=
  canonical_of_padded canonicalInput24683 canonicalOutput24683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24684 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![-1, -1, 1, 1], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput24684 : ExponentCode := normalNode9394

theorem canonicalSound24684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24684.moment H = canonicalOutput24684.moment H :=
  canonical_of_padded canonicalInput24684 canonicalOutput24684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24685 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput24685 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2625⟩

theorem canonicalSound24685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24685.moment H = canonicalOutput24685.moment H :=
  canonical_of_padded canonicalInput24685 canonicalOutput24685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24686 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, -1, 1, 1], ![0, 2, 2, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput24686 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1100⟩

theorem canonicalSound24686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24686.moment H = canonicalOutput24686.moment H :=
  canonical_of_padded canonicalInput24686 canonicalOutput24686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24687 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, -1, 2, 0], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput24687 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound24687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24687.moment H = canonicalOutput24687.moment H :=
  canonical_of_padded canonicalInput24687 canonicalOutput24687 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24688 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, -1, 2, 0], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput24688 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound24688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24688.moment H = canonicalOutput24688.moment H :=
  canonical_of_padded canonicalInput24688 canonicalOutput24688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24689 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, -1, 2, 0], ![0, 2, 1, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput24689 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound24689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24689.moment H = canonicalOutput24689.moment H :=
  canonical_of_padded canonicalInput24689 canonicalOutput24689 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24690 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput24690 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound24690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24690.moment H = canonicalOutput24690.moment H :=
  canonical_of_padded canonicalInput24690 canonicalOutput24690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24691 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, -1, 3, -1], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput24691 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound24691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24691.moment H = canonicalOutput24691.moment H :=
  canonical_of_padded canonicalInput24691 canonicalOutput24691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24692 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput24692 : ExponentCode := normalNode7838

theorem canonicalSound24692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24692.moment H = canonicalOutput24692.moment H :=
  canonical_of_padded canonicalInput24692 canonicalOutput24692 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24693 : ExponentCode := ⟨5, 4, ![![0, -1, -1, 2], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, -1, 0, 0]]⟩

def canonicalOutput24693 : ExponentCode := normalNode10254

theorem canonicalSound24693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24693.moment H = canonicalOutput24693.moment H :=
  canonical_of_padded canonicalInput24693 canonicalOutput24693 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24694 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, -1, 2], ![0, 2, -1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput24694 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound24694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24694.moment H = canonicalOutput24694.moment H :=
  canonical_of_padded canonicalInput24694 canonicalOutput24694 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24695 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, -1, 2], ![0, 2, 0, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput24695 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound24695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24695.moment H = canonicalOutput24695.moment H :=
  canonical_of_padded canonicalInput24695 canonicalOutput24695 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24696 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, -1, 2], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput24696 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node998⟩

theorem canonicalSound24696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24696.moment H = canonicalOutput24696.moment H :=
  canonical_of_padded canonicalInput24696 canonicalOutput24696 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24697 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, -1, 2], ![0, 2, 3, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput24697 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1240⟩

theorem canonicalSound24697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24697.moment H = canonicalOutput24697.moment H :=
  canonical_of_padded canonicalInput24697 canonicalOutput24697 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24698 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, 1, 0], ![0, 2, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput24698 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1281⟩

theorem canonicalSound24698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24698.moment H = canonicalOutput24698.moment H :=
  canonical_of_padded canonicalInput24698 canonicalOutput24698 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput24699 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, 1, 0], ![0, 2, 1, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput24699 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1299⟩

theorem canonicalSound24699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24699.moment H = canonicalOutput24699.moment H :=
  canonical_of_padded canonicalInput24699 canonicalOutput24699 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24700 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, 1, 0], ![0, 2, 2, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput24700 : ExponentCode := normalNode10836

theorem canonicalSound24700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24700.moment H = canonicalOutput24700.moment H :=
  canonical_of_padded canonicalInput24700 canonicalOutput24700 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24701 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, 2, -1], ![0, 2, -2, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput24701 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound24701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24701.moment H = canonicalOutput24701.moment H :=
  canonical_of_padded canonicalInput24701 canonicalOutput24701 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput24702 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, 2, -1], ![0, 2, 0, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput24702 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound24702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24702.moment H = canonicalOutput24702.moment H :=
  canonical_of_padded canonicalInput24702 canonicalOutput24702 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24703 : ExponentCode := ⟨4, 4, ![![0, -1, -1, 2], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput24703 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound24703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24703.moment H = canonicalOutput24703.moment H :=
  canonical_of_padded canonicalInput24703 canonicalOutput24703 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
