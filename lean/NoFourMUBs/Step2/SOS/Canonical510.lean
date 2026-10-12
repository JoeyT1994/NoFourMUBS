import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32640 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![-1, 0, 2, -1], ![-1, -2, 1, 2]]⟩

def canonicalOutput32640 : ExponentCode := normalNode2553

theorem canonicalSound32640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32640.moment H = canonicalOutput32640.moment H :=
  canonical_of_padded canonicalInput32640 canonicalOutput32640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32641 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![0, -2, -1, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32641 : ExponentCode := normalNode3139

theorem canonicalSound32641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32641.moment H = canonicalOutput32641.moment H :=
  canonical_of_padded canonicalInput32641 canonicalOutput32641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32642 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1], ![0, -2, 0, 2], ![-2, 0, 3, -1]]⟩

def canonicalOutput32642 : ExponentCode := normalNode3363

theorem canonicalSound32642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32642.moment H = canonicalOutput32642.moment H :=
  canonical_of_padded canonicalInput32642 canonicalOutput32642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32643 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, -1, 3, -2]]⟩

def canonicalOutput32643 : ExponentCode := normalNode1322

theorem canonicalSound32643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32643.moment H = canonicalOutput32643.moment H :=
  canonical_of_padded canonicalInput32643 canonicalOutput32643 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32644 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 2, -1]]⟩

def canonicalOutput32644 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2979⟩

theorem canonicalSound32644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32644.moment H = canonicalOutput32644.moment H :=
  canonical_of_padded canonicalInput32644 canonicalOutput32644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32645 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, -2, 4], ![0, -2, 4, -2]]⟩

def canonicalOutput32645 : ExponentCode := normalNode3159

theorem canonicalSound32645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32645.moment H = canonicalOutput32645.moment H :=
  canonical_of_padded canonicalInput32645 canonicalOutput32645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32646 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -2, 3, -1]]⟩

def canonicalOutput32646 : ExponentCode := normalNode3394

theorem canonicalSound32646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32646.moment H = canonicalOutput32646.moment H :=
  canonical_of_padded canonicalInput32646 canonicalOutput32646 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32647 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 2, 0]]⟩

def canonicalOutput32647 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3157⟩

theorem canonicalSound32647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32647.moment H = canonicalOutput32647.moment H :=
  canonical_of_padded canonicalInput32647 canonicalOutput32647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32648 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 3, -1], ![0, -2, -1, 3]]⟩

def canonicalOutput32648 : ExponentCode := normalNode3387

theorem canonicalSound32648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32648.moment H = canonicalOutput32648.moment H :=
  canonical_of_padded canonicalInput32648 canonicalOutput32648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32649 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, -3, 1, 2]]⟩

def canonicalOutput32649 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2976⟩

theorem canonicalSound32649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32649.moment H = canonicalOutput32649.moment H :=
  canonical_of_padded canonicalInput32649 canonicalOutput32649 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput32650 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![0, -3, 0, 3]]⟩

def canonicalOutput32650 : ExponentCode := normalNode5897

theorem canonicalSound32650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32650.moment H = canonicalOutput32650.moment H :=
  canonical_of_padded canonicalInput32650 canonicalOutput32650 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput32651 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, -1, 4], ![-1, 0, 3, -2]]⟩

def canonicalOutput32651 : ExponentCode := normalNode1313

theorem canonicalSound32651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32651.moment H = canonicalOutput32651.moment H :=
  canonical_of_padded canonicalInput32651 canonicalOutput32651 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32652 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 2, -1]]⟩

def canonicalOutput32652 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2976⟩

theorem canonicalSound32652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32652.moment H = canonicalOutput32652.moment H :=
  canonical_of_padded canonicalInput32652 canonicalOutput32652 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32653 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, -2, 4], ![-1, -1, 4, -2]]⟩

def canonicalOutput32653 : ExponentCode := normalNode7277

theorem canonicalSound32653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32653.moment H = canonicalOutput32653.moment H :=
  canonical_of_padded canonicalInput32653 canonicalOutput32653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32654 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput32654 : ExponentCode := normalNode7679

theorem canonicalSound32654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32654.moment H = canonicalOutput32654.moment H :=
  canonical_of_padded canonicalInput32654 canonicalOutput32654 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32655 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 2, 0]]⟩

