import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11904 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput11904 : ExponentCode := normalNode11047

theorem canonicalSound11904 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11904.moment H = canonicalOutput11904.moment H :=
  canonical_of_padded canonicalInput11904 canonicalOutput11904 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput11905 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput11905 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2222⟩

theorem canonicalSound11905 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11905.moment H = canonicalOutput11905.moment H :=
  canonical_of_padded canonicalInput11905 canonicalOutput11905 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11906 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput11906 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2342⟩

theorem canonicalSound11906 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11906.moment H = canonicalOutput11906.moment H :=
  canonical_of_padded canonicalInput11906 canonicalOutput11906 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11907 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput11907 : ExponentCode := normalNode11047

theorem canonicalSound11907 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11907.moment H = canonicalOutput11907.moment H :=
  canonical_of_padded canonicalInput11907 canonicalOutput11907 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11908 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput11908 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1377⟩

theorem canonicalSound11908 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11908.moment H = canonicalOutput11908.moment H :=
  canonical_of_padded canonicalInput11908 canonicalOutput11908 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11909 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 3, -3], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput11909 : ExponentCode := normalNode5497

theorem canonicalSound11909 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11909.moment H = canonicalOutput11909.moment H :=
  canonical_of_padded canonicalInput11909 canonicalOutput11909 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11910 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 3, -3], ![2, -2, 0, 0]]⟩

def canonicalOutput11910 : ExponentCode := normalNode10912

theorem canonicalSound11910 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11910.moment H = canonicalOutput11910.moment H :=
  canonical_of_padded canonicalInput11910 canonicalOutput11910 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11911 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput11911 : ExponentCode := normalNode5500

theorem canonicalSound11911 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11911.moment H = canonicalOutput11911.moment H :=
  canonical_of_padded canonicalInput11911 canonicalOutput11911 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11912 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput11912 : ExponentCode := normalNode5820

theorem canonicalSound11912 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11912.moment H = canonicalOutput11912.moment H :=
  canonical_of_padded canonicalInput11912 canonicalOutput11912 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11913 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![1, -2, 0, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput11913 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node895⟩

theorem canonicalSound11913 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11913.moment H = canonicalOutput11913.moment H :=
  canonical_of_padded canonicalInput11913 canonicalOutput11913 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11914 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput11914 : ExponentCode := normalNode7414

theorem canonicalSound11914 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11914.moment H = canonicalOutput11914.moment H :=
  canonical_of_padded canonicalInput11914 canonicalOutput11914 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11915 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput11915 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1205⟩

theorem canonicalSound11915 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11915.moment H = canonicalOutput11915.moment H :=
  canonical_of_padded canonicalInput11915 canonicalOutput11915 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11916 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput11916 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1027⟩

theorem canonicalSound11916 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11916.moment H = canonicalOutput11916.moment H :=
  canonical_of_padded canonicalInput11916 canonicalOutput11916 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput11917 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput11917 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node825⟩

theorem canonicalSound11917 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11917.moment H = canonicalOutput11917.moment H :=
  canonical_of_padded canonicalInput11917 canonicalOutput11917 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput11918 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput11918 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1331⟩

theorem canonicalSound11918 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11918.moment H = canonicalOutput11918.moment H :=
  canonical_of_padded canonicalInput11918 canonicalOutput11918 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput11919 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput11919 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node260⟩

theorem canonicalSound11919 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11919.moment H = canonicalOutput11919.moment H :=
  canonical_of_padded canonicalInput11919 canonicalOutput11919 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11920 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11920 : ExponentCode := normalNode5801

theorem canonicalSound11920 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11920.moment H = canonicalOutput11920.moment H :=
  canonical_of_padded canonicalInput11920 canonicalOutput11920 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11921 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput11921 : ExponentCode := normalNode5804

theorem canonicalSound11921 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11921.moment H = canonicalOutput11921.moment H :=
  canonical_of_padded canonicalInput11921 canonicalOutput11921 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11922 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, -1, 3, -2], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput11922 : ExponentCode := normalNode5789

theorem canonicalSound11922 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11922.moment H = canonicalOutput11922.moment H :=
  canonical_of_padded canonicalInput11922 canonicalOutput11922 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11923 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput11923 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1027⟩

theorem canonicalSound11923 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11923.moment H = canonicalOutput11923.moment H :=
  canonical_of_padded canonicalInput11923 canonicalOutput11923 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput11924 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 0, 2, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput11924 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node825⟩

theorem canonicalSound11924 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11924.moment H = canonicalOutput11924.moment H :=
  canonical_of_padded canonicalInput11924 canonicalOutput11924 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput11925 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput11925 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1331⟩

theorem canonicalSound11925 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11925.moment H = canonicalOutput11925.moment H :=
  canonical_of_padded canonicalInput11925 canonicalOutput11925 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput11926 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput11926 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1027⟩

