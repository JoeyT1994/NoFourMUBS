import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15680 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![-1, 2, 0, -1, 0], ![0, 0, 2, -1, -1], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput15680 : ExponentCode := normalNode1495

theorem canonicalSound15680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15680.moment H = canonicalOutput15680.moment H :=
  canonical_of_padded canonicalInput15680 canonicalOutput15680 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15681 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, 1, -1], ![2, 0, 0, 0, -2], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput15681 : ExponentCode := normalNode2851

theorem canonicalSound15681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15681.moment H = canonicalOutput15681.moment H :=
  canonical_of_padded canonicalInput15681 canonicalOutput15681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput15682 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![-1, 0, 2, 1, -2], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput15682 : ExponentCode := normalNode1565

theorem canonicalSound15682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15682.moment H = canonicalOutput15682.moment H :=
  canonical_of_padded canonicalInput15682 canonicalOutput15682 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15683 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, -2, 1], ![-1, 1, 2, 0, -2], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput15683 : ExponentCode := normalNode1498

theorem canonicalSound15683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15683.moment H = canonicalOutput15683.moment H :=
  canonical_of_padded canonicalInput15683 canonicalOutput15683 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15684 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, 0, -1, -1, 0], ![-1, 1, 2, -1, -1]]⟩

def canonicalOutput15684 : ExponentCode := normalNode2168

theorem canonicalSound15684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15684.moment H = canonicalOutput15684.moment H :=
  canonical_of_padded canonicalInput15684 canonicalOutput15684 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput15685 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![2, 0, -1, 0, -1], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput15685 : ExponentCode := normalNode2850

theorem canonicalSound15685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15685.moment H = canonicalOutput15685.moment H :=
  canonical_of_padded canonicalInput15685 canonicalOutput15685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput15686 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -2, 0], ![2, 0, -1, 0, -1], ![-1, 1, 1, 1, -2]]⟩

def canonicalOutput15686 : ExponentCode := normalNode3690

theorem canonicalSound15686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15686.moment H = canonicalOutput15686.moment H :=
  canonical_of_padded canonicalInput15686 canonicalOutput15686 (by decide) (by decide)
    ⟨false, true, canonicalPermutation117, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15687 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, -1, 0, -1], ![-1, 0, 2, 1, -2]]⟩

def canonicalOutput15687 : ExponentCode := normalNode1597

theorem canonicalSound15687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15687.moment H = canonicalOutput15687.moment H :=
  canonical_of_padded canonicalInput15687 canonicalOutput15687 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput15688 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![0, 0, -1, 1, 0], ![2, 0, -1, 0, -1], ![-1, 1, 1, -2, 1], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput15688 : ExponentCode := normalNode2150

