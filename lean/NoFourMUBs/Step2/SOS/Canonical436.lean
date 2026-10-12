import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27904 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, -1, 2], ![0, -1, 4, -3]]⟩

def canonicalOutput27904 : ExponentCode := normalNode5145

theorem canonicalSound27904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27904.moment H = canonicalOutput27904.moment H :=
  canonical_of_padded canonicalInput27904 canonicalOutput27904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27905 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 2, 1, -2]]⟩

def canonicalOutput27905 : ExponentCode := normalNode6887

theorem canonicalSound27905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27905.moment H = canonicalOutput27905.moment H :=
  canonical_of_padded canonicalInput27905 canonicalOutput27905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27906 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 2, -2]]⟩

def canonicalOutput27906 : ExponentCode := normalNode9306

theorem canonicalSound27906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27906.moment H = canonicalOutput27906.moment H :=
  canonical_of_padded canonicalInput27906 canonicalOutput27906 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27907 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, -1, 3, -2]]⟩

def canonicalOutput27907 : ExponentCode := normalNode5138

theorem canonicalSound27907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27907.moment H = canonicalOutput27907.moment H :=
  canonical_of_padded canonicalInput27907 canonicalOutput27907 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27908 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![0, -2, 3, -1]]⟩

def canonicalOutput27908 : ExponentCode := normalNode2259

theorem canonicalSound27908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27908.moment H = canonicalOutput27908.moment H :=
  canonical_of_padded canonicalInput27908 canonicalOutput27908 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27909 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput27909 : ExponentCode := normalNode7788

theorem canonicalSound27909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27909.moment H = canonicalOutput27909.moment H :=
  canonical_of_padded canonicalInput27909 canonicalOutput27909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27910 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput27910 : ExponentCode := normalNode5470

theorem canonicalSound27910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27910.moment H = canonicalOutput27910.moment H :=
  canonical_of_padded canonicalInput27910 canonicalOutput27910 (by decide) (by decide)
    ⟨false, false, canonicalPermutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27911 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, 0, 3, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput27911 : ExponentCode := normalNode5167

theorem canonicalSound27911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27911.moment H = canonicalOutput27911.moment H :=
  canonical_of_padded canonicalInput27911 canonicalOutput27911 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation328, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27912 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 2, 0, 0], ![0, -2, 1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput27912 : ExponentCode := normalNode3799

theorem canonicalSound27912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27912.moment H = canonicalOutput27912.moment H :=
  canonical_of_padded canonicalInput27912 canonicalOutput27912 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27913 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![1, -2, 0, 1], ![-1, -1, 3, -1]]⟩

def canonicalOutput27913 : ExponentCode := normalNode7650

theorem canonicalSound27913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27913.moment H = canonicalOutput27913.moment H :=
  canonical_of_padded canonicalInput27913 canonicalOutput27913 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27914 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput27914 : ExponentCode := normalNode2598

theorem canonicalSound27914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27914.moment H = canonicalOutput27914.moment H :=
  canonical_of_padded canonicalInput27914 canonicalOutput27914 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27915 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, 1, 2, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput27915 : ExponentCode := normalNode804

theorem canonicalSound27915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27915.moment H = canonicalOutput27915.moment H :=
  canonical_of_padded canonicalInput27915 canonicalOutput27915 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27916 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, -2, 4, -2]]⟩

def canonicalOutput27916 : ExponentCode := normalNode3300

theorem canonicalSound27916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27916.moment H = canonicalOutput27916.moment H :=
  canonical_of_padded canonicalInput27916 canonicalOutput27916 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation323, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27917 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput27917 : ExponentCode := normalNode1924

theorem canonicalSound27917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27917.moment H = canonicalOutput27917.moment H :=
  canonical_of_padded canonicalInput27917 canonicalOutput27917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27918 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![-1, 1, 2, -2]]⟩

def canonicalOutput27918 : ExponentCode := normalNode2600

theorem canonicalSound27918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27918.moment H = canonicalOutput27918.moment H :=
  canonical_of_padded canonicalInput27918 canonicalOutput27918 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation267, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27919 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput27919 : ExponentCode := normalNode572

theorem canonicalSound27919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27919.moment H = canonicalOutput27919.moment H :=
  canonical_of_padded canonicalInput27919 canonicalOutput27919 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27920 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, 2, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput27920 : ExponentCode := normalNode3914

