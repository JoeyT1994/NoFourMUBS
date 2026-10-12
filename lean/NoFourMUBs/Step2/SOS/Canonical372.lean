import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23808 : ExponentCode := ⟨3, 3, ![![0, -5, 5], ![-1, 5, -4], ![1, 0, -1]]⟩

def canonicalOutput23808 : ExponentCode := normalNode5996

theorem canonicalSound23808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23808.moment H = canonicalOutput23808.moment H :=
  canonical_of_padded canonicalInput23808 canonicalOutput23808 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23809 : ExponentCode := ⟨3, 3, ![![0, -5, 5], ![0, 2, -2], ![0, 3, -3]]⟩

def canonicalOutput23809 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node7⟩

theorem canonicalSound23809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23809.moment H = canonicalOutput23809.moment H :=
  canonical_of_padded canonicalInput23809 canonicalOutput23809 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23810 : ExponentCode := ⟨2, 3, ![![0, -5, 5], ![0, 5, -5]]⟩

def canonicalOutput23810 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node1⟩

theorem canonicalSound23810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23810.moment H = canonicalOutput23810.moment H :=
  canonical_of_padded canonicalInput23810 canonicalOutput23810 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23811 : ExponentCode := ⟨5, 3, ![![0, -4, 4], ![-1, 1, 0], ![0, 1, -1], ![0, 3, -3], ![1, -1, 0]]⟩

def canonicalOutput23811 : ExponentCode := normalNode10776

theorem canonicalSound23811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23811.moment H = canonicalOutput23811.moment H :=
  canonical_of_padded canonicalInput23811 canonicalOutput23811 (by decide) (by decide)
    ⟨false, true, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23812 : ExponentCode := ⟨4, 3, ![![0, -4, 4], ![-1, 1, 0], ![0, 3, -3], ![1, 0, -1]]⟩

def canonicalOutput23812 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node290⟩

theorem canonicalSound23812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23812.moment H = canonicalOutput23812.moment H :=
  canonical_of_padded canonicalInput23812 canonicalOutput23812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23813 : ExponentCode := ⟨5, 3, ![![0, -4, 4], ![0, 1, -1], ![-1, 1, 0], ![0, 3, -3], ![1, -1, 0]]⟩

def canonicalOutput23813 : ExponentCode := normalNode10776

theorem canonicalSound23813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23813.moment H = canonicalOutput23813.moment H :=
  canonical_of_padded canonicalInput23813 canonicalOutput23813 (by decide) (by decide)
    ⟨false, true, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23814 : ExponentCode := ⟨4, 3, ![![0, -4, 4], ![0, 1, -1], ![-1, 3, -2], ![1, 0, -1]]⟩

def canonicalOutput23814 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node270⟩

theorem canonicalSound23814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23814.moment H = canonicalOutput23814.moment H :=
  canonical_of_padded canonicalInput23814 canonicalOutput23814 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23815 : ExponentCode := ⟨5, 3, ![![0, -4, 4], ![0, 1, -1], ![0, 1, -1], ![-1, 3, -2], ![1, -1, 0]]⟩

def canonicalOutput23815 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node880⟩

theorem canonicalSound23815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23815.moment H = canonicalOutput23815.moment H :=
  canonical_of_padded canonicalInput23815 canonicalOutput23815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23816 : ExponentCode := ⟨5, 3, ![![0, -4, 4], ![0, 1, -1], ![0, 1, -1], ![0, 3, -3], ![0, -1, 1]]⟩

def canonicalOutput23816 : ExponentCode := ⟨5, 2, OAI.MUB6.Certificate.PairSemantics.node67⟩

theorem canonicalSound23816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23816.moment H = canonicalOutput23816.moment H :=
  canonical_of_padded canonicalInput23816 canonicalOutput23816 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23817 : ExponentCode := ⟨4, 3, ![![0, -4, 4], ![0, 1, -1], ![0, 3, -3], ![0, 0, 0]]⟩

def canonicalOutput23817 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node8⟩

theorem canonicalSound23817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23817.moment H = canonicalOutput23817.moment H :=
  canonical_of_padded canonicalInput23817 canonicalOutput23817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23818 : ExponentCode := ⟨3, 3, ![![0, -4, 4], ![0, 4, -4], ![0, 0, 0]]⟩

def canonicalOutput23818 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node2⟩

