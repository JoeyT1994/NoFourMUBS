import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21632 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![2, -2, 0], ![-2, 4, -2]]⟩

def canonicalOutput21632 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1529⟩

theorem canonicalSound21632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21632.moment H = canonicalOutput21632.moment H :=
  canonical_of_padded canonicalInput21632 canonicalOutput21632 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21633 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, 0, 0], ![1, 0, -1], ![0, -3, 3], ![0, 4, -4]]⟩

def canonicalOutput21633 : ExponentCode := normalNode10776

theorem canonicalSound21633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21633.moment H = canonicalOutput21633.moment H :=
  canonical_of_padded canonicalInput21633 canonicalOutput21633 (by decide) (by decide)
    ⟨false, true, canonicalPermutation212, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21634 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, 0, 0], ![1, 0, -1], ![1, -3, 2], ![-1, 4, -3]]⟩

def canonicalOutput21634 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node736⟩

theorem canonicalSound21634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21634.moment H = canonicalOutput21634.moment H :=
  canonical_of_padded canonicalInput21634 canonicalOutput21634 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21635 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, 4, -4], ![0, -3, 3], ![1, 0, -1]]⟩

def canonicalOutput21635 : ExponentCode := normalNode10776

theorem canonicalSound21635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21635.moment H = canonicalOutput21635.moment H :=
  canonical_of_padded canonicalInput21635 canonicalOutput21635 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21636 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, 4, -4], ![1, -3, 2], ![0, 0, 0]]⟩

def canonicalOutput21636 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node270⟩

theorem canonicalSound21636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21636.moment H = canonicalOutput21636.moment H :=
  canonical_of_padded canonicalInput21636 canonicalOutput21636 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21637 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![1, -1, 0], ![0, -1, 1], ![-1, -1, 2], ![1, 4, -5]]⟩

def canonicalOutput21637 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2375⟩

theorem canonicalSound21637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21637.moment H = canonicalOutput21637.moment H :=
  canonical_of_padded canonicalInput21637 canonicalOutput21637 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21638 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, -1, 3], ![1, 4, -5]]⟩

def canonicalOutput21638 : ExponentCode := normalNode2987

theorem canonicalSound21638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21638.moment H = canonicalOutput21638.moment H :=
  canonical_of_padded canonicalInput21638 canonicalOutput21638 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21639 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-1, -1, 2], ![0, 4, -4]]⟩

def canonicalOutput21639 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2658⟩

theorem canonicalSound21639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21639.moment H = canonicalOutput21639.moment H :=
  canonical_of_padded canonicalInput21639 canonicalOutput21639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21640 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![1, 0, -1], ![0, 0, 0], ![0, -3, 3], ![0, 4, -4]]⟩

def canonicalOutput21640 : ExponentCode := normalNode10776

theorem canonicalSound21640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21640.moment H = canonicalOutput21640.moment H :=
  canonical_of_padded canonicalInput21640 canonicalOutput21640 (by decide) (by decide)
    ⟨false, true, canonicalPermutation213, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21641 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![1, 0, -1], ![0, 0, 0], ![1, -3, 2], ![-1, 4, -3]]⟩

def canonicalOutput21641 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node736⟩

theorem canonicalSound21641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21641.moment H = canonicalOutput21641.moment H :=
  canonical_of_padded canonicalInput21641 canonicalOutput21641 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21642 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![-1, -3, 4], ![0, 4, -4]]⟩

def canonicalOutput21642 : ExponentCode := normalNode6261

theorem canonicalSound21642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21642.moment H = canonicalOutput21642.moment H :=
  canonical_of_padded canonicalInput21642 canonicalOutput21642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21643 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![0, -3, 3], ![-1, 4, -3]]⟩

def canonicalOutput21643 : ExponentCode := normalNode10774

theorem canonicalSound21643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21643.moment H = canonicalOutput21643.moment H :=
  canonical_of_padded canonicalInput21643 canonicalOutput21643 (by decide) (by decide)
    ⟨false, true, canonicalPermutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21644 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![1, -3, 2], ![-2, 4, -2]]⟩

