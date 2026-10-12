import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19904 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19904 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1006⟩

theorem canonicalSound19904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19904.moment H = canonicalOutput19904.moment H :=
  canonical_of_padded canonicalInput19904 canonicalOutput19904 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19905 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19905 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2632⟩

theorem canonicalSound19905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19905.moment H = canonicalOutput19905.moment H :=
  canonical_of_padded canonicalInput19905 canonicalOutput19905 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19906 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 2, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19906 : ExponentCode := normalNode8946

theorem canonicalSound19906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19906.moment H = canonicalOutput19906.moment H :=
  canonical_of_padded canonicalInput19906 canonicalOutput19906 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19907 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, 1, -1, -1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput19907 : ExponentCode := normalNode8989

theorem canonicalSound19907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19907.moment H = canonicalOutput19907.moment H :=
  canonical_of_padded canonicalInput19907 canonicalOutput19907 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19908 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, 1, 0, -2], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19908 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound19908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19908.moment H = canonicalOutput19908.moment H :=
  canonical_of_padded canonicalInput19908 canonicalOutput19908 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19909 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 0, -1, 2, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19909 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound19909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19909.moment H = canonicalOutput19909.moment H :=
  canonical_of_padded canonicalInput19909 canonicalOutput19909 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput19910 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 0, 0, 2, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19910 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1053⟩

theorem canonicalSound19910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19910.moment H = canonicalOutput19910.moment H :=
  canonical_of_padded canonicalInput19910 canonicalOutput19910 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput19911 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, -1, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19911 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1117⟩

theorem canonicalSound19911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19911.moment H = canonicalOutput19911.moment H :=
  canonical_of_padded canonicalInput19911 canonicalOutput19911 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19912 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19912 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2612⟩

theorem canonicalSound19912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19912.moment H = canonicalOutput19912.moment H :=
  canonical_of_padded canonicalInput19912 canonicalOutput19912 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19913 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 1, -2, 0], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput19913 : ExponentCode := normalNode9414

theorem canonicalSound19913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19913.moment H = canonicalOutput19913.moment H :=
  canonical_of_padded canonicalInput19913 canonicalOutput19913 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19914 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 1, -1, -1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19914 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2581⟩

theorem canonicalSound19914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19914.moment H = canonicalOutput19914.moment H :=
  canonical_of_padded canonicalInput19914 canonicalOutput19914 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19915 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 0, -1, 1, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19915 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound19915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19915.moment H = canonicalOutput19915.moment H :=
  canonical_of_padded canonicalInput19915 canonicalOutput19915 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19916 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 0, 1, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19916 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound19916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19916.moment H = canonicalOutput19916.moment H :=
  canonical_of_padded canonicalInput19916 canonicalOutput19916 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19917 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 0, 1, -1, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19917 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1242⟩

theorem canonicalSound19917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19917.moment H = canonicalOutput19917.moment H :=
  canonical_of_padded canonicalInput19917 canonicalOutput19917 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19918 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 0, 1, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput19918 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound19918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19918.moment H = canonicalOutput19918.moment H :=
  canonical_of_padded canonicalInput19918 canonicalOutput19918 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput19919 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, -1, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput19919 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1750⟩

theorem canonicalSound19919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19919.moment H = canonicalOutput19919.moment H :=
  canonical_of_padded canonicalInput19919 canonicalOutput19919 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19920 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 0, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19920 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound19920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19920.moment H = canonicalOutput19920.moment H :=
  canonical_of_padded canonicalInput19920 canonicalOutput19920 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput19921 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput19921 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound19921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19921.moment H = canonicalOutput19921.moment H :=
  canonical_of_padded canonicalInput19921 canonicalOutput19921 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19922 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19922 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound19922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19922.moment H = canonicalOutput19922.moment H :=
  canonical_of_padded canonicalInput19922 canonicalOutput19922 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19923 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, -1, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19923 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2784⟩

theorem canonicalSound19923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19923.moment H = canonicalOutput19923.moment H :=
  canonical_of_padded canonicalInput19923 canonicalOutput19923 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19924 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19924 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound19924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19924.moment H = canonicalOutput19924.moment H :=
  canonical_of_padded canonicalInput19924 canonicalOutput19924 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19925 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -1, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput19925 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1790⟩

