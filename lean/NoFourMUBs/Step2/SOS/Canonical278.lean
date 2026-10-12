import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17792 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, -1, -2, 2, 1], ![0, 2, 0, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17792 : ExponentCode := normalNode2575

theorem canonicalSound17792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17792.moment H = canonicalOutput17792.moment H :=
  canonical_of_padded canonicalInput17792 canonicalOutput17792 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput17793 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, -1, -2, 2, 1], ![0, 2, 0, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17793 : ExponentCode := normalNode2554

theorem canonicalSound17793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17793.moment H = canonicalOutput17793.moment H :=
  canonical_of_padded canonicalInput17793 canonicalOutput17793 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17794 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, -1, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17794 : ExponentCode := normalNode10075

theorem canonicalSound17794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17794.moment H = canonicalOutput17794.moment H :=
  canonical_of_padded canonicalInput17794 canonicalOutput17794 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput17795 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, -1, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17795 : ExponentCode := normalNode8391

theorem canonicalSound17795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17795.moment H = canonicalOutput17795.moment H :=
  canonical_of_padded canonicalInput17795 canonicalOutput17795 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput17796 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, -1, 2], ![0, -1, -1, 2, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17796 : ExponentCode := normalNode8712

theorem canonicalSound17796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17796.moment H = canonicalOutput17796.moment H :=
  canonical_of_padded canonicalInput17796 canonicalOutput17796 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput17797 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17797 : ExponentCode := normalNode4396

theorem canonicalSound17797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17797.moment H = canonicalOutput17797.moment H :=
  canonical_of_padded canonicalInput17797 canonicalOutput17797 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17798 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput17798 : ExponentCode := normalNode3991

theorem canonicalSound17798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17798.moment H = canonicalOutput17798.moment H :=
  canonical_of_padded canonicalInput17798 canonicalOutput17798 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17799 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, -1, -1, 2, 0], ![0, 2, -1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17799 : ExponentCode := normalNode3994

theorem canonicalSound17799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17799.moment H = canonicalOutput17799.moment H :=
  canonical_of_padded canonicalInput17799 canonicalOutput17799 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput17800 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, -1, -1, 2, 0], ![0, 2, -1, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17800 : ExponentCode := normalNode4385

theorem canonicalSound17800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17800.moment H = canonicalOutput17800.moment H :=
  canonical_of_padded canonicalInput17800 canonicalOutput17800 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17801 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, -1, -1, 3, -1], ![0, 1, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17801 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1942⟩

theorem canonicalSound17801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17801.moment H = canonicalOutput17801.moment H :=
  canonical_of_padded canonicalInput17801 canonicalOutput17801 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17802 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput17802 : ExponentCode := normalNode4311

theorem canonicalSound17802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17802.moment H = canonicalOutput17802.moment H :=
  canonical_of_padded canonicalInput17802 canonicalOutput17802 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput17803 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, -1, 0, 2, -1], ![0, 1, 1, 0, -2], ![1, 1, -2, -1, 1]]⟩

def canonicalOutput17803 : ExponentCode := normalNode2761

theorem canonicalSound17803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17803.moment H = canonicalOutput17803.moment H :=
  canonical_of_padded canonicalInput17803 canonicalOutput17803 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17804 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, -1, 1, 2, -2], ![0, 2, 0, -1, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput17804 : ExponentCode := normalNode4312

theorem canonicalSound17804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17804.moment H = canonicalOutput17804.moment H :=
  canonical_of_padded canonicalInput17804 canonicalOutput17804 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17805 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 1, 1], ![0, 0, 0, 2, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput17805 : ExponentCode := normalNode2737

theorem canonicalSound17805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17805.moment H = canonicalOutput17805.moment H :=
  canonical_of_padded canonicalInput17805 canonicalOutput17805 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput17806 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 1, 1], ![0, 0, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput17806 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound17806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17806.moment H = canonicalOutput17806.moment H :=
  canonical_of_padded canonicalInput17806 canonicalOutput17806 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17807 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 1, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17807 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1819⟩

theorem canonicalSound17807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17807.moment H = canonicalOutput17807.moment H :=
  canonical_of_padded canonicalInput17807 canonicalOutput17807 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17808 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 1, 1], ![0, 1, 0, 2, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17808 : ExponentCode := normalNode5226

theorem canonicalSound17808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17808.moment H = canonicalOutput17808.moment H :=
  canonical_of_padded canonicalInput17808 canonicalOutput17808 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput17809 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17809 : ExponentCode := normalNode8384

theorem canonicalSound17809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17809.moment H = canonicalOutput17809.moment H :=
  canonical_of_padded canonicalInput17809 canonicalOutput17809 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput17810 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, -1, 0], ![0, 2, 0, 0, -2], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput17810 : ExponentCode := normalNode10458

theorem canonicalSound17810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17810.moment H = canonicalOutput17810.moment H :=
  canonical_of_padded canonicalInput17810 canonicalOutput17810 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput17811 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput17811 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2824⟩