def canonicalOutput21644 : ExponentCode := normalNode968

theorem canonicalSound21644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21644.moment H = canonicalOutput21644.moment H :=
  canonical_of_padded canonicalInput21644 canonicalOutput21644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21645 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, 1, -1], ![-1, 1, 0], ![1, -1, 0], ![0, 3, -3], ![1, -4, 3]]⟩

def canonicalOutput21645 : ExponentCode := normalNode6263

theorem canonicalSound21645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21645.moment H = canonicalOutput21645.moment H :=
  canonical_of_padded canonicalInput21645 canonicalOutput21645 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation381, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21646 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![0, 1, -1], ![-1, 3, -2], ![1, -4, 3], ![1, 0, -1]]⟩

def canonicalOutput21646 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node736⟩

theorem canonicalSound21646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21646.moment H = canonicalOutput21646.moment H :=
  canonical_of_padded canonicalInput21646 canonicalOutput21646 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21647 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, 1, -1], ![0, 1, -1], ![0, -1, 1], ![0, 3, -3], ![1, -4, 3]]⟩

def canonicalOutput21647 : ExponentCode := normalNode6286

theorem canonicalSound21647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21647.moment H = canonicalOutput21647.moment H :=
  canonical_of_padded canonicalInput21647 canonicalOutput21647 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21648 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![-1, 3, -2], ![1, -4, 3]]⟩

def canonicalOutput21648 : ExponentCode := normalNode6262

theorem canonicalSound21648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21648.moment H = canonicalOutput21648.moment H :=
  canonical_of_padded canonicalInput21648 canonicalOutput21648 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21649 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![0, 3, -3], ![0, -4, 4]]⟩

def canonicalOutput21649 : ExponentCode := normalNode10775

theorem canonicalSound21649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21649.moment H = canonicalOutput21649.moment H :=
  canonical_of_padded canonicalInput21649 canonicalOutput21649 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21650 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![0, 1, -1], ![0, 3, -3], ![0, -4, 4], ![1, 0, -1]]⟩

def canonicalOutput21650 : ExponentCode := normalNode10776

theorem canonicalSound21650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21650.moment H = canonicalOutput21650.moment H :=
  canonical_of_padded canonicalInput21650 canonicalOutput21650 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21651 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![0, 1, -1], ![0, 3, -3], ![1, -4, 3], ![0, 0, 0]]⟩

def canonicalOutput21651 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node255⟩

theorem canonicalSound21651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21651.moment H = canonicalOutput21651.moment H :=
  canonical_of_padded canonicalInput21651 canonicalOutput21651 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21652 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -3, 3], ![0, -1, 0, 3, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput21652 : ExponentCode := normalNode9901

theorem canonicalSound21652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21652.moment H = canonicalOutput21652.moment H :=
  canonical_of_padded canonicalInput21652 canonicalOutput21652 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput21653 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -3, 3], ![0, 0, -2, 1, 1], ![0, 0, 0, 2, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput21653 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound21653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21653.moment H = canonicalOutput21653.moment H :=
  canonical_of_padded canonicalInput21653 canonicalOutput21653 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21654 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -3, 3], ![0, 0, -2, 1, 1], ![0, 0, 1, 1, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput21654 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound21654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21654.moment H = canonicalOutput21654.moment H :=
  canonical_of_padded canonicalInput21654 canonicalOutput21654 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21655 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -3, 3], ![0, 0, 0, 3, -3], ![0, 1, -2, 0, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput21655 : ExponentCode := normalNode5545

theorem canonicalSound21655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21655.moment H = canonicalOutput21655.moment H :=
  canonical_of_padded canonicalInput21655 canonicalOutput21655 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput21656 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -3, 3], ![0, 0, 0, 3, -3], ![0, 1, -1, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput21656 : ExponentCode := normalNode10674

theorem canonicalSound21656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21656.moment H = canonicalOutput21656.moment H :=
  canonical_of_padded canonicalInput21656 canonicalOutput21656 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput21657 : ExponentCode := ⟨5, 6, ![![-1, 0, 1, -2, 1, 1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 1, 1, -2], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0]]⟩

