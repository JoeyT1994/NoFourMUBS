import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12672 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, -3, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12672 : ExponentCode := normalNode6090

theorem canonicalSound12672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12672.moment H = canonicalOutput12672.moment H :=
  canonical_of_padded canonicalInput12672 canonicalOutput12672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput12673 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 3, -3, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput12673 : ExponentCode := normalNode7055

theorem canonicalSound12673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12673.moment H = canonicalOutput12673.moment H :=
  canonical_of_padded canonicalInput12673 canonicalOutput12673 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12674 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, -2, 0], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12674 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1028⟩

theorem canonicalSound12674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12674.moment H = canonicalOutput12674.moment H :=
  canonical_of_padded canonicalInput12674 canonicalOutput12674 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput12675 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, -2, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12675 : ExponentCode := normalNode4898

theorem canonicalSound12675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12675.moment H = canonicalOutput12675.moment H :=
  canonical_of_padded canonicalInput12675 canonicalOutput12675 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12676 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, -2, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12676 : ExponentCode := normalNode4898

theorem canonicalSound12676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12676.moment H = canonicalOutput12676.moment H :=
  canonical_of_padded canonicalInput12676 canonicalOutput12676 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12677 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 3, -2, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12677 : ExponentCode := normalNode9442

theorem canonicalSound12677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12677.moment H = canonicalOutput12677.moment H :=
  canonical_of_padded canonicalInput12677 canonicalOutput12677 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12678 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 3, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12678 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1028⟩

theorem canonicalSound12678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12678.moment H = canonicalOutput12678.moment H :=
  canonical_of_padded canonicalInput12678 canonicalOutput12678 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12679 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, -1, -1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12679 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1104⟩

theorem canonicalSound12679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12679.moment H = canonicalOutput12679.moment H :=
  canonical_of_padded canonicalInput12679 canonicalOutput12679 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput12680 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, -1, -1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12680 : ExponentCode := normalNode6206

theorem canonicalSound12680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12680.moment H = canonicalOutput12680.moment H :=
  canonical_of_padded canonicalInput12680 canonicalOutput12680 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12681 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, -1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12681 : ExponentCode := normalNode4867

theorem canonicalSound12681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12681.moment H = canonicalOutput12681.moment H :=
  canonical_of_padded canonicalInput12681 canonicalOutput12681 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12682 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 3, -1, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12682 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1131

theorem canonicalSound12682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12682.moment H = canonicalOutput12682.moment H :=
  canonical_of_padded canonicalInput12682 canonicalOutput12682 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12683 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 3, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12683 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1104⟩

theorem canonicalSound12683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12683.moment H = canonicalOutput12683.moment H :=
  canonical_of_padded canonicalInput12683 canonicalOutput12683 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12684 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, 0, -2], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput12684 : ExponentCode := normalNode4015

theorem canonicalSound12684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12684.moment H = canonicalOutput12684.moment H :=
  canonical_of_padded canonicalInput12684 canonicalOutput12684 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12685 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 3, 0, -2], ![0, 0, -2, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput12685 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code896

theorem canonicalSound12685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12685.moment H = canonicalOutput12685.moment H :=
  canonical_of_padded canonicalInput12685 canonicalOutput12685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12686 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, 0, -2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12686 : ExponentCode := normalNode4898

theorem canonicalSound12686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12686.moment H = canonicalOutput12686.moment H :=
  canonical_of_padded canonicalInput12686 canonicalOutput12686 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput12687 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, 0, -2], ![0, 0, 0, 0], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12687 : ExponentCode := normalNode9442

theorem canonicalSound12687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12687.moment H = canonicalOutput12687.moment H :=
  canonical_of_padded canonicalInput12687 canonicalOutput12687 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput12688 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, 0, -2], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput12688 : ExponentCode := normalNode6204

theorem canonicalSound12688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12688.moment H = canonicalOutput12688.moment H :=
  canonical_of_padded canonicalInput12688 canonicalOutput12688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12689 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 3, 0, -2], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput12689 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code222

theorem canonicalSound12689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12689.moment H = canonicalOutput12689.moment H :=
  canonical_of_padded canonicalInput12689 canonicalOutput12689 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12690 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 3, 0, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12690 : ExponentCode := normalNode9442

theorem canonicalSound12690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12690.moment H = canonicalOutput12690.moment H :=
  canonical_of_padded canonicalInput12690 canonicalOutput12690 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12691 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 3, 1, -3], ![0, 0, -2, 2], ![2, 0, -1, -1]]⟩

def canonicalOutput12691 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code592

theorem canonicalSound12691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12691.moment H = canonicalOutput12691.moment H :=
  canonical_of_padded canonicalInput12691 canonicalOutput12691 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput12692 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![-1, 3, 1, -3], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12692 : ExponentCode := normalNode6090

theorem canonicalSound12692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12692.moment H = canonicalOutput12692.moment H :=
  canonical_of_padded canonicalInput12692 canonicalOutput12692 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12693 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 3, 1, -3], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput12693 : ExponentCode := normalNode9444

