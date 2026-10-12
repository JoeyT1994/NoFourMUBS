import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput13888 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput13888 : ExponentCode := normalNode11039

theorem canonicalSound13888 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13888.moment H = canonicalOutput13888.moment H :=
  canonical_of_padded canonicalInput13888 canonicalOutput13888 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13889 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput13889 : ExponentCode := normalNode7021

theorem canonicalSound13889 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13889.moment H = canonicalOutput13889.moment H :=
  canonical_of_padded canonicalInput13889 canonicalOutput13889 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13890 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13890 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2447⟩

theorem canonicalSound13890 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13890.moment H = canonicalOutput13890.moment H :=
  canonical_of_padded canonicalInput13890 canonicalOutput13890 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13891 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -2, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput13891 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2769⟩

theorem canonicalSound13891 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13891.moment H = canonicalOutput13891.moment H :=
  canonical_of_padded canonicalInput13891 canonicalOutput13891 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13892 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput13892 : ExponentCode := normalNode7034

theorem canonicalSound13892 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13892.moment H = canonicalOutput13892.moment H :=
  canonical_of_padded canonicalInput13892 canonicalOutput13892 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13893 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput13893 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1334⟩

theorem canonicalSound13893 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13893.moment H = canonicalOutput13893.moment H :=
  canonical_of_padded canonicalInput13893 canonicalOutput13893 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13894 : ExponentCode := ⟨3, 4, ![![-1, -2, 1, 2], ![0, 0, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput13894 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound13894 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13894.moment H = canonicalOutput13894.moment H :=
  canonical_of_padded canonicalInput13894 canonicalOutput13894 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13895 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput13895 : ExponentCode := normalNode7026

theorem canonicalSound13895 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13895.moment H = canonicalOutput13895.moment H :=
  canonical_of_padded canonicalInput13895 canonicalOutput13895 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13896 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![0, 2, -4, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput13896 : ExponentCode := normalNode7027

theorem canonicalSound13896 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13896.moment H = canonicalOutput13896.moment H :=
  canonical_of_padded canonicalInput13896 canonicalOutput13896 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13897 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput13897 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node853⟩

theorem canonicalSound13897 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13897.moment H = canonicalOutput13897.moment H :=
  canonical_of_padded canonicalInput13897 canonicalOutput13897 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13898 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput13898 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node839⟩

theorem canonicalSound13898 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13898.moment H = canonicalOutput13898.moment H :=
  canonical_of_padded canonicalInput13898 canonicalOutput13898 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13899 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 2, -2], ![0, 3, -3, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput13899 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1191⟩

theorem canonicalSound13899 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13899.moment H = canonicalOutput13899.moment H :=
  canonical_of_padded canonicalInput13899 canonicalOutput13899 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput13900 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 0, 2, -2], ![1, 0, -2, 1], ![0, 2, -1, -1]]⟩

def canonicalOutput13900 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound13900 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13900.moment H = canonicalOutput13900.moment H :=
  canonical_of_padded canonicalInput13900 canonicalOutput13900 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13901 : ExponentCode := ⟨3, 4, ![![-1, -2, 1, 2], ![0, 0, 3, -3], ![1, 2, -4, 1]]⟩

def canonicalOutput13901 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node81⟩

theorem canonicalSound13901 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13901.moment H = canonicalOutput13901.moment H :=
  canonical_of_padded canonicalInput13901 canonicalOutput13901 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13902 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 1, -2, 1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput13902 : ExponentCode := normalNode6945

theorem canonicalSound13902 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13902.moment H = canonicalOutput13902.moment H :=
  canonical_of_padded canonicalInput13902 canonicalOutput13902 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13903 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, -2, 1], ![0, -1, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput13903 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node822⟩

theorem canonicalSound13903 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13903.moment H = canonicalOutput13903.moment H :=
  canonical_of_padded canonicalInput13903 canonicalOutput13903 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13904 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, -2, 1], ![0, 0, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput13904 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node842⟩

theorem canonicalSound13904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13904.moment H = canonicalOutput13904.moment H :=
  canonical_of_padded canonicalInput13904 canonicalOutput13904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13905 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, -2, 1], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput13905 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound13905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13905.moment H = canonicalOutput13905.moment H :=
  canonical_of_padded canonicalInput13905 canonicalOutput13905 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13906 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, -2, 1], ![0, 2, 1, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput13906 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1283⟩

theorem canonicalSound13906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13906.moment H = canonicalOutput13906.moment H :=
  canonical_of_padded canonicalInput13906 canonicalOutput13906 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13907 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, -2, 1], ![1, -1, 1, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput13907 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound13907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13907.moment H = canonicalOutput13907.moment H :=
  canonical_of_padded canonicalInput13907 canonicalOutput13907 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13908 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 1, -1, 0], ![-1, 2, 1, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13908 : ExponentCode := normalNode6905

theorem canonicalSound13908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13908.moment H = canonicalOutput13908.moment H :=
  canonical_of_padded canonicalInput13908 canonicalOutput13908 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput13909 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 1, -1, 0], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput13909 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2451⟩

