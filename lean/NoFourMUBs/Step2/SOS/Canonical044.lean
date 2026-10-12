import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2816 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput2816 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1604⟩

theorem canonicalSound2816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2816.moment H = canonicalOutput2816.moment H :=
  canonical_of_padded canonicalInput2816 canonicalOutput2816 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2817 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput2817 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1605⟩

theorem canonicalSound2817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2817.moment H = canonicalOutput2817.moment H :=
  canonical_of_padded canonicalInput2817 canonicalOutput2817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2818 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 0, -1], ![0, 1, 3, -4], ![2, -1, -2, 1]]⟩

def canonicalOutput2818 : ExponentCode := normalNode10933

theorem canonicalSound2818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2818.moment H = canonicalOutput2818.moment H :=
  canonical_of_padded canonicalInput2818 canonicalOutput2818 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2819 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput2819 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node756⟩

theorem canonicalSound2819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2819.moment H = canonicalOutput2819.moment H :=
  canonical_of_padded canonicalInput2819 canonicalOutput2819 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2820 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput2820 : ExponentCode := normalNode6952

theorem canonicalSound2820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2820.moment H = canonicalOutput2820.moment H :=
  canonical_of_padded canonicalInput2820 canonicalOutput2820 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2821 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput2821 : ExponentCode := normalNode6520

theorem canonicalSound2821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2821.moment H = canonicalOutput2821.moment H :=
  canonical_of_padded canonicalInput2821 canonicalOutput2821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2822 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 0, -1], ![1, 0, 3, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput2822 : ExponentCode := normalNode6520

theorem canonicalSound2822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2822.moment H = canonicalOutput2822.moment H :=
  canonical_of_padded canonicalInput2822 canonicalOutput2822 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2823 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 1, -2], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput2823 : ExponentCode := normalNode1438

theorem canonicalSound2823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2823.moment H = canonicalOutput2823.moment H :=
  canonical_of_padded canonicalInput2823 canonicalOutput2823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2824 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput2824 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node785⟩

theorem canonicalSound2824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2824.moment H = canonicalOutput2824.moment H :=
  canonical_of_padded canonicalInput2824 canonicalOutput2824 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2825 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2825 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node906⟩

theorem canonicalSound2825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2825.moment H = canonicalOutput2825.moment H :=
  canonical_of_padded canonicalInput2825 canonicalOutput2825 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2826 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 1, -2], ![1, 0, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput2826 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node785⟩

theorem canonicalSound2826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2826.moment H = canonicalOutput2826.moment H :=
  canonical_of_padded canonicalInput2826 canonicalOutput2826 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2827 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 1, -2], ![1, 1, 1, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput2827 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node463⟩

theorem canonicalSound2827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2827.moment H = canonicalOutput2827.moment H :=
  canonical_of_padded canonicalInput2827 canonicalOutput2827 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2828 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 2, -3], ![0, 1, -2, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput2828 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code318

theorem canonicalSound2828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2828.moment H = canonicalOutput2828.moment H :=
  canonical_of_padded canonicalInput2828 canonicalOutput2828 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2829 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 2, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2829 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1563⟩

theorem canonicalSound2829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2829.moment H = canonicalOutput2829.moment H :=
  canonical_of_padded canonicalInput2829 canonicalOutput2829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2830 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 2, -3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2830 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1616⟩

theorem canonicalSound2830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2830.moment H = canonicalOutput2830.moment H :=
  canonical_of_padded canonicalInput2830 canonicalOutput2830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2831 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput2831 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1604⟩

theorem canonicalSound2831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2831.moment H = canonicalOutput2831.moment H :=
  canonical_of_padded canonicalInput2831 canonicalOutput2831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2832 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2832 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1605⟩

theorem canonicalSound2832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2832.moment H = canonicalOutput2832.moment H :=
  canonical_of_padded canonicalInput2832 canonicalOutput2832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2833 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 2, -3], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput2833 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code323

theorem canonicalSound2833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2833.moment H = canonicalOutput2833.moment H :=
  canonical_of_padded canonicalInput2833 canonicalOutput2833 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2834 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 2, -3], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput2834 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node784⟩

theorem canonicalSound2834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2834.moment H = canonicalOutput2834.moment H :=
  canonical_of_padded canonicalInput2834 canonicalOutput2834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2835 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 2, -3], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput2835 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node784⟩

theorem canonicalSound2835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2835.moment H = canonicalOutput2835.moment H :=
  canonical_of_padded canonicalInput2835 canonicalOutput2835 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2836 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 3, -4], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2836 : ExponentCode := normalNode1431

theorem canonicalSound2836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2836.moment H = canonicalOutput2836.moment H :=
  canonical_of_padded canonicalInput2836 canonicalOutput2836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2837 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2837 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1617⟩

theorem canonicalSound2837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2837.moment H = canonicalOutput2837.moment H :=
  canonical_of_padded canonicalInput2837 canonicalOutput2837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2838 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 3, -4], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput2838 : ExponentCode := normalNode1443

