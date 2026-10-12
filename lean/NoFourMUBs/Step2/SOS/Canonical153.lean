import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9792 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9792 : ExponentCode := normalNode10735

theorem canonicalSound9792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9792.moment H = canonicalOutput9792.moment H :=
  canonical_of_padded canonicalInput9792 canonicalOutput9792 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9793 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput9793 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1492⟩

theorem canonicalSound9793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9793.moment H = canonicalOutput9793.moment H :=
  canonical_of_padded canonicalInput9793 canonicalOutput9793 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9794 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput9794 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1493⟩

theorem canonicalSound9794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9794.moment H = canonicalOutput9794.moment H :=
  canonical_of_padded canonicalInput9794 canonicalOutput9794 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9795 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput9795 : ExponentCode := normalNode4858

theorem canonicalSound9795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9795.moment H = canonicalOutput9795.moment H :=
  canonical_of_padded canonicalInput9795 canonicalOutput9795 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9796 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput9796 : ExponentCode := normalNode11004

theorem canonicalSound9796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9796.moment H = canonicalOutput9796.moment H :=
  canonical_of_padded canonicalInput9796 canonicalOutput9796 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9797 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput9797 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1351⟩

theorem canonicalSound9797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9797.moment H = canonicalOutput9797.moment H :=
  canonical_of_padded canonicalInput9797 canonicalOutput9797 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9798 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9798 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1495⟩

theorem canonicalSound9798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9798.moment H = canonicalOutput9798.moment H :=
  canonical_of_padded canonicalInput9798 canonicalOutput9798 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9799 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 1, 2, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput9799 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1120⟩

theorem canonicalSound9799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9799.moment H = canonicalOutput9799.moment H :=
  canonical_of_padded canonicalInput9799 canonicalOutput9799 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9800 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput9800 : ExponentCode := normalNode4861

theorem canonicalSound9800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9800.moment H = canonicalOutput9800.moment H :=
  canonical_of_padded canonicalInput9800 canonicalOutput9800 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9801 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput9801 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1108⟩

theorem canonicalSound9801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9801.moment H = canonicalOutput9801.moment H :=
  canonical_of_padded canonicalInput9801 canonicalOutput9801 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9802 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput9802 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1129⟩

theorem canonicalSound9802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9802.moment H = canonicalOutput9802.moment H :=
  canonical_of_padded canonicalInput9802 canonicalOutput9802 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9803 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput9803 : ExponentCode := normalNode9712

theorem canonicalSound9803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9803.moment H = canonicalOutput9803.moment H :=
  canonical_of_padded canonicalInput9803 canonicalOutput9803 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9804 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput9804 : ExponentCode := normalNode4794

theorem canonicalSound9804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9804.moment H = canonicalOutput9804.moment H :=
  canonical_of_padded canonicalInput9804 canonicalOutput9804 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9805 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, -1, 0, 1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput9805 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1498⟩

theorem canonicalSound9805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9805.moment H = canonicalOutput9805.moment H :=
  canonical_of_padded canonicalInput9805 canonicalOutput9805 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9806 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput9806 : ExponentCode := normalNode5733

theorem canonicalSound9806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9806.moment H = canonicalOutput9806.moment H :=
  canonical_of_padded canonicalInput9806 canonicalOutput9806 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9807 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput9807 : ExponentCode := normalNode10718

theorem canonicalSound9807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9807.moment H = canonicalOutput9807.moment H :=
  canonical_of_padded canonicalInput9807 canonicalOutput9807 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9808 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput9808 : ExponentCode := normalNode10861

theorem canonicalSound9808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9808.moment H = canonicalOutput9808.moment H :=
  canonical_of_padded canonicalInput9808 canonicalOutput9808 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9809 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput9809 : ExponentCode := normalNode10862

theorem canonicalSound9809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9809.moment H = canonicalOutput9809.moment H :=
  canonical_of_padded canonicalInput9809 canonicalOutput9809 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9810 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput9810 : ExponentCode := normalNode5737

theorem canonicalSound9810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9810.moment H = canonicalOutput9810.moment H :=
  canonical_of_padded canonicalInput9810 canonicalOutput9810 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9811 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput9811 : ExponentCode := normalNode10703

theorem canonicalSound9811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9811.moment H = canonicalOutput9811.moment H :=
  canonical_of_padded canonicalInput9811 canonicalOutput9811 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9812 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput9812 : ExponentCode := normalNode10704

theorem canonicalSound9812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9812.moment H = canonicalOutput9812.moment H :=
  canonical_of_padded canonicalInput9812 canonicalOutput9812 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9813 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9813 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2823⟩

