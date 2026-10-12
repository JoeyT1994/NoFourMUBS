import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical130
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical129
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10880 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -1, 2], ![1, -2, 1], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput10880 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node535⟩

theorem canonicalSound10880 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10880.moment H = canonicalOutput10880.moment H :=
  canonical_of_padded canonicalInput10880 canonicalOutput10880 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10881 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -1, 2], ![1, -1, 0], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput10881 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1141⟩

theorem canonicalSound10881 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10881.moment H = canonicalOutput10881.moment H :=
  canonical_of_padded canonicalInput10881 canonicalOutput10881 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10882 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -1, 2], ![1, 1, -2], ![1, -2, 1], ![1, 1, -2]]⟩

def canonicalOutput10882 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound10882 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10882.moment H = canonicalOutput10882.moment H :=
  canonical_of_padded canonicalInput10882 canonicalOutput10882 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10883 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, -1, 2], ![1, 2, -3], ![1, -2, 1], ![1, 0, -1]]⟩

def canonicalOutput10883 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node535⟩

theorem canonicalSound10883 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10883.moment H = canonicalOutput10883.moment H :=
  canonical_of_padded canonicalInput10883 canonicalOutput10883 (by decide) (by decide)
    ⟨false, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10884 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, 0, 1], ![0, 2, -2], ![1, -2, 1], ![2, -1, -1]]⟩

def canonicalOutput10884 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩

theorem canonicalSound10884 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10884.moment H = canonicalOutput10884.moment H :=
  canonical_of_padded canonicalInput10884 canonicalOutput10884 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10885 : ExponentCode := ⟨6, 3, ![![-2, 1, 1], ![-1, 1, 0], ![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![3, 2, -5]]⟩

def canonicalOutput10885 : ExponentCode := normalNode54

theorem canonicalSound10885 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10885.moment H = canonicalOutput10885.moment H :=
  canonical_of_padded canonicalInput10885 canonicalOutput10885 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10886 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, 2, -1], ![0, 1, -1], ![1, -3, 2], ![2, -1, -1]]⟩

def canonicalOutput10886 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node539⟩

theorem canonicalSound10886 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10886.moment H = canonicalOutput10886.moment H :=
  canonical_of_padded canonicalInput10886 canonicalOutput10886 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput10887 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, 2, -1], ![1, -2, 1], ![1, -2, 1], ![1, 1, -2]]⟩

def canonicalOutput10887 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound10887 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10887.moment H = canonicalOutput10887.moment H :=
  canonical_of_padded canonicalInput10887 canonicalOutput10887 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10888 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![-1, 3, -2], ![1, -4, 3], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput10888 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node694⟩

theorem canonicalSound10888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10888.moment H = canonicalOutput10888.moment H :=
  canonical_of_padded canonicalInput10888 canonicalOutput10888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10889 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![-1, 3, -2], ![1, -3, 2], ![2, -1, -1]]⟩

def canonicalOutput10889 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node159⟩

theorem canonicalSound10889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10889.moment H = canonicalOutput10889.moment H :=
  canonical_of_padded canonicalInput10889 canonicalOutput10889 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput10890 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![0, -4, 4], ![0, 2, -2], ![2, 1, -3]]⟩

def canonicalOutput10890 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node164⟩

theorem canonicalSound10890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10890.moment H = canonicalOutput10890.moment H :=
  canonical_of_padded canonicalInput10890 canonicalOutput10890 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10891 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![0, -4, 4], ![0, 3, -3], ![2, 0, -2]]⟩

def canonicalOutput10891 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node193⟩

theorem canonicalSound10891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10891.moment H = canonicalOutput10891.moment H :=
  canonical_of_padded canonicalInput10891 canonicalOutput10891 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10892 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![0, -4, 4], ![1, 2, -3], ![1, 1, -2]]⟩

def canonicalOutput10892 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node219⟩

