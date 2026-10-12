import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28800 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -1, -1], ![-2, -1, 2, 1]]⟩

def canonicalOutput28800 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound28800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28800.moment H = canonicalOutput28800.moment H :=
  canonical_of_padded canonicalInput28800 canonicalOutput28800 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput28801 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput28801 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2604⟩

theorem canonicalSound28801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28801.moment H = canonicalOutput28801.moment H :=
  canonical_of_padded canonicalInput28801 canonicalOutput28801 (by decide) (by decide)
    ⟨false, false, canonicalPermutation114, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28802 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, -1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput28802 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1643⟩

theorem canonicalSound28802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28802.moment H = canonicalOutput28802.moment H :=
  canonical_of_padded canonicalInput28802 canonicalOutput28802 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput28803 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![1, 1, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput28803 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1698⟩

theorem canonicalSound28803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28803.moment H = canonicalOutput28803.moment H :=
  canonical_of_padded canonicalInput28803 canonicalOutput28803 (by decide) (by decide)
    ⟨false, true, canonicalPermutation328, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput28804 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![1, 1, -2, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput28804 : ExponentCode := normalNode8965

theorem canonicalSound28804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28804.moment H = canonicalOutput28804.moment H :=
  canonical_of_padded canonicalInput28804 canonicalOutput28804 (by decide) (by decide)
    ⟨false, true, canonicalPermutation357, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28805 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![1, -2, 1, 0], ![-1, 3, -1, -1]]⟩

def canonicalOutput28805 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2511⟩

theorem canonicalSound28805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28805.moment H = canonicalOutput28805.moment H :=
  canonical_of_padded canonicalInput28805 canonicalOutput28805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput28806 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![-1, 1, 1, -1], ![-1, 2, -1, 0], ![1, -3, 1, 1]]⟩

def canonicalOutput28806 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2511⟩

theorem canonicalSound28806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28806.moment H = canonicalOutput28806.moment H :=
  canonical_of_padded canonicalInput28806 canonicalOutput28806 (by decide) (by decide)
    ⟨false, true, canonicalPermutation325, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28807 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![0, -2, 1, 1], ![1, -1, 1, -1], ![-2, 3, -1, 0]]⟩

def canonicalOutput28807 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1640⟩

