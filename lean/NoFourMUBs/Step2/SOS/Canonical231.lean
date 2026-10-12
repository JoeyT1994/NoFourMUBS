import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14784 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, -2, 0], ![0, 0, 0, 2, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14784 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1650⟩

theorem canonicalSound14784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14784.moment H = canonicalOutput14784.moment H :=
  canonical_of_padded canonicalInput14784 canonicalOutput14784 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14785 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14785 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound14785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14785.moment H = canonicalOutput14785.moment H :=
  canonical_of_padded canonicalInput14785 canonicalOutput14785 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14786 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, -2, 0], ![0, 1, 0, 1, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14786 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound14786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14786.moment H = canonicalOutput14786.moment H :=
  canonical_of_padded canonicalInput14786 canonicalOutput14786 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14787 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, -1, -1], ![0, 0, 0, 2, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14787 : ExponentCode := normalNode2004

theorem canonicalSound14787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14787.moment H = canonicalOutput14787.moment H :=
  canonical_of_padded canonicalInput14787 canonicalOutput14787 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14788 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14788 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2750⟩

theorem canonicalSound14788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14788.moment H = canonicalOutput14788.moment H :=
  canonical_of_padded canonicalInput14788 canonicalOutput14788 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14789 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14789 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2532⟩

theorem canonicalSound14789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14789.moment H = canonicalOutput14789.moment H :=
  canonical_of_padded canonicalInput14789 canonicalOutput14789 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14790 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, -1, -1], ![0, 1, -1, 2, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14790 : ExponentCode := normalNode9021

theorem canonicalSound14790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14790.moment H = canonicalOutput14790.moment H :=
  canonical_of_padded canonicalInput14790 canonicalOutput14790 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14791 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, -1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14791 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2532⟩

theorem canonicalSound14791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14791.moment H = canonicalOutput14791.moment H :=
  canonical_of_padded canonicalInput14791 canonicalOutput14791 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14792 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14792 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2750⟩

theorem canonicalSound14792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14792.moment H = canonicalOutput14792.moment H :=
  canonical_of_padded canonicalInput14792 canonicalOutput14792 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14793 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, -1, -1], ![0, 2, 0, -1, -1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput14793 : ExponentCode := normalNode4205

theorem canonicalSound14793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14793.moment H = canonicalOutput14793.moment H :=
  canonical_of_padded canonicalInput14793 canonicalOutput14793 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14794 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, 0, -2], ![0, 1, -1, 2, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14794 : ExponentCode := normalNode4061

theorem canonicalSound14794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14794.moment H = canonicalOutput14794.moment H :=
  canonical_of_padded canonicalInput14794 canonicalOutput14794 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14795 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 0, 2, 1, -3], ![0, 1, 0, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14795 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2251⟩

theorem canonicalSound14795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14795.moment H = canonicalOutput14795.moment H :=
  canonical_of_padded canonicalInput14795 canonicalOutput14795 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14796 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 1, -1, 2, -2], ![0, 0, 1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14796 : ExponentCode := normalNode4055

theorem canonicalSound14796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14796.moment H = canonicalOutput14796.moment H :=
  canonical_of_padded canonicalInput14796 canonicalOutput14796 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14797 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 1, -1, 2, -2], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14797 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2696⟩

theorem canonicalSound14797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14797.moment H = canonicalOutput14797.moment H :=
  canonical_of_padded canonicalInput14797 canonicalOutput14797 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14798 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 1, -1, 2, -2], ![0, 1, 2, -1, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput14798 : ExponentCode := normalNode6171

theorem canonicalSound14798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14798.moment H = canonicalOutput14798.moment H :=
  canonical_of_padded canonicalInput14798 canonicalOutput14798 (by decide) (by decide)
    ⟨true, true, canonicalPermutation14, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput14799 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![0, 1, 0, 2, -3], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14799 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2754⟩

theorem canonicalSound14799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14799.moment H = canonicalOutput14799.moment H :=
  canonical_of_padded canonicalInput14799 canonicalOutput14799 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14800 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![1, -1, -1, 2, -1], ![0, 0, 2, 0, -2], ![0, 2, 0, -2, 0]]⟩

