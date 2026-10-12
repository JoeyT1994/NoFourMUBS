import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5888 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, 0, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput5888 : ExponentCode := normalNode1791

theorem canonicalSound5888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5888.moment H = canonicalOutput5888.moment H :=
  canonical_of_padded canonicalInput5888 canonicalOutput5888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5889 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput5889 : ExponentCode := normalNode1780

theorem canonicalSound5889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5889.moment H = canonicalOutput5889.moment H :=
  canonical_of_padded canonicalInput5889 canonicalOutput5889 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5890 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, 0, 1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput5890 : ExponentCode := normalNode1811

theorem canonicalSound5890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5890.moment H = canonicalOutput5890.moment H :=
  canonical_of_padded canonicalInput5890 canonicalOutput5890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5891 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, -1, 0, 1], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput5891 : ExponentCode := normalNode1809

theorem canonicalSound5891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5891.moment H = canonicalOutput5891.moment H :=
  canonical_of_padded canonicalInput5891 canonicalOutput5891 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5892 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, -1, 0, 1], ![1, -1, -2, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput5892 : ExponentCode := normalNode6701

theorem canonicalSound5892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5892.moment H = canonicalOutput5892.moment H :=
  canonical_of_padded canonicalInput5892 canonicalOutput5892 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5893 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![0, -1, 2, -1], ![2, 2, -5, 1]]⟩

def canonicalOutput5893 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node127⟩

theorem canonicalSound5893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5893.moment H = canonicalOutput5893.moment H :=
  canonical_of_padded canonicalInput5893 canonicalOutput5893 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5894 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput5894 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2430⟩

theorem canonicalSound5894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5894.moment H = canonicalOutput5894.moment H :=
  canonical_of_padded canonicalInput5894 canonicalOutput5894 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5895 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, 0, -3, 3], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput5895 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node811⟩

theorem canonicalSound5895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5895.moment H = canonicalOutput5895.moment H :=
  canonical_of_padded canonicalInput5895 canonicalOutput5895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5896 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, 0, -3, 3], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput5896 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node810⟩