theorem canonicalSound27920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27920.moment H = canonicalOutput27920.moment H :=
  canonical_of_padded canonicalInput27920 canonicalOutput27920 (by decide) (by decide)
    ⟨false, false, canonicalPermutation319, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27921 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput27921 : ExponentCode := normalNode5168

theorem canonicalSound27921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27921.moment H = canonicalOutput27921.moment H :=
  canonical_of_padded canonicalInput27921 canonicalOutput27921 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation328, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27922 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![1, 1, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput27922 : ExponentCode := normalNode4397

theorem canonicalSound27922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27922.moment H = canonicalOutput27922.moment H :=
  canonical_of_padded canonicalInput27922 canonicalOutput27922 (by decide) (by decide)
    ⟨false, false, canonicalPermutation306, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27923 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -2, 0, 2], ![1, 1, -1, -1], ![-2, 0, 3, -1]]⟩

def canonicalOutput27923 : ExponentCode := normalNode3813

theorem canonicalSound27923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27923.moment H = canonicalOutput27923.moment H :=
  canonical_of_padded canonicalInput27923 canonicalOutput27923 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27924 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, -1, 1, 2]]⟩

def canonicalOutput27924 : ExponentCode := normalNode2528

theorem canonicalSound27924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27924.moment H = canonicalOutput27924.moment H :=
  canonical_of_padded canonicalInput27924 canonicalOutput27924 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27925 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![1, 1, 0, -2], ![-2, -1, 0, 3]]⟩

def canonicalOutput27925 : ExponentCode := normalNode1818

theorem canonicalSound27925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27925.moment H = canonicalOutput27925.moment H :=
  canonical_of_padded canonicalInput27925 canonicalOutput27925 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27926 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, -1, 2, 1]]⟩

def canonicalOutput27926 : ExponentCode := normalNode2773

theorem canonicalSound27926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27926.moment H = canonicalOutput27926.moment H :=
  canonical_of_padded canonicalInput27926 canonicalOutput27926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27927 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 1, 1, -2], ![-1, 1, 2, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput27927 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1370⟩

theorem canonicalSound27927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27927.moment H = canonicalOutput27927.moment H :=
  canonical_of_padded canonicalInput27927 canonicalOutput27927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27928 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 1, 1, -2], ![0, 1, 1, -2], ![0, -2, 0, 2]]⟩

def canonicalOutput27928 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node202⟩

theorem canonicalSound27928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27928.moment H = canonicalOutput27928.moment H :=
  canonical_of_padded canonicalInput27928 canonicalOutput27928 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27929 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput27929 : ExponentCode := normalNode4273

theorem canonicalSound27929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27929.moment H = canonicalOutput27929.moment H :=
  canonical_of_padded canonicalInput27929 canonicalOutput27929 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27930 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput27930 : ExponentCode := normalNode8854

theorem canonicalSound27930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27930.moment H = canonicalOutput27930.moment H :=
  canonical_of_padded canonicalInput27930 canonicalOutput27930 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27931 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![0, 2, -1, -1], ![-1, 1, 2, -2]]⟩

def canonicalOutput27931 : ExponentCode := normalNode6864

theorem canonicalSound27931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27931.moment H = canonicalOutput27931.moment H :=
  canonical_of_padded canonicalInput27931 canonicalOutput27931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation389, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27932 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![0, 2, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput27932 : ExponentCode := normalNode4099

theorem canonicalSound27932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27932.moment H = canonicalOutput27932.moment H :=
  canonical_of_padded canonicalInput27932 canonicalOutput27932 (by decide) (by decide)
    ⟨false, true, canonicalPermutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27933 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 1, -1, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput27933 : ExponentCode := normalNode10194

theorem canonicalSound27933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27933.moment H = canonicalOutput27933.moment H :=
  canonical_of_padded canonicalInput27933 canonicalOutput27933 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27934 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, -1, 2, -1], ![0, 1, 1, -2], ![-2, 2, -1, 1]]⟩

def canonicalOutput27934 : ExponentCode := normalNode2262

theorem canonicalSound27934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27934.moment H = canonicalOutput27934.moment H :=
  canonical_of_padded canonicalInput27934 canonicalOutput27934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27935 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![0, -1, 3, -2]]⟩

def canonicalOutput27935 : ExponentCode := normalNode3940