theorem canonicalSound9813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9813.moment H = canonicalOutput9813.moment H :=
  canonical_of_padded canonicalInput9813 canonicalOutput9813 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9814 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput9814 : ExponentCode := normalNode10704

theorem canonicalSound9814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9814.moment H = canonicalOutput9814.moment H :=
  canonical_of_padded canonicalInput9814 canonicalOutput9814 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9815 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput9815 : ExponentCode := normalNode10703

theorem canonicalSound9815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9815.moment H = canonicalOutput9815.moment H :=
  canonical_of_padded canonicalInput9815 canonicalOutput9815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9816 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9816 : ExponentCode := normalNode10689

theorem canonicalSound9816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9816.moment H = canonicalOutput9816.moment H :=
  canonical_of_padded canonicalInput9816 canonicalOutput9816 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9817 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9817 : ExponentCode := normalNode10678

theorem canonicalSound9817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9817.moment H = canonicalOutput9817.moment H :=
  canonical_of_padded canonicalInput9817 canonicalOutput9817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9818 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput9818 : ExponentCode := normalNode5740

theorem canonicalSound9818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9818.moment H = canonicalOutput9818.moment H :=
  canonical_of_padded canonicalInput9818 canonicalOutput9818 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9819 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput9819 : ExponentCode := normalNode4893

theorem canonicalSound9819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9819.moment H = canonicalOutput9819.moment H :=
  canonical_of_padded canonicalInput9819 canonicalOutput9819 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9820 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput9820 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1505⟩

theorem canonicalSound9820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9820.moment H = canonicalOutput9820.moment H :=
  canonical_of_padded canonicalInput9820 canonicalOutput9820 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9821 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput9821 : ExponentCode := normalNode4894

theorem canonicalSound9821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9821.moment H = canonicalOutput9821.moment H :=
  canonical_of_padded canonicalInput9821 canonicalOutput9821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9822 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9822 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1513⟩

theorem canonicalSound9822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9822.moment H = canonicalOutput9822.moment H :=
  canonical_of_padded canonicalInput9822 canonicalOutput9822 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9823 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput9823 : ExponentCode := normalNode4896

theorem canonicalSound9823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9823.moment H = canonicalOutput9823.moment H :=
  canonical_of_padded canonicalInput9823 canonicalOutput9823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9824 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput9824 : ExponentCode := normalNode4898

theorem canonicalSound9824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9824.moment H = canonicalOutput9824.moment H :=
  canonical_of_padded canonicalInput9824 canonicalOutput9824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9825 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput9825 : ExponentCode := normalNode4899

theorem canonicalSound9825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9825.moment H = canonicalOutput9825.moment H :=
  canonical_of_padded canonicalInput9825 canonicalOutput9825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9826 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![1, -1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput9826 : ExponentCode := normalNode9475

theorem canonicalSound9826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9826.moment H = canonicalOutput9826.moment H :=
  canonical_of_padded canonicalInput9826 canonicalOutput9826 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput9827 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput9827 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound9827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9827.moment H = canonicalOutput9827.moment H :=
  canonical_of_padded canonicalInput9827 canonicalOutput9827 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9828 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![1, -1, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput9828 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1342⟩

theorem canonicalSound9828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9828.moment H = canonicalOutput9828.moment H :=
  canonical_of_padded canonicalInput9828 canonicalOutput9828 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9829 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput9829 : ExponentCode := normalNode10350

theorem canonicalSound9829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9829.moment H = canonicalOutput9829.moment H :=
  canonical_of_padded canonicalInput9829 canonicalOutput9829 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9830 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput9830 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1198⟩

theorem canonicalSound9830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9830.moment H = canonicalOutput9830.moment H :=
  canonical_of_padded canonicalInput9830 canonicalOutput9830 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput9831 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 1, 0], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput9831 : ExponentCode := normalNode10350

theorem canonicalSound9831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9831.moment H = canonicalOutput9831.moment H :=
  canonical_of_padded canonicalInput9831 canonicalOutput9831 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput9832 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 2, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, -1, 1, -2]]⟩

def canonicalOutput9832 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1366⟩

theorem canonicalSound9832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9832.moment H = canonicalOutput9832.moment H :=
  canonical_of_padded canonicalInput9832 canonicalOutput9832 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput9833 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput9833 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2327⟩

theorem canonicalSound9833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9833.moment H = canonicalOutput9833.moment H :=
  canonical_of_padded canonicalInput9833 canonicalOutput9833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9834 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 2, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput9834 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node714⟩

theorem canonicalSound9834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9834.moment H = canonicalOutput9834.moment H :=
  canonical_of_padded canonicalInput9834 canonicalOutput9834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9835 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput9835 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1274⟩