theorem canonicalSound11926 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11926.moment H = canonicalOutput11926.moment H :=
  canonical_of_padded canonicalInput11926 canonicalOutput11926 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput11927 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput11927 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2233⟩

theorem canonicalSound11927 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11927.moment H = canonicalOutput11927.moment H :=
  canonical_of_padded canonicalInput11927 canonicalOutput11927 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11928 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 3, -3], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput11928 : ExponentCode := normalNode5235

theorem canonicalSound11928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11928.moment H = canonicalOutput11928.moment H :=
  canonical_of_padded canonicalInput11928 canonicalOutput11928 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11929 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![0, 0, 3, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput11929 : ExponentCode := normalNode6214

theorem canonicalSound11929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11929.moment H = canonicalOutput11929.moment H :=
  canonical_of_padded canonicalInput11929 canonicalOutput11929 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11930 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput11930 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node728⟩

theorem canonicalSound11930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11930.moment H = canonicalOutput11930.moment H :=
  canonical_of_padded canonicalInput11930 canonicalOutput11930 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11931 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11931 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node828⟩

theorem canonicalSound11931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11931.moment H = canonicalOutput11931.moment H :=
  canonical_of_padded canonicalInput11931 canonicalOutput11931 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11932 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput11932 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1253⟩

theorem canonicalSound11932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11932.moment H = canonicalOutput11932.moment H :=
  canonical_of_padded canonicalInput11932 canonicalOutput11932 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11933 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput11933 : ExponentCode := normalNode11201

theorem canonicalSound11933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11933.moment H = canonicalOutput11933.moment H :=
  canonical_of_padded canonicalInput11933 canonicalOutput11933 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11934 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput11934 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1331⟩

theorem canonicalSound11934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11934.moment H = canonicalOutput11934.moment H :=
  canonical_of_padded canonicalInput11934 canonicalOutput11934 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11935 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput11935 : ExponentCode := normalNode5825

theorem canonicalSound11935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11935.moment H = canonicalOutput11935.moment H :=
  canonical_of_padded canonicalInput11935 canonicalOutput11935 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11936 : ExponentCode := ⟨5, 4, ![![-2, 2, -2, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput11936 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2347⟩

theorem canonicalSound11936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11936.moment H = canonicalOutput11936.moment H :=
  canonical_of_padded canonicalInput11936 canonicalOutput11936 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11937 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 2, -2], ![0, 0, 2, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput11937 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code193

theorem canonicalSound11937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11937.moment H = canonicalOutput11937.moment H :=
  canonical_of_padded canonicalInput11937 canonicalOutput11937 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11938 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 2, -2], ![1, -2, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput11938 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node410⟩

theorem canonicalSound11938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11938.moment H = canonicalOutput11938.moment H :=
  canonical_of_padded canonicalInput11938 canonicalOutput11938 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11939 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 2, -2], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput11939 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node831⟩

theorem canonicalSound11939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11939.moment H = canonicalOutput11939.moment H :=
  canonical_of_padded canonicalInput11939 canonicalOutput11939 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11940 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput11940 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node497⟩

theorem canonicalSound11940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11940.moment H = canonicalOutput11940.moment H :=
  canonical_of_padded canonicalInput11940 canonicalOutput11940 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11941 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 3, -3], ![1, -2, -1, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput11941 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node729⟩

theorem canonicalSound11941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11941.moment H = canonicalOutput11941.moment H :=
  canonical_of_padded canonicalInput11941 canonicalOutput11941 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11942 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput11942 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1012⟩

theorem canonicalSound11942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11942.moment H = canonicalOutput11942.moment H :=
  canonical_of_padded canonicalInput11942 canonicalOutput11942 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11943 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 4, -4], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput11943 : ExponentCode := normalNode7369

theorem canonicalSound11943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11943.moment H = canonicalOutput11943.moment H :=
  canonical_of_padded canonicalInput11943 canonicalOutput11943 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput11944 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![0, 0, 4, -4], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput11944 : ExponentCode := normalNode8909

theorem canonicalSound11944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11944.moment H = canonicalOutput11944.moment H :=
  canonical_of_padded canonicalInput11944 canonicalOutput11944 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11945 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![1, -2, -1, 2], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput11945 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node729⟩

theorem canonicalSound11945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11945.moment H = canonicalOutput11945.moment H :=
  canonical_of_padded canonicalInput11945 canonicalOutput11945 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11946 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![1, -2, -1, 2], ![0, 0, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput11946 : ExponentCode := normalNode7369

theorem canonicalSound11946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11946.moment H = canonicalOutput11946.moment H :=
  canonical_of_padded canonicalInput11946 canonicalOutput11946 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11947 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![1, -1, -2, 2], ![0, -1, 3, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput11947 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1253

theorem canonicalSound11947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11947.moment H = canonicalOutput11947.moment H :=
  canonical_of_padded canonicalInput11947 canonicalOutput11947 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11948 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![1, -1, -2, 2], ![0, -1, 4, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput11948 : ExponentCode := normalNode9134

theorem canonicalSound11948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11948.moment H = canonicalOutput11948.moment H :=
  canonical_of_padded canonicalInput11948 canonicalOutput11948 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11949 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![1, -1, -2, 2], ![0, 0, 2, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput11949 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1257

theorem canonicalSound11949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11949.moment H = canonicalOutput11949.moment H :=
  canonical_of_padded canonicalInput11949 canonicalOutput11949 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11950 : ExponentCode := ⟨4, 4, ![![-2, 2, -2, 2], ![1, -1, -2, 2], ![0, 0, 4, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput11950 : ExponentCode := normalNode8909

theorem canonicalSound11950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11950.moment H = canonicalOutput11950.moment H :=
  canonical_of_padded canonicalInput11950 canonicalOutput11950 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11951 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -2, -1, 3], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput11951 : ExponentCode := normalNode3616

theorem canonicalSound11951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11951.moment H = canonicalOutput11951.moment H :=
  canonical_of_padded canonicalInput11951 canonicalOutput11951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11952 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -2, -1, 3], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput11952 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node929⟩

theorem canonicalSound11952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11952.moment H = canonicalOutput11952.moment H :=
  canonical_of_padded canonicalInput11952 canonicalOutput11952 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11953 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -2, 0, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput11953 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2033⟩

theorem canonicalSound11953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11953.moment H = canonicalOutput11953.moment H :=
  canonical_of_padded canonicalInput11953 canonicalOutput11953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11954 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11954 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1844⟩

theorem canonicalSound11954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11954.moment H = canonicalOutput11954.moment H :=
  canonical_of_padded canonicalInput11954 canonicalOutput11954 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11955 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -2, 0, 2], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11955 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1845⟩

theorem canonicalSound11955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11955.moment H = canonicalOutput11955.moment H :=
  canonical_of_padded canonicalInput11955 canonicalOutput11955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11956 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -2, 0, 2], ![1, 0, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput11956 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node451⟩

theorem canonicalSound11956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11956.moment H = canonicalOutput11956.moment H :=
  canonical_of_padded canonicalInput11956 canonicalOutput11956 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11957 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -2, 0, 2], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11957 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩

theorem canonicalSound11957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11957.moment H = canonicalOutput11957.moment H :=
  canonical_of_padded canonicalInput11957 canonicalOutput11957 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11958 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -2, 1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11958 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2082⟩

theorem canonicalSound11958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11958.moment H = canonicalOutput11958.moment H :=
  canonical_of_padded canonicalInput11958 canonicalOutput11958 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11959 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -2, 2, 0], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput11959 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2036⟩

theorem canonicalSound11959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11959.moment H = canonicalOutput11959.moment H :=
  canonical_of_padded canonicalInput11959 canonicalOutput11959 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11960 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -2, 3], ![0, -1, 3, -2], ![2, 0, 0, -2]]⟩

