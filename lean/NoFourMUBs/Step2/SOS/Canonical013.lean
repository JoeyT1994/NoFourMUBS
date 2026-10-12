import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput832 : ExponentCode := ⟨3, 3, ![![-3, 2, 1], ![1, -4, 3], ![2, 2, -4]]⟩

def canonicalOutput832 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node22⟩

theorem canonicalSound832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput832.moment H = canonicalOutput832.moment H :=
  canonical_of_padded canonicalInput832 canonicalOutput832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput833 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![1, -3, 2], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput833 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput833.moment H = canonicalOutput833.moment H :=
  canonical_of_padded canonicalInput833 canonicalOutput833 (by decide) (by decide)
    ⟨false, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput834 : ExponentCode := ⟨4, 3, ![![-3, 2, 1], ![1, -2, 1], ![1, -2, 1], ![1, 2, -3]]⟩

def canonicalOutput834 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node114⟩

theorem canonicalSound834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput834.moment H = canonicalOutput834.moment H :=
  canonical_of_padded canonicalInput834 canonicalOutput834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput835 : ExponentCode := ⟨3, 3, ![![-3, 2, 1], ![1, 2, -3], ![2, -4, 2]]⟩

def canonicalOutput835 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node20⟩

theorem canonicalSound835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput835.moment H = canonicalOutput835.moment H :=
  canonical_of_padded canonicalInput835 canonicalOutput835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput836 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput836 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput836.moment H = canonicalOutput836.moment H :=
  canonical_of_padded canonicalInput836 canonicalOutput836 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput837 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput837 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput837.moment H = canonicalOutput837.moment H :=
  canonical_of_padded canonicalInput837 canonicalOutput837 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput838 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput838 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput838.moment H = canonicalOutput838.moment H :=
  canonical_of_padded canonicalInput838 canonicalOutput838 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput839 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput839 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput839.moment H = canonicalOutput839.moment H :=
  canonical_of_padded canonicalInput839 canonicalOutput839 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput840 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput840 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound840 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput840.moment H = canonicalOutput840.moment H :=
  canonical_of_padded canonicalInput840 canonicalOutput840 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput841 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput841 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound841 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput841.moment H = canonicalOutput841.moment H :=
  canonical_of_padded canonicalInput841 canonicalOutput841 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput842 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput842 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound842 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput842.moment H = canonicalOutput842.moment H :=
  canonical_of_padded canonicalInput842 canonicalOutput842 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput843 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput843 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound843 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput843.moment H = canonicalOutput843.moment H :=
  canonical_of_padded canonicalInput843 canonicalOutput843 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput844 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput844 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound844 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput844.moment H = canonicalOutput844.moment H :=
  canonical_of_padded canonicalInput844 canonicalOutput844 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput845 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput845 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound845 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput845.moment H = canonicalOutput845.moment H :=
  canonical_of_padded canonicalInput845 canonicalOutput845 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput846 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput846 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound846 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput846.moment H = canonicalOutput846.moment H :=
  canonical_of_padded canonicalInput846 canonicalOutput846 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput847 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput847 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound847 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput847.moment H = canonicalOutput847.moment H :=
  canonical_of_padded canonicalInput847 canonicalOutput847 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput848 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput848 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound848 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput848.moment H = canonicalOutput848.moment H :=
  canonical_of_padded canonicalInput848 canonicalOutput848 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput849 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput849 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound849 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput849.moment H = canonicalOutput849.moment H :=
  canonical_of_padded canonicalInput849 canonicalOutput849 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput850 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput850 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound850 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput850.moment H = canonicalOutput850.moment H :=
  canonical_of_padded canonicalInput850 canonicalOutput850 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput851 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput851 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound851 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput851.moment H = canonicalOutput851.moment H :=
  canonical_of_padded canonicalInput851 canonicalOutput851 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput852 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput852 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound852 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput852.moment H = canonicalOutput852.moment H :=
  canonical_of_padded canonicalInput852 canonicalOutput852 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput853 : ExponentCode := ⟨6, 6, ![![-3, 2, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput853 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound853 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput853.moment H = canonicalOutput853.moment H :=
  canonical_of_padded canonicalInput853 canonicalOutput853 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput854 : ExponentCode := ⟨6, 2, ![![-3, 3], ![0, 0], ![2, -2], ![0, 0], ![0, 0], ![1, -1]]⟩

def canonicalOutput854 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound854 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput854.moment H = canonicalOutput854.moment H :=
  canonical_of_padded canonicalInput854 canonicalOutput854 (by decide) (by decide)
    ⟨false, false, canonicalPermutation69, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput855 : ExponentCode := ⟨6, 2, ![![-3, 3], ![0, 0], ![3, -3], ![0, 0], ![0, 0], ![0, 0]]⟩

def canonicalOutput855 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound855 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput855.moment H = canonicalOutput855.moment H :=
  canonical_of_padded canonicalInput855 canonicalOutput855 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput856 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput856 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound856 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput856.moment H = canonicalOutput856.moment H :=
  canonical_of_padded canonicalInput856 canonicalOutput856 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput857 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput857 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound857 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput857.moment H = canonicalOutput857.moment H :=
  canonical_of_padded canonicalInput857 canonicalOutput857 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput858 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput858 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound858 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput858.moment H = canonicalOutput858.moment H :=
  canonical_of_padded canonicalInput858 canonicalOutput858 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput859 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput859 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound859 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput859.moment H = canonicalOutput859.moment H :=
  canonical_of_padded canonicalInput859 canonicalOutput859 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput860 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput860 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound860 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput860.moment H = canonicalOutput860.moment H :=
  canonical_of_padded canonicalInput860 canonicalOutput860 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput861 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput861 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound861 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput861.moment H = canonicalOutput861.moment H :=
  canonical_of_padded canonicalInput861 canonicalOutput861 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput862 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput862 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound862 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput862.moment H = canonicalOutput862.moment H :=
  canonical_of_padded canonicalInput862 canonicalOutput862 (by decide) (by decide)
    ⟨false, false, canonicalPermutation62, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput863 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput863 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound863 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput863.moment H = canonicalOutput863.moment H :=
  canonical_of_padded canonicalInput863 canonicalOutput863 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation368, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput864 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput864 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound864 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput864.moment H = canonicalOutput864.moment H :=
  canonical_of_padded canonicalInput864 canonicalOutput864 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation363, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput865 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput865 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound865 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput865.moment H = canonicalOutput865.moment H :=
  canonical_of_padded canonicalInput865 canonicalOutput865 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput866 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput866 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound866 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput866.moment H = canonicalOutput866.moment H :=
  canonical_of_padded canonicalInput866 canonicalOutput866 (by decide) (by decide)
    ⟨false, false, canonicalPermutation67, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput867 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput867 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound867 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput867.moment H = canonicalOutput867.moment H :=
  canonical_of_padded canonicalInput867 canonicalOutput867 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput868 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput868 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound868 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput868.moment H = canonicalOutput868.moment H :=
  canonical_of_padded canonicalInput868 canonicalOutput868 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput869 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput869 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound869 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput869.moment H = canonicalOutput869.moment H :=
  canonical_of_padded canonicalInput869 canonicalOutput869 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput870 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput870 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound870 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput870.moment H = canonicalOutput870.moment H :=
  canonical_of_padded canonicalInput870 canonicalOutput870 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput871 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput871 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound871 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput871.moment H = canonicalOutput871.moment H :=
  canonical_of_padded canonicalInput871 canonicalOutput871 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput872 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput872 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound872 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput872.moment H = canonicalOutput872.moment H :=
  canonical_of_padded canonicalInput872 canonicalOutput872 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput873 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput873 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound873 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput873.moment H = canonicalOutput873.moment H :=
  canonical_of_padded canonicalInput873 canonicalOutput873 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput874 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput874 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node220⟩

theorem canonicalSound874 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput874.moment H = canonicalOutput874.moment H :=
  canonical_of_padded canonicalInput874 canonicalOutput874 (by decide) (by decide)
    ⟨false, false, canonicalPermutation67, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput875 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput875 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound875 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput875.moment H = canonicalOutput875.moment H :=
  canonical_of_padded canonicalInput875 canonicalOutput875 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput876 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput876 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound876 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput876.moment H = canonicalOutput876.moment H :=
  canonical_of_padded canonicalInput876 canonicalOutput876 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput877 : ExponentCode := ⟨6, 6, ![![-3, 3, 0, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput877 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node19⟩

theorem canonicalSound877 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput877.moment H = canonicalOutput877.moment H :=
  canonical_of_padded canonicalInput877 canonicalOutput877 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput878 : ExponentCode := ⟨6, 6, ![![-3, 3, 1, -1, 0, 0], ![0, -3, 1, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput878 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound878 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput878.moment H = canonicalOutput878.moment H :=
  canonical_of_padded canonicalInput878 canonicalOutput878 (by decide) (by decide)
    ⟨false, true, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation307⟩ (by decide +kernel) hH

def canonicalInput879 : ExponentCode := ⟨6, 6, ![![-3, 3, 1, -1, 0, 0], ![0, -3, 1, 2, 0, 0], ![3, 0, -2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput879 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound879 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput879.moment H = canonicalOutput879.moment H :=
  canonical_of_padded canonicalInput879 canonicalOutput879 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput880 : ExponentCode := ⟨6, 6, ![![-3, 3, 1, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, -2, 2, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput880 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput880.moment H = canonicalOutput880.moment H :=
  canonical_of_padded canonicalInput880 canonicalOutput880 (by decide) (by decide)
    ⟨true, false, canonicalPermutation4, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput881 : ExponentCode := ⟨6, 6, ![![-3, 3, 1, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 0, 2, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput881 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput881.moment H = canonicalOutput881.moment H :=
  canonical_of_padded canonicalInput881 canonicalOutput881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput882 : ExponentCode := ⟨6, 6, ![![-3, 3, 1, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, 0, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput882 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput882.moment H = canonicalOutput882.moment H :=
  canonical_of_padded canonicalInput882 canonicalOutput882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation366, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput883 : ExponentCode := ⟨6, 6, ![![-3, 3, 1, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 0, -2, -1, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput883 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput883.moment H = canonicalOutput883.moment H :=
  canonical_of_padded canonicalInput883 canonicalOutput883 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput884 : ExponentCode := ⟨6, 6, ![![-3, 3, 1, -1, 0, 0], ![3, -3, 1, -1, 0, 0], ![0, 0, -2, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput884 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node220⟩

theorem canonicalSound884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput884.moment H = canonicalOutput884.moment H :=
  canonical_of_padded canonicalInput884 canonicalOutput884 (by decide) (by decide)
    ⟨true, false, canonicalPermutation67, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput885 : ExponentCode := ⟨6, 6, ![![-3, 3, 1, -1, 0, 0], ![3, -3, 1, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, -1, 0, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput885 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1025

theorem canonicalSound885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput885.moment H = canonicalOutput885.moment H :=
  canonical_of_padded canonicalInput885 canonicalOutput885 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput886 : ExponentCode := ⟨2, 4, ![![-2, -4, 4, 2], ![2, 4, -4, -2]]⟩

def canonicalOutput886 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code17

theorem canonicalSound886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput886.moment H = canonicalOutput886.moment H :=
  canonical_of_padded canonicalInput886 canonicalOutput886 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput887 : ExponentCode := ⟨3, 3, ![![-2, -4, 6], ![0, 1, -1], ![2, 3, -5]]⟩

def canonicalOutput887 : ExponentCode := normalNode5972

theorem canonicalSound887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput887.moment H = canonicalOutput887.moment H :=
  canonical_of_padded canonicalInput887 canonicalOutput887 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput888 : ExponentCode := ⟨4, 3, ![![-2, -4, 6], ![0, 3, -3], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput888 : ExponentCode := normalNode251

theorem canonicalSound888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput888.moment H = canonicalOutput888.moment H :=
  canonical_of_padded canonicalInput888 canonicalOutput888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput889 : ExponentCode := ⟨3, 3, ![![-2, -4, 6], ![1, 0, -1], ![1, 4, -5]]⟩

def canonicalOutput889 : ExponentCode := normalNode5974

theorem canonicalSound889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput889.moment H = canonicalOutput889.moment H :=
  canonical_of_padded canonicalInput889 canonicalOutput889 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput890 : ExponentCode := ⟨3, 3, ![![-2, -4, 6], ![1, 3, -4], ![1, 1, -2]]⟩

def canonicalOutput890 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code98

theorem canonicalSound890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput890.moment H = canonicalOutput890.moment H :=
  canonical_of_padded canonicalInput890 canonicalOutput890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput891 : ExponentCode := ⟨3, 3, ![![-2, -4, 6], ![1, 4, -5], ![1, 0, -1]]⟩

def canonicalOutput891 : ExponentCode := normalNode5974

theorem canonicalSound891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput891.moment H = canonicalOutput891.moment H :=
  canonical_of_padded canonicalInput891 canonicalOutput891 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput892 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 2, -1, -3]]⟩

def canonicalOutput892 : ExponentCode := normalNode9745

theorem canonicalSound892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput892.moment H = canonicalOutput892.moment H :=
  canonical_of_padded canonicalInput892 canonicalOutput892 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput893 : ExponentCode := ⟨5, 4, ![![-2, -3, 1, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput893 : ExponentCode := normalNode4779

theorem canonicalSound893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput893.moment H = canonicalOutput893.moment H :=
  canonical_of_padded canonicalInput893 canonicalOutput893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput894 : ExponentCode := ⟨4, 4, ![![-2, -3, 1, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 2, -2, -2]]⟩

def canonicalOutput894 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node913⟩

theorem canonicalSound894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput894.moment H = canonicalOutput894.moment H :=
  canonical_of_padded canonicalInput894 canonicalOutput894 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput895 : ExponentCode := ⟨5, 4, ![![-2, -3, 1, 4], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput895 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2147⟩

theorem canonicalSound895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput895.moment H = canonicalOutput895.moment H :=
  canonical_of_padded canonicalInput895 canonicalOutput895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