theorem canonicalSound19925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19925.moment H = canonicalOutput19925.moment H :=
  canonical_of_padded canonicalInput19925 canonicalOutput19925 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19926 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 2, -3], ![0, 0, 1, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19926 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1079⟩

theorem canonicalSound19926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19926.moment H = canonicalOutput19926.moment H :=
  canonical_of_padded canonicalInput19926 canonicalOutput19926 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19927 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 2, -3], ![0, 1, -1, -1, 1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput19927 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1640⟩

theorem canonicalSound19927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19927.moment H = canonicalOutput19927.moment H :=
  canonical_of_padded canonicalInput19927 canonicalOutput19927 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19928 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 2, -3], ![0, 1, 0, -2, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19928 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2810⟩

theorem canonicalSound19928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19928.moment H = canonicalOutput19928.moment H :=
  canonical_of_padded canonicalInput19928 canonicalOutput19928 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19929 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 1, 2, -3], ![0, 1, 1, -3, 1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19929 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩

theorem canonicalSound19929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19929.moment H = canonicalOutput19929.moment H :=
  canonical_of_padded canonicalInput19929 canonicalOutput19929 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19930 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -3, 1], ![0, 0, 0, 2, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19930 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1056⟩

theorem canonicalSound19930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19930.moment H = canonicalOutput19930.moment H :=
  canonical_of_padded canonicalInput19930 canonicalOutput19930 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19931 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -3, 1], ![0, 0, 0, 3, -3], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19931 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1065⟩

theorem canonicalSound19931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19931.moment H = canonicalOutput19931.moment H :=
  canonical_of_padded canonicalInput19931 canonicalOutput19931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19932 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -3, 1], ![0, 1, 0, 1, -2], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput19932 : ExponentCode := normalNode5840

theorem canonicalSound19932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19932.moment H = canonicalOutput19932.moment H :=
  canonical_of_padded canonicalInput19932 canonicalOutput19932 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput19933 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -3, 1], ![0, 1, 0, 2, -3], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19933 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩

theorem canonicalSound19933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19933.moment H = canonicalOutput19933.moment H :=
  canonical_of_padded canonicalInput19933 canonicalOutput19933 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19934 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -2, 0], ![0, 0, 0, 1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19934 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound19934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19934.moment H = canonicalOutput19934.moment H :=
  canonical_of_padded canonicalInput19934 canonicalOutput19934 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19935 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -2, 0], ![0, 0, 0, 2, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19935 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1057⟩

theorem canonicalSound19935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19935.moment H = canonicalOutput19935.moment H :=
  canonical_of_padded canonicalInput19935 canonicalOutput19935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19936 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, -1, 1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19936 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound19936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19936.moment H = canonicalOutput19936.moment H :=
  canonical_of_padded canonicalInput19936 canonicalOutput19936 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19937 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, 0, 0, -1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput19937 : ExponentCode := normalNode10526

theorem canonicalSound19937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19937.moment H = canonicalOutput19937.moment H :=
  canonical_of_padded canonicalInput19937 canonicalOutput19937 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19938 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -2, 0], ![0, 1, 0, 1, -2], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19938 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound19938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19938.moment H = canonicalOutput19938.moment H :=
  canonical_of_padded canonicalInput19938 canonicalOutput19938 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19939 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 0, -1, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19939 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound19939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19939.moment H = canonicalOutput19939.moment H :=
  canonical_of_padded canonicalInput19939 canonicalOutput19939 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19940 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 0, -1, 2, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19940 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound19940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19940.moment H = canonicalOutput19940.moment H :=
  canonical_of_padded canonicalInput19940 canonicalOutput19940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19941 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 0, -1, 3, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19941 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1016⟩

theorem canonicalSound19941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19941.moment H = canonicalOutput19941.moment H :=
  canonical_of_padded canonicalInput19941 canonicalOutput19941 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19942 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 0, 0, 0, 0], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19942 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound19942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19942.moment H = canonicalOutput19942.moment H :=
  canonical_of_padded canonicalInput19942 canonicalOutput19942 (by decide) (by decide)
    ⟨true, true, canonicalPermutation37, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput19943 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 0, 0, 2, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput19943 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound19943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19943.moment H = canonicalOutput19943.moment H :=
  canonical_of_padded canonicalInput19943 canonicalOutput19943 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19944 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1], ![1, -1, 0, 2, -2]]⟩

def canonicalOutput19944 : ExponentCode := normalNode2411

theorem canonicalSound19944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19944.moment H = canonicalOutput19944.moment H :=
  canonical_of_padded canonicalInput19944 canonicalOutput19944 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19945 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 0, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput19945 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2584⟩

theorem canonicalSound19945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19945.moment H = canonicalOutput19945.moment H :=
  canonical_of_padded canonicalInput19945 canonicalOutput19945 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput19946 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19946 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2744⟩

theorem canonicalSound19946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19946.moment H = canonicalOutput19946.moment H :=
  canonical_of_padded canonicalInput19946 canonicalOutput19946 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19947 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 2, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput19947 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound19947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19947.moment H = canonicalOutput19947.moment H :=
  canonical_of_padded canonicalInput19947 canonicalOutput19947 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19948 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, 0, -1, 0], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput19948 : ExponentCode := normalNode8991