theorem canonicalSound28807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28807.moment H = canonicalOutput28807.moment H :=
  canonical_of_padded canonicalInput28807 canonicalOutput28807 (by decide) (by decide)
    ⟨false, false, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28808 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![-1, 1, -2, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput28808 : ExponentCode := normalNode5780

theorem canonicalSound28808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28808.moment H = canonicalOutput28808.moment H :=
  canonical_of_padded canonicalInput28808 canonicalOutput28808 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28809 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput28809 : ExponentCode := normalNode5780

theorem canonicalSound28809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28809.moment H = canonicalOutput28809.moment H :=
  canonical_of_padded canonicalInput28809 canonicalOutput28809 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation374, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28810 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![0, 2, 1, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput28810 : ExponentCode := normalNode10860

theorem canonicalSound28810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28810.moment H = canonicalOutput28810.moment H :=
  canonical_of_padded canonicalInput28810 canonicalOutput28810 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28811 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, -3, 3], ![0, 1, 0, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput28811 : ExponentCode := normalNode10992

theorem canonicalSound28811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28811.moment H = canonicalOutput28811.moment H :=
  canonical_of_padded canonicalInput28811 canonicalOutput28811 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28812 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![-1, -2, 0, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput28812 : ExponentCode := normalNode1958

theorem canonicalSound28812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28812.moment H = canonicalOutput28812.moment H :=
  canonical_of_padded canonicalInput28812 canonicalOutput28812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28813 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput28813 : ExponentCode := normalNode4833

theorem canonicalSound28813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28813.moment H = canonicalOutput28813.moment H :=
  canonical_of_padded canonicalInput28813 canonicalOutput28813 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28814 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput28814 : ExponentCode := normalNode5799

theorem canonicalSound28814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28814.moment H = canonicalOutput28814.moment H :=
  canonical_of_padded canonicalInput28814 canonicalOutput28814 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28815 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput28815 : ExponentCode := normalNode7348

theorem canonicalSound28815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28815.moment H = canonicalOutput28815.moment H :=
  canonical_of_padded canonicalInput28815 canonicalOutput28815 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28816 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput28816 : ExponentCode := normalNode10950

theorem canonicalSound28816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28816.moment H = canonicalOutput28816.moment H :=
  canonical_of_padded canonicalInput28816 canonicalOutput28816 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28817 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, 1, -1]]⟩

def canonicalOutput28817 : ExponentCode := normalNode9284

theorem canonicalSound28817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28817.moment H = canonicalOutput28817.moment H :=
  canonical_of_padded canonicalInput28817 canonicalOutput28817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation226, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28818 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput28818 : ExponentCode := normalNode1950

theorem canonicalSound28818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28818.moment H = canonicalOutput28818.moment H :=
  canonical_of_padded canonicalInput28818 canonicalOutput28818 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28819 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput28819 : ExponentCode := normalNode4934

theorem canonicalSound28819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28819.moment H = canonicalOutput28819.moment H :=
  canonical_of_padded canonicalInput28819 canonicalOutput28819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28820 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![-1, -1, 3, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput28820 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3226⟩

theorem canonicalSound28820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28820.moment H = canonicalOutput28820.moment H :=
  canonical_of_padded canonicalInput28820 canonicalOutput28820 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28821 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput28821 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2854⟩

theorem canonicalSound28821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28821.moment H = canonicalOutput28821.moment H :=
  canonical_of_padded canonicalInput28821 canonicalOutput28821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28822 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput28822 : ExponentCode := normalNode4937

theorem canonicalSound28822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28822.moment H = canonicalOutput28822.moment H :=
  canonical_of_padded canonicalInput28822 canonicalOutput28822 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28823 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput28823 : ExponentCode := normalNode4937

theorem canonicalSound28823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28823.moment H = canonicalOutput28823.moment H :=
  canonical_of_padded canonicalInput28823 canonicalOutput28823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28824 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput28824 : ExponentCode := normalNode7856

theorem canonicalSound28824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28824.moment H = canonicalOutput28824.moment H :=
  canonical_of_padded canonicalInput28824 canonicalOutput28824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28825 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput28825 : ExponentCode := normalNode10698

theorem canonicalSound28825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28825.moment H = canonicalOutput28825.moment H :=
  canonical_of_padded canonicalInput28825 canonicalOutput28825 (by decide) (by decide)
    ⟨false, true, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28826 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 0, 1], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput28826 : ExponentCode := normalNode10697

theorem canonicalSound28826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28826.moment H = canonicalOutput28826.moment H :=
  canonical_of_padded canonicalInput28826 canonicalOutput28826 (by decide) (by decide)
    ⟨false, true, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28827 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 1, 0], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput28827 : ExponentCode := normalNode3895

theorem canonicalSound28827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28827.moment H = canonicalOutput28827.moment H :=
  canonical_of_padded canonicalInput28827 canonicalOutput28827 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28828 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 1, 0], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput28828 : ExponentCode := normalNode4350

theorem canonicalSound28828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28828.moment H = canonicalOutput28828.moment H :=
  canonical_of_padded canonicalInput28828 canonicalOutput28828 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28829 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -2, 1, 0], ![1, 1, 0, -2], ![-2, 2, -2, 2]]⟩

def canonicalOutput28829 : ExponentCode := normalNode778

theorem canonicalSound28829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28829.moment H = canonicalOutput28829.moment H :=
  canonical_of_padded canonicalInput28829 canonicalOutput28829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28830 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput28830 : ExponentCode := normalNode2432

theorem canonicalSound28830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28830.moment H = canonicalOutput28830.moment H :=
  canonical_of_padded canonicalInput28830 canonicalOutput28830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28831 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 3, 1, -2]]⟩

def canonicalOutput28831 : ExponentCode := normalNode496

theorem canonicalSound28831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28831.moment H = canonicalOutput28831.moment H :=
  canonical_of_padded canonicalInput28831 canonicalOutput28831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28832 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput28832 : ExponentCode := normalNode6735

theorem canonicalSound28832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28832.moment H = canonicalOutput28832.moment H :=
  canonical_of_padded canonicalInput28832 canonicalOutput28832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28833 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput28833 : ExponentCode := normalNode10696