theorem canonicalSound2838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2838.moment H = canonicalOutput2838.moment H :=
  canonical_of_padded canonicalInput2838 canonicalOutput2838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2839 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 1, 3, -4], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput2839 : ExponentCode := normalNode1444

theorem canonicalSound2839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2839.moment H = canonicalOutput2839.moment H :=
  canonical_of_padded canonicalInput2839 canonicalOutput2839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2840 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 3, -4], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput2840 : ExponentCode := normalNode6519

theorem canonicalSound2840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2840.moment H = canonicalOutput2840.moment H :=
  canonical_of_padded canonicalInput2840 canonicalOutput2840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2841 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 1, 3, -4], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput2841 : ExponentCode := normalNode6519

theorem canonicalSound2841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2841.moment H = canonicalOutput2841.moment H :=
  canonical_of_padded canonicalInput2841 canonicalOutput2841 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2842 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 2, -2, 0], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput2842 : ExponentCode := normalNode6518

theorem canonicalSound2842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2842.moment H = canonicalOutput2842.moment H :=
  canonical_of_padded canonicalInput2842 canonicalOutput2842 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput2843 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 2, -2, 0], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput2843 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node469⟩

theorem canonicalSound2843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2843.moment H = canonicalOutput2843.moment H :=
  canonical_of_padded canonicalInput2843 canonicalOutput2843 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2844 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 2, -1, -1], ![1, -2, 3, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2844 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code564

theorem canonicalSound2844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2844.moment H = canonicalOutput2844.moment H :=
  canonical_of_padded canonicalInput2844 canonicalOutput2844 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2845 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 2, 2, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput2845 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1070⟩

theorem canonicalSound2845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2845.moment H = canonicalOutput2845.moment H :=
  canonical_of_padded canonicalInput2845 canonicalOutput2845 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2846 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 2, 3, -5], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput2846 : ExponentCode := normalNode7853

theorem canonicalSound2846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2846.moment H = canonicalOutput2846.moment H :=
  canonical_of_padded canonicalInput2846 canonicalOutput2846 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput2847 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 2, 3, -5], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput2847 : ExponentCode := normalNode9548

theorem canonicalSound2847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2847.moment H = canonicalOutput2847.moment H :=
  canonical_of_padded canonicalInput2847 canonicalOutput2847 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput2848 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -2, 1, 0], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput2848 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1071⟩

theorem canonicalSound2848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2848.moment H = canonicalOutput2848.moment H :=
  canonical_of_padded canonicalInput2848 canonicalOutput2848 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2849 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -2, 2, -1], ![0, 2, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2849 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node452⟩

theorem canonicalSound2849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2849.moment H = canonicalOutput2849.moment H :=
  canonical_of_padded canonicalInput2849 canonicalOutput2849 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2850 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -2, 2, -1], ![0, 2, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2850 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node447⟩

theorem canonicalSound2850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2850.moment H = canonicalOutput2850.moment H :=
  canonical_of_padded canonicalInput2850 canonicalOutput2850 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2851 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -2, 2, -1], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput2851 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code281

theorem canonicalSound2851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2851.moment H = canonicalOutput2851.moment H :=
  canonical_of_padded canonicalInput2851 canonicalOutput2851 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2852 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -2, 3, -2], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput2852 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code564

theorem canonicalSound2852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2852.moment H = canonicalOutput2852.moment H :=
  canonical_of_padded canonicalInput2852 canonicalOutput2852 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput2853 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -2, 3, -2], ![0, 2, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput2853 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code560

theorem canonicalSound2853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2853.moment H = canonicalOutput2853.moment H :=
  canonical_of_padded canonicalInput2853 canonicalOutput2853 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput2854 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -2, 3, -2], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2854 : ExponentCode := normalNode7371

theorem canonicalSound2854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2854.moment H = canonicalOutput2854.moment H :=
  canonical_of_padded canonicalInput2854 canonicalOutput2854 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2855 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -1, 1, -1], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2855 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node464⟩

theorem canonicalSound2855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2855.moment H = canonicalOutput2855.moment H :=
  canonical_of_padded canonicalInput2855 canonicalOutput2855 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2856 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -1, 1, -1], ![0, 1, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput2856 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node467⟩

theorem canonicalSound2856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2856.moment H = canonicalOutput2856.moment H :=
  canonical_of_padded canonicalInput2856 canonicalOutput2856 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2857 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -1, 1, -1], ![0, 2, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2857 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node468⟩

theorem canonicalSound2857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2857.moment H = canonicalOutput2857.moment H :=
  canonical_of_padded canonicalInput2857 canonicalOutput2857 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2858 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -1, 1, -1], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput2858 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1080⟩

theorem canonicalSound2858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2858.moment H = canonicalOutput2858.moment H :=
  canonical_of_padded canonicalInput2858 canonicalOutput2858 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2859 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -1, 2, -2], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput2859 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code321

theorem canonicalSound2859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2859.moment H = canonicalOutput2859.moment H :=
  canonical_of_padded canonicalInput2859 canonicalOutput2859 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2860 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -1, 3, -3], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput2860 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code322