theorem canonicalSound19948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19948.moment H = canonicalOutput19948.moment H :=
  canonical_of_padded canonicalInput19948 canonicalOutput19948 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19949 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, 0, 0, -1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19949 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2584⟩

theorem canonicalSound19949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19949.moment H = canonicalOutput19949.moment H :=
  canonical_of_padded canonicalInput19949 canonicalOutput19949 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19950 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput19950 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound19950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19950.moment H = canonicalOutput19950.moment H :=
  canonical_of_padded canonicalInput19950 canonicalOutput19950 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19951 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 0, -2], ![0, 0, -1, -1, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19951 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1033⟩

theorem canonicalSound19951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19951.moment H = canonicalOutput19951.moment H :=
  canonical_of_padded canonicalInput19951 canonicalOutput19951 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19952 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 0, -2], ![0, 0, -1, 2, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19952 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound19952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19952.moment H = canonicalOutput19952.moment H :=
  canonical_of_padded canonicalInput19952 canonicalOutput19952 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19953 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 0, -2], ![0, 0, 0, -1, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19953 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound19953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19953.moment H = canonicalOutput19953.moment H :=
  canonical_of_padded canonicalInput19953 canonicalOutput19953 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput19954 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 0, -2], ![0, 0, 0, 2, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput19954 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1059⟩

theorem canonicalSound19954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19954.moment H = canonicalOutput19954.moment H :=
  canonical_of_padded canonicalInput19954 canonicalOutput19954 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19955 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, -2, 2], ![1, -1, 0, 2, -2]]⟩

def canonicalOutput19955 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2272⟩

theorem canonicalSound19955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19955.moment H = canonicalOutput19955.moment H :=
  canonical_of_padded canonicalInput19955 canonicalOutput19955 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19956 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput19956 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound19956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19956.moment H = canonicalOutput19956.moment H :=
  canonical_of_padded canonicalInput19956 canonicalOutput19956 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19957 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput19957 : ExponentCode := normalNode2934

theorem canonicalSound19957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19957.moment H = canonicalOutput19957.moment H :=
  canonical_of_padded canonicalInput19957 canonicalOutput19957 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19958 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19958 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound19958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19958.moment H = canonicalOutput19958.moment H :=
  canonical_of_padded canonicalInput19958 canonicalOutput19958 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19959 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, 1, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput19959 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1521⟩

theorem canonicalSound19959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19959.moment H = canonicalOutput19959.moment H :=
  canonical_of_padded canonicalInput19959 canonicalOutput19959 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19960 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 1, -3], ![0, 0, 0, -2, 2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19960 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1036⟩

theorem canonicalSound19960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19960.moment H = canonicalOutput19960.moment H :=
  canonical_of_padded canonicalInput19960 canonicalOutput19960 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput19961 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 1, -3], ![0, 0, 0, -1, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19961 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1203⟩

theorem canonicalSound19961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19961.moment H = canonicalOutput19961.moment H :=
  canonical_of_padded canonicalInput19961 canonicalOutput19961 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput19962 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 1, -3], ![0, 1, -1, -1, 1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19962 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2811⟩

theorem canonicalSound19962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19962.moment H = canonicalOutput19962.moment H :=
  canonical_of_padded canonicalInput19962 canonicalOutput19962 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19963 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 0, 2, 1, -3], ![0, 1, 0, -2, 1], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19963 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1643⟩

theorem canonicalSound19963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19963.moment H = canonicalOutput19963.moment H :=
  canonical_of_padded canonicalInput19963 canonicalOutput19963 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19964 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 1, -1, -1, 1], ![0, 0, 2, -1, -1], ![1, -1, 0, 2, -2]]⟩

def canonicalOutput19964 : ExponentCode := normalNode2411

theorem canonicalSound19964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19964.moment H = canonicalOutput19964.moment H :=
  canonical_of_padded canonicalInput19964 canonicalOutput19964 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19965 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 1, -1, 1, -1], ![0, 0, 2, 0, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput19965 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound19965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19965.moment H = canonicalOutput19965.moment H :=
  canonical_of_padded canonicalInput19965 canonicalOutput19965 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19966 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 1, -1, 2, -2], ![0, 0, 2, -2, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput19966 : ExponentCode := normalNode10520

theorem canonicalSound19966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19966.moment H = canonicalOutput19966.moment H :=
  canonical_of_padded canonicalInput19966 canonicalOutput19966 (by decide) (by decide)
    ⟨true, false, canonicalPermutation29, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19967 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 1, -1, 2, -2], ![0, 0, 2, -1, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput19967 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1831⟩

theorem canonicalSound19967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19967.moment H = canonicalOutput19967.moment H :=
  canonical_of_padded canonicalInput19967 canonicalOutput19967 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, canonicalPermutation1⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