theorem canonicalSound5896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5896.moment H = canonicalOutput5896.moment H :=
  canonical_of_padded canonicalInput5896 canonicalOutput5896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5897 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, 0, -2, 2], ![1, -2, 0, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput5897 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code428

theorem canonicalSound5897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5897.moment H = canonicalOutput5897.moment H :=
  canonical_of_padded canonicalInput5897 canonicalOutput5897 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5898 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, 0, -1, 1], ![1, -2, -1, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput5898 : ExponentCode := normalNode6702

theorem canonicalSound5898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5898.moment H = canonicalOutput5898.moment H :=
  canonical_of_padded canonicalInput5898 canonicalOutput5898 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5899 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, 1, -3, 2], ![1, -2, 0, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput5899 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code491

theorem canonicalSound5899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5899.moment H = canonicalOutput5899.moment H :=
  canonical_of_padded canonicalInput5899 canonicalOutput5899 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5900 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, 1, -2, 1], ![1, -2, -1, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput5900 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code487

theorem canonicalSound5900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5900.moment H = canonicalOutput5900.moment H :=
  canonical_of_padded canonicalInput5900 canonicalOutput5900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5901 : ExponentCode := ⟨5, 4, ![![-2, -1, 3, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput5901 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1717⟩

theorem canonicalSound5901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5901.moment H = canonicalOutput5901.moment H :=
  canonical_of_padded canonicalInput5901 canonicalOutput5901 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5902 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput5902 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node809⟩

theorem canonicalSound5902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5902.moment H = canonicalOutput5902.moment H :=
  canonical_of_padded canonicalInput5902 canonicalOutput5902 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5903 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![0, 2, -3, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput5903 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node215⟩

theorem canonicalSound5903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5903.moment H = canonicalOutput5903.moment H :=
  canonical_of_padded canonicalInput5903 canonicalOutput5903 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5904 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![0, 2, 0, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput5904 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound5904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5904.moment H = canonicalOutput5904.moment H :=
  canonical_of_padded canonicalInput5904 canonicalOutput5904 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5905 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![0, 2, 1, -3], ![2, -1, -4, 3]]⟩

def canonicalOutput5905 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node86⟩

theorem canonicalSound5905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5905.moment H = canonicalOutput5905.moment H :=
  canonical_of_padded canonicalInput5905 canonicalOutput5905 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5906 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![0, 3, -4, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput5906 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node83⟩

theorem canonicalSound5906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5906.moment H = canonicalOutput5906.moment H :=
  canonical_of_padded canonicalInput5906 canonicalOutput5906 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5907 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![0, 3, -1, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput5907 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound5907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5907.moment H = canonicalOutput5907.moment H :=
  canonical_of_padded canonicalInput5907 canonicalOutput5907 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5908 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![0, 4, -2, -2], ![2, -3, -1, 2]]⟩

def canonicalOutput5908 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound5908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5908.moment H = canonicalOutput5908.moment H :=
  canonical_of_padded canonicalInput5908 canonicalOutput5908 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5909 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![1, -3, 0, 2], ![1, 4, -3, -2]]⟩

def canonicalOutput5909 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node86⟩

theorem canonicalSound5909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5909.moment H = canonicalOutput5909.moment H :=
  canonical_of_padded canonicalInput5909 canonicalOutput5909 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5910 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![1, -3, 1, 1], ![1, 4, -4, -1]]⟩

def canonicalOutput5910 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node80⟩

theorem canonicalSound5910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5910.moment H = canonicalOutput5910.moment H :=
  canonical_of_padded canonicalInput5910 canonicalOutput5910 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5911 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![1, -2, -2, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput5911 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound5911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5911.moment H = canonicalOutput5911.moment H :=
  canonical_of_padded canonicalInput5911 canonicalOutput5911 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5912 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![1, -2, -1, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput5912 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound5912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5912.moment H = canonicalOutput5912.moment H :=
  canonical_of_padded canonicalInput5912 canonicalOutput5912 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5913 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![1, -2, 2, -1], ![1, 3, -5, 1]]⟩

def canonicalOutput5913 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node72⟩

theorem canonicalSound5913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5913.moment H = canonicalOutput5913.moment H :=
  canonical_of_padded canonicalInput5913 canonicalOutput5913 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5914 : ExponentCode := ⟨4, 4, ![![-2, -1, 3, 0], ![1, -1, -3, 3], ![0, 2, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput5914 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node812⟩

theorem canonicalSound5914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5914.moment H = canonicalOutput5914.moment H :=
  canonical_of_padded canonicalInput5914 canonicalOutput5914 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5915 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![1, -1, 1, -1], ![1, 2, -4, 1]]⟩

def canonicalOutput5915 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node246⟩

theorem canonicalSound5915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5915.moment H = canonicalOutput5915.moment H :=
  canonical_of_padded canonicalInput5915 canonicalOutput5915 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5916 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![1, -1, 2, -2], ![1, 2, -5, 2]]⟩

def canonicalOutput5916 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node74⟩

theorem canonicalSound5916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5916.moment H = canonicalOutput5916.moment H :=
  canonical_of_padded canonicalInput5916 canonicalOutput5916 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5917 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![1, 2, 0, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput5917 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound5917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5917.moment H = canonicalOutput5917.moment H :=
  canonical_of_padded canonicalInput5917 canonicalOutput5917 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5918 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![2, -3, 0, 1], ![0, 4, -3, -1]]⟩

def canonicalOutput5918 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node88⟩

theorem canonicalSound5918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5918.moment H = canonicalOutput5918.moment H :=
  canonical_of_padded canonicalInput5918 canonicalOutput5918 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5919 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![2, -2, -1, 1], ![0, 3, -2, -1]]⟩

def canonicalOutput5919 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound5919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5919.moment H = canonicalOutput5919.moment H :=
  canonical_of_padded canonicalInput5919 canonicalOutput5919 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5920 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![2, -1, 1, -2], ![0, 2, -4, 2]]⟩

def canonicalOutput5920 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node85⟩

theorem canonicalSound5920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5920.moment H = canonicalOutput5920.moment H :=
  canonical_of_padded canonicalInput5920 canonicalOutput5920 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5921 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![3, -2, 0, -1], ![-1, 3, -3, 1]]⟩

def canonicalOutput5921 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node95⟩

theorem canonicalSound5921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5921.moment H = canonicalOutput5921.moment H :=
  canonical_of_padded canonicalInput5921 canonicalOutput5921 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5922 : ExponentCode := ⟨3, 4, ![![-2, -1, 3, 0], ![3, -1, 0, -2], ![-1, 2, -3, 2]]⟩

def canonicalOutput5922 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound5922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5922.moment H = canonicalOutput5922.moment H :=
  canonical_of_padded canonicalInput5922 canonicalOutput5922 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5923 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5923 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound5923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5923.moment H = canonicalOutput5923.moment H :=
  canonical_of_padded canonicalInput5923 canonicalOutput5923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput5924 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5924 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound5924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5924.moment H = canonicalOutput5924.moment H :=
  canonical_of_padded canonicalInput5924 canonicalOutput5924 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput5925 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5925 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound5925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5925.moment H = canonicalOutput5925.moment H :=
  canonical_of_padded canonicalInput5925 canonicalOutput5925 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput5926 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5926 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound5926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5926.moment H = canonicalOutput5926.moment H :=
  canonical_of_padded canonicalInput5926 canonicalOutput5926 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput5927 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5927 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound5927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5927.moment H = canonicalOutput5927.moment H :=
  canonical_of_padded canonicalInput5927 canonicalOutput5927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput5928 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5928 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound5928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5928.moment H = canonicalOutput5928.moment H :=
  canonical_of_padded canonicalInput5928 canonicalOutput5928 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput5929 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5929 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound5929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5929.moment H = canonicalOutput5929.moment H :=
  canonical_of_padded canonicalInput5929 canonicalOutput5929 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput5930 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5930 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound5930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5930.moment H = canonicalOutput5930.moment H :=
  canonical_of_padded canonicalInput5930 canonicalOutput5930 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput5931 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5931 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound5931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5931.moment H = canonicalOutput5931.moment H :=
  canonical_of_padded canonicalInput5931 canonicalOutput5931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput5932 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5932 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound5932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5932.moment H = canonicalOutput5932.moment H :=
  canonical_of_padded canonicalInput5932 canonicalOutput5932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput5933 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5933 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound5933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5933.moment H = canonicalOutput5933.moment H :=
  canonical_of_padded canonicalInput5933 canonicalOutput5933 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput5934 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5934 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound5934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5934.moment H = canonicalOutput5934.moment H :=
  canonical_of_padded canonicalInput5934 canonicalOutput5934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput5935 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5935 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound5935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5935.moment H = canonicalOutput5935.moment H :=
  canonical_of_padded canonicalInput5935 canonicalOutput5935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput5936 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5936 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound5936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5936.moment H = canonicalOutput5936.moment H :=
  canonical_of_padded canonicalInput5936 canonicalOutput5936 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput5937 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5937 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound5937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5937.moment H = canonicalOutput5937.moment H :=
  canonical_of_padded canonicalInput5937 canonicalOutput5937 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput5938 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-1, 3, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5938 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound5938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5938.moment H = canonicalOutput5938.moment H :=
  canonical_of_padded canonicalInput5938 canonicalOutput5938 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput5939 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5939 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound5939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5939.moment H = canonicalOutput5939.moment H :=
  canonical_of_padded canonicalInput5939 canonicalOutput5939 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput5940 : ExponentCode := ⟨6, 6, ![![-2, -1, 3, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput5940 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound5940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5940.moment H = canonicalOutput5940.moment H :=
  canonical_of_padded canonicalInput5940 canonicalOutput5940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput5941 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -2, 2, 0], ![0, 1, 0, -1], ![2, 1, 1, -4]]⟩

def canonicalOutput5941 : ExponentCode := normalNode9597

theorem canonicalSound5941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5941.moment H = canonicalOutput5941.moment H :=
  canonical_of_padded canonicalInput5941 canonicalOutput5941 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput5942 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -2, 2, 0], ![0, 1, 1, -2], ![2, 1, 0, -3]]⟩