def canonicalOutput14800 : ExponentCode := normalNode3356

theorem canonicalSound14800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14800.moment H = canonicalOutput14800.moment H :=
  canonical_of_padded canonicalInput14800 canonicalOutput14800 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14801 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![1, -1, 1, 1, -2], ![0, 0, 1, -2, 1], ![0, 2, -1, 1, -2]]⟩

def canonicalOutput14801 : ExponentCode := normalNode4251

theorem canonicalSound14801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14801.moment H = canonicalOutput14801.moment H :=
  canonical_of_padded canonicalInput14801 canonicalOutput14801 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput14802 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 0, 3], ![1, -1, 1, 1, -2], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput14802 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2185⟩

theorem canonicalSound14802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14802.moment H = canonicalOutput14802.moment H :=
  canonical_of_padded canonicalInput14802 canonicalOutput14802 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14803 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, -1, 1, 1], ![0, 2, 1, 0, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14803 : ExponentCode := normalNode5431

theorem canonicalSound14803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14803.moment H = canonicalOutput14803.moment H :=
  canonical_of_padded canonicalInput14803 canonicalOutput14803 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14804 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 0, -1, 2], ![0, 0, 2, 1, -3], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput14804 : ExponentCode := normalNode714

theorem canonicalSound14804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14804.moment H = canonicalOutput14804.moment H :=
  canonical_of_padded canonicalInput14804 canonicalOutput14804 (by decide) (by decide)
    ⟨true, true, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput14805 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 0, -1, 2], ![1, 0, 1, 1, -3], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput14805 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2185⟩

theorem canonicalSound14805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14805.moment H = canonicalOutput14805.moment H :=
  canonical_of_padded canonicalInput14805 canonicalOutput14805 (by decide) (by decide)
    ⟨true, true, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14806 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14806 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1771⟩

theorem canonicalSound14806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14806.moment H = canonicalOutput14806.moment H :=
  canonical_of_padded canonicalInput14806 canonicalOutput14806 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14807 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, -1, 1], ![0, 2, -1, 0, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14807 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1774⟩

theorem canonicalSound14807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14807.moment H = canonicalOutput14807.moment H :=
  canonical_of_padded canonicalInput14807 canonicalOutput14807 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14808 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 0, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14808 : ExponentCode := normalNode8380

theorem canonicalSound14808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14808.moment H = canonicalOutput14808.moment H :=
  canonical_of_padded canonicalInput14808 canonicalOutput14808 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput14809 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 0, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14809 : ExponentCode := normalNode8701

theorem canonicalSound14809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14809.moment H = canonicalOutput14809.moment H :=
  canonical_of_padded canonicalInput14809 canonicalOutput14809 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput14810 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 0, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14810 : ExponentCode := normalNode9259

theorem canonicalSound14810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14810.moment H = canonicalOutput14810.moment H :=
  canonical_of_padded canonicalInput14810 canonicalOutput14810 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput14811 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 0, 0], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14811 : ExponentCode := normalNode10150

theorem canonicalSound14811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14811.moment H = canonicalOutput14811.moment H :=
  canonical_of_padded canonicalInput14811 canonicalOutput14811 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput14812 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput14812 : ExponentCode := normalNode5428

theorem canonicalSound14812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14812.moment H = canonicalOutput14812.moment H :=
  canonical_of_padded canonicalInput14812 canonicalOutput14812 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14813 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14813 : ExponentCode := normalNode10085

theorem canonicalSound14813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14813.moment H = canonicalOutput14813.moment H :=
  canonical_of_padded canonicalInput14813 canonicalOutput14813 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation33⟩ (by decide +kernel) hH

def canonicalInput14814 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14814 : ExponentCode := normalNode8672

theorem canonicalSound14814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14814.moment H = canonicalOutput14814.moment H :=
  canonical_of_padded canonicalInput14814 canonicalOutput14814 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput14815 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, -2, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14815 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1819⟩