theorem canonicalSound27935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27935.moment H = canonicalOutput27935.moment H :=
  canonical_of_padded canonicalInput27935 canonicalOutput27935 (by decide) (by decide)
    ⟨false, true, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27936 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput27936 : ExponentCode := normalNode3938

theorem canonicalSound27936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27936.moment H = canonicalOutput27936.moment H :=
  canonical_of_padded canonicalInput27936 canonicalOutput27936 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27937 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput27937 : ExponentCode := normalNode5418

theorem canonicalSound27937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27937.moment H = canonicalOutput27937.moment H :=
  canonical_of_padded canonicalInput27937 canonicalOutput27937 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27938 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 2, 1, -3]]⟩

def canonicalOutput27938 : ExponentCode := normalNode3473

theorem canonicalSound27938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27938.moment H = canonicalOutput27938.moment H :=
  canonical_of_padded canonicalInput27938 canonicalOutput27938 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27939 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, 2, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput27939 : ExponentCode := normalNode3934

theorem canonicalSound27939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27939.moment H = canonicalOutput27939.moment H :=
  canonical_of_padded canonicalInput27939 canonicalOutput27939 (by decide) (by decide)
    ⟨false, true, canonicalPermutation344, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27940 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput27940 : ExponentCode := normalNode3935

theorem canonicalSound27940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27940.moment H = canonicalOutput27940.moment H :=
  canonical_of_padded canonicalInput27940 canonicalOutput27940 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27941 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput27941 : ExponentCode := normalNode9327

theorem canonicalSound27941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27941.moment H = canonicalOutput27941.moment H :=
  canonical_of_padded canonicalInput27941 canonicalOutput27941 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27942 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![0, 1, 1, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput27942 : ExponentCode := normalNode6900

theorem canonicalSound27942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27942.moment H = canonicalOutput27942.moment H :=
  canonical_of_padded canonicalInput27942 canonicalOutput27942 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27943 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput27943 : ExponentCode := normalNode5622

theorem canonicalSound27943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27943.moment H = canonicalOutput27943.moment H :=
  canonical_of_padded canonicalInput27943 canonicalOutput27943 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27944 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput27944 : ExponentCode := normalNode5940

theorem canonicalSound27944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27944.moment H = canonicalOutput27944.moment H :=
  canonical_of_padded canonicalInput27944 canonicalOutput27944 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27945 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput27945 : ExponentCode := normalNode5634

theorem canonicalSound27945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27945.moment H = canonicalOutput27945.moment H :=
  canonical_of_padded canonicalInput27945 canonicalOutput27945 (by decide) (by decide)
    ⟨false, true, canonicalPermutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27946 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, 2, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput27946 : ExponentCode := normalNode5349

theorem canonicalSound27946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27946.moment H = canonicalOutput27946.moment H :=
  canonical_of_padded canonicalInput27946 canonicalOutput27946 (by decide) (by decide)
    ⟨false, true, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27947 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![0, -1, 2, -1], ![-1, 2, 1, -2]]⟩

def canonicalOutput27947 : ExponentCode := normalNode5062