theorem canonicalSound23818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23818.moment H = canonicalOutput23818.moment H :=
  canonical_of_padded canonicalInput23818 canonicalOutput23818 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23819 : ExponentCode := ⟨4, 4, ![![0, -3, -1, 4], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput23819 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1086⟩

theorem canonicalSound23819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23819.moment H = canonicalOutput23819.moment H :=
  canonical_of_padded canonicalInput23819 canonicalOutput23819 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23820 : ExponentCode := ⟨4, 4, ![![0, -3, -1, 4], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput23820 : ExponentCode := normalNode8905

theorem canonicalSound23820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23820.moment H = canonicalOutput23820.moment H :=
  canonical_of_padded canonicalInput23820 canonicalOutput23820 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23821 : ExponentCode := ⟨4, 4, ![![0, -3, -1, 4], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput23821 : ExponentCode := normalNode9355

theorem canonicalSound23821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23821.moment H = canonicalOutput23821.moment H :=
  canonical_of_padded canonicalInput23821 canonicalOutput23821 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23822 : ExponentCode := ⟨4, 4, ![![0, -3, -1, 4], ![-1, 0, 3, -2], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput23822 : ExponentCode := normalNode6512

theorem canonicalSound23822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23822.moment H = canonicalOutput23822.moment H :=
  canonical_of_padded canonicalInput23822 canonicalOutput23822 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput23823 : ExponentCode := ⟨3, 4, ![![0, -3, -1, 4], ![0, 0, 3, -3], ![0, 3, -2, -1]]⟩

def canonicalOutput23823 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node18⟩

theorem canonicalSound23823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23823.moment H = canonicalOutput23823.moment H :=
  canonical_of_padded canonicalInput23823 canonicalOutput23823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23824 : ExponentCode := ⟨5, 4, ![![0, -3, 0, 3], ![-1, 0, 0, 1], ![0, 1, -1, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput23824 : ExponentCode := normalNode10630

theorem canonicalSound23824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23824.moment H = canonicalOutput23824.moment H :=
  canonical_of_padded canonicalInput23824 canonicalOutput23824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23825 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput23825 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound23825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23825.moment H = canonicalOutput23825.moment H :=
  canonical_of_padded canonicalInput23825 canonicalOutput23825 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23826 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 0, 2, -1], ![0, 2, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput23826 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1374⟩

theorem canonicalSound23826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23826.moment H = canonicalOutput23826.moment H :=
  canonical_of_padded canonicalInput23826 canonicalOutput23826 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23827 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput23827 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node979⟩

theorem canonicalSound23827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23827.moment H = canonicalOutput23827.moment H :=
  canonical_of_padded canonicalInput23827 canonicalOutput23827 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput23828 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput23828 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1355⟩

theorem canonicalSound23828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23828.moment H = canonicalOutput23828.moment H :=
  canonical_of_padded canonicalInput23828 canonicalOutput23828 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23829 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 0, 3, -2], ![0, 2, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput23829 : ExponentCode := normalNode6785

theorem canonicalSound23829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23829.moment H = canonicalOutput23829.moment H :=
  canonical_of_padded canonicalInput23829 canonicalOutput23829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23830 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 0, 3, -2], ![0, 2, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput23830 : ExponentCode := normalNode6703

theorem canonicalSound23830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23830.moment H = canonicalOutput23830.moment H :=
  canonical_of_padded canonicalInput23830 canonicalOutput23830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23831 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 0, 3, -2], ![0, 3, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput23831 : ExponentCode := normalNode6717

theorem canonicalSound23831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23831.moment H = canonicalOutput23831.moment H :=
  canonical_of_padded canonicalInput23831 canonicalOutput23831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23832 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput23832 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound23832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23832.moment H = canonicalOutput23832.moment H :=
  canonical_of_padded canonicalInput23832 canonicalOutput23832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23833 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput23833 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1270⟩

theorem canonicalSound23833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23833.moment H = canonicalOutput23833.moment H :=
  canonical_of_padded canonicalInput23833 canonicalOutput23833 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23834 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput23834 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1191⟩

theorem canonicalSound23834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23834.moment H = canonicalOutput23834.moment H :=
  canonical_of_padded canonicalInput23834 canonicalOutput23834 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput23835 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 1, 2, -2], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput23835 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound23835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23835.moment H = canonicalOutput23835.moment H :=
  canonical_of_padded canonicalInput23835 canonicalOutput23835 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput23836 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 1, 2, -2], ![0, 2, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput23836 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1376⟩

theorem canonicalSound23836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23836.moment H = canonicalOutput23836.moment H :=
  canonical_of_padded canonicalInput23836 canonicalOutput23836 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23837 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 2, -1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput23837 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1065⟩

theorem canonicalSound23837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23837.moment H = canonicalOutput23837.moment H :=
  canonical_of_padded canonicalInput23837 canonicalOutput23837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23838 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 2, 0, -1], ![0, 0, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput23838 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1269⟩

theorem canonicalSound23838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23838.moment H = canonicalOutput23838.moment H :=
  canonical_of_padded canonicalInput23838 canonicalOutput23838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23839 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 2, 1, -2], ![0, 1, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput23839 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1067⟩

theorem canonicalSound23839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23839.moment H = canonicalOutput23839.moment H :=
  canonical_of_padded canonicalInput23839 canonicalOutput23839 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23840 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 2, 1, -2], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput23840 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1369⟩

theorem canonicalSound23840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23840.moment H = canonicalOutput23840.moment H :=
  canonical_of_padded canonicalInput23840 canonicalOutput23840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23841 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 2, 2, -3], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput23841 : ExponentCode := normalNode10665

theorem canonicalSound23841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23841.moment H = canonicalOutput23841.moment H :=
  canonical_of_padded canonicalInput23841 canonicalOutput23841 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput23842 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 3, -2, 0], ![0, 0, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput23842 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node811⟩

theorem canonicalSound23842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23842.moment H = canonicalOutput23842.moment H :=
  canonical_of_padded canonicalInput23842 canonicalOutput23842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23843 : ExponentCode := ⟨4, 4, ![![0, -3, 0, 3], ![-1, 3, -1, -1], ![0, 0, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput23843 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node979⟩

theorem canonicalSound23843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23843.moment H = canonicalOutput23843.moment H :=
  canonical_of_padded canonicalInput23843 canonicalOutput23843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23844 : ExponentCode := ⟨5, 4, ![![0, -3, 0, 3], ![0, 0, -1, 1], ![-1, 1, 0, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput23844 : ExponentCode := normalNode10843

theorem canonicalSound23844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23844.moment H = canonicalOutput23844.moment H :=
  canonical_of_padded canonicalInput23844 canonicalOutput23844 (by decide) (by decide)
    ⟨false, false, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23845 : ExponentCode := ⟨5, 4, ![![0, -3, 0, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 2, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput23845 : ExponentCode := normalNode10849

theorem canonicalSound23845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23845.moment H = canonicalOutput23845.moment H :=
  canonical_of_padded canonicalInput23845 canonicalOutput23845 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23846 : ExponentCode := ⟨5, 4, ![![0, -3, 0, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 2, 2, -4], ![0, 0, 0, 0]]⟩

def canonicalOutput23846 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node155⟩

theorem canonicalSound23846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23846.moment H = canonicalOutput23846.moment H :=
  canonical_of_padded canonicalInput23846 canonicalOutput23846 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23847 : ExponentCode := ⟨3, 4, ![![0, -3, 0, 3], ![0, 1, 3, -4], ![0, 2, -3, 1]]⟩

def canonicalOutput23847 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node18⟩

theorem canonicalSound23847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23847.moment H = canonicalOutput23847.moment H :=
  canonical_of_padded canonicalInput23847 canonicalOutput23847 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23848 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 0, -1, 2], ![0, 2, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput23848 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩

theorem canonicalSound23848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23848.moment H = canonicalOutput23848.moment H :=
  canonical_of_padded canonicalInput23848 canonicalOutput23848 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23849 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 0, -1, 2], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput23849 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1075⟩

theorem canonicalSound23849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23849.moment H = canonicalOutput23849.moment H :=
  canonical_of_padded canonicalInput23849 canonicalOutput23849 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23850 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 0, 2, -1], ![0, 1, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput23850 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩

theorem canonicalSound23850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23850.moment H = canonicalOutput23850.moment H :=
  canonical_of_padded canonicalInput23850 canonicalOutput23850 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23851 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 0, 2, -1], ![0, 2, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput23851 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1056⟩

theorem canonicalSound23851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23851.moment H = canonicalOutput23851.moment H :=
  canonical_of_padded canonicalInput23851 canonicalOutput23851 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23852 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput23852 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1007⟩

theorem canonicalSound23852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23852.moment H = canonicalOutput23852.moment H :=
  canonical_of_padded canonicalInput23852 canonicalOutput23852 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23853 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput23853 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node989⟩

theorem canonicalSound23853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23853.moment H = canonicalOutput23853.moment H :=
  canonical_of_padded canonicalInput23853 canonicalOutput23853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23854 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 1, -1, 1], ![0, 0, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput23854 : ExponentCode := normalNode7052

theorem canonicalSound23854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23854.moment H = canonicalOutput23854.moment H :=
  canonical_of_padded canonicalInput23854 canonicalOutput23854 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23855 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput23855 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1018⟩

theorem canonicalSound23855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23855.moment H = canonicalOutput23855.moment H :=
  canonical_of_padded canonicalInput23855 canonicalOutput23855 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23856 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 1, -1, 1], ![0, 2, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput23856 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound23856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23856.moment H = canonicalOutput23856.moment H :=
  canonical_of_padded canonicalInput23856 canonicalOutput23856 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23857 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput23857 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node851⟩

theorem canonicalSound23857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23857.moment H = canonicalOutput23857.moment H :=
  canonical_of_padded canonicalInput23857 canonicalOutput23857 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23858 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 1, 2, -2], ![0, 2, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput23858 : ExponentCode := normalNode7080

theorem canonicalSound23858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23858.moment H = canonicalOutput23858.moment H :=
  canonical_of_padded canonicalInput23858 canonicalOutput23858 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23859 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 1, 2, -2], ![0, 2, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput23859 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node823⟩

theorem canonicalSound23859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23859.moment H = canonicalOutput23859.moment H :=
  canonical_of_padded canonicalInput23859 canonicalOutput23859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23860 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 2, -2, 1], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput23860 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node847⟩

theorem canonicalSound23860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23860.moment H = canonicalOutput23860.moment H :=
  canonical_of_padded canonicalInput23860 canonicalOutput23860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23861 : ExponentCode := ⟨5, 4, ![![0, -3, 1, 2], ![-1, 2, -1, 0], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput23861 : ExponentCode := normalNode8898

theorem canonicalSound23861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23861.moment H = canonicalOutput23861.moment H :=
  canonical_of_padded canonicalInput23861 canonicalOutput23861 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23862 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 2, -1, 0], ![0, 1, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput23862 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound23862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23862.moment H = canonicalOutput23862.moment H :=
  canonical_of_padded canonicalInput23862 canonicalOutput23862 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23863 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 2, 0, -1], ![0, 0, -2, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput23863 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node953⟩

theorem canonicalSound23863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23863.moment H = canonicalOutput23863.moment H :=
  canonical_of_padded canonicalInput23863 canonicalOutput23863 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23864 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 2, 2, -3], ![0, 0, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput23864 : ExponentCode := normalNode9472

theorem canonicalSound23864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23864.moment H = canonicalOutput23864.moment H :=
  canonical_of_padded canonicalInput23864 canonicalOutput23864 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23865 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 2, 2, -3], ![0, 1, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput23865 : ExponentCode := normalNode10666

theorem canonicalSound23865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23865.moment H = canonicalOutput23865.moment H :=
  canonical_of_padded canonicalInput23865 canonicalOutput23865 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23866 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 3, -1, -1], ![0, 0, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput23866 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node928⟩

theorem canonicalSound23866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23866.moment H = canonicalOutput23866.moment H :=
  canonical_of_padded canonicalInput23866 canonicalOutput23866 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23867 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 3, 0, -2], ![0, 0, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput23867 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1017⟩

theorem canonicalSound23867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23867.moment H = canonicalOutput23867.moment H :=
  canonical_of_padded canonicalInput23867 canonicalOutput23867 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23868 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![-1, 3, 1, -3], ![0, 0, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput23868 : ExponentCode := normalNode10665

theorem canonicalSound23868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23868.moment H = canonicalOutput23868.moment H :=
  canonical_of_padded canonicalInput23868 canonicalOutput23868 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23869 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput23869 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound23869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23869.moment H = canonicalOutput23869.moment H :=
  canonical_of_padded canonicalInput23869 canonicalOutput23869 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23870 : ExponentCode := ⟨4, 4, ![![0, -3, 1, 2], ![0, 0, 2, -2], ![0, 1, -2, 1], ![0, 2, -1, -1]]⟩

def canonicalOutput23870 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound23870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23870.moment H = canonicalOutput23870.moment H :=
  canonical_of_padded canonicalInput23870 canonicalOutput23870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23871 : ExponentCode := ⟨3, 4, ![![0, -3, 1, 2], ![0, 1, -3, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput23871 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node20⟩

theorem canonicalSound23871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23871.moment H = canonicalOutput23871.moment H :=
  canonical_of_padded canonicalInput23871 canonicalOutput23871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