theorem canonicalSound14815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14815.moment H = canonicalOutput14815.moment H :=
  canonical_of_padded canonicalInput14815 canonicalOutput14815 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14816 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14816 : ExponentCode := normalNode10149

theorem canonicalSound14816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14816.moment H = canonicalOutput14816.moment H :=
  canonical_of_padded canonicalInput14816 canonicalOutput14816 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput14817 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14817 : ExponentCode := normalNode4304

theorem canonicalSound14817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14817.moment H = canonicalOutput14817.moment H :=
  canonical_of_padded canonicalInput14817 canonicalOutput14817 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14818 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14818 : ExponentCode := normalNode8863

theorem canonicalSound14818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14818.moment H = canonicalOutput14818.moment H :=
  canonical_of_padded canonicalInput14818 canonicalOutput14818 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14819 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 1, 1, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput14819 : ExponentCode := normalNode2747

theorem canonicalSound14819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14819.moment H = canonicalOutput14819.moment H :=
  canonical_of_padded canonicalInput14819 canonicalOutput14819 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14820 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14820 : ExponentCode := normalNode4396

theorem canonicalSound14820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14820.moment H = canonicalOutput14820.moment H :=
  canonical_of_padded canonicalInput14820 canonicalOutput14820 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14821 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14821 : ExponentCode := normalNode4311

theorem canonicalSound14821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14821.moment H = canonicalOutput14821.moment H :=
  canonical_of_padded canonicalInput14821 canonicalOutput14821 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14822 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![0, 2, 0, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14822 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩

theorem canonicalSound14822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14822.moment H = canonicalOutput14822.moment H :=
  canonical_of_padded canonicalInput14822 canonicalOutput14822 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14823 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![1, 0, 1, -2, 0], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput14823 : ExponentCode := normalNode4311

theorem canonicalSound14823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14823.moment H = canonicalOutput14823.moment H :=
  canonical_of_padded canonicalInput14823 canonicalOutput14823 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14824 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 1, 1, -1], ![1, 1, -1, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput14824 : ExponentCode := normalNode2747

theorem canonicalSound14824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14824.moment H = canonicalOutput14824.moment H :=
  canonical_of_padded canonicalInput14824 canonicalOutput14824 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14825 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, -2, 1], ![0, 1, -1, 1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput14825 : ExponentCode := normalNode2557

theorem canonicalSound14825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14825.moment H = canonicalOutput14825.moment H :=
  canonical_of_padded canonicalInput14825 canonicalOutput14825 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14826 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, -2, 1], ![0, 1, 0, 1, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14826 : ExponentCode := normalNode2568

theorem canonicalSound14826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14826.moment H = canonicalOutput14826.moment H :=
  canonical_of_padded canonicalInput14826 canonicalOutput14826 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14827 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, -2, 1], ![0, 2, -1, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14827 : ExponentCode := normalNode2575

theorem canonicalSound14827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14827.moment H = canonicalOutput14827.moment H :=
  canonical_of_padded canonicalInput14827 canonicalOutput14827 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14828 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, -2, 1], ![0, 2, 0, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14828 : ExponentCode := normalNode2554

theorem canonicalSound14828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14828.moment H = canonicalOutput14828.moment H :=
  canonical_of_padded canonicalInput14828 canonicalOutput14828 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14829 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14829 : ExponentCode := normalNode8989

theorem canonicalSound14829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14829.moment H = canonicalOutput14829.moment H :=
  canonical_of_padded canonicalInput14829 canonicalOutput14829 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14830 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, -1, 0], ![0, 1, 0, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14830 : ExponentCode := normalNode3991

theorem canonicalSound14830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14830.moment H = canonicalOutput14830.moment H :=
  canonical_of_padded canonicalInput14830 canonicalOutput14830 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14831 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, -1, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14831 : ExponentCode := normalNode3994

theorem canonicalSound14831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14831.moment H = canonicalOutput14831.moment H :=
  canonical_of_padded canonicalInput14831 canonicalOutput14831 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14832 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14832 : ExponentCode := normalNode8991

theorem canonicalSound14832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14832.moment H = canonicalOutput14832.moment H :=
  canonical_of_padded canonicalInput14832 canonicalOutput14832 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14833 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, -1, 0], ![0, 2, 0, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14833 : ExponentCode := normalNode4385

theorem canonicalSound14833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14833.moment H = canonicalOutput14833.moment H :=
  canonical_of_padded canonicalInput14833 canonicalOutput14833 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14834 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14834 : ExponentCode := normalNode7572

theorem canonicalSound14834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14834.moment H = canonicalOutput14834.moment H :=
  canonical_of_padded canonicalInput14834 canonicalOutput14834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput14835 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput14835 : ExponentCode := normalNode4490

theorem canonicalSound14835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14835.moment H = canonicalOutput14835.moment H :=
  canonical_of_padded canonicalInput14835 canonicalOutput14835 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput14836 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput14836 : ExponentCode := normalNode9076

theorem canonicalSound14836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14836.moment H = canonicalOutput14836.moment H :=
  canonical_of_padded canonicalInput14836 canonicalOutput14836 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14837 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 1, 0, 1, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput14837 : ExponentCode := normalNode2761

theorem canonicalSound14837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14837.moment H = canonicalOutput14837.moment H :=
  canonical_of_padded canonicalInput14837 canonicalOutput14837 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14838 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14838 : ExponentCode := normalNode10529

theorem canonicalSound14838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14838.moment H = canonicalOutput14838.moment H :=
  canonical_of_padded canonicalInput14838 canonicalOutput14838 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14839 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14839 : ExponentCode := normalNode4312

theorem canonicalSound14839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14839.moment H = canonicalOutput14839.moment H :=
  canonical_of_padded canonicalInput14839 canonicalOutput14839 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput14840 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, 0, -1], ![0, 2, 0, 1, -3], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput14840 : ExponentCode := normalNode4271