theorem canonicalSound17811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17811.moment H = canonicalOutput17811.moment H :=
  canonical_of_padded canonicalInput17811 canonicalOutput17811 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17812 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput17812 : ExponentCode := normalNode9005

theorem canonicalSound17812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17812.moment H = canonicalOutput17812.moment H :=
  canonical_of_padded canonicalInput17812 canonicalOutput17812 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17813 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput17813 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2082⟩

theorem canonicalSound17813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17813.moment H = canonicalOutput17813.moment H :=
  canonical_of_padded canonicalInput17813 canonicalOutput17813 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17814 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput17814 : ExponentCode := normalNode8748

theorem canonicalSound17814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17814.moment H = canonicalOutput17814.moment H :=
  canonical_of_padded canonicalInput17814 canonicalOutput17814 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput17815 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17815 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2752⟩

theorem canonicalSound17815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17815.moment H = canonicalOutput17815.moment H :=
  canonical_of_padded canonicalInput17815 canonicalOutput17815 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17816 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17816 : ExponentCode := normalNode9000

theorem canonicalSound17816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17816.moment H = canonicalOutput17816.moment H :=
  canonical_of_padded canonicalInput17816 canonicalOutput17816 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17817 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 2, 0], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17817 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1840⟩

theorem canonicalSound17817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17817.moment H = canonicalOutput17817.moment H :=
  canonical_of_padded canonicalInput17817 canonicalOutput17817 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput17818 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 2, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17818 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1840⟩

theorem canonicalSound17818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17818.moment H = canonicalOutput17818.moment H :=
  canonical_of_padded canonicalInput17818 canonicalOutput17818 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17819 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 3, -1], ![0, 0, 1, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput17819 : ExponentCode := normalNode10238

theorem canonicalSound17819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17819.moment H = canonicalOutput17819.moment H :=
  canonical_of_padded canonicalInput17819 canonicalOutput17819 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17820 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 3, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput17820 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1982⟩

theorem canonicalSound17820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17820.moment H = canonicalOutput17820.moment H :=
  canonical_of_padded canonicalInput17820 canonicalOutput17820 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17821 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput17821 : ExponentCode := normalNode8044

theorem canonicalSound17821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17821.moment H = canonicalOutput17821.moment H :=
  canonical_of_padded canonicalInput17821 canonicalOutput17821 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput17822 : ExponentCode := ⟨5, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput17822 : ExponentCode := normalNode9227

theorem canonicalSound17822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17822.moment H = canonicalOutput17822.moment H :=
  canonical_of_padded canonicalInput17822 canonicalOutput17822 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput17823 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17823 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2541⟩

theorem canonicalSound17823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17823.moment H = canonicalOutput17823.moment H :=
  canonical_of_padded canonicalInput17823 canonicalOutput17823 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17824 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -2, 3, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17824 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2719⟩

theorem canonicalSound17824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17824.moment H = canonicalOutput17824.moment H :=
  canonical_of_padded canonicalInput17824 canonicalOutput17824 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17825 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput17825 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2185⟩

theorem canonicalSound17825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17825.moment H = canonicalOutput17825.moment H :=
  canonical_of_padded canonicalInput17825 canonicalOutput17825 (by decide) (by decide)
    ⟨true, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17826 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, -1, 2], ![0, 0, 0, 2, -2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput17826 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1521⟩

theorem canonicalSound17826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17826.moment H = canonicalOutput17826.moment H :=
  canonical_of_padded canonicalInput17826 canonicalOutput17826 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17827 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, -1, 2], ![0, 1, -1, 1, -1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput17827 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2161⟩

theorem canonicalSound17827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17827.moment H = canonicalOutput17827.moment H :=
  canonical_of_padded canonicalInput17827 canonicalOutput17827 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17828 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, -1, 2], ![0, 1, 0, 2, -3], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17828 : ExponentCode := normalNode10704

theorem canonicalSound17828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17828.moment H = canonicalOutput17828.moment H :=
  canonical_of_padded canonicalInput17828 canonicalOutput17828 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput17829 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17829 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2781⟩

theorem canonicalSound17829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17829.moment H = canonicalOutput17829.moment H :=
  canonical_of_padded canonicalInput17829 canonicalOutput17829 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17830 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, 1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17830 : ExponentCode := normalNode9074

theorem canonicalSound17830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17830.moment H = canonicalOutput17830.moment H :=
  canonical_of_padded canonicalInput17830 canonicalOutput17830 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17831 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, 1, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput17831 : ExponentCode := normalNode2741

theorem canonicalSound17831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17831.moment H = canonicalOutput17831.moment H :=
  canonical_of_padded canonicalInput17831 canonicalOutput17831 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17832 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, 2, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17832 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1841⟩

theorem canonicalSound17832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17832.moment H = canonicalOutput17832.moment H :=
  canonical_of_padded canonicalInput17832 canonicalOutput17832 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput17833 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17833 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1738⟩

