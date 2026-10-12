import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21824 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21824 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound21824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21824.moment H = canonicalOutput21824.moment H :=
  canonical_of_padded canonicalInput21824 canonicalOutput21824 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput21825 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21825 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound21825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21825.moment H = canonicalOutput21825.moment H :=
  canonical_of_padded canonicalInput21825 canonicalOutput21825 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput21826 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput21826 : ExponentCode := normalNode9068

theorem canonicalSound21826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21826.moment H = canonicalOutput21826.moment H :=
  canonical_of_padded canonicalInput21826 canonicalOutput21826 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput21827 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput21827 : ExponentCode := normalNode8330

theorem canonicalSound21827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21827.moment H = canonicalOutput21827.moment H :=
  canonical_of_padded canonicalInput21827 canonicalOutput21827 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput21828 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput21828 : ExponentCode := normalNode8406

theorem canonicalSound21828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21828.moment H = canonicalOutput21828.moment H :=
  canonical_of_padded canonicalInput21828 canonicalOutput21828 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput21829 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21829 : ExponentCode := normalNode8064

theorem canonicalSound21829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21829.moment H = canonicalOutput21829.moment H :=
  canonical_of_padded canonicalInput21829 canonicalOutput21829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21830 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21830 : ExponentCode := normalNode8066

theorem canonicalSound21830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21830.moment H = canonicalOutput21830.moment H :=
  canonical_of_padded canonicalInput21830 canonicalOutput21830 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21831 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21831 : ExponentCode := normalNode8066

theorem canonicalSound21831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21831.moment H = canonicalOutput21831.moment H :=
  canonical_of_padded canonicalInput21831 canonicalOutput21831 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21832 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput21832 : ExponentCode := normalNode8064

theorem canonicalSound21832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21832.moment H = canonicalOutput21832.moment H :=
  canonical_of_padded canonicalInput21832 canonicalOutput21832 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21833 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21833 : ExponentCode := normalNode8066

theorem canonicalSound21833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21833.moment H = canonicalOutput21833.moment H :=
  canonical_of_padded canonicalInput21833 canonicalOutput21833 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput21834 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21834 : ExponentCode := normalNode8361

theorem canonicalSound21834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21834.moment H = canonicalOutput21834.moment H :=
  canonical_of_padded canonicalInput21834 canonicalOutput21834 (by decide) (by decide)
    ⟨false, false, canonicalPermutation206, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput21835 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21835 : ExponentCode := normalNode8067

theorem canonicalSound21835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21835.moment H = canonicalOutput21835.moment H :=
  canonical_of_padded canonicalInput21835 canonicalOutput21835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21836 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21836 : ExponentCode := normalNode8067

theorem canonicalSound21836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21836.moment H = canonicalOutput21836.moment H :=
  canonical_of_padded canonicalInput21836 canonicalOutput21836 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21837 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21837 : ExponentCode := normalNode8361

theorem canonicalSound21837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21837.moment H = canonicalOutput21837.moment H :=
  canonical_of_padded canonicalInput21837 canonicalOutput21837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput21838 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21838 : ExponentCode := normalNode8066

theorem canonicalSound21838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21838.moment H = canonicalOutput21838.moment H :=
  canonical_of_padded canonicalInput21838 canonicalOutput21838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput21839 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21839 : ExponentCode := normalNode8066

theorem canonicalSound21839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21839.moment H = canonicalOutput21839.moment H :=
  canonical_of_padded canonicalInput21839 canonicalOutput21839 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput21840 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21840 : ExponentCode := normalNode8067

theorem canonicalSound21840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21840.moment H = canonicalOutput21840.moment H :=
  canonical_of_padded canonicalInput21840 canonicalOutput21840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21841 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21841 : ExponentCode := normalNode8361

theorem canonicalSound21841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21841.moment H = canonicalOutput21841.moment H :=
  canonical_of_padded canonicalInput21841 canonicalOutput21841 (by decide) (by decide)
    ⟨false, false, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput21842 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21842 : ExponentCode := normalNode8361

theorem canonicalSound21842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21842.moment H = canonicalOutput21842.moment H :=
  canonical_of_padded canonicalInput21842 canonicalOutput21842 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput21843 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21843 : ExponentCode := normalNode8067

theorem canonicalSound21843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21843.moment H = canonicalOutput21843.moment H :=
  canonical_of_padded canonicalInput21843 canonicalOutput21843 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21844 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21844 : ExponentCode := normalNode8066

theorem canonicalSound21844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21844.moment H = canonicalOutput21844.moment H :=
  canonical_of_padded canonicalInput21844 canonicalOutput21844 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput21845 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput21845 : ExponentCode := normalNode8064

theorem canonicalSound21845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21845.moment H = canonicalOutput21845.moment H :=
  canonical_of_padded canonicalInput21845 canonicalOutput21845 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21846 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21846 : ExponentCode := normalNode8066