def canonicalOutput21657 : ExponentCode := normalNode10467

theorem canonicalSound21657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21657.moment H = canonicalOutput21657.moment H :=
  canonical_of_padded canonicalInput21657 canonicalOutput21657 (by decide) (by decide)
    ⟨true, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput21658 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -2, 2], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput21658 : ExponentCode := normalNode10273

theorem canonicalSound21658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21658.moment H = canonicalOutput21658.moment H :=
  canonical_of_padded canonicalInput21658 canonicalOutput21658 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput21659 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -2, 2], ![0, -1, 0, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput21659 : ExponentCode := normalNode10274

theorem canonicalSound21659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21659.moment H = canonicalOutput21659.moment H :=
  canonical_of_padded canonicalInput21659 canonicalOutput21659 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput21660 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -2, 2], ![0, 0, -2, 1, 1], ![0, 0, 0, 2, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput21660 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound21660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21660.moment H = canonicalOutput21660.moment H :=
  canonical_of_padded canonicalInput21660 canonicalOutput21660 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21661 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -2, 2], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput21661 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node983⟩

theorem canonicalSound21661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21661.moment H = canonicalOutput21661.moment H :=
  canonical_of_padded canonicalInput21661 canonicalOutput21661 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21662 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -2, 2], ![0, 0, 0, 2, -2], ![0, 1, -2, 0, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput21662 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1744⟩

theorem canonicalSound21662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21662.moment H = canonicalOutput21662.moment H :=
  canonical_of_padded canonicalInput21662 canonicalOutput21662 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput21663 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -2, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput21663 : ExponentCode := normalNode2367

theorem canonicalSound21663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21663.moment H = canonicalOutput21663.moment H :=
  canonical_of_padded canonicalInput21663 canonicalOutput21663 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput21664 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -2, 2], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput21664 : ExponentCode := normalNode2507

theorem canonicalSound21664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21664.moment H = canonicalOutput21664.moment H :=
  canonical_of_padded canonicalInput21664 canonicalOutput21664 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput21665 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -2, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput21665 : ExponentCode := normalNode5240

theorem canonicalSound21665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21665.moment H = canonicalOutput21665.moment H :=
  canonical_of_padded canonicalInput21665 canonicalOutput21665 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput21666 : ExponentCode := ⟨3, 6, ![![-1, 0, 1, -1, 0, 1], ![-1, 1, -1, 0, 2, -1], ![2, -1, 0, 1, -2, 0]]⟩

def canonicalOutput21666 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2662⟩