theorem canonicalSound10892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10892.moment H = canonicalOutput10892.moment H :=
  canonical_of_padded canonicalInput10892 canonicalOutput10892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10893 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![0, -4, 4], ![1, 3, -4], ![1, 0, -1]]⟩

def canonicalOutput10893 : ExponentCode := normalNode5583

theorem canonicalSound10893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10893.moment H = canonicalOutput10893.moment H :=
  canonical_of_padded canonicalInput10893 canonicalOutput10893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10894 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.raw4153step0⟩

def canonicalOutput10894 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node29⟩

theorem canonicalSound10894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10894.moment H = canonicalOutput10894.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw4153step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw4153step0 = OAI.MUB6.Certificate.PairSemantics.raw4153.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw4153).trans (OAI.MUB6.Certificate.PairSemantics.canonical4153 hH)

def canonicalInput10895 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -3, 3], ![0, 0, 0], ![1, -1, 0], ![1, 3, -4]]⟩

def canonicalOutput10895 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound10895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10895.moment H = canonicalOutput10895.moment H :=
  canonical_of_padded canonicalInput10895 canonicalOutput10895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10896 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -3, 3], ![0, 0, 0], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput10896 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound10896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10896.moment H = canonicalOutput10896.moment H :=
  canonical_of_padded canonicalInput10896 canonicalOutput10896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10897 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -3, 3], ![0, 2, -2], ![0, 1, -1], ![2, -1, -1]]⟩

def canonicalOutput10897 : ExponentCode := normalNode5592

theorem canonicalSound10897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10897.moment H = canonicalOutput10897.moment H :=
  canonical_of_padded canonicalInput10897 canonicalOutput10897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10898 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -3, 3], ![0, 3, -3], ![1, 0, -1], ![1, -1, 0]]⟩

def canonicalOutput10898 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node700⟩

theorem canonicalSound10898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10898.moment H = canonicalOutput10898.moment H :=
  canonical_of_padded canonicalInput10898 canonicalOutput10898 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10899 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -3, 3], ![1, -1, 0], ![0, 0, 0], ![1, 3, -4]]⟩

def canonicalOutput10899 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound10899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10899.moment H = canonicalOutput10899.moment H :=
  canonical_of_padded canonicalInput10899 canonicalOutput10899 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10900 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -3, 3], ![1, -1, 0], ![1, 0, -1], ![0, 3, -3]]⟩

def canonicalOutput10900 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node700⟩

theorem canonicalSound10900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10900.moment H = canonicalOutput10900.moment H :=
  canonical_of_padded canonicalInput10900 canonicalOutput10900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10901 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![0, -2, 2], ![0, -2, 2], ![2, 3, -5]]⟩

def canonicalOutput10901 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node125⟩

theorem canonicalSound10901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10901.moment H = canonicalOutput10901.moment H :=
  canonical_of_padded canonicalInput10901 canonicalOutput10901 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10902 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -2, 2], ![0, 0, 0], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput10902 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound10902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10902.moment H = canonicalOutput10902.moment H :=
  canonical_of_padded canonicalInput10902 canonicalOutput10902 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10903 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -2, 2], ![0, 1, -1], ![0, 2, -2], ![2, -2, 0]]⟩

def canonicalOutput10903 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩

theorem canonicalSound10903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10903.moment H = canonicalOutput10903.moment H :=
  canonical_of_padded canonicalInput10903 canonicalOutput10903 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10904 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -2, 2], ![0, 3, -3], ![1, -2, 1], ![1, 0, -1]]⟩

def canonicalOutput10904 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node698⟩

theorem canonicalSound10904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10904.moment H = canonicalOutput10904.moment H :=
  canonical_of_padded canonicalInput10904 canonicalOutput10904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10905 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -1, 1], ![0, -3, 3], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput10905 : ExponentCode := normalNode5590