theorem canonicalSound12693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12693.moment H = canonicalOutput12693.moment H :=
  canonical_of_padded canonicalInput12693 canonicalOutput12693 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12694 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![-1, 3, 1, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput12694 : ExponentCode := normalNode7055

theorem canonicalSound12694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12694.moment H = canonicalOutput12694.moment H :=
  canonical_of_padded canonicalInput12694 canonicalOutput12694 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12695 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput12695 : ExponentCode := normalNode9961

theorem canonicalSound12695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12695.moment H = canonicalOutput12695.moment H :=
  canonical_of_padded canonicalInput12695 canonicalOutput12695 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12696 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, -2, 2], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput12696 : ExponentCode := normalNode7057

theorem canonicalSound12696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12696.moment H = canonicalOutput12696.moment H :=
  canonical_of_padded canonicalInput12696 canonicalOutput12696 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12697 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, -2, 2], ![1, 1, 0, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput12697 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1255⟩

theorem canonicalSound12697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12697.moment H = canonicalOutput12697.moment H :=
  canonical_of_padded canonicalInput12697 canonicalOutput12697 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12698 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, -2, 2], ![1, 1, 1, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput12698 : ExponentCode := normalNode6220

theorem canonicalSound12698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12698.moment H = canonicalOutput12698.moment H :=
  canonical_of_padded canonicalInput12698 canonicalOutput12698 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12699 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput12699 : ExponentCode := normalNode6173

theorem canonicalSound12699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12699.moment H = canonicalOutput12699.moment H :=
  canonical_of_padded canonicalInput12699 canonicalOutput12699 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12700 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12700 : ExponentCode := normalNode6153

theorem canonicalSound12700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12700.moment H = canonicalOutput12700.moment H :=
  canonical_of_padded canonicalInput12700 canonicalOutput12700 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12701 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![-1, 2, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput12701 : ExponentCode := normalNode6184

theorem canonicalSound12701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12701.moment H = canonicalOutput12701.moment H :=
  canonical_of_padded canonicalInput12701 canonicalOutput12701 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12702 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput12702 : ExponentCode := normalNode6188

theorem canonicalSound12702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12702.moment H = canonicalOutput12702.moment H :=
  canonical_of_padded canonicalInput12702 canonicalOutput12702 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12703 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![-1, 2, 1, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12703 : ExponentCode := normalNode6201

theorem canonicalSound12703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12703.moment H = canonicalOutput12703.moment H :=
  canonical_of_padded canonicalInput12703 canonicalOutput12703 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12704 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![-1, 3, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12704 : ExponentCode := normalNode6090

theorem canonicalSound12704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12704.moment H = canonicalOutput12704.moment H :=
  canonical_of_padded canonicalInput12704 canonicalOutput12704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput12705 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![0, 3, 0, -3]]⟩

def canonicalOutput12705 : ExponentCode := normalNode6227

theorem canonicalSound12705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12705.moment H = canonicalOutput12705.moment H :=
  canonical_of_padded canonicalInput12705 canonicalOutput12705 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12706 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 1, -2, 0], ![0, 2, 0, -2]]⟩

def canonicalOutput12706 : ExponentCode := normalNode6226

theorem canonicalSound12706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12706.moment H = canonicalOutput12706.moment H :=
  canonical_of_padded canonicalInput12706 canonicalOutput12706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12707 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput12707 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2731⟩

theorem canonicalSound12707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12707.moment H = canonicalOutput12707.moment H :=
  canonical_of_padded canonicalInput12707 canonicalOutput12707 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput12708 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 2, 1, -3]]⟩

def canonicalOutput12708 : ExponentCode := normalNode6232

theorem canonicalSound12708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12708.moment H = canonicalOutput12708.moment H :=
  canonical_of_padded canonicalInput12708 canonicalOutput12708 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12709 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![0, 2, -2, 0]]⟩

def canonicalOutput12709 : ExponentCode := normalNode6234

theorem canonicalSound12709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12709.moment H = canonicalOutput12709.moment H :=
  canonical_of_padded canonicalInput12709 canonicalOutput12709 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12710 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12710 : ExponentCode := normalNode6229

theorem canonicalSound12710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12710.moment H = canonicalOutput12710.moment H :=
  canonical_of_padded canonicalInput12710 canonicalOutput12710 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12711 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 0, -2, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput12711 : ExponentCode := normalNode6235

theorem canonicalSound12711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12711.moment H = canonicalOutput12711.moment H :=
  canonical_of_padded canonicalInput12711 canonicalOutput12711 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12712 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 3, 0, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput12712 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩

theorem canonicalSound12712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12712.moment H = canonicalOutput12712.moment H :=
  canonical_of_padded canonicalInput12712 canonicalOutput12712 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12713 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 3, 1, -4], ![0, 0, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput12713 : ExponentCode := normalNode6224

theorem canonicalSound12713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12713.moment H = canonicalOutput12713.moment H :=
  canonical_of_padded canonicalInput12713 canonicalOutput12713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12714 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput12714 : ExponentCode := normalNode7056

theorem canonicalSound12714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12714.moment H = canonicalOutput12714.moment H :=
  canonical_of_padded canonicalInput12714 canonicalOutput12714 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12715 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, 0, -1, 0], ![0, 0, -1, 1]]⟩