def canonicalOutput32655 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3193⟩

theorem canonicalSound32655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32655.moment H = canonicalOutput32655.moment H :=
  canonical_of_padded canonicalInput32655 canonicalOutput32655 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput32656 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![-1, -2, 4, -1]]⟩

def canonicalOutput32656 : ExponentCode := normalNode1322

theorem canonicalSound32656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32656.moment H = canonicalOutput32656.moment H :=
  canonical_of_padded canonicalInput32656 canonicalOutput32656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32657 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![-1, -2, 3, 0]]⟩

def canonicalOutput32657 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2979⟩

theorem canonicalSound32657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32657.moment H = canonicalOutput32657.moment H :=
  canonical_of_padded canonicalInput32657 canonicalOutput32657 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32658 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 1, 0], ![-1, -2, 1, 2]]⟩

def canonicalOutput32658 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3043⟩

theorem canonicalSound32658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32658.moment H = canonicalOutput32658.moment H :=
  canonical_of_padded canonicalInput32658 canonicalOutput32658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32659 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 3, -2], ![-1, -2, -1, 4]]⟩

def canonicalOutput32659 : ExponentCode := normalNode1313

theorem canonicalSound32659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32659.moment H = canonicalOutput32659.moment H :=
  canonical_of_padded canonicalInput32659 canonicalOutput32659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32660 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -2, -2, 4], ![-2, 0, 4, -2]]⟩

def canonicalOutput32660 : ExponentCode := normalNode3156

theorem canonicalSound32660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32660.moment H = canonicalOutput32660.moment H :=
  canonical_of_padded canonicalInput32660 canonicalOutput32660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32661 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -2, -1, 3], ![-2, 0, 3, -1]]⟩

def canonicalOutput32661 : ExponentCode := normalNode3387

theorem canonicalSound32661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32661.moment H = canonicalOutput32661.moment H :=
  canonical_of_padded canonicalInput32661 canonicalOutput32661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32662 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 0, 2, 0]]⟩

def canonicalOutput32662 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3155⟩

theorem canonicalSound32662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32662.moment H = canonicalOutput32662.moment H :=
  canonical_of_padded canonicalInput32662 canonicalOutput32662 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32663 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -1, -2, 3], ![-2, -1, 4, -1]]⟩

def canonicalOutput32663 : ExponentCode := normalNode1313

theorem canonicalSound32663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32663.moment H = canonicalOutput32663.moment H :=
  canonical_of_padded canonicalInput32663 canonicalOutput32663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32664 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -1, -1, 2], ![-2, -1, 3, 0]]⟩

def canonicalOutput32664 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2976⟩

theorem canonicalSound32664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32664.moment H = canonicalOutput32664.moment H :=
  canonical_of_padded canonicalInput32664 canonicalOutput32664 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32665 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -1, 3, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput32665 : ExponentCode := normalNode1322

theorem canonicalSound32665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32665.moment H = canonicalOutput32665.moment H :=
  canonical_of_padded canonicalInput32665 canonicalOutput32665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32666 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, -2, 4], ![0, -2, 3, -1]]⟩

def canonicalOutput32666 : ExponentCode := normalNode3145

theorem canonicalSound32666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32666.moment H = canonicalOutput32666.moment H :=
  canonical_of_padded canonicalInput32666 canonicalOutput32666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32667 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0]]⟩

def canonicalOutput32667 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3002⟩

theorem canonicalSound32667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32667.moment H = canonicalOutput32667.moment H :=
  canonical_of_padded canonicalInput32667 canonicalOutput32667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32668 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, -2, -1, 3]]⟩

def canonicalOutput32668 : ExponentCode := normalNode1776

theorem canonicalSound32668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32668.moment H = canonicalOutput32668.moment H :=
  canonical_of_padded canonicalInput32668 canonicalOutput32668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput32669 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 3, -1], ![0, -2, -2, 4]]⟩

def canonicalOutput32669 : ExponentCode := normalNode3141

theorem canonicalSound32669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32669.moment H = canonicalOutput32669.moment H :=
  canonical_of_padded canonicalInput32669 canonicalOutput32669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32670 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, -2, 4], ![-1, -1, 3, -1]]⟩

def canonicalOutput32670 : ExponentCode := normalNode7271