theorem canonicalSound10905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10905.moment H = canonicalOutput10905.moment H :=
  canonical_of_padded canonicalInput10905 canonicalOutput10905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10906 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -1, 1], ![0, -2, 2], ![1, -2, 1], ![1, 4, -5]]⟩

def canonicalOutput10906 : ExponentCode := normalNode5599

theorem canonicalSound10906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10906.moment H = canonicalOutput10906.moment H :=
  canonical_of_padded canonicalInput10906 canonicalOutput10906 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10907 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -1, 1], ![0, -2, 2], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput10907 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node703⟩

theorem canonicalSound10907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10907.moment H = canonicalOutput10907.moment H :=
  canonical_of_padded canonicalInput10907 canonicalOutput10907 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10908 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -1, 1], ![0, -1, 1], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput10908 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node709⟩

theorem canonicalSound10908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10908.moment H = canonicalOutput10908.moment H :=
  canonical_of_padded canonicalInput10908 canonicalOutput10908 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10909 : ExponentCode := ⟨6, 3, ![![-2, 1, 1], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![-1, -2, 3], ![2, 2, -4]]⟩

def canonicalOutput10909 : ExponentCode := normalNode962

theorem canonicalSound10909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10909.moment H = canonicalOutput10909.moment H :=
  canonical_of_padded canonicalInput10909 canonicalOutput10909 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10910 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -1, 1], ![1, -3, 2], ![0, 0, 0], ![1, 3, -4]]⟩

def canonicalOutput10910 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node228⟩

theorem canonicalSound10910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10910.moment H = canonicalOutput10910.moment H :=
  canonical_of_padded canonicalInput10910 canonicalOutput10910 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10911 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -1, 1], ![1, -3, 2], ![1, 0, -1], ![0, 3, -3]]⟩

def canonicalOutput10911 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node696⟩

theorem canonicalSound10911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10911.moment H = canonicalOutput10911.moment H :=
  canonical_of_padded canonicalInput10911 canonicalOutput10911 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10912 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -1, 1], ![1, -2, 1], ![0, -1, 1], ![1, 3, -4]]⟩

def canonicalOutput10912 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node707⟩

theorem canonicalSound10912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10912.moment H = canonicalOutput10912.moment H :=
  canonical_of_padded canonicalInput10912 canonicalOutput10912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10913 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -1, 1], ![1, -2, 1], ![0, 1, -1], ![1, 1, -2]]⟩

def canonicalOutput10913 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node710⟩

theorem canonicalSound10913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10913.moment H = canonicalOutput10913.moment H :=
  canonical_of_padded canonicalInput10913 canonicalOutput10913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10914 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -1, 1], ![1, -2, 1], ![1, -1, 0], ![0, 3, -3]]⟩

def canonicalOutput10914 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node697⟩

theorem canonicalSound10914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10914.moment H = canonicalOutput10914.moment H :=
  canonical_of_padded canonicalInput10914 canonicalOutput10914 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10915 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, -1, 1], ![1, -2, 1], ![1, 1, -2], ![0, 1, -1]]⟩

def canonicalOutput10915 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node710⟩

theorem canonicalSound10915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10915.moment H = canonicalOutput10915.moment H :=
  canonical_of_padded canonicalInput10915 canonicalOutput10915 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10916 : ExponentCode := ⟨6, 3, ![![-2, 1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![0, 4, -4]]⟩

def canonicalOutput10916 : ExponentCode := normalNode5575

theorem canonicalSound10916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10916.moment H = canonicalOutput10916.moment H :=
  canonical_of_padded canonicalInput10916 canonicalOutput10916 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10917 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, 1, -1], ![0, 2, -2], ![1, -2, 1], ![1, -2, 1]]⟩

def canonicalOutput10917 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node703⟩

theorem canonicalSound10917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10917.moment H = canonicalOutput10917.moment H :=
  canonical_of_padded canonicalInput10917 canonicalOutput10917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10918 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, 1, -1], ![0, 3, -3], ![1, -4, 3], ![1, -1, 0]]⟩