theorem canonicalSound17833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17833.moment H = canonicalOutput17833.moment H :=
  canonical_of_padded canonicalInput17833 canonicalOutput17833 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput17834 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17834 : ExponentCode := normalNode10294

theorem canonicalSound17834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17834.moment H = canonicalOutput17834.moment H :=
  canonical_of_padded canonicalInput17834 canonicalOutput17834 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput17835 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput17835 : ExponentCode := normalNode10294

theorem canonicalSound17835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17835.moment H = canonicalOutput17835.moment H :=
  canonical_of_padded canonicalInput17835 canonicalOutput17835 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17836 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput17836 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1738⟩

theorem canonicalSound17836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17836.moment H = canonicalOutput17836.moment H :=
  canonical_of_padded canonicalInput17836 canonicalOutput17836 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17837 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, 3, -2], ![0, 0, 0, -2, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput17837 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1956⟩

theorem canonicalSound17837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17837.moment H = canonicalOutput17837.moment H :=
  canonical_of_padded canonicalInput17837 canonicalOutput17837 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17838 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, 3, -2], ![0, 0, 1, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17838 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1979⟩

theorem canonicalSound17838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17838.moment H = canonicalOutput17838.moment H :=
  canonical_of_padded canonicalInput17838 canonicalOutput17838 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput17839 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, -1, 3, -2], ![0, 1, 0, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17839 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2757⟩

theorem canonicalSound17839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17839.moment H = canonicalOutput17839.moment H :=
  canonical_of_padded canonicalInput17839 canonicalOutput17839 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput17840 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, -2, 2], ![0, 0, 0, 3, -3], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput17840 : ExponentCode := normalNode3483

theorem canonicalSound17840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17840.moment H = canonicalOutput17840.moment H :=
  canonical_of_padded canonicalInput17840 canonicalOutput17840 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17841 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, -2, 2], ![0, 0, 1, 3, -4], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput17841 : ExponentCode := normalNode3188

theorem canonicalSound17841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17841.moment H = canonicalOutput17841.moment H :=
  canonical_of_padded canonicalInput17841 canonicalOutput17841 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17842 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, -1, 1], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17842 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2857⟩

theorem canonicalSound17842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17842.moment H = canonicalOutput17842.moment H :=
  canonical_of_padded canonicalInput17842 canonicalOutput17842 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput17843 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput17843 : ExponentCode := normalNode10325

theorem canonicalSound17843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17843.moment H = canonicalOutput17843.moment H :=
  canonical_of_padded canonicalInput17843 canonicalOutput17843 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17844 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 1, -1], ![0, 1, -2, 1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17844 : ExponentCode := normalNode9098

theorem canonicalSound17844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17844.moment H = canonicalOutput17844.moment H :=
  canonical_of_padded canonicalInput17844 canonicalOutput17844 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17845 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 1, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput17845 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2438⟩

theorem canonicalSound17845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17845.moment H = canonicalOutput17845.moment H :=
  canonical_of_padded canonicalInput17845 canonicalOutput17845 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17846 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 1, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput17846 : ExponentCode := normalNode10326

theorem canonicalSound17846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17846.moment H = canonicalOutput17846.moment H :=
  canonical_of_padded canonicalInput17846 canonicalOutput17846 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17847 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput17847 : ExponentCode := normalNode10326

theorem canonicalSound17847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17847.moment H = canonicalOutput17847.moment H :=
  canonical_of_padded canonicalInput17847 canonicalOutput17847 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput17848 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 2, -2], ![0, 0, 1, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput17848 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2232⟩

theorem canonicalSound17848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17848.moment H = canonicalOutput17848.moment H :=
  canonical_of_padded canonicalInput17848 canonicalOutput17848 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput17849 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, -2, 0, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput17849 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩

theorem canonicalSound17849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17849.moment H = canonicalOutput17849.moment H :=
  canonical_of_padded canonicalInput17849 canonicalOutput17849 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput17850 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput17850 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1839⟩

theorem canonicalSound17850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17850.moment H = canonicalOutput17850.moment H :=
  canonical_of_padded canonicalInput17850 canonicalOutput17850 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput17851 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput17851 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2439⟩

theorem canonicalSound17851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17851.moment H = canonicalOutput17851.moment H :=
  canonical_of_padded canonicalInput17851 canonicalOutput17851 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput17852 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput17852 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound17852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17852.moment H = canonicalOutput17852.moment H :=
  canonical_of_padded canonicalInput17852 canonicalOutput17852 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17853 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput17853 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1737⟩

theorem canonicalSound17853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17853.moment H = canonicalOutput17853.moment H :=
  canonical_of_padded canonicalInput17853 canonicalOutput17853 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput17854 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput17854 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound17854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17854.moment H = canonicalOutput17854.moment H :=
  canonical_of_padded canonicalInput17854 canonicalOutput17854 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput17855 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, -1, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput17855 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2439⟩

theorem canonicalSound17855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17855.moment H = canonicalOutput17855.moment H :=
  canonical_of_padded canonicalInput17855 canonicalOutput17855 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