theorem canonicalSound27947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27947.moment H = canonicalOutput27947.moment H :=
  canonical_of_padded canonicalInput27947 canonicalOutput27947 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27948 : ExponentCode := ⟨4, 5, ![![0, 0, -1, -2, 3], ![0, -1, -1, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput27948 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1036⟩

theorem canonicalSound27948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27948.moment H = canonicalOutput27948.moment H :=
  canonical_of_padded canonicalInput27948 canonicalOutput27948 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27949 : ExponentCode := ⟨4, 5, ![![0, 0, -1, -2, 3], ![0, -1, -1, 2, 0], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput27949 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound27949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27949.moment H = canonicalOutput27949.moment H :=
  canonical_of_padded canonicalInput27949 canonicalOutput27949 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27950 : ExponentCode := ⟨4, 5, ![![0, 0, -1, -2, 3], ![0, -1, 1, -1, 1], ![0, 0, -1, 3, -2], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput27950 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1074⟩

theorem canonicalSound27950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27950.moment H = canonicalOutput27950.moment H :=
  canonical_of_padded canonicalInput27950 canonicalOutput27950 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27951 : ExponentCode := ⟨4, 5, ![![0, 0, -1, -1, 2], ![-1, 0, 2, 2, -3], ![0, 1, -1, -1, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27951 : ExponentCode := normalNode10514

theorem canonicalSound27951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27951.moment H = canonicalOutput27951.moment H :=
  canonical_of_padded canonicalInput27951 canonicalOutput27951 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput27952 : ExponentCode := ⟨4, 5, ![![0, 0, -1, -1, 2], ![0, -1, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput27952 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound27952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27952.moment H = canonicalOutput27952.moment H :=
  canonical_of_padded canonicalInput27952 canonicalOutput27952 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27953 : ExponentCode := ⟨4, 5, ![![0, 0, -1, -1, 2], ![0, -1, -1, 1, 1], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput27953 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound27953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27953.moment H = canonicalOutput27953.moment H :=
  canonical_of_padded canonicalInput27953 canonicalOutput27953 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27954 : ExponentCode := ⟨4, 5, ![![0, 0, -1, -1, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput27954 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩

theorem canonicalSound27954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27954.moment H = canonicalOutput27954.moment H :=
  canonical_of_padded canonicalInput27954 canonicalOutput27954 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27955 : ExponentCode := ⟨4, 5, ![![0, 0, -1, -1, 2], ![0, -1, 0, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput27955 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound27955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27955.moment H = canonicalOutput27955.moment H :=
  canonical_of_padded canonicalInput27955 canonicalOutput27955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27956 : ExponentCode := ⟨4, 5, ![![0, 0, -1, -1, 2], ![0, -1, 2, 0, -1], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput27956 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound27956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27956.moment H = canonicalOutput27956.moment H :=
  canonical_of_padded canonicalInput27956 canonicalOutput27956 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27957 : ExponentCode := ⟨4, 5, ![![0, 0, -1, -1, 2], ![0, 0, 2, 1, -3], ![-1, 1, -1, 0, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput27957 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2803⟩

theorem canonicalSound27957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27957.moment H = canonicalOutput27957.moment H :=
  canonical_of_padded canonicalInput27957 canonicalOutput27957 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput27958 : ExponentCode := ⟨4, 5, ![![0, 0, -1, -1, 2], ![0, 0, 2, 1, -3], ![0, 1, -1, -1, 1], ![0, -1, 0, 1, 0]]⟩

def canonicalOutput27958 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1299⟩

theorem canonicalSound27958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27958.moment H = canonicalOutput27958.moment H :=
  canonical_of_padded canonicalInput27958 canonicalOutput27958 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27959 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 0, 1], ![0, -1, -1, 1, 1], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput27959 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1006⟩

theorem canonicalSound27959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27959.moment H = canonicalOutput27959.moment H :=
  canonical_of_padded canonicalInput27959 canonicalOutput27959 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27960 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 0, 1], ![0, -1, -1, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput27960 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound27960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27960.moment H = canonicalOutput27960.moment H :=
  canonical_of_padded canonicalInput27960 canonicalOutput27960 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27961 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 0, 1], ![0, -1, -1, 2, 0], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput27961 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound27961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27961.moment H = canonicalOutput27961.moment H :=
  canonical_of_padded canonicalInput27961 canonicalOutput27961 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27962 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 0, 1], ![0, -1, -1, 2, 0], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput27962 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1002⟩

theorem canonicalSound27962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27962.moment H = canonicalOutput27962.moment H :=
  canonical_of_padded canonicalInput27962 canonicalOutput27962 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27963 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 0, 1], ![0, -1, 1, -1, 1], ![0, 0, -1, 2, -1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput27963 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound27963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27963.moment H = canonicalOutput27963.moment H :=
  canonical_of_padded canonicalInput27963 canonicalOutput27963 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27964 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 0, 1], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput27964 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound27964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27964.moment H = canonicalOutput27964.moment H :=
  canonical_of_padded canonicalInput27964 canonicalOutput27964 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27965 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 0, 1], ![0, -1, 1, 2, -2], ![0, 0, -1, -1, 2], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput27965 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound27965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27965.moment H = canonicalOutput27965.moment H :=
  canonical_of_padded canonicalInput27965 canonicalOutput27965 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27966 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 0, 1], ![0, -1, 2, -1, 0], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput27966 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound27966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27966.moment H = canonicalOutput27966.moment H :=
  canonical_of_padded canonicalInput27966 canonicalOutput27966 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27967 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, 0, 2, -2], ![0, 0, 2, -1, -1]]⟩

def canonicalOutput27967 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound27967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27967.moment H = canonicalOutput27967.moment H :=
  canonical_of_padded canonicalInput27967 canonicalOutput27967 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