def canonicalOutput10918 : ExponentCode := normalNode5590

theorem canonicalSound10918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10918.moment H = canonicalOutput10918.moment H :=
  canonical_of_padded canonicalInput10918 canonicalOutput10918 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10919 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, 2, -2], ![0, -2, 2], ![1, -2, 1], ![1, 1, -2]]⟩

def canonicalOutput10919 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound10919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10919.moment H = canonicalOutput10919.moment H :=
  canonical_of_padded canonicalInput10919 canonicalOutput10919 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10920 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![0, 2, -2], ![1, -4, 3], ![1, 1, -2]]⟩

def canonicalOutput10920 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound10920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10920.moment H = canonicalOutput10920.moment H :=
  canonical_of_padded canonicalInput10920 canonicalOutput10920 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10921 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, 2, -2], ![1, -2, 1], ![0, -2, 2], ![1, 1, -2]]⟩

def canonicalOutput10921 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound10921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10921.moment H = canonicalOutput10921.moment H :=
  canonical_of_padded canonicalInput10921 canonicalOutput10921 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10922 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, 2, -2], ![1, -2, 1], ![1, -2, 1], ![0, 1, -1]]⟩

def canonicalOutput10922 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node703⟩

theorem canonicalSound10922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10922.moment H = canonicalOutput10922.moment H :=
  canonical_of_padded canonicalInput10922 canonicalOutput10922 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10923 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, 3, -3], ![0, -4, 4], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput10923 : ExponentCode := normalNode5580

theorem canonicalSound10923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10923.moment H = canonicalOutput10923.moment H :=
  canonical_of_padded canonicalInput10923 canonicalOutput10923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10924 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, 3, -3], ![1, -4, 3], ![0, 0, 0], ![1, 0, -1]]⟩

def canonicalOutput10924 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound10924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10924.moment H = canonicalOutput10924.moment H :=
  canonical_of_padded canonicalInput10924 canonicalOutput10924 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10925 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![0, 3, -3], ![1, -4, 3], ![1, 0, -1]]⟩

def canonicalOutput10925 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound10925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10925.moment H = canonicalOutput10925.moment H :=
  canonical_of_padded canonicalInput10925 canonicalOutput10925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10926 : ExponentCode := ⟨5, 3, ![![-2, 1, 1], ![0, 3, -3], ![1, -4, 3], ![1, 0, -1], ![0, 0, 0]]⟩

def canonicalOutput10926 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound10926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10926.moment H = canonicalOutput10926.moment H :=
  canonical_of_padded canonicalInput10926 canonicalOutput10926 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10927 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.raw4162step0⟩

def canonicalOutput10927 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound10927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10927.moment H = canonicalOutput10927.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw4162step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw4162step0 = OAI.MUB6.Certificate.PairSemantics.raw4162.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw4162).trans (OAI.MUB6.Certificate.PairSemantics.canonical4162 hH)

def canonicalInput10928 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![0, 4, -4], ![1, -4, 3], ![1, -1, 0]]⟩

def canonicalOutput10928 : ExponentCode := normalNode5583

theorem canonicalSound10928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10928.moment H = canonicalOutput10928.moment H :=
  canonical_of_padded canonicalInput10928 canonicalOutput10928 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10929 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![1, -5, 4], ![0, 2, -2], ![1, 2, -3]]⟩

def canonicalOutput10929 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1222

theorem canonicalSound10929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10929.moment H = canonicalOutput10929.moment H :=
  canonical_of_padded canonicalInput10929 canonicalOutput10929 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10930 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![1, -5, 4], ![0, 3, -3], ![1, 1, -2]]⟩

def canonicalOutput10930 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1218

theorem canonicalSound10930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10930.moment H = canonicalOutput10930.moment H :=
  canonical_of_padded canonicalInput10930 canonicalOutput10930 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10931 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![1, -5, 4], ![0, 4, -4], ![1, 0, -1]]⟩

