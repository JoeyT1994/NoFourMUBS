import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20800 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -3, 4], ![0, 0, 2, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput20800 : ExponentCode := normalNode7936

theorem canonicalSound20800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20800.moment H = canonicalOutput20800.moment H :=
  canonical_of_padded canonicalInput20800 canonicalOutput20800 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20801 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -3, 4], ![0, 0, 3, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput20801 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1023⟩

theorem canonicalSound20801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20801.moment H = canonicalOutput20801.moment H :=
  canonical_of_padded canonicalInput20801 canonicalOutput20801 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20802 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -3, 4], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput20802 : ExponentCode := normalNode9672

theorem canonicalSound20802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20802.moment H = canonicalOutput20802.moment H :=
  canonical_of_padded canonicalInput20802 canonicalOutput20802 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20803 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput20803 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound20803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20803.moment H = canonicalOutput20803.moment H :=
  canonical_of_padded canonicalInput20803 canonicalOutput20803 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20804 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput20804 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1199⟩

theorem canonicalSound20804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20804.moment H = canonicalOutput20804.moment H :=
  canonical_of_padded canonicalInput20804 canonicalOutput20804 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20805 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -2, 3], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput20805 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1178⟩

theorem canonicalSound20805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20805.moment H = canonicalOutput20805.moment H :=
  canonical_of_padded canonicalInput20805 canonicalOutput20805 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20806 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput20806 : ExponentCode := normalNode4255

theorem canonicalSound20806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20806.moment H = canonicalOutput20806.moment H :=
  canonical_of_padded canonicalInput20806 canonicalOutput20806 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20807 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![-1, 2, 0, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput20807 : ExponentCode := normalNode5284

theorem canonicalSound20807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20807.moment H = canonicalOutput20807.moment H :=
  canonical_of_padded canonicalInput20807 canonicalOutput20807 (by decide) (by decide)
    ⟨false, true, canonicalPermutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20808 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![0, 0, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput20808 : ExponentCode := normalNode10219

theorem canonicalSound20808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20808.moment H = canonicalOutput20808.moment H :=
  canonical_of_padded canonicalInput20808 canonicalOutput20808 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation394, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20809 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -2, 1], ![0, 0, 2, -2]]⟩

def canonicalOutput20809 : ExponentCode := normalNode10221

theorem canonicalSound20809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20809.moment H = canonicalOutput20809.moment H :=
  canonical_of_padded canonicalInput20809 canonicalOutput20809 (by decide) (by decide)
    ⟨false, true, canonicalPermutation88, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20810 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput20810 : ExponentCode := normalNode10529

theorem canonicalSound20810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20810.moment H = canonicalOutput20810.moment H :=
  canonical_of_padded canonicalInput20810 canonicalOutput20810 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20811 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, 0, -2, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput20811 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩

theorem canonicalSound20811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20811.moment H = canonicalOutput20811.moment H :=
  canonical_of_padded canonicalInput20811 canonicalOutput20811 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20812 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput20812 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound20812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20812.moment H = canonicalOutput20812.moment H :=
  canonical_of_padded canonicalInput20812 canonicalOutput20812 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20813 : ExponentCode := ⟨5, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput20813 : ExponentCode := normalNode10277

theorem canonicalSound20813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20813.moment H = canonicalOutput20813.moment H :=
  canonical_of_padded canonicalInput20813 canonicalOutput20813 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20814 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput20814 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1063⟩

theorem canonicalSound20814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20814.moment H = canonicalOutput20814.moment H :=
  canonical_of_padded canonicalInput20814 canonicalOutput20814 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20815 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, 0, 4, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput20815 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node981⟩

theorem canonicalSound20815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20815.moment H = canonicalOutput20815.moment H :=
  canonical_of_padded canonicalInput20815 canonicalOutput20815 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20816 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput20816 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1202⟩

theorem canonicalSound20816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20816.moment H = canonicalOutput20816.moment H :=
  canonical_of_padded canonicalInput20816 canonicalOutput20816 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20817 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, 2, -2, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput20817 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩

theorem canonicalSound20817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20817.moment H = canonicalOutput20817.moment H :=
  canonical_of_padded canonicalInput20817 canonicalOutput20817 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20818 : ExponentCode := ⟨4, 4, ![![-1, 0, 0, 1], ![0, -1, -1, 2], ![0, 2, -1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput20818 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound20818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20818.moment H = canonicalOutput20818.moment H :=
  canonical_of_padded canonicalInput20818 canonicalOutput20818 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20819 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, -1, 1, 0], ![1, 2, -3, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput20819 : ExponentCode := normalNode6421

theorem canonicalSound20819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20819.moment H = canonicalOutput20819.moment H :=
  canonical_of_padded canonicalInput20819 canonicalOutput20819 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation407, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20820 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![-1, -1, 0, 2], ![0, 1, -1, 0], ![2, 1, -3, 0], ![0, 0, 4, -4]]⟩

def canonicalOutput20820 : ExponentCode := normalNode1723

theorem canonicalSound20820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20820.moment H = canonicalOutput20820.moment H :=
  canonical_of_padded canonicalInput20820 canonicalOutput20820 (by decide) (by decide)
    ⟨false, true, canonicalPermutation189, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20821 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 2, -3, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput20821 : ExponentCode := normalNode1180

theorem canonicalSound20821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20821.moment H = canonicalOutput20821.moment H :=
  canonical_of_padded canonicalInput20821 canonicalOutput20821 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation407, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20822 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, -1, 1, 0], ![1, 1, -3, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput20822 : ExponentCode := normalNode6380

theorem canonicalSound20822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20822.moment H = canonicalOutput20822.moment H :=
  canonical_of_padded canonicalInput20822 canonicalOutput20822 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation407, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20823 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, -1, 1, 0], ![2, 0, -3, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput20823 : ExponentCode := normalNode4659

theorem canonicalSound20823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20823.moment H = canonicalOutput20823.moment H :=
  canonical_of_padded canonicalInput20823 canonicalOutput20823 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation305, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20824 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 0, -2, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput20824 : ExponentCode := normalNode1029

theorem canonicalSound20824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20824.moment H = canonicalOutput20824.moment H :=
  canonical_of_padded canonicalInput20824 canonicalOutput20824 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation391, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20825 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![1, 0, -1, 0], ![0, 0, -2, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput20825 : ExponentCode := normalNode1029

theorem canonicalSound20825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20825.moment H = canonicalOutput20825.moment H :=
  canonical_of_padded canonicalInput20825 canonicalOutput20825 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation389, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20826 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput20826 : ExponentCode := normalNode5645

theorem canonicalSound20826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20826.moment H = canonicalOutput20826.moment H :=
  canonical_of_padded canonicalInput20826 canonicalOutput20826 (by decide) (by decide)
    ⟨false, true, canonicalPermutation10, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20827 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 1, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput20827 : ExponentCode := normalNode7780

theorem canonicalSound20827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20827.moment H = canonicalOutput20827.moment H :=
  canonical_of_padded canonicalInput20827 canonicalOutput20827 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation287, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20828 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, -1, 1, 1], ![1, 2, -3, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput20828 : ExponentCode := normalNode6423

theorem canonicalSound20828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20828.moment H = canonicalOutput20828.moment H :=
  canonical_of_padded canonicalInput20828 canonicalOutput20828 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20829 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![-1, 1, -1, 1], ![2, 1, -3, 0], ![0, 0, 4, -4]]⟩

def canonicalOutput20829 : ExponentCode := normalNode2076

theorem canonicalSound20829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20829.moment H = canonicalOutput20829.moment H :=
  canonical_of_padded canonicalInput20829 canonicalOutput20829 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation300, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20830 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 2, -3, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput20830 : ExponentCode := normalNode6436

theorem canonicalSound20830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20830.moment H = canonicalOutput20830.moment H :=
  canonical_of_padded canonicalInput20830 canonicalOutput20830 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20831 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 2, -3, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput20831 : ExponentCode := normalNode6707

theorem canonicalSound20831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20831.moment H = canonicalOutput20831.moment H :=
  canonical_of_padded canonicalInput20831 canonicalOutput20831 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation300, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20832 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 1, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput20832 : ExponentCode := normalNode7869

theorem canonicalSound20832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20832.moment H = canonicalOutput20832.moment H :=
  canonical_of_padded canonicalInput20832 canonicalOutput20832 (by decide) (by decide)
    ⟨false, true, canonicalPermutation88, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20833 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![2, 1, -3, 0], ![-1, 0, 4, -3]]⟩