theorem canonicalSound9835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9835.moment H = canonicalOutput9835.moment H :=
  canonical_of_padded canonicalInput9835 canonicalOutput9835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9836 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 2, -1], ![1, 0, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput9836 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1274⟩

theorem canonicalSound9836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9836.moment H = canonicalOutput9836.moment H :=
  canonical_of_padded canonicalInput9836 canonicalOutput9836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9837 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 2, -1], ![1, 1, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput9837 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node714⟩

theorem canonicalSound9837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9837.moment H = canonicalOutput9837.moment H :=
  canonical_of_padded canonicalInput9837 canonicalOutput9837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9838 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput9838 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2325⟩

theorem canonicalSound9838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9838.moment H = canonicalOutput9838.moment H :=
  canonical_of_padded canonicalInput9838 canonicalOutput9838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9839 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput9839 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1215⟩

theorem canonicalSound9839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9839.moment H = canonicalOutput9839.moment H :=
  canonical_of_padded canonicalInput9839 canonicalOutput9839 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9840 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput9840 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node713⟩

theorem canonicalSound9840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9840.moment H = canonicalOutput9840.moment H :=
  canonical_of_padded canonicalInput9840 canonicalOutput9840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9841 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 3, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput9841 : ExponentCode := normalNode9978

theorem canonicalSound9841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9841.moment H = canonicalOutput9841.moment H :=
  canonical_of_padded canonicalInput9841 canonicalOutput9841 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9842 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 3, -2], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput9842 : ExponentCode := normalNode9978

theorem canonicalSound9842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9842.moment H = canonicalOutput9842.moment H :=
  canonical_of_padded canonicalInput9842 canonicalOutput9842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9843 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 3, -2], ![1, 1, -2, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput9843 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node713⟩

theorem canonicalSound9843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9843.moment H = canonicalOutput9843.moment H :=
  canonical_of_padded canonicalInput9843 canonicalOutput9843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9844 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput9844 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node674⟩

theorem canonicalSound9844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9844.moment H = canonicalOutput9844.moment H :=
  canonical_of_padded canonicalInput9844 canonicalOutput9844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9845 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 4, -3], ![0, 1, -2, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput9845 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code747

theorem canonicalSound9845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9845.moment H = canonicalOutput9845.moment H :=
  canonical_of_padded canonicalInput9845 canonicalOutput9845 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9846 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9846 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2324⟩

theorem canonicalSound9846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9846.moment H = canonicalOutput9846.moment H :=
  canonical_of_padded canonicalInput9846 canonicalOutput9846 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9847 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 4, -3], ![0, 1, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput9847 : ExponentCode := normalNode10959

theorem canonicalSound9847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9847.moment H = canonicalOutput9847.moment H :=
  canonical_of_padded canonicalInput9847 canonicalOutput9847 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9848 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput9848 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1064⟩

theorem canonicalSound9848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9848.moment H = canonicalOutput9848.moment H :=
  canonical_of_padded canonicalInput9848 canonicalOutput9848 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9849 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 4, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput9849 : ExponentCode := normalNode9103

theorem canonicalSound9849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9849.moment H = canonicalOutput9849.moment H :=
  canonical_of_padded canonicalInput9849 canonicalOutput9849 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput9850 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9850 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node908⟩

theorem canonicalSound9850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9850.moment H = canonicalOutput9850.moment H :=
  canonical_of_padded canonicalInput9850 canonicalOutput9850 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9851 : ExponentCode := ⟨4, 4, ![![-2, 1, -2, 3], ![0, -1, 4, -3], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput9851 : ExponentCode := normalNode9103

theorem canonicalSound9851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9851.moment H = canonicalOutput9851.moment H :=
  canonical_of_padded canonicalInput9851 canonicalOutput9851 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9852 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput9852 : ExponentCode := normalNode4875

theorem canonicalSound9852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9852.moment H = canonicalOutput9852.moment H :=
  canonical_of_padded canonicalInput9852 canonicalOutput9852 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9853 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput9853 : ExponentCode := normalNode4879

theorem canonicalSound9853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9853.moment H = canonicalOutput9853.moment H :=
  canonical_of_padded canonicalInput9853 canonicalOutput9853 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9854 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput9854 : ExponentCode := normalNode4880

theorem canonicalSound9854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9854.moment H = canonicalOutput9854.moment H :=
  canonical_of_padded canonicalInput9854 canonicalOutput9854 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9855 : ExponentCode := ⟨5, 4, ![![-2, 1, -2, 3], ![0, 0, -1, 1], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9855 : ExponentCode := normalNode10924

theorem canonicalSound9855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9855.moment H = canonicalOutput9855.moment H :=
  canonical_of_padded canonicalInput9855 canonicalOutput9855 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