theorem canonicalSound32670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32670.moment H = canonicalOutput32670.moment H :=
  canonical_of_padded canonicalInput32670 canonicalOutput32670 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32671 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0]]⟩

def canonicalOutput32671 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3301⟩

theorem canonicalSound32671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32671.moment H = canonicalOutput32671.moment H :=
  canonical_of_padded canonicalInput32671 canonicalOutput32671 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput32672 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -3, 4], ![-1, -2, 4, -1]]⟩

def canonicalOutput32672 : ExponentCode := normalNode1334

theorem canonicalSound32672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32672.moment H = canonicalOutput32672.moment H :=
  canonical_of_padded canonicalInput32672 canonicalOutput32672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32673 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![-1, -2, 3, 0]]⟩

def canonicalOutput32673 : ExponentCode := normalNode1885

theorem canonicalSound32673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32673.moment H = canonicalOutput32673.moment H :=
  canonical_of_padded canonicalInput32673 canonicalOutput32673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32674 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, -2, 2, 1]]⟩

def canonicalOutput32674 : ExponentCode := normalNode2916

theorem canonicalSound32674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32674.moment H = canonicalOutput32674.moment H :=
  canonical_of_padded canonicalInput32674 canonicalOutput32674 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32675 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, -2, -2, 5]]⟩

def canonicalOutput32675 : ExponentCode := normalNode1058

theorem canonicalSound32675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32675.moment H = canonicalOutput32675.moment H :=
  canonical_of_padded canonicalInput32675 canonicalOutput32675 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32676 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, -3, 4], ![-2, -1, 4, -1]]⟩

def canonicalOutput32676 : ExponentCode := normalNode1333

theorem canonicalSound32676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32676.moment H = canonicalOutput32676.moment H :=
  canonical_of_padded canonicalInput32676 canonicalOutput32676 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32677 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-2, -1, 3, 0]]⟩

def canonicalOutput32677 : ExponentCode := normalNode1882

theorem canonicalSound32677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32677.moment H = canonicalOutput32677.moment H :=
  canonical_of_padded canonicalInput32677 canonicalOutput32677 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32678 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, -1, 2], ![-2, -1, 2, 1]]⟩

def canonicalOutput32678 : ExponentCode := normalNode2918

theorem canonicalSound32678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32678.moment H = canonicalOutput32678.moment H :=
  canonical_of_padded canonicalInput32678 canonicalOutput32678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32679 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-2, -1, -2, 5]]⟩

def canonicalOutput32679 : ExponentCode := normalNode1061

theorem canonicalSound32679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32679.moment H = canonicalOutput32679.moment H :=
  canonical_of_padded canonicalInput32679 canonicalOutput32679 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32680 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, -2, 4, 0]]⟩

def canonicalOutput32680 : ExponentCode := normalNode463

theorem canonicalSound32680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32680.moment H = canonicalOutput32680.moment H :=
  canonical_of_padded canonicalInput32680 canonicalOutput32680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32681 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -1, 0], ![0, 0, -3, 3], ![-2, -2, 4, 0]]⟩

def canonicalOutput32681 : ExponentCode := normalNode463

theorem canonicalSound32681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32681.moment H = canonicalOutput32681.moment H :=
  canonical_of_padded canonicalInput32681 canonicalOutput32681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32682 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 0, -4, 4], ![-2, -2, 4, 0]]⟩

def canonicalOutput32682 : ExponentCode := normalNode467

theorem canonicalSound32682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32682.moment H = canonicalOutput32682.moment H :=
  canonical_of_padded canonicalInput32682 canonicalOutput32682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32683 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, -2, 3, 1]]⟩

def canonicalOutput32683 : ExponentCode := normalNode949

theorem canonicalSound32683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32683.moment H = canonicalOutput32683.moment H :=
  canonical_of_padded canonicalInput32683 canonicalOutput32683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32684 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -1, 3, -2], ![0, 1, -3, 2]]⟩

def canonicalOutput32684 : ExponentCode := normalNode4149

theorem canonicalSound32684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32684.moment H = canonicalOutput32684.moment H :=
  canonical_of_padded canonicalInput32684 canonicalOutput32684 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32685 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32685 : ExponentCode := normalNode4300

theorem canonicalSound32685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32685.moment H = canonicalOutput32685.moment H :=
  canonical_of_padded canonicalInput32685 canonicalOutput32685 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32686 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput32686 : ExponentCode := normalNode5303