def canonicalOutput20833 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2953⟩

theorem canonicalSound20833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20833.moment H = canonicalOutput20833.moment H :=
  canonical_of_padded canonicalInput20833 canonicalOutput20833 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20834 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![0, 2, -3, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput20834 : ExponentCode := normalNode10500

theorem canonicalSound20834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20834.moment H = canonicalOutput20834.moment H :=
  canonical_of_padded canonicalInput20834 canonicalOutput20834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20835 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![0, 2, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput20835 : ExponentCode := normalNode10511

theorem canonicalSound20835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20835.moment H = canonicalOutput20835.moment H :=
  canonical_of_padded canonicalInput20835 canonicalOutput20835 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20836 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, -1, 1, 1], ![0, 2, -3, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput20836 : ExponentCode := normalNode1180

theorem canonicalSound20836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20836.moment H = canonicalOutput20836.moment H :=
  canonical_of_padded canonicalInput20836 canonicalOutput20836 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20837 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, -1, 1, 1], ![1, 1, -3, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput20837 : ExponentCode := normalNode6380

theorem canonicalSound20837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20837.moment H = canonicalOutput20837.moment H :=
  canonical_of_padded canonicalInput20837 canonicalOutput20837 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20838 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, -1, 1, 1], ![2, 0, -3, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput20838 : ExponentCode := normalNode4659

theorem canonicalSound20838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20838.moment H = canonicalOutput20838.moment H :=
  canonical_of_padded canonicalInput20838 canonicalOutput20838 (by decide) (by decide)
    ⟨false, true, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20839 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![0, 0, -2, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput20839 : ExponentCode := normalNode1101

theorem canonicalSound20839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20839.moment H = canonicalOutput20839.moment H :=
  canonical_of_padded canonicalInput20839 canonicalOutput20839 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20840 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![-1, 2, -3, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput20840 : ExponentCode := normalNode1220

theorem canonicalSound20840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20840.moment H = canonicalOutput20840.moment H :=
  canonical_of_padded canonicalInput20840 canonicalOutput20840 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20841 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -3, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput20841 : ExponentCode := normalNode6452

theorem canonicalSound20841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20841.moment H = canonicalOutput20841.moment H :=
  canonical_of_padded canonicalInput20841 canonicalOutput20841 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation405, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20842 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 2, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput20842 : ExponentCode := normalNode7829

theorem canonicalSound20842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20842.moment H = canonicalOutput20842.moment H :=
  canonical_of_padded canonicalInput20842 canonicalOutput20842 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation405, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20843 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -3, 2], ![0, 3, 1, -4]]⟩

def canonicalOutput20843 : ExponentCode := normalNode10587

theorem canonicalSound20843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20843.moment H = canonicalOutput20843.moment H :=
  canonical_of_padded canonicalInput20843 canonicalOutput20843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20844 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 1, -3, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput20844 : ExponentCode := normalNode7831

theorem canonicalSound20844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20844.moment H = canonicalOutput20844.moment H :=
  canonical_of_padded canonicalInput20844 canonicalOutput20844 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation300, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20845 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, -1, 1, 0], ![2, 0, -3, 1], ![-1, 3, 1, -3]]⟩

def canonicalOutput20845 : ExponentCode := normalNode1764

theorem canonicalSound20845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20845.moment H = canonicalOutput20845.moment H :=
  canonical_of_padded canonicalInput20845 canonicalOutput20845 (by decide) (by decide)
    ⟨false, true, canonicalPermutation134, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20846 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -2, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput20846 : ExponentCode := normalNode6306

theorem canonicalSound20846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20846.moment H = canonicalOutput20846.moment H :=
  canonical_of_padded canonicalInput20846 canonicalOutput20846 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation394, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20847 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 0, -2, 3], ![2, 1, 2, -5]]⟩

def canonicalOutput20847 : ExponentCode := normalNode1031

theorem canonicalSound20847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20847.moment H = canonicalOutput20847.moment H :=
  canonical_of_padded canonicalInput20847 canonicalOutput20847 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20848 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput20848 : ExponentCode := normalNode7398

theorem canonicalSound20848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20848.moment H = canonicalOutput20848.moment H :=
  canonical_of_padded canonicalInput20848 canonicalOutput20848 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation394, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20849 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![1, 2, 2, -5]]⟩