theorem canonicalSound21846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21846.moment H = canonicalOutput21846.moment H :=
  canonical_of_padded canonicalInput21846 canonicalOutput21846 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21847 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21847 : ExponentCode := normalNode8066

theorem canonicalSound21847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21847.moment H = canonicalOutput21847.moment H :=
  canonical_of_padded canonicalInput21847 canonicalOutput21847 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21848 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput21848 : ExponentCode := normalNode8064

theorem canonicalSound21848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21848.moment H = canonicalOutput21848.moment H :=
  canonical_of_padded canonicalInput21848 canonicalOutput21848 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21849 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21849 : ExponentCode := normalNode8067

theorem canonicalSound21849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21849.moment H = canonicalOutput21849.moment H :=
  canonical_of_padded canonicalInput21849 canonicalOutput21849 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21850 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21850 : ExponentCode := normalNode8066

theorem canonicalSound21850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21850.moment H = canonicalOutput21850.moment H :=
  canonical_of_padded canonicalInput21850 canonicalOutput21850 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21851 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21851 : ExponentCode := normalNode8361

theorem canonicalSound21851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21851.moment H = canonicalOutput21851.moment H :=
  canonical_of_padded canonicalInput21851 canonicalOutput21851 (by decide) (by decide)
    ⟨false, false, canonicalPermutation206, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput21852 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21852 : ExponentCode := normalNode8361

theorem canonicalSound21852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21852.moment H = canonicalOutput21852.moment H :=
  canonical_of_padded canonicalInput21852 canonicalOutput21852 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput21853 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput21853 : ExponentCode := normalNode8066

theorem canonicalSound21853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21853.moment H = canonicalOutput21853.moment H :=
  canonical_of_padded canonicalInput21853 canonicalOutput21853 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21854 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21854 : ExponentCode := normalNode8067

theorem canonicalSound21854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21854.moment H = canonicalOutput21854.moment H :=
  canonical_of_padded canonicalInput21854 canonicalOutput21854 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21855 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21855 : ExponentCode := normalNode8361

theorem canonicalSound21855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21855.moment H = canonicalOutput21855.moment H :=
  canonical_of_padded canonicalInput21855 canonicalOutput21855 (by decide) (by decide)
    ⟨false, false, canonicalPermutation218, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput21856 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21856 : ExponentCode := normalNode8361

theorem canonicalSound21856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21856.moment H = canonicalOutput21856.moment H :=
  canonical_of_padded canonicalInput21856 canonicalOutput21856 (by decide) (by decide)
    ⟨false, false, canonicalPermutation218, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput21857 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21857 : ExponentCode := normalNode8361

theorem canonicalSound21857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21857.moment H = canonicalOutput21857.moment H :=
  canonical_of_padded canonicalInput21857 canonicalOutput21857 (by decide) (by decide)
    ⟨false, false, canonicalPermutation218, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput21858 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21858 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound21858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21858.moment H = canonicalOutput21858.moment H :=
  canonical_of_padded canonicalInput21858 canonicalOutput21858 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput21859 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21859 : ExponentCode := normalNode8361

theorem canonicalSound21859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21859.moment H = canonicalOutput21859.moment H :=
  canonical_of_padded canonicalInput21859 canonicalOutput21859 (by decide) (by decide)
    ⟨false, false, canonicalPermutation219, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput21860 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21860 : ExponentCode := normalNode8361

theorem canonicalSound21860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21860.moment H = canonicalOutput21860.moment H :=
  canonical_of_padded canonicalInput21860 canonicalOutput21860 (by decide) (by decide)
    ⟨false, false, canonicalPermutation219, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput21861 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21861 : ExponentCode := normalNode8361

theorem canonicalSound21861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21861.moment H = canonicalOutput21861.moment H :=
  canonical_of_padded canonicalInput21861 canonicalOutput21861 (by decide) (by decide)
    ⟨false, false, canonicalPermutation219, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput21862 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput21862 : ExponentCode := normalNode8066

theorem canonicalSound21862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21862.moment H = canonicalOutput21862.moment H :=
  canonical_of_padded canonicalInput21862 canonicalOutput21862 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21863 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput21863 : ExponentCode := normalNode8067

theorem canonicalSound21863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21863.moment H = canonicalOutput21863.moment H :=
  canonical_of_padded canonicalInput21863 canonicalOutput21863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21864 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21864 : ExponentCode := normalNode8361

theorem canonicalSound21864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21864.moment H = canonicalOutput21864.moment H :=
  canonical_of_padded canonicalInput21864 canonicalOutput21864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput21865 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21865 : ExponentCode := normalNode8361

theorem canonicalSound21865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21865.moment H = canonicalOutput21865.moment H :=
  canonical_of_padded canonicalInput21865 canonicalOutput21865 (by decide) (by decide)
    ⟨false, false, canonicalPermutation220, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput21866 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21866 : ExponentCode := normalNode8067

theorem canonicalSound21866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21866.moment H = canonicalOutput21866.moment H :=
  canonical_of_padded canonicalInput21866 canonicalOutput21866 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21867 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput21867 : ExponentCode := normalNode8066