theorem canonicalSound15688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15688.moment H = canonicalOutput15688.moment H :=
  canonical_of_padded canonicalInput15688 canonicalOutput15688 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput15689 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![1, 0, -1, 0, 0], ![-1, 0, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput15689 : ExponentCode := normalNode4579

theorem canonicalSound15689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15689.moment H = canonicalOutput15689.moment H :=
  canonical_of_padded canonicalInput15689 canonicalOutput15689 (by decide) (by decide)
    ⟨false, true, canonicalPermutation118, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput15690 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 0, 1], ![1, 0, -1, 0, 0], ![-1, 1, 0, -1, 1], ![0, 1, -1, 2, -2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput15690 : ExponentCode := normalNode1584

theorem canonicalSound15690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15690.moment H = canonicalOutput15690.moment H :=
  canonical_of_padded canonicalInput15690 canonicalOutput15690 (by decide) (by decide)
    ⟨false, true, canonicalPermutation119, canonicalPermutation72⟩ (by decide +kernel) hH

def canonicalInput15691 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, 0, 0, 1, -1], ![-1, 0, 1, -1, 1], ![1, 1, -2, -1, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput15691 : ExponentCode := normalNode2199

theorem canonicalSound15691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15691.moment H = canonicalOutput15691.moment H :=
  canonical_of_padded canonicalInput15691 canonicalOutput15691 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput15692 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15692 : ExponentCode := normalNode10414

theorem canonicalSound15692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15692.moment H = canonicalOutput15692.moment H :=
  canonical_of_padded canonicalInput15692 canonicalOutput15692 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15693 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15693 : ExponentCode := normalNode8387

theorem canonicalSound15693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15693.moment H = canonicalOutput15693.moment H :=
  canonical_of_padded canonicalInput15693 canonicalOutput15693 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation61⟩ (by decide +kernel) hH

def canonicalInput15694 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15694 : ExponentCode := normalNode8360

theorem canonicalSound15694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15694.moment H = canonicalOutput15694.moment H :=
  canonical_of_padded canonicalInput15694 canonicalOutput15694 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15695 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, 1, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15695 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2630⟩

theorem canonicalSound15695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15695.moment H = canonicalOutput15695.moment H :=
  canonical_of_padded canonicalInput15695 canonicalOutput15695 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15696 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, 1, 1, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15696 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound15696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15696.moment H = canonicalOutput15696.moment H :=
  canonical_of_padded canonicalInput15696 canonicalOutput15696 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15697 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, 1, 1, 1, -3], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput15697 : ExponentCode := normalNode9413

theorem canonicalSound15697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15697.moment H = canonicalOutput15697.moment H :=
  canonical_of_padded canonicalInput15697 canonicalOutput15697 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15698 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, 2, -1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15698 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound15698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15698.moment H = canonicalOutput15698.moment H :=
  canonical_of_padded canonicalInput15698 canonicalOutput15698 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15699 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, 2, -1, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15699 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2584⟩