def canonicalOutput20849 : ExponentCode := normalNode1037

theorem canonicalSound20849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20849.moment H = canonicalOutput20849.moment H :=
  canonical_of_padded canonicalInput20849 canonicalOutput20849 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation376, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20850 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![0, 0, -2, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput20850 : ExponentCode := normalNode10588

theorem canonicalSound20850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20850.moment H = canonicalOutput20850.moment H :=
  canonical_of_padded canonicalInput20850 canonicalOutput20850 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20851 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![2, -2, -1, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput20851 : ExponentCode := normalNode5645

theorem canonicalSound20851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20851.moment H = canonicalOutput20851.moment H :=
  canonical_of_padded canonicalInput20851 canonicalOutput20851 (by decide) (by decide)
    ⟨false, true, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20852 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, 1, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput20852 : ExponentCode := normalNode7869

theorem canonicalSound20852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20852.moment H = canonicalOutput20852.moment H :=
  canonical_of_padded canonicalInput20852 canonicalOutput20852 (by decide) (by decide)
    ⟨false, true, canonicalPermutation190, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20853 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, -1, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput20853 : ExponentCode := normalNode10619

theorem canonicalSound20853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20853.moment H = canonicalOutput20853.moment H :=
  canonical_of_padded canonicalInput20853 canonicalOutput20853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20854 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, -2, -1, 1], ![-1, 1, 3, -3]]⟩

def canonicalOutput20854 : ExponentCode := normalNode2364

theorem canonicalSound20854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20854.moment H = canonicalOutput20854.moment H :=
  canonical_of_padded canonicalInput20854 canonicalOutput20854 (by decide) (by decide)
    ⟨false, true, canonicalPermutation134, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput20855 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, -3, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput20855 : ExponentCode := normalNode10613

theorem canonicalSound20855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20855.moment H = canonicalOutput20855.moment H :=
  canonical_of_padded canonicalInput20855 canonicalOutput20855 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20856 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput20856 : ExponentCode := normalNode7708

theorem canonicalSound20856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20856.moment H = canonicalOutput20856.moment H :=
  canonical_of_padded canonicalInput20856 canonicalOutput20856 (by decide) (by decide)
    ⟨false, true, canonicalPermutation191, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20857 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![0, -1, 0, 1], ![0, 2, -3, 1], ![0, 1, 3, -4]]⟩

def canonicalOutput20857 : ExponentCode := normalNode10500

theorem canonicalSound20857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20857.moment H = canonicalOutput20857.moment H :=
  canonical_of_padded canonicalInput20857 canonicalOutput20857 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20858 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![0, 0, -1, 1], ![0, 2, -3, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput20858 : ExponentCode := normalNode10596

theorem canonicalSound20858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20858.moment H = canonicalOutput20858.moment H :=
  canonical_of_padded canonicalInput20858 canonicalOutput20858 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20859 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 2, -3, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput20859 : ExponentCode := normalNode6139

theorem canonicalSound20859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20859.moment H = canonicalOutput20859.moment H :=
  canonical_of_padded canonicalInput20859 canonicalOutput20859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20860 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 2, -3, 1], ![-1, 1, 3, -3]]⟩

def canonicalOutput20860 : ExponentCode := normalNode6047

theorem canonicalSound20860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20860.moment H = canonicalOutput20860.moment H :=
  canonical_of_padded canonicalInput20860 canonicalOutput20860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20861 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, -3, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput20861 : ExponentCode := normalNode4853

theorem canonicalSound20861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20861.moment H = canonicalOutput20861.moment H :=
  canonical_of_padded canonicalInput20861 canonicalOutput20861 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation293, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20862 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 2, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput20862 : ExponentCode := normalNode3430

theorem canonicalSound20862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20862.moment H = canonicalOutput20862.moment H :=
  canonical_of_padded canonicalInput20862 canonicalOutput20862 (by decide) (by decide)
    ⟨false, true, canonicalPermutation192, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20863 : ExponentCode := ⟨6, 4, ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 0, -2, 2], ![2, 2, 1, -5]]⟩

def canonicalOutput20863 : ExponentCode := normalNode361

theorem canonicalSound20863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20863.moment H = canonicalOutput20863.moment H :=
  canonical_of_padded canonicalInput20863 canonicalOutput20863 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation391, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