def canonicalOutput11960 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code912

theorem canonicalSound11960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11960.moment H = canonicalOutput11960.moment H :=
  canonical_of_padded canonicalInput11960 canonicalOutput11960 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11961 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -2, 3], ![0, -1, 4, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput11961 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code992

theorem canonicalSound11961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11961.moment H = canonicalOutput11961.moment H :=
  canonical_of_padded canonicalInput11961 canonicalOutput11961 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11962 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -2, 3], ![0, 0, 2, -2], ![2, -1, 1, -2]]⟩

def canonicalOutput11962 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1125

theorem canonicalSound11962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11962.moment H = canonicalOutput11962.moment H :=
  canonical_of_padded canonicalInput11962 canonicalOutput11962 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11963 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -2, 3], ![0, 0, 3, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput11963 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1183

theorem canonicalSound11963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11963.moment H = canonicalOutput11963.moment H :=
  canonical_of_padded canonicalInput11963 canonicalOutput11963 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11964 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -2, 3], ![0, 0, 4, -4], ![2, -1, -1, 0]]⟩

def canonicalOutput11964 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1199

theorem canonicalSound11964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11964.moment H = canonicalOutput11964.moment H :=
  canonical_of_padded canonicalInput11964 canonicalOutput11964 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11965 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -2, 3], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput11965 : ExponentCode := normalNode10906

theorem canonicalSound11965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11965.moment H = canonicalOutput11965.moment H :=
  canonical_of_padded canonicalInput11965 canonicalOutput11965 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11966 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -2, 3], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput11966 : ExponentCode := normalNode6451

theorem canonicalSound11966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11966.moment H = canonicalOutput11966.moment H :=
  canonical_of_padded canonicalInput11966 canonicalOutput11966 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11967 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput11967 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node520⟩

theorem canonicalSound11967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11967.moment H = canonicalOutput11967.moment H :=
  canonical_of_padded canonicalInput11967 canonicalOutput11967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