theorem canonicalSound15699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15699.moment H = canonicalOutput15699.moment H :=
  canonical_of_padded canonicalInput15699 canonicalOutput15699 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15700 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![0, 2, 1, -2, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput15700 : ExponentCode := normalNode8966

theorem canonicalSound15700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15700.moment H = canonicalOutput15700.moment H :=
  canonical_of_padded canonicalInput15700 canonicalOutput15700 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15701 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![1, 0, -1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput15701 : ExponentCode := normalNode3651

theorem canonicalSound15701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15701.moment H = canonicalOutput15701.moment H :=
  canonical_of_padded canonicalInput15701 canonicalOutput15701 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput15702 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 1, 0], ![1, 0, -1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, 1, -3], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput15702 : ExponentCode := normalNode3650

theorem canonicalSound15702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15702.moment H = canonicalOutput15702.moment H :=
  canonical_of_padded canonicalInput15702 canonicalOutput15702 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15703 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15703 : ExponentCode := normalNode10072

theorem canonicalSound15703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15703.moment H = canonicalOutput15703.moment H :=
  canonical_of_padded canonicalInput15703 canonicalOutput15703 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation194⟩ (by decide +kernel) hH

def canonicalInput15704 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 2, 0, -2, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput15704 : ExponentCode := normalNode10119

theorem canonicalSound15704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15704.moment H = canonicalOutput15704.moment H :=
  canonical_of_padded canonicalInput15704 canonicalOutput15704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15705 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput15705 : ExponentCode := normalNode4090

theorem canonicalSound15705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15705.moment H = canonicalOutput15705.moment H :=
  canonical_of_padded canonicalInput15705 canonicalOutput15705 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15706 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15706 : ExponentCode := normalNode8704

theorem canonicalSound15706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15706.moment H = canonicalOutput15706.moment H :=
  canonical_of_padded canonicalInput15706 canonicalOutput15706 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15707 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15707 : ExponentCode := normalNode8369

theorem canonicalSound15707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15707.moment H = canonicalOutput15707.moment H :=
  canonical_of_padded canonicalInput15707 canonicalOutput15707 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15708 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15708 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound15708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15708.moment H = canonicalOutput15708.moment H :=
  canonical_of_padded canonicalInput15708 canonicalOutput15708 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15709 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15709 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound15709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15709.moment H = canonicalOutput15709.moment H :=
  canonical_of_padded canonicalInput15709 canonicalOutput15709 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15710 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput15710 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1848⟩

theorem canonicalSound15710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15710.moment H = canonicalOutput15710.moment H :=
  canonical_of_padded canonicalInput15710 canonicalOutput15710 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15711 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 2, -2, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput15711 : ExponentCode := normalNode3968

theorem canonicalSound15711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15711.moment H = canonicalOutput15711.moment H :=
  canonical_of_padded canonicalInput15711 canonicalOutput15711 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15712 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 1, 2, -1, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput15712 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2080⟩

theorem canonicalSound15712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15712.moment H = canonicalOutput15712.moment H :=
  canonical_of_padded canonicalInput15712 canonicalOutput15712 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15713 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15713 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound15713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15713.moment H = canonicalOutput15713.moment H :=
  canonical_of_padded canonicalInput15713 canonicalOutput15713 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15714 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 2, -1, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15714 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound15714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15714.moment H = canonicalOutput15714.moment H :=
  canonical_of_padded canonicalInput15714 canonicalOutput15714 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput15715 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 2, 1, -1, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput15715 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1818⟩

theorem canonicalSound15715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15715.moment H = canonicalOutput15715.moment H :=
  canonical_of_padded canonicalInput15715 canonicalOutput15715 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15716 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![0, 2, 2, -2, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput15716 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1760⟩

theorem canonicalSound15716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15716.moment H = canonicalOutput15716.moment H :=
  canonical_of_padded canonicalInput15716 canonicalOutput15716 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15717 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 0, 2, -1], ![1, 0, 1, -1, -1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput15717 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound15717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15717.moment H = canonicalOutput15717.moment H :=
  canonical_of_padded canonicalInput15717 canonicalOutput15717 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15718 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, -1, 1], ![0, 2, -2, 1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15718 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound15718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15718.moment H = canonicalOutput15718.moment H :=
  canonical_of_padded canonicalInput15718 canonicalOutput15718 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15719 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 0, 0], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![0, 1, 1, -3, 1], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput15719 : ExponentCode := normalNode3643

theorem canonicalSound15719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15719.moment H = canonicalOutput15719.moment H :=
  canonical_of_padded canonicalInput15719 canonicalOutput15719 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15720 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 0, 0], ![0, 0, 1, -1, 0], ![0, 2, 0, 0, -2], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput15720 : ExponentCode := normalNode8294

theorem canonicalSound15720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15720.moment H = canonicalOutput15720.moment H :=
  canonical_of_padded canonicalInput15720 canonicalOutput15720 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15721 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15721 : ExponentCode := normalNode8125

theorem canonicalSound15721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15721.moment H = canonicalOutput15721.moment H :=
  canonical_of_padded canonicalInput15721 canonicalOutput15721 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15722 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 0, -2, 1, 1], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput15722 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1733⟩

theorem canonicalSound15722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15722.moment H = canonicalOutput15722.moment H :=
  canonical_of_padded canonicalInput15722 canonicalOutput15722 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15723 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, -2, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput15723 : ExponentCode := normalNode4311

theorem canonicalSound15723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15723.moment H = canonicalOutput15723.moment H :=
  canonical_of_padded canonicalInput15723 canonicalOutput15723 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15724 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15724 : ExponentCode := normalNode8688

theorem canonicalSound15724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15724.moment H = canonicalOutput15724.moment H :=
  canonical_of_padded canonicalInput15724 canonicalOutput15724 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput15725 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 1, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15725 : ExponentCode := normalNode8206

theorem canonicalSound15725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15725.moment H = canonicalOutput15725.moment H :=
  canonical_of_padded canonicalInput15725 canonicalOutput15725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15726 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, -1, 1, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15726 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2085⟩