theorem canonicalSound13909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13909.moment H = canonicalOutput13909.moment H :=
  canonical_of_padded canonicalInput13909 canonicalOutput13909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13910 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 1, -1, 0], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput13910 : ExponentCode := normalNode7071

theorem canonicalSound13910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13910.moment H = canonicalOutput13910.moment H :=
  canonical_of_padded canonicalInput13910 canonicalOutput13910 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13911 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput13911 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2778⟩

theorem canonicalSound13911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13911.moment H = canonicalOutput13911.moment H :=
  canonical_of_padded canonicalInput13911 canonicalOutput13911 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13912 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput13912 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound13912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13912.moment H = canonicalOutput13912.moment H :=
  canonical_of_padded canonicalInput13912 canonicalOutput13912 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13913 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 1, -1, 0], ![0, 2, 0, -2], ![0, -1, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13913 : ExponentCode := normalNode6946

theorem canonicalSound13913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13913.moment H = canonicalOutput13913.moment H :=
  canonical_of_padded canonicalInput13913 canonicalOutput13913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13914 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -1, 1, -1], ![0, 0, -1, 1]]⟩

def canonicalOutput13914 : ExponentCode := normalNode9452

theorem canonicalSound13914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13914.moment H = canonicalOutput13914.moment H :=
  canonical_of_padded canonicalInput13914 canonicalOutput13914 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13915 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput13915 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩

theorem canonicalSound13915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13915.moment H = canonicalOutput13915.moment H :=
  canonical_of_padded canonicalInput13915 canonicalOutput13915 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput13916 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 1, 0, -1], ![-1, 2, 0, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13916 : ExponentCode := normalNode5428

theorem canonicalSound13916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13916.moment H = canonicalOutput13916.moment H :=
  canonical_of_padded canonicalInput13916 canonicalOutput13916 (by decide) (by decide)
    ⟨false, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput13917 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, 0, -1], ![0, 0, 2, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput13917 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node839⟩

theorem canonicalSound13917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13917.moment H = canonicalOutput13917.moment H :=
  canonical_of_padded canonicalInput13917 canonicalOutput13917 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13918 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, 0, -1], ![0, 2, -3, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput13918 : ExponentCode := normalNode7012

theorem canonicalSound13918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13918.moment H = canonicalOutput13918.moment H :=
  canonical_of_padded canonicalInput13918 canonicalOutput13918 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13919 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, 0, -1], ![0, 2, -2, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput13919 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound13919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13919.moment H = canonicalOutput13919.moment H :=
  canonical_of_padded canonicalInput13919 canonicalOutput13919 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput13920 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![0, -1, 2, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput13920 : ExponentCode := normalNode6949

theorem canonicalSound13920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13920.moment H = canonicalOutput13920.moment H :=
  canonical_of_padded canonicalInput13920 canonicalOutput13920 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13921 : ExponentCode := ⟨5, 4, ![![-1, -2, 1, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![0, 0, -1, 1]]⟩

def canonicalOutput13921 : ExponentCode := normalNode9463

theorem canonicalSound13921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13921.moment H = canonicalOutput13921.moment H :=
  canonical_of_padded canonicalInput13921 canonicalOutput13921 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13922 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput13922 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1281⟩

theorem canonicalSound13922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13922.moment H = canonicalOutput13922.moment H :=
  canonical_of_padded canonicalInput13922 canonicalOutput13922 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput13923 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, 2, -3], ![0, 0, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput13923 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node829⟩

theorem canonicalSound13923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13923.moment H = canonicalOutput13923.moment H :=
  canonical_of_padded canonicalInput13923 canonicalOutput13923 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13924 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, 2, -3], ![0, 0, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput13924 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node109⟩

theorem canonicalSound13924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13924.moment H = canonicalOutput13924.moment H :=
  canonical_of_padded canonicalInput13924 canonicalOutput13924 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput13925 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, 2, -3], ![0, 1, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput13925 : ExponentCode := normalNode7064

theorem canonicalSound13925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13925.moment H = canonicalOutput13925.moment H :=
  canonical_of_padded canonicalInput13925 canonicalOutput13925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13926 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput13926 : ExponentCode := normalNode7076

theorem canonicalSound13926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13926.moment H = canonicalOutput13926.moment H :=
  canonical_of_padded canonicalInput13926 canonicalOutput13926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13927 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, 2, -3, 1]]⟩

def canonicalOutput13927 : ExponentCode := normalNode7080

theorem canonicalSound13927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13927.moment H = canonicalOutput13927.moment H :=
  canonical_of_padded canonicalInput13927 canonicalOutput13927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13928 : ExponentCode := ⟨3, 4, ![![-1, -2, 1, 2], ![0, 1, 3, -4], ![1, 1, -4, 2]]⟩

def canonicalOutput13928 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node137⟩

theorem canonicalSound13928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13928.moment H = canonicalOutput13928.moment H :=
  canonical_of_padded canonicalInput13928 canonicalOutput13928 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput13929 : ExponentCode := ⟨3, 4, ![![-1, -2, 1, 2], ![0, 2, -4, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput13929 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node138⟩

theorem canonicalSound13929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13929.moment H = canonicalOutput13929.moment H :=
  canonical_of_padded canonicalInput13929 canonicalOutput13929 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13930 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, -3, 1], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput13930 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node823⟩

theorem canonicalSound13930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13930.moment H = canonicalOutput13930.moment H :=
  canonical_of_padded canonicalInput13930 canonicalOutput13930 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13931 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, -3, 1], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput13931 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node851⟩

theorem canonicalSound13931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13931.moment H = canonicalOutput13931.moment H :=
  canonical_of_padded canonicalInput13931 canonicalOutput13931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13932 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, -3, 1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput13932 : ExponentCode := normalNode7080

theorem canonicalSound13932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13932.moment H = canonicalOutput13932.moment H :=
  canonical_of_padded canonicalInput13932 canonicalOutput13932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13933 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, -3, 1], ![1, -1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput13933 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node851⟩

theorem canonicalSound13933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13933.moment H = canonicalOutput13933.moment H :=
  canonical_of_padded canonicalInput13933 canonicalOutput13933 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13934 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, -2, 0], ![0, -1, 0, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput13934 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node971⟩

theorem canonicalSound13934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13934.moment H = canonicalOutput13934.moment H :=
  canonical_of_padded canonicalInput13934 canonicalOutput13934 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13935 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, -2, 0], ![0, 1, 2, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput13935 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node852⟩

theorem canonicalSound13935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13935.moment H = canonicalOutput13935.moment H :=
  canonical_of_padded canonicalInput13935 canonicalOutput13935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13936 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, -2, 0], ![1, -1, -1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput13936 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node852⟩

theorem canonicalSound13936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13936.moment H = canonicalOutput13936.moment H :=
  canonical_of_padded canonicalInput13936 canonicalOutput13936 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13937 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, -1, -1], ![0, -1, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput13937 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound13937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13937.moment H = canonicalOutput13937.moment H :=
  canonical_of_padded canonicalInput13937 canonicalOutput13937 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13938 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, -1, -1], ![0, 0, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput13938 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound13938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13938.moment H = canonicalOutput13938.moment H :=
  canonical_of_padded canonicalInput13938 canonicalOutput13938 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13939 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, -1, -1], ![1, -1, 2, -2], ![0, 1, -2, 1]]⟩