theorem canonicalSound28833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28833.moment H = canonicalOutput28833.moment H :=
  canonical_of_padded canonicalInput28833 canonicalOutput28833 (by decide) (by decide)
    ⟨false, true, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28834 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput28834 : ExponentCode := normalNode10519

theorem canonicalSound28834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28834.moment H = canonicalOutput28834.moment H :=
  canonical_of_padded canonicalInput28834 canonicalOutput28834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation226, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28835 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput28835 : ExponentCode := normalNode2651

theorem canonicalSound28835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28835.moment H = canonicalOutput28835.moment H :=
  canonical_of_padded canonicalInput28835 canonicalOutput28835 (by decide) (by decide)
    ⟨false, true, canonicalPermutation358, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28836 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-2, 0, 0, 2], ![1, 1, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput28836 : ExponentCode := normalNode9075

theorem canonicalSound28836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28836.moment H = canonicalOutput28836.moment H :=
  canonical_of_padded canonicalInput28836 canonicalOutput28836 (by decide) (by decide)
    ⟨false, true, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28837 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput28837 : ExponentCode := normalNode3949

theorem canonicalSound28837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28837.moment H = canonicalOutput28837.moment H :=
  canonical_of_padded canonicalInput28837 canonicalOutput28837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput28838 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput28838 : ExponentCode := normalNode2649

theorem canonicalSound28838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28838.moment H = canonicalOutput28838.moment H :=
  canonical_of_padded canonicalInput28838 canonicalOutput28838 (by decide) (by decide)
    ⟨false, true, canonicalPermutation358, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28839 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput28839 : ExponentCode := normalNode2408

theorem canonicalSound28839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28839.moment H = canonicalOutput28839.moment H :=
  canonical_of_padded canonicalInput28839 canonicalOutput28839 (by decide) (by decide)
    ⟨false, true, canonicalPermutation358, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28840 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-1, -1, 0, 2], ![-1, 2, 0, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput28840 : ExponentCode := normalNode10529

theorem canonicalSound28840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28840.moment H = canonicalOutput28840.moment H :=
  canonical_of_padded canonicalInput28840 canonicalOutput28840 (by decide) (by decide)
    ⟨false, true, canonicalPermutation246, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput28841 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![-1, -1, 1, 1], ![-1, 2, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput28841 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound28841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28841.moment H = canonicalOutput28841.moment H :=
  canonical_of_padded canonicalInput28841 canonicalOutput28841 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28842 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput28842 : ExponentCode := normalNode2931

theorem canonicalSound28842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28842.moment H = canonicalOutput28842.moment H :=
  canonical_of_padded canonicalInput28842 canonicalOutput28842 (by decide) (by decide)
    ⟨false, true, canonicalPermutation359, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28843 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, -2, 1, 1], ![2, -1, 0, -1], ![-2, 3, -1, 0]]⟩

def canonicalOutput28843 : ExponentCode := normalNode1802

theorem canonicalSound28843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28843.moment H = canonicalOutput28843.moment H :=
  canonical_of_padded canonicalInput28843 canonicalOutput28843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28844 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, -1, -1, 2], ![2, -1, 0, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput28844 : ExponentCode := normalNode2932

theorem canonicalSound28844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28844.moment H = canonicalOutput28844.moment H :=
  canonical_of_padded canonicalInput28844 canonicalOutput28844 (by decide) (by decide)
    ⟨false, true, canonicalPermutation360, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28845 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 1, 0, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput28845 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1492⟩

theorem canonicalSound28845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28845.moment H = canonicalOutput28845.moment H :=
  canonical_of_padded canonicalInput28845 canonicalOutput28845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28846 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![2, -2, 1, -1]]⟩

def canonicalOutput28846 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1737⟩

theorem canonicalSound28846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28846.moment H = canonicalOutput28846.moment H :=
  canonical_of_padded canonicalInput28846 canonicalOutput28846 (by decide) (by decide)
    ⟨false, false, canonicalPermutation361, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28847 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 1, 2, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput28847 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2222⟩