theorem canonicalSound15726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15726.moment H = canonicalOutput15726.moment H :=
  canonical_of_padded canonicalInput15726 canonicalOutput15726 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput15727 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, -1, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15727 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2632⟩

theorem canonicalSound15727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15727.moment H = canonicalOutput15727.moment H :=
  canonical_of_padded canonicalInput15727 canonicalOutput15727 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15728 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15728 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2612⟩

theorem canonicalSound15728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15728.moment H = canonicalOutput15728.moment H :=
  canonical_of_padded canonicalInput15728 canonicalOutput15728 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15729 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, 1, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput15729 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound15729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15729.moment H = canonicalOutput15729.moment H :=
  canonical_of_padded canonicalInput15729 canonicalOutput15729 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15730 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput15730 : ExponentCode := normalNode4311

theorem canonicalSound15730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15730.moment H = canonicalOutput15730.moment H :=
  canonical_of_padded canonicalInput15730 canonicalOutput15730 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15731 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput15731 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2085⟩

theorem canonicalSound15731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15731.moment H = canonicalOutput15731.moment H :=
  canonical_of_padded canonicalInput15731 canonicalOutput15731 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput15732 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, 0, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput15732 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound15732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15732.moment H = canonicalOutput15732.moment H :=
  canonical_of_padded canonicalInput15732 canonicalOutput15732 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15733 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 2, -2, 0, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15733 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound15733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15733.moment H = canonicalOutput15733.moment H :=
  canonical_of_padded canonicalInput15733 canonicalOutput15733 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15734 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 2, -2, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15734 : ExponentCode := normalNode4310

theorem canonicalSound15734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15734.moment H = canonicalOutput15734.moment H :=
  canonical_of_padded canonicalInput15734 canonicalOutput15734 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput15735 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15735 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2587⟩

theorem canonicalSound15735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15735.moment H = canonicalOutput15735.moment H :=
  canonical_of_padded canonicalInput15735 canonicalOutput15735 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15736 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput15736 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound15736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15736.moment H = canonicalOutput15736.moment H :=
  canonical_of_padded canonicalInput15736 canonicalOutput15736 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15737 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput15737 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1773⟩

theorem canonicalSound15737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15737.moment H = canonicalOutput15737.moment H :=
  canonical_of_padded canonicalInput15737 canonicalOutput15737 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15738 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![0, 2, 1, -1, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput15738 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1773⟩

theorem canonicalSound15738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15738.moment H = canonicalOutput15738.moment H :=
  canonical_of_padded canonicalInput15738 canonicalOutput15738 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15739 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![1, 0, -2, 1, 0], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput15739 : ExponentCode := normalNode4310

theorem canonicalSound15739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15739.moment H = canonicalOutput15739.moment H :=
  canonical_of_padded canonicalInput15739 canonicalOutput15739 (by decide) (by decide)
    ⟨true, false, canonicalPermutation79, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15740 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![1, 1, -2, 0, 0], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput15740 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2085⟩

theorem canonicalSound15740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15740.moment H = canonicalOutput15740.moment H :=
  canonical_of_padded canonicalInput15740 canonicalOutput15740 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15741 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 1, -1], ![1, 1, -2, 1, -1], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput15741 : ExponentCode := normalNode4311

theorem canonicalSound15741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15741.moment H = canonicalOutput15741.moment H :=
  canonical_of_padded canonicalInput15741 canonicalOutput15741 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15742 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 2, -2], ![0, 1, -1, 0, 0], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15742 : ExponentCode := normalNode8713

theorem canonicalSound15742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15742.moment H = canonicalOutput15742.moment H :=
  canonical_of_padded canonicalInput15742 canonicalOutput15742 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput15743 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, -1, 1, 2, -2], ![0, 1, 1, -2, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput15743 : ExponentCode := normalNode3968

theorem canonicalSound15743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15743.moment H = canonicalOutput15743.moment H :=
  canonical_of_padded canonicalInput15743 canonicalOutput15743 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation3⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