theorem canonicalSound2860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2860.moment H = canonicalOutput2860.moment H :=
  canonical_of_padded canonicalInput2860 canonicalOutput2860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2861 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -1, 3, -3], ![0, 2, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2861 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1166⟩

theorem canonicalSound2861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2861.moment H = canonicalOutput2861.moment H :=
  canonical_of_padded canonicalInput2861 canonicalOutput2861 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2862 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -1, 3, -3], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2862 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node954⟩

theorem canonicalSound2862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2862.moment H = canonicalOutput2862.moment H :=
  canonical_of_padded canonicalInput2862 canonicalOutput2862 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput2863 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -1, 3, -3], ![0, 2, 0, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput2863 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code335

theorem canonicalSound2863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2863.moment H = canonicalOutput2863.moment H :=
  canonical_of_padded canonicalInput2863 canonicalOutput2863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2864 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, -1, 4, -4], ![0, 2, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2864 : ExponentCode := normalNode6518

theorem canonicalSound2864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2864.moment H = canonicalOutput2864.moment H :=
  canonical_of_padded canonicalInput2864 canonicalOutput2864 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput2865 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, 0, -2, 1], ![0, 1, 1, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput2865 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node785⟩

theorem canonicalSound2865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2865.moment H = canonicalOutput2865.moment H :=
  canonical_of_padded canonicalInput2865 canonicalOutput2865 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2866 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, 0, -2, 1], ![0, 1, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput2866 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node784⟩

theorem canonicalSound2866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2866.moment H = canonicalOutput2866.moment H :=
  canonical_of_padded canonicalInput2866 canonicalOutput2866 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2867 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, 0, -2, 1], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput2867 : ExponentCode := normalNode6519

theorem canonicalSound2867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2867.moment H = canonicalOutput2867.moment H :=
  canonical_of_padded canonicalInput2867 canonicalOutput2867 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2868 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, 0, 1, -2], ![0, 1, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput2868 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node784⟩

theorem canonicalSound2868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2868.moment H = canonicalOutput2868.moment H :=
  canonical_of_padded canonicalInput2868 canonicalOutput2868 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2869 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, 0, 1, -2], ![0, 2, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput2869 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node469⟩

theorem canonicalSound2869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2869.moment H = canonicalOutput2869.moment H :=
  canonical_of_padded canonicalInput2869 canonicalOutput2869 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2870 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, 0, 3, -4], ![0, 2, -1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput2870 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code334

theorem canonicalSound2870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2870.moment H = canonicalOutput2870.moment H :=
  canonical_of_padded canonicalInput2870 canonicalOutput2870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2871 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, 1, -2, 0], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput2871 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node465⟩

theorem canonicalSound2871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2871.moment H = canonicalOutput2871.moment H :=
  canonical_of_padded canonicalInput2871 canonicalOutput2871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2872 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, 1, -2, 0], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput2872 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node467⟩

theorem canonicalSound2872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2872.moment H = canonicalOutput2872.moment H :=
  canonical_of_padded canonicalInput2872 canonicalOutput2872 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2873 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![1, 1, 0, -2], ![0, 1, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput2873 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node466⟩

theorem canonicalSound2873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2873.moment H = canonicalOutput2873.moment H :=
  canonical_of_padded canonicalInput2873 canonicalOutput2873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2874 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput2874 : ExponentCode := normalNode10379

theorem canonicalSound2874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2874.moment H = canonicalOutput2874.moment H :=
  canonical_of_padded canonicalInput2874 canonicalOutput2874 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2875 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, -1, 0], ![0, 1, 1, -1, -1], ![2, 1, -1, 0, -2]]⟩

def canonicalOutput2875 : ExponentCode := normalNode9211

theorem canonicalSound2875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2875.moment H = canonicalOutput2875.moment H :=
  canonical_of_padded canonicalInput2875 canonicalOutput2875 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput2876 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, -1, 0], ![1, 1, -1, 0, -1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput2876 : ExponentCode := normalNode10908

theorem canonicalSound2876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2876.moment H = canonicalOutput2876.moment H :=
  canonical_of_padded canonicalInput2876 canonicalOutput2876 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2877 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, -1, 0], ![1, 1, 0, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput2877 : ExponentCode := normalNode9140

theorem canonicalSound2877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2877.moment H = canonicalOutput2877.moment H :=
  canonical_of_padded canonicalInput2877 canonicalOutput2877 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput2878 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput2878 : ExponentCode := normalNode10380

theorem canonicalSound2878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2878.moment H = canonicalOutput2878.moment H :=
  canonical_of_padded canonicalInput2878 canonicalOutput2878 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2879 : ExponentCode := ⟨5, 5, ![![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 2, 0, -2, 0], ![2, 0, 0, 0, -2]]⟩

def canonicalOutput2879 : ExponentCode := normalNode6533

theorem canonicalSound2879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2879.moment H = canonicalOutput2879.moment H :=
  canonical_of_padded canonicalInput2879 canonicalOutput2879 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