theorem canonicalSound28847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28847.moment H = canonicalOutput28847.moment H :=
  canonical_of_padded canonicalInput28847 canonicalOutput28847 (by decide) (by decide)
    ⟨false, false, canonicalPermutation362, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28848 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![-2, 2, -1, 1], ![2, -3, 1, 0]]⟩

def canonicalOutput28848 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1630⟩

theorem canonicalSound28848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28848.moment H = canonicalOutput28848.moment H :=
  canonical_of_padded canonicalInput28848 canonicalOutput28848 (by decide) (by decide)
    ⟨false, true, canonicalPermutation261, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28849 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 1, -2, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput28849 : ExponentCode := normalNode849

theorem canonicalSound28849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28849.moment H = canonicalOutput28849.moment H :=
  canonical_of_padded canonicalInput28849 canonicalOutput28849 (by decide) (by decide)
    ⟨false, false, canonicalPermutation358, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28850 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 1, -1, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput28850 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1493⟩

theorem canonicalSound28850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28850.moment H = canonicalOutput28850.moment H :=
  canonical_of_padded canonicalInput28850 canonicalOutput28850 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28851 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput28851 : ExponentCode := normalNode2655

theorem canonicalSound28851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28851.moment H = canonicalOutput28851.moment H :=
  canonical_of_padded canonicalInput28851 canonicalOutput28851 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28852 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 2, -1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput28852 : ExponentCode := normalNode849

theorem canonicalSound28852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28852.moment H = canonicalOutput28852.moment H :=
  canonical_of_padded canonicalInput28852 canonicalOutput28852 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28853 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![0, -2, 3, -1], ![-1, 2, -3, 2]]⟩

def canonicalOutput28853 : ExponentCode := normalNode10860

theorem canonicalSound28853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28853.moment H = canonicalOutput28853.moment H :=
  canonical_of_padded canonicalInput28853 canonicalOutput28853 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation228, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28854 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, -1, 0, 3], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput28854 : ExponentCode := normalNode1943

theorem canonicalSound28854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28854.moment H = canonicalOutput28854.moment H :=
  canonical_of_padded canonicalInput28854 canonicalOutput28854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28855 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, -1, 1, 2], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput28855 : ExponentCode := normalNode2640

theorem canonicalSound28855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28855.moment H = canonicalOutput28855.moment H :=
  canonical_of_padded canonicalInput28855 canonicalOutput28855 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28856 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, 2, 0, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput28856 : ExponentCode := normalNode1718

theorem canonicalSound28856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28856.moment H = canonicalOutput28856.moment H :=
  canonical_of_padded canonicalInput28856 canonicalOutput28856 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28857 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, -1, 3], ![1, -2, 1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput28857 : ExponentCode := normalNode2624

theorem canonicalSound28857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28857.moment H = canonicalOutput28857.moment H :=
  canonical_of_padded canonicalInput28857 canonicalOutput28857 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28858 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 2, -1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput28858 : ExponentCode := normalNode3869

theorem canonicalSound28858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28858.moment H = canonicalOutput28858.moment H :=
  canonical_of_padded canonicalInput28858 canonicalOutput28858 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28859 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput28859 : ExponentCode := normalNode2926

theorem canonicalSound28859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28859.moment H = canonicalOutput28859.moment H :=
  canonical_of_padded canonicalInput28859 canonicalOutput28859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28860 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![1, -3, 1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput28860 : ExponentCode := normalNode3899

theorem canonicalSound28860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28860.moment H = canonicalOutput28860.moment H :=
  canonical_of_padded canonicalInput28860 canonicalOutput28860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28861 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![1, -2, 0, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput28861 : ExponentCode := normalNode2623

theorem canonicalSound28861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28861.moment H = canonicalOutput28861.moment H :=
  canonical_of_padded canonicalInput28861 canonicalOutput28861 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28862 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput28862 : ExponentCode := normalNode2638

theorem canonicalSound28862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28862.moment H = canonicalOutput28862.moment H :=
  canonical_of_padded canonicalInput28862 canonicalOutput28862 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28863 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![0, 2, -2, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput28863 : ExponentCode := normalNode3869

theorem canonicalSound28863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28863.moment H = canonicalOutput28863.moment H :=
  canonical_of_padded canonicalInput28863 canonicalOutput28863 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