theorem canonicalSound21867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21867.moment H = canonicalOutput21867.moment H :=
  canonical_of_padded canonicalInput21867 canonicalOutput21867 (by decide) (by decide)
    ⟨false, false, canonicalPermutation95, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21868 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21868 : ExponentCode := normalNode8067

theorem canonicalSound21868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21868.moment H = canonicalOutput21868.moment H :=
  canonical_of_padded canonicalInput21868 canonicalOutput21868 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21869 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21869 : ExponentCode := normalNode8361

theorem canonicalSound21869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21869.moment H = canonicalOutput21869.moment H :=
  canonical_of_padded canonicalInput21869 canonicalOutput21869 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput21870 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21870 : ExponentCode := normalNode8066

theorem canonicalSound21870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21870.moment H = canonicalOutput21870.moment H :=
  canonical_of_padded canonicalInput21870 canonicalOutput21870 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21871 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput21871 : ExponentCode := normalNode8066

theorem canonicalSound21871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21871.moment H = canonicalOutput21871.moment H :=
  canonical_of_padded canonicalInput21871 canonicalOutput21871 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21872 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21872 : ExponentCode := normalNode8361

theorem canonicalSound21872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21872.moment H = canonicalOutput21872.moment H :=
  canonical_of_padded canonicalInput21872 canonicalOutput21872 (by decide) (by decide)
    ⟨false, false, canonicalPermutation220, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput21873 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21873 : ExponentCode := normalNode8067

theorem canonicalSound21873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21873.moment H = canonicalOutput21873.moment H :=
  canonical_of_padded canonicalInput21873 canonicalOutput21873 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21874 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput21874 : ExponentCode := normalNode8066

theorem canonicalSound21874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21874.moment H = canonicalOutput21874.moment H :=
  canonical_of_padded canonicalInput21874 canonicalOutput21874 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21875 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21875 : ExponentCode := normalNode8361

theorem canonicalSound21875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21875.moment H = canonicalOutput21875.moment H :=
  canonical_of_padded canonicalInput21875 canonicalOutput21875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput21876 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput21876 : ExponentCode := normalNode8067

theorem canonicalSound21876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21876.moment H = canonicalOutput21876.moment H :=
  canonical_of_padded canonicalInput21876 canonicalOutput21876 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21877 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21877 : ExponentCode := normalNode8067

theorem canonicalSound21877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21877.moment H = canonicalOutput21877.moment H :=
  canonical_of_padded canonicalInput21877 canonicalOutput21877 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput21878 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21878 : ExponentCode := normalNode8361

theorem canonicalSound21878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21878.moment H = canonicalOutput21878.moment H :=
  canonical_of_padded canonicalInput21878 canonicalOutput21878 (by decide) (by decide)
    ⟨false, false, canonicalPermutation220, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput21879 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput21879 : ExponentCode := normalNode8066

theorem canonicalSound21879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21879.moment H = canonicalOutput21879.moment H :=
  canonical_of_padded canonicalInput21879 canonicalOutput21879 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21880 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput21880 : ExponentCode := normalNode8064

theorem canonicalSound21880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21880.moment H = canonicalOutput21880.moment H :=
  canonical_of_padded canonicalInput21880 canonicalOutput21880 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21881 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput21881 : ExponentCode := normalNode8066

theorem canonicalSound21881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21881.moment H = canonicalOutput21881.moment H :=
  canonical_of_padded canonicalInput21881 canonicalOutput21881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput21882 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput21882 : ExponentCode := normalNode8066

theorem canonicalSound21882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21882.moment H = canonicalOutput21882.moment H :=
  canonical_of_padded canonicalInput21882 canonicalOutput21882 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput21883 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput21883 : ExponentCode := normalNode8064

theorem canonicalSound21883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21883.moment H = canonicalOutput21883.moment H :=
  canonical_of_padded canonicalInput21883 canonicalOutput21883 (by decide) (by decide)
    ⟨false, false, canonicalPermutation96, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput21884 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput21884 : ExponentCode := normalNode8068

theorem canonicalSound21884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21884.moment H = canonicalOutput21884.moment H :=
  canonical_of_padded canonicalInput21884 canonicalOutput21884 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, canonicalPermutation221⟩ (by decide +kernel) hH

def canonicalInput21885 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput21885 : ExponentCode := normalNode8458

theorem canonicalSound21885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21885.moment H = canonicalOutput21885.moment H :=
  canonical_of_padded canonicalInput21885 canonicalOutput21885 (by decide) (by decide)
    ⟨false, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput21886 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput21886 : ExponentCode := normalNode8346

theorem canonicalSound21886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21886.moment H = canonicalOutput21886.moment H :=
  canonical_of_padded canonicalInput21886 canonicalOutput21886 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput21887 : ExponentCode := ⟨6, 6, ![![-1, 0, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput21887 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound21887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21887.moment H = canonicalOutput21887.moment H :=
  canonical_of_padded canonicalInput21887 canonicalOutput21887 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