theorem canonicalSound21666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21666.moment H = canonicalOutput21666.moment H :=
  canonical_of_padded canonicalInput21666 canonicalOutput21666 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21667 : ExponentCode := ⟨4, 6, ![![-1, 0, 1, -1, 0, 1], ![0, 1, -1, 0, 1, -1], ![1, -1, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21667 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2792⟩

theorem canonicalSound21667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21667.moment H = canonicalOutput21667.moment H :=
  canonical_of_padded canonicalInput21667 canonicalOutput21667 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput21668 : ExponentCode := ⟨4, 6, ![![-1, 0, 1, -1, 0, 1], ![0, 1, -1, 0, 1, -1], ![1, 0, -1, 1, -1, 0], ![0, -1, 1, 0, 0, 0]]⟩

def canonicalOutput21668 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3404⟩

theorem canonicalSound21668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21668.moment H = canonicalOutput21668.moment H :=
  canonical_of_padded canonicalInput21668 canonicalOutput21668 (by decide) (by decide)
    ⟨true, true, canonicalPermutation214, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput21669 : ExponentCode := ⟨4, 6, ![![-1, 0, 1, -1, 0, 1], ![0, 1, -1, 0, 1, -1], ![2, 0, 1, 0, -2, -1], ![-1, -1, -1, 1, 1, 1]]⟩

def canonicalOutput21669 : ExponentCode := normalNode10183

theorem canonicalSound21669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21669.moment H = canonicalOutput21669.moment H :=
  canonical_of_padded canonicalInput21669 canonicalOutput21669 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21670 : ExponentCode := ⟨4, 6, ![![-1, 0, 1, -1, 0, 1], ![0, 1, -1, 0, 1, -1], ![2, 1, 0, 0, -2, -1], ![-1, -2, 0, 1, 1, 1]]⟩

def canonicalOutput21670 : ExponentCode := normalNode10181

theorem canonicalSound21670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21670.moment H = canonicalOutput21670.moment H :=
  canonical_of_padded canonicalInput21670 canonicalOutput21670 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21671 : ExponentCode := ⟨3, 6, ![![-1, 0, 1, -1, 0, 1], ![0, 2, 0, -1, 1, -2], ![1, -2, -1, 2, -1, 1]]⟩

def canonicalOutput21671 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2661⟩

theorem canonicalSound21671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21671.moment H = canonicalOutput21671.moment H :=
  canonical_of_padded canonicalInput21671 canonicalOutput21671 (by decide) (by decide)
    ⟨true, false, canonicalPermutation199, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21672 : ExponentCode := ⟨4, 6, ![![-1, 0, 1, -1, 0, 1], ![1, 2, 0, -1, 0, -2], ![1, -1, 0, 1, -1, 0], ![-1, -1, -1, 1, 1, 1]]⟩

def canonicalOutput21672 : ExponentCode := normalNode10183

theorem canonicalSound21672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21672.moment H = canonicalOutput21672.moment H :=
  canonical_of_padded canonicalInput21672 canonicalOutput21672 (by decide) (by decide)
    ⟨true, false, canonicalPermutation215, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput21673 : ExponentCode := ⟨4, 6, ![![-1, 0, 1, -1, 0, 1], ![1, 2, 0, -1, 0, -2], ![1, 0, -1, 1, -1, 0], ![-1, -2, 0, 1, 1, 1]]⟩

def canonicalOutput21673 : ExponentCode := normalNode10190

theorem canonicalSound21673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21673.moment H = canonicalOutput21673.moment H :=
  canonical_of_padded canonicalInput21673 canonicalOutput21673 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21674 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 0, 2, -1], ![0, 1, -1, -1, 1], ![0, 1, 0, 1, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput21674 : ExponentCode := normalNode10812

theorem canonicalSound21674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21674.moment H = canonicalOutput21674.moment H :=
  canonical_of_padded canonicalInput21674 canonicalOutput21674 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput21675 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 0, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput21675 : ExponentCode := normalNode9460

theorem canonicalSound21675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21675.moment H = canonicalOutput21675.moment H :=
  canonical_of_padded canonicalInput21675 canonicalOutput21675 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput21676 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 1, -1, 1], ![0, 0, -1, 2, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput21676 : ExponentCode := normalNode10424

theorem canonicalSound21676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21676.moment H = canonicalOutput21676.moment H :=
  canonical_of_padded canonicalInput21676 canonicalOutput21676 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21677 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 1, -1, 1], ![0, 0, -1, 2, -1], ![0, 2, -1, -1, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput21677 : ExponentCode := normalNode10871

theorem canonicalSound21677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21677.moment H = canonicalOutput21677.moment H :=
  canonical_of_padded canonicalInput21677 canonicalOutput21677 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput21678 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, 2, -2]]⟩

def canonicalOutput21678 : ExponentCode := normalNode10781

theorem canonicalSound21678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21678.moment H = canonicalOutput21678.moment H :=
  canonical_of_padded canonicalInput21678 canonicalOutput21678 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21679 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, -1, 1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput21679 : ExponentCode := normalNode8487

theorem canonicalSound21679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21679.moment H = canonicalOutput21679.moment H :=
  canonical_of_padded canonicalInput21679 canonicalOutput21679 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21680 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 2, -2], ![0, 1, -1, -1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput21680 : ExponentCode := normalNode10804

theorem canonicalSound21680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21680.moment H = canonicalOutput21680.moment H :=
  canonical_of_padded canonicalInput21680 canonicalOutput21680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21681 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 1, 0, 0], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput21681 : ExponentCode := normalNode8526