def canonicalOutput5942 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code410

theorem canonicalSound5942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5942.moment H = canonicalOutput5942.moment H :=
  canonical_of_padded canonicalInput5942 canonicalOutput5942 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5943 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -2, 2, 0], ![1, 0, 1, -2], ![1, 2, 0, -3]]⟩

def canonicalOutput5943 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code411

theorem canonicalSound5943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5943.moment H = canonicalOutput5943.moment H :=
  canonical_of_padded canonicalInput5943 canonicalOutput5943 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5944 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -2, 2, 0], ![1, 1, 1, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput5944 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code707

theorem canonicalSound5944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5944.moment H = canonicalOutput5944.moment H :=
  canonical_of_padded canonicalInput5944 canonicalOutput5944 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5945 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -2, 2, 0], ![1, 2, 0, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput5945 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code411

theorem canonicalSound5945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5945.moment H = canonicalOutput5945.moment H :=
  canonical_of_padded canonicalInput5945 canonicalOutput5945 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5946 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -2, 2, 0], ![1, 2, 1, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput5946 : ExponentCode := normalNode9584

theorem canonicalSound5946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5946.moment H = canonicalOutput5946.moment H :=
  canonical_of_padded canonicalInput5946 canonicalOutput5946 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput5947 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -2, 3, -1], ![0, 2, 0, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput5947 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code114

theorem canonicalSound5947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5947.moment H = canonicalOutput5947.moment H :=
  canonical_of_padded canonicalInput5947 canonicalOutput5947 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput5948 : ExponentCode := ⟨4, 4, ![![-2, 0, -3, 5], ![0, -2, 3, -1], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput5948 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code116

theorem canonicalSound5948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5948.moment H = canonicalOutput5948.moment H :=
  canonical_of_padded canonicalInput5948 canonicalOutput5948 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput5949 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput5949 : ExponentCode := normalNode10506

theorem canonicalSound5949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5949.moment H = canonicalOutput5949.moment H :=
  canonical_of_padded canonicalInput5949 canonicalOutput5949 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5950 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput5950 : ExponentCode := normalNode10215

theorem canonicalSound5950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5950.moment H = canonicalOutput5950.moment H :=
  canonical_of_padded canonicalInput5950 canonicalOutput5950 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5951 : ExponentCode := ⟨5, 4, ![![-2, 0, -3, 5], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput5951 : ExponentCode := normalNode8925

theorem canonicalSound5951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5951.moment H = canonicalOutput5951.moment H :=
  canonical_of_padded canonicalInput5951 canonicalOutput5951 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
