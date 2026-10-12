import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes54
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput22912 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput22912 : ExponentCode := normalNode11019

theorem canonicalSound22912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22912.moment H = canonicalOutput22912.moment H :=
  canonical_of_padded canonicalInput22912 canonicalOutput22912 (by decide) (by decide)
    ⟨false, false, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22913 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, 0, 1, 0], ![2, -2, 1, -1], ![0, 1, -4, 3]]⟩

def canonicalOutput22913 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3314⟩

theorem canonicalSound22913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22913.moment H = canonicalOutput22913.moment H :=
  canonical_of_padded canonicalInput22913 canonicalOutput22913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22914 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![0, 1, -4, 3]]⟩

def canonicalOutput22914 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3468⟩

theorem canonicalSound22914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22914.moment H = canonicalOutput22914.moment H :=
  canonical_of_padded canonicalInput22914 canonicalOutput22914 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22915 : ExponentCode := ⟨6, 4, ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -2, 1, -1], ![-1, 1, -4, 4]]⟩

def canonicalOutput22915 : ExponentCode := normalNode5893

theorem canonicalSound22915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22915.moment H = canonicalOutput22915.moment H :=
  canonical_of_padded canonicalInput22915 canonicalOutput22915 (by decide) (by decide)
    ⟨false, false, canonicalPermutation134, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22916 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, -3, 4], ![1, -1, 3, -3]]⟩

def canonicalOutput22916 : ExponentCode := normalNode10975

theorem canonicalSound22916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22916.moment H = canonicalOutput22916.moment H :=
  canonical_of_padded canonicalInput22916 canonicalOutput22916 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22917 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, -2, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput22917 : ExponentCode := normalNode11037

theorem canonicalSound22917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22917.moment H = canonicalOutput22917.moment H :=
  canonical_of_padded canonicalInput22917 canonicalOutput22917 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput22918 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -3, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput22918 : ExponentCode := normalNode10966

theorem canonicalSound22918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22918.moment H = canonicalOutput22918.moment H :=
  canonical_of_padded canonicalInput22918 canonicalOutput22918 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22919 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -2, 2], ![0, -1, 2, -1]]⟩

def canonicalOutput22919 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2445⟩

theorem canonicalSound22919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22919.moment H = canonicalOutput22919.moment H :=
  canonical_of_padded canonicalInput22919 canonicalOutput22919 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput22920 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput22920 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound22920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22920.moment H = canonicalOutput22920.moment H :=
  canonical_of_padded canonicalInput22920 canonicalOutput22920 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput22921 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, 0, 3, -3], ![0, 1, -3, 2], ![1, -2, 0, 1]]⟩

def canonicalOutput22921 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1355⟩

theorem canonicalSound22921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22921.moment H = canonicalOutput22921.moment H :=
  canonical_of_padded canonicalInput22921 canonicalOutput22921 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22922 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput22922 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩

theorem canonicalSound22922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22922.moment H = canonicalOutput22922.moment H :=
  canonical_of_padded canonicalInput22922 canonicalOutput22922 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22923 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, 4, -4], ![-1, 1, -1, 1], ![1, -1, -2, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput22923 : ExponentCode := normalNode11009

theorem canonicalSound22923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22923.moment H = canonicalOutput22923.moment H :=
  canonical_of_padded canonicalInput22923 canonicalOutput22923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22924 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, -1, -2, 3], ![1, -1, -1, 1]]⟩

def canonicalOutput22924 : ExponentCode := normalNode11095

theorem canonicalSound22924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22924.moment H = canonicalOutput22924.moment H :=
  canonical_of_padded canonicalInput22924 canonicalOutput22924 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22925 : ExponentCode := ⟨5, 4, ![![-1, 1, 0, 0], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, -2, 2], ![0, -1, -1, 2]]⟩

def canonicalOutput22925 : ExponentCode := normalNode11035