def canonicalOutput13939 : ExponentCode := normalNode7073

theorem canonicalSound13939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13939.moment H = canonicalOutput13939.moment H :=
  canonical_of_padded canonicalInput13939 canonicalOutput13939 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13940 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, 0, -2], ![0, -1, 2, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput13940 : ExponentCode := normalNode6951

theorem canonicalSound13940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13940.moment H = canonicalOutput13940.moment H :=
  canonical_of_padded canonicalInput13940 canonicalOutput13940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13941 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, 0, -2], ![0, 1, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput13941 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound13941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13941.moment H = canonicalOutput13941.moment H :=
  canonical_of_padded canonicalInput13941 canonicalOutput13941 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13942 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, 0, -2], ![1, -1, 1, -1], ![0, 1, -2, 1]]⟩

def canonicalOutput13942 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound13942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13942.moment H = canonicalOutput13942.moment H :=
  canonical_of_padded canonicalInput13942 canonicalOutput13942 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13943 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, 1, -3], ![0, -1, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput13943 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1332⟩

theorem canonicalSound13943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13943.moment H = canonicalOutput13943.moment H :=
  canonical_of_padded canonicalInput13943 canonicalOutput13943 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13944 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, 2, -4], ![0, -1, -1, 2], ![1, 1, -2, 0]]⟩

def canonicalOutput13944 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node821⟩

theorem canonicalSound13944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13944.moment H = canonicalOutput13944.moment H :=
  canonical_of_padded canonicalInput13944 canonicalOutput13944 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13945 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 2, 2, -4], ![0, 1, -2, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput13945 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node849⟩

theorem canonicalSound13945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13945.moment H = canonicalOutput13945.moment H :=
  canonical_of_padded canonicalInput13945 canonicalOutput13945 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13946 : ExponentCode := ⟨3, 4, ![![-1, -2, 1, 2], ![0, 3, -3, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput13946 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node105⟩

theorem canonicalSound13946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13946.moment H = canonicalOutput13946.moment H :=
  canonical_of_padded canonicalInput13946 canonicalOutput13946 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13947 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 3, -2, -1], ![0, 0, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput13947 : ExponentCode := normalNode7052

theorem canonicalSound13947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13947.moment H = canonicalOutput13947.moment H :=
  canonical_of_padded canonicalInput13947 canonicalOutput13947 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput13948 : ExponentCode := ⟨3, 4, ![![-1, -2, 1, 2], ![0, 3, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput13948 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound13948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13948.moment H = canonicalOutput13948.moment H :=
  canonical_of_padded canonicalInput13948 canonicalOutput13948 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput13949 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![0, 3, 1, -4], ![0, -1, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput13949 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1095⟩

theorem canonicalSound13949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13949.moment H = canonicalOutput13949.moment H :=
  canonical_of_padded canonicalInput13949 canonicalOutput13949 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput13950 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![1, -1, 1, -1], ![0, 1, -2, 1], ![0, 2, 0, -2]]⟩

def canonicalOutput13950 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound13950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13950.moment H = canonicalOutput13950.moment H :=
  canonical_of_padded canonicalInput13950 canonicalOutput13950 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput13951 : ExponentCode := ⟨4, 4, ![![-1, -2, 1, 2], ![1, -1, 2, -2], ![0, 1, -2, 1], ![0, 2, -1, -1]]⟩

def canonicalOutput13951 : ExponentCode := normalNode7073

theorem canonicalSound13951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput13951.moment H = canonicalOutput13951.moment H :=
  canonical_of_padded canonicalInput13951 canonicalOutput13951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