theorem canonicalSound32686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32686.moment H = canonicalOutput32686.moment H :=
  canonical_of_padded canonicalInput32686 canonicalOutput32686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32687 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32687 : ExponentCode := normalNode9280

theorem canonicalSound32687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32687.moment H = canonicalOutput32687.moment H :=
  canonical_of_padded canonicalInput32687 canonicalOutput32687 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32688 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![-1, 0, 3, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput32688 : ExponentCode := normalNode9794

theorem canonicalSound32688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32688.moment H = canonicalOutput32688.moment H :=
  canonical_of_padded canonicalInput32688 canonicalOutput32688 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32689 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -1, 3, -2], ![0, 1, -3, 2]]⟩

def canonicalOutput32689 : ExponentCode := normalNode4150

theorem canonicalSound32689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32689.moment H = canonicalOutput32689.moment H :=
  canonical_of_padded canonicalInput32689 canonicalOutput32689 (by decide) (by decide)
    ⟨false, false, canonicalPermutation171, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput32690 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32690 : ExponentCode := normalNode4301

theorem canonicalSound32690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32690.moment H = canonicalOutput32690.moment H :=
  canonical_of_padded canonicalInput32690 canonicalOutput32690 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32691 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput32691 : ExponentCode := normalNode5304

theorem canonicalSound32691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32691.moment H = canonicalOutput32691.moment H :=
  canonical_of_padded canonicalInput32691 canonicalOutput32691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32692 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32692 : ExponentCode := normalNode9281

theorem canonicalSound32692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32692.moment H = canonicalOutput32692.moment H :=
  canonical_of_padded canonicalInput32692 canonicalOutput32692 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32693 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-1, 1, 1, -1], ![-1, 0, 3, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput32693 : ExponentCode := normalNode9793

theorem canonicalSound32693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32693.moment H = canonicalOutput32693.moment H :=
  canonical_of_padded canonicalInput32693 canonicalOutput32693 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32694 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32694 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2949⟩

theorem canonicalSound32694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32694.moment H = canonicalOutput32694.moment H :=
  canonical_of_padded canonicalInput32694 canonicalOutput32694 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput32695 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput32695 : ExponentCode := normalNode4231

theorem canonicalSound32695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32695.moment H = canonicalOutput32695.moment H :=
  canonical_of_padded canonicalInput32695 canonicalOutput32695 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32696 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput32696 : ExponentCode := normalNode4298

theorem canonicalSound32696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32696.moment H = canonicalOutput32696.moment H :=
  canonical_of_padded canonicalInput32696 canonicalOutput32696 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32697 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput32697 : ExponentCode := normalNode5024

theorem canonicalSound32697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32697.moment H = canonicalOutput32697.moment H :=
  canonical_of_padded canonicalInput32697 canonicalOutput32697 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32698 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput32698 : ExponentCode := normalNode5271

theorem canonicalSound32698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32698.moment H = canonicalOutput32698.moment H :=
  canonical_of_padded canonicalInput32698 canonicalOutput32698 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32699 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 2, -2]]⟩

def canonicalOutput32699 : ExponentCode := normalNode3868

theorem canonicalSound32699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32699.moment H = canonicalOutput32699.moment H :=
  canonical_of_padded canonicalInput32699 canonicalOutput32699 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput32700 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 0, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32700 : ExponentCode := normalNode1724

theorem canonicalSound32700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32700.moment H = canonicalOutput32700.moment H :=
  canonical_of_padded canonicalInput32700 canonicalOutput32700 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput32701 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput32701 : ExponentCode := normalNode9267

theorem canonicalSound32701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32701.moment H = canonicalOutput32701.moment H :=
  canonical_of_padded canonicalInput32701 canonicalOutput32701 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32702 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput32702 : ExponentCode := normalNode8804

theorem canonicalSound32702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32702.moment H = canonicalOutput32702.moment H :=
  canonical_of_padded canonicalInput32702 canonicalOutput32702 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation319, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput32703 : ExponentCode := ⟨6, 4, ![![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, 0, 0], ![-1, 0, 3, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput32703 : ExponentCode := normalNode9809

theorem canonicalSound32703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32703.moment H = canonicalOutput32703.moment H :=
  canonical_of_padded canonicalInput32703 canonicalOutput32703 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