def canonicalOutput10931 : ExponentCode := normalNode5582

theorem canonicalSound10931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10931.moment H = canonicalOutput10931.moment H :=
  canonical_of_padded canonicalInput10931 canonicalOutput10931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10932 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![1, -4, 3], ![0, 1, -1], ![1, 2, -3]]⟩

def canonicalOutput10932 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node228⟩

theorem canonicalSound10932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10932.moment H = canonicalOutput10932.moment H :=
  canonical_of_padded canonicalInput10932 canonicalOutput10932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10933 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![1, -4, 3], ![1, 1, -2], ![0, 2, -2]]⟩

def canonicalOutput10933 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound10933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10933.moment H = canonicalOutput10933.moment H :=
  canonical_of_padded canonicalInput10933 canonicalOutput10933 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10934 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![1, -3, 2], ![0, -2, 2], ![1, 4, -5]]⟩

def canonicalOutput10934 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1222

theorem canonicalSound10934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10934.moment H = canonicalOutput10934.moment H :=
  canonical_of_padded canonicalInput10934 canonicalOutput10934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10935 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![1, -3, 2], ![0, -1, 1], ![1, 3, -4]]⟩

def canonicalOutput10935 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node228⟩

theorem canonicalSound10935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10935.moment H = canonicalOutput10935.moment H :=
  canonical_of_padded canonicalInput10935 canonicalOutput10935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10936 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![1, -3, 2], ![1, -1, 0], ![0, 3, -3]]⟩

def canonicalOutput10936 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound10936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10936.moment H = canonicalOutput10936.moment H :=
  canonical_of_padded canonicalInput10936 canonicalOutput10936 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10937 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![1, -2, 1], ![0, -2, 2], ![1, 3, -4]]⟩

def canonicalOutput10937 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound10937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10937.moment H = canonicalOutput10937.moment H :=
  canonical_of_padded canonicalInput10937 canonicalOutput10937 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10938 : ExponentCode := ⟨4, 3, ![![-2, 1, 1], ![1, -2, 1], ![1, -2, 1], ![0, 3, -3]]⟩

def canonicalOutput10938 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node223⟩

theorem canonicalSound10938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10938.moment H = canonicalOutput10938.moment H :=
  canonical_of_padded canonicalInput10938 canonicalOutput10938 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10939 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, -3, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput10939 : ExponentCode := normalNode10006

theorem canonicalSound10939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10939.moment H = canonicalOutput10939.moment H :=
  canonical_of_padded canonicalInput10939 canonicalOutput10939 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput10940 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -2, 1, 1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10940 : ExponentCode := normalNode3674

theorem canonicalSound10940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10940.moment H = canonicalOutput10940.moment H :=
  canonical_of_padded canonicalInput10940 canonicalOutput10940 (by decide) (by decide)
    ⟨true, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput10941 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -2, 1, 1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 1, -2, 1], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10941 : ExponentCode := normalNode4210

theorem canonicalSound10941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10941.moment H = canonicalOutput10941.moment H :=
  canonical_of_padded canonicalInput10941 canonicalOutput10941 (by decide) (by decide)
    ⟨true, false, canonicalPermutation90, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput10942 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -2, 1, 1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 1, 1, -2], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10942 : ExponentCode := normalNode4210

theorem canonicalSound10942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10942.moment H = canonicalOutput10942.moment H :=
  canonical_of_padded canonicalInput10942 canonicalOutput10942 (by decide) (by decide)
    ⟨true, false, canonicalPermutation98, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput10943 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -2, 1, 1], ![1, -2, 1, 1, -2, 1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 1, 1, -2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10943 : ExponentCode := normalNode4210

theorem canonicalSound10943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10943.moment H = canonicalOutput10943.moment H :=
  canonical_of_padded canonicalInput10943 canonicalOutput10943 (by decide) (by decide)
    ⟨true, false, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