def canonicalOutput12715 : ExponentCode := normalNode6224

theorem canonicalSound12715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12715.moment H = canonicalOutput12715.moment H :=
  canonical_of_padded canonicalInput12715 canonicalOutput12715 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12716 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 0, 0], ![0, 1, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput12716 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node209⟩

theorem canonicalSound12716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12716.moment H = canonicalOutput12716.moment H :=
  canonical_of_padded canonicalInput12716 canonicalOutput12716 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12717 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 0, 0], ![0, 2, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput12717 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node169⟩

theorem canonicalSound12717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12717.moment H = canonicalOutput12717.moment H :=
  canonical_of_padded canonicalInput12717 canonicalOutput12717 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12718 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 0, 0], ![0, 3, 0, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput12718 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩

theorem canonicalSound12718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12718.moment H = canonicalOutput12718.moment H :=
  canonical_of_padded canonicalInput12718 canonicalOutput12718 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12719 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput12719 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2177⟩

theorem canonicalSound12719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12719.moment H = canonicalOutput12719.moment H :=
  canonical_of_padded canonicalInput12719 canonicalOutput12719 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput12720 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![-1, 2, 0, -1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput12720 : ExponentCode := normalNode6196

theorem canonicalSound12720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12720.moment H = canonicalOutput12720.moment H :=
  canonical_of_padded canonicalInput12720 canonicalOutput12720 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12721 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput12721 : ExponentCode := normalNode11070

theorem canonicalSound12721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12721.moment H = canonicalOutput12721.moment H :=
  canonical_of_padded canonicalInput12721 canonicalOutput12721 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12722 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput12722 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1216⟩

theorem canonicalSound12722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12722.moment H = canonicalOutput12722.moment H :=
  canonical_of_padded canonicalInput12722 canonicalOutput12722 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12723 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput12723 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1046⟩

theorem canonicalSound12723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12723.moment H = canonicalOutput12723.moment H :=
  canonical_of_padded canonicalInput12723 canonicalOutput12723 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput12724 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput12724 : ExponentCode := normalNode6236

theorem canonicalSound12724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12724.moment H = canonicalOutput12724.moment H :=
  canonical_of_padded canonicalInput12724 canonicalOutput12724 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12725 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput12725 : ExponentCode := normalNode6230

theorem canonicalSound12725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12725.moment H = canonicalOutput12725.moment H :=
  canonical_of_padded canonicalInput12725 canonicalOutput12725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12726 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12726 : ExponentCode := normalNode6232

theorem canonicalSound12726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12726.moment H = canonicalOutput12726.moment H :=
  canonical_of_padded canonicalInput12726 canonicalOutput12726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12727 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![0, 2, 0, -2]]⟩

def canonicalOutput12727 : ExponentCode := normalNode6239

theorem canonicalSound12727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12727.moment H = canonicalOutput12727.moment H :=
  canonical_of_padded canonicalInput12727 canonicalOutput12727 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12728 : ExponentCode := ⟨5, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 2, -3, 1]]⟩

def canonicalOutput12728 : ExponentCode := normalNode6232

theorem canonicalSound12728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12728.moment H = canonicalOutput12728.moment H :=
  canonical_of_padded canonicalInput12728 canonicalOutput12728 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12729 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput12729 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1046⟩

theorem canonicalSound12729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12729.moment H = canonicalOutput12729.moment H :=
  canonical_of_padded canonicalInput12729 canonicalOutput12729 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput12730 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput12730 : ExponentCode := normalNode7076

theorem canonicalSound12730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12730.moment H = canonicalOutput12730.moment H :=
  canonical_of_padded canonicalInput12730 canonicalOutput12730 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12731 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput12731 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1083⟩

theorem canonicalSound12731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12731.moment H = canonicalOutput12731.moment H :=
  canonical_of_padded canonicalInput12731 canonicalOutput12731 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12732 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput12732 : ExponentCode := normalNode7040

theorem canonicalSound12732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12732.moment H = canonicalOutput12732.moment H :=
  canonical_of_padded canonicalInput12732 canonicalOutput12732 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12733 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 3, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12733 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩

theorem canonicalSound12733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12733.moment H = canonicalOutput12733.moment H :=
  canonical_of_padded canonicalInput12733 canonicalOutput12733 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12734 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput12734 : ExponentCode := normalNode10350

theorem canonicalSound12734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12734.moment H = canonicalOutput12734.moment H :=
  canonical_of_padded canonicalInput12734 canonicalOutput12734 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12735 : ExponentCode := ⟨4, 4, ![![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput12735 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1337⟩

theorem canonicalSound12735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12735.moment H = canonicalOutput12735.moment H :=
  canonical_of_padded canonicalInput12735 canonicalOutput12735 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