theorem canonicalSound21681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21681.moment H = canonicalOutput21681.moment H :=
  canonical_of_padded canonicalInput21681 canonicalOutput21681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21682 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 1, 1, -1], ![0, 1, -2, 0, 1], ![0, 1, 0, 1, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput21682 : ExponentCode := normalNode8770

theorem canonicalSound21682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21682.moment H = canonicalOutput21682.moment H :=
  canonical_of_padded canonicalInput21682 canonicalOutput21682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21683 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 1, 1, -1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput21683 : ExponentCode := normalNode8534

theorem canonicalSound21683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21683.moment H = canonicalOutput21683.moment H :=
  canonical_of_padded canonicalInput21683 canonicalOutput21683 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21684 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 1, 1, -1], ![0, 1, -1, -1, 1], ![0, 1, 0, 1, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput21684 : ExponentCode := normalNode8535

theorem canonicalSound21684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21684.moment H = canonicalOutput21684.moment H :=
  canonical_of_padded canonicalInput21684 canonicalOutput21684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21685 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput21685 : ExponentCode := normalNode8528

theorem canonicalSound21685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21685.moment H = canonicalOutput21685.moment H :=
  canonical_of_padded canonicalInput21685 canonicalOutput21685 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput21686 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -1, 1], ![0, 0, -2, 1, 1], ![0, 0, 0, 2, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput21686 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound21686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21686.moment H = canonicalOutput21686.moment H :=
  canonical_of_padded canonicalInput21686 canonicalOutput21686 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput21687 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -1, 1], ![0, 0, -2, 2, 0], ![0, 0, 0, -2, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput21687 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound21687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21687.moment H = canonicalOutput21687.moment H :=
  canonical_of_padded canonicalInput21687 canonicalOutput21687 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21688 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -1, 1], ![0, 0, -1, -1, 2], ![0, 0, -1, 3, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput21688 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1123⟩

theorem canonicalSound21688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21688.moment H = canonicalOutput21688.moment H :=
  canonical_of_padded canonicalInput21688 canonicalOutput21688 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput21689 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -1, 1], ![0, 0, -1, -1, 2], ![0, 0, 0, 2, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput21689 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound21689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21689.moment H = canonicalOutput21689.moment H :=
  canonical_of_padded canonicalInput21689 canonicalOutput21689 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput21690 : ExponentCode := ⟨4, 5, ![![-1, 0, 1, -1, 1], ![0, 0, -1, 3, -2], ![0, 0, 0, -2, 2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput21690 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound21690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21690.moment H = canonicalOutput21690.moment H :=
  canonical_of_padded canonicalInput21690 canonicalOutput21690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput21691 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![0, 1, -1, -1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput21691 : ExponentCode := normalNode10172

theorem canonicalSound21691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21691.moment H = canonicalOutput21691.moment H :=
  canonical_of_padded canonicalInput21691 canonicalOutput21691 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation168⟩ (by decide +kernel) hH

def canonicalInput21692 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, 0, 1, 1, -2], ![0, 0, -1, 0, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput21692 : ExponentCode := normalNode10162

theorem canonicalSound21692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21692.moment H = canonicalOutput21692.moment H :=
  canonical_of_padded canonicalInput21692 canonicalOutput21692 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput21693 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![0, 0, -1, 2, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput21693 : ExponentCode := normalNode10812

theorem canonicalSound21693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21693.moment H = canonicalOutput21693.moment H :=
  canonical_of_padded canonicalInput21693 canonicalOutput21693 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21694 : ExponentCode := ⟨5, 5, ![![-1, 0, 1, -1, 1], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -2, 0, 0, 1]]⟩

def canonicalOutput21694 : ExponentCode := normalNode8537

theorem canonicalSound21694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21694.moment H = canonicalOutput21694.moment H :=
  canonical_of_padded canonicalInput21694 canonicalOutput21694 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21695 : ExponentCode := ⟨3, 4, ![![-1, 0, 1, 0], ![-3, 2, 2, -1], ![4, -2, -3, 1]]⟩

def canonicalOutput21695 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node250⟩

theorem canonicalSound21695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21695.moment H = canonicalOutput21695.moment H :=
  canonical_of_padded canonicalInput21695 canonicalOutput21695 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