theorem canonicalSound14840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14840.moment H = canonicalOutput14840.moment H :=
  canonical_of_padded canonicalInput14840 canonicalOutput14840 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14841 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, 0, -1], ![1, 1, -1, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput14841 : ExponentCode := normalNode2761

theorem canonicalSound14841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14841.moment H = canonicalOutput14841.moment H :=
  canonical_of_padded canonicalInput14841 canonicalOutput14841 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14842 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, 1, -2], ![0, 1, 0, -2, 1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput14842 : ExponentCode := normalNode4294

theorem canonicalSound14842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14842.moment H = canonicalOutput14842.moment H :=
  canonical_of_padded canonicalInput14842 canonicalOutput14842 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14843 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, 1, -2], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14843 : ExponentCode := normalNode4312

theorem canonicalSound14843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14843.moment H = canonicalOutput14843.moment H :=
  canonical_of_padded canonicalInput14843 canonicalOutput14843 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation193, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput14844 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, -1, 2, 1, -2], ![0, 2, 0, -1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput14844 : ExponentCode := normalNode4386

theorem canonicalSound14844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14844.moment H = canonicalOutput14844.moment H :=
  canonical_of_padded canonicalInput14844 canonicalOutput14844 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14845 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, -2, 2, 0], ![0, 0, 3, -2, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput14845 : ExponentCode := normalNode3516

theorem canonicalSound14845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14845.moment H = canonicalOutput14845.moment H :=
  canonical_of_padded canonicalInput14845 canonicalOutput14845 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14846 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, -1, -1, 2], ![0, 0, 2, -1, -1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput14846 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2185⟩

theorem canonicalSound14846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14846.moment H = canonicalOutput14846.moment H :=
  canonical_of_padded canonicalInput14846 canonicalOutput14846 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14847 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, -1, -1, 2], ![0, 1, 1, 0, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14847 : ExponentCode := normalNode892

theorem canonicalSound14847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14847.moment H = canonicalOutput14847.moment H :=
  canonical_of_padded canonicalInput14847 canonicalOutput14847 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