theorem canonicalSound22925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22925.moment H = canonicalOutput22925.moment H :=
  canonical_of_padded canonicalInput22925 canonicalOutput22925 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput22926 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, 1, -1, 0], ![0, -1, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput22926 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound22926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22926.moment H = canonicalOutput22926.moment H :=
  canonical_of_padded canonicalInput22926 canonicalOutput22926 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22927 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, 1, -1, 0], ![1, -1, -2, 2], ![0, -1, 3, -2]]⟩

def canonicalOutput22927 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound22927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22927.moment H = canonicalOutput22927.moment H :=
  canonical_of_padded canonicalInput22927 canonicalOutput22927 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput22928 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, 1, 0, -1], ![0, -1, -3, 4], ![1, -1, 3, -3]]⟩

def canonicalOutput22928 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1102⟩

theorem canonicalSound22928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22928.moment H = canonicalOutput22928.moment H :=
  canonical_of_padded canonicalInput22928 canonicalOutput22928 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22929 : ExponentCode := ⟨4, 4, ![![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, -3, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput22929 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩

theorem canonicalSound22929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22929.moment H = canonicalOutput22929.moment H :=
  canonical_of_padded canonicalInput22929 canonicalOutput22929 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput22930 : ExponentCode := ⟨4, 5, ![![-1, 1, 0, 0, 0], ![0, 0, -1, -1, 2], ![0, 0, 0, 2, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput22930 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound22930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22930.moment H = canonicalOutput22930.moment H :=
  canonical_of_padded canonicalInput22930 canonicalOutput22930 (by decide) (by decide)
    ⟨true, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput22931 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22931 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound22931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22931.moment H = canonicalOutput22931.moment H :=
  canonical_of_padded canonicalInput22931 canonicalOutput22931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput22932 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22932 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound22932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22932.moment H = canonicalOutput22932.moment H :=
  canonical_of_padded canonicalInput22932 canonicalOutput22932 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput22933 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22933 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound22933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22933.moment H = canonicalOutput22933.moment H :=
  canonical_of_padded canonicalInput22933 canonicalOutput22933 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput22934 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22934 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound22934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22934.moment H = canonicalOutput22934.moment H :=
  canonical_of_padded canonicalInput22934 canonicalOutput22934 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput22935 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22935 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound22935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22935.moment H = canonicalOutput22935.moment H :=
  canonical_of_padded canonicalInput22935 canonicalOutput22935 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput22936 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22936 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound22936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22936.moment H = canonicalOutput22936.moment H :=
  canonical_of_padded canonicalInput22936 canonicalOutput22936 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput22937 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput22937 : ExponentCode := normalNode9068

theorem canonicalSound22937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22937.moment H = canonicalOutput22937.moment H :=
  canonical_of_padded canonicalInput22937 canonicalOutput22937 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput22938 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput22938 : ExponentCode := normalNode8330

theorem canonicalSound22938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22938.moment H = canonicalOutput22938.moment H :=
  canonical_of_padded canonicalInput22938 canonicalOutput22938 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput22939 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput22939 : ExponentCode := normalNode8406

theorem canonicalSound22939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22939.moment H = canonicalOutput22939.moment H :=
  canonical_of_padded canonicalInput22939 canonicalOutput22939 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput22940 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22940 : ExponentCode := normalNode8064

theorem canonicalSound22940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22940.moment H = canonicalOutput22940.moment H :=
  canonical_of_padded canonicalInput22940 canonicalOutput22940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22941 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22941 : ExponentCode := normalNode8066

theorem canonicalSound22941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22941.moment H = canonicalOutput22941.moment H :=
  canonical_of_padded canonicalInput22941 canonicalOutput22941 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22942 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22942 : ExponentCode := normalNode8066

theorem canonicalSound22942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22942.moment H = canonicalOutput22942.moment H :=
  canonical_of_padded canonicalInput22942 canonicalOutput22942 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22943 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22943 : ExponentCode := normalNode8064

theorem canonicalSound22943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22943.moment H = canonicalOutput22943.moment H :=
  canonical_of_padded canonicalInput22943 canonicalOutput22943 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22944 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22944 : ExponentCode := normalNode8066

theorem canonicalSound22944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22944.moment H = canonicalOutput22944.moment H :=
  canonical_of_padded canonicalInput22944 canonicalOutput22944 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22945 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22945 : ExponentCode := normalNode8361

theorem canonicalSound22945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22945.moment H = canonicalOutput22945.moment H :=
  canonical_of_padded canonicalInput22945 canonicalOutput22945 (by decide) (by decide)
    ⟨false, false, canonicalPermutation129, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22946 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22946 : ExponentCode := normalNode8067

theorem canonicalSound22946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22946.moment H = canonicalOutput22946.moment H :=
  canonical_of_padded canonicalInput22946 canonicalOutput22946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22947 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22947 : ExponentCode := normalNode8067

theorem canonicalSound22947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22947.moment H = canonicalOutput22947.moment H :=
  canonical_of_padded canonicalInput22947 canonicalOutput22947 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22948 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22948 : ExponentCode := normalNode8361

theorem canonicalSound22948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22948.moment H = canonicalOutput22948.moment H :=
  canonical_of_padded canonicalInput22948 canonicalOutput22948 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22949 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22949 : ExponentCode := normalNode8066

theorem canonicalSound22949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22949.moment H = canonicalOutput22949.moment H :=
  canonical_of_padded canonicalInput22949 canonicalOutput22949 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22950 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22950 : ExponentCode := normalNode8066

theorem canonicalSound22950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22950.moment H = canonicalOutput22950.moment H :=
  canonical_of_padded canonicalInput22950 canonicalOutput22950 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22951 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22951 : ExponentCode := normalNode8067

theorem canonicalSound22951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22951.moment H = canonicalOutput22951.moment H :=
  canonical_of_padded canonicalInput22951 canonicalOutput22951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22952 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22952 : ExponentCode := normalNode8361

theorem canonicalSound22952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22952.moment H = canonicalOutput22952.moment H :=
  canonical_of_padded canonicalInput22952 canonicalOutput22952 (by decide) (by decide)
    ⟨false, false, canonicalPermutation129, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22953 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22953 : ExponentCode := normalNode8361

theorem canonicalSound22953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22953.moment H = canonicalOutput22953.moment H :=
  canonical_of_padded canonicalInput22953 canonicalOutput22953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22954 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22954 : ExponentCode := normalNode8067

theorem canonicalSound22954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22954.moment H = canonicalOutput22954.moment H :=
  canonical_of_padded canonicalInput22954 canonicalOutput22954 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22955 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22955 : ExponentCode := normalNode8066

theorem canonicalSound22955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22955.moment H = canonicalOutput22955.moment H :=
  canonical_of_padded canonicalInput22955 canonicalOutput22955 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22956 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput22956 : ExponentCode := normalNode8064

theorem canonicalSound22956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22956.moment H = canonicalOutput22956.moment H :=
  canonical_of_padded canonicalInput22956 canonicalOutput22956 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22957 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22957 : ExponentCode := normalNode8066

theorem canonicalSound22957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22957.moment H = canonicalOutput22957.moment H :=
  canonical_of_padded canonicalInput22957 canonicalOutput22957 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22958 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22958 : ExponentCode := normalNode8066

theorem canonicalSound22958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22958.moment H = canonicalOutput22958.moment H :=
  canonical_of_padded canonicalInput22958 canonicalOutput22958 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22959 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22959 : ExponentCode := normalNode8064

theorem canonicalSound22959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22959.moment H = canonicalOutput22959.moment H :=
  canonical_of_padded canonicalInput22959 canonicalOutput22959 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22960 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22960 : ExponentCode := normalNode8067

theorem canonicalSound22960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22960.moment H = canonicalOutput22960.moment H :=
  canonical_of_padded canonicalInput22960 canonicalOutput22960 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22961 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22961 : ExponentCode := normalNode8066

theorem canonicalSound22961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22961.moment H = canonicalOutput22961.moment H :=
  canonical_of_padded canonicalInput22961 canonicalOutput22961 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22962 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22962 : ExponentCode := normalNode8361

theorem canonicalSound22962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22962.moment H = canonicalOutput22962.moment H :=
  canonical_of_padded canonicalInput22962 canonicalOutput22962 (by decide) (by decide)
    ⟨false, false, canonicalPermutation129, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput22963 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22963 : ExponentCode := normalNode8361

theorem canonicalSound22963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22963.moment H = canonicalOutput22963.moment H :=
  canonical_of_padded canonicalInput22963 canonicalOutput22963 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput22964 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22964 : ExponentCode := normalNode8066

theorem canonicalSound22964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22964.moment H = canonicalOutput22964.moment H :=
  canonical_of_padded canonicalInput22964 canonicalOutput22964 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22965 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22965 : ExponentCode := normalNode8067

theorem canonicalSound22965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22965.moment H = canonicalOutput22965.moment H :=
  canonical_of_padded canonicalInput22965 canonicalOutput22965 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22966 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22966 : ExponentCode := normalNode8361

theorem canonicalSound22966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22966.moment H = canonicalOutput22966.moment H :=
  canonical_of_padded canonicalInput22966 canonicalOutput22966 (by decide) (by decide)
    ⟨false, false, canonicalPermutation133, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22967 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22967 : ExponentCode := normalNode8361

theorem canonicalSound22967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22967.moment H = canonicalOutput22967.moment H :=
  canonical_of_padded canonicalInput22967 canonicalOutput22967 (by decide) (by decide)
    ⟨false, false, canonicalPermutation133, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22968 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22968 : ExponentCode := normalNode8361

theorem canonicalSound22968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22968.moment H = canonicalOutput22968.moment H :=
  canonical_of_padded canonicalInput22968 canonicalOutput22968 (by decide) (by decide)
    ⟨false, false, canonicalPermutation133, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput22969 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22969 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound22969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22969.moment H = canonicalOutput22969.moment H :=
  canonical_of_padded canonicalInput22969 canonicalOutput22969 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput22970 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22970 : ExponentCode := normalNode8361

theorem canonicalSound22970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22970.moment H = canonicalOutput22970.moment H :=
  canonical_of_padded canonicalInput22970 canonicalOutput22970 (by decide) (by decide)
    ⟨false, false, canonicalPermutation132, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput22971 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22971 : ExponentCode := normalNode8361

theorem canonicalSound22971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22971.moment H = canonicalOutput22971.moment H :=
  canonical_of_padded canonicalInput22971 canonicalOutput22971 (by decide) (by decide)
    ⟨false, false, canonicalPermutation132, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22972 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22972 : ExponentCode := normalNode8361

theorem canonicalSound22972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22972.moment H = canonicalOutput22972.moment H :=
  canonical_of_padded canonicalInput22972 canonicalOutput22972 (by decide) (by decide)
    ⟨false, false, canonicalPermutation132, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22973 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput22973 : ExponentCode := normalNode8066

theorem canonicalSound22973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22973.moment H = canonicalOutput22973.moment H :=
  canonical_of_padded canonicalInput22973 canonicalOutput22973 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22974 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput22974 : ExponentCode := normalNode8067

theorem canonicalSound22974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22974.moment H = canonicalOutput22974.moment H :=
  canonical_of_padded canonicalInput22974 canonicalOutput22974 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22975 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22975 : ExponentCode := normalNode8361

theorem canonicalSound22975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22975.moment H = canonicalOutput22975.moment H :=
  canonical_of_padded canonicalInput22975 canonicalOutput22975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation217⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
