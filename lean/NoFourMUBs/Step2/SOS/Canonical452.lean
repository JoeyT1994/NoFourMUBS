import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28928 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 1, -1], ![-2, -1, 0, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput28928 : ExponentCode := normalNode1948

theorem canonicalSound28928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28928.moment H = canonicalOutput28928.moment H :=
  canonical_of_padded canonicalInput28928 canonicalOutput28928 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28929 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput28929 : ExponentCode := normalNode844

theorem canonicalSound28929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28929.moment H = canonicalOutput28929.moment H :=
  canonical_of_padded canonicalInput28929 canonicalOutput28929 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28930 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput28930 : ExponentCode := normalNode2489

theorem canonicalSound28930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28930.moment H = canonicalOutput28930.moment H :=
  canonical_of_padded canonicalInput28930 canonicalOutput28930 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28931 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 0, 1, -2], ![-2, 1, -1, 2], ![1, -2, 2, -1]]⟩

def canonicalOutput28931 : ExponentCode := normalNode5196

theorem canonicalSound28931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28931.moment H = canonicalOutput28931.moment H :=
  canonical_of_padded canonicalInput28931 canonicalOutput28931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28932 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![0, 1, 1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput28932 : ExponentCode := normalNode3860

theorem canonicalSound28932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28932.moment H = canonicalOutput28932.moment H :=
  canonical_of_padded canonicalInput28932 canonicalOutput28932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28933 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput28933 : ExponentCode := normalNode3861

theorem canonicalSound28933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28933.moment H = canonicalOutput28933.moment H :=
  canonical_of_padded canonicalInput28933 canonicalOutput28933 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28934 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 0, 0, 2], ![1, 1, -1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput28934 : ExponentCode := normalNode4039

theorem canonicalSound28934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28934.moment H = canonicalOutput28934.moment H :=
  canonical_of_padded canonicalInput28934 canonicalOutput28934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28935 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput28935 : ExponentCode := normalNode2429

theorem canonicalSound28935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28935.moment H = canonicalOutput28935.moment H :=
  canonical_of_padded canonicalInput28935 canonicalOutput28935 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28936 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput28936 : ExponentCode := normalNode4376

theorem canonicalSound28936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28936.moment H = canonicalOutput28936.moment H :=
  canonical_of_padded canonicalInput28936 canonicalOutput28936 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput28937 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 0, 1, 1], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput28937 : ExponentCode := normalNode4377

theorem canonicalSound28937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28937.moment H = canonicalOutput28937.moment H :=
  canonical_of_padded canonicalInput28937 canonicalOutput28937 (by decide) (by decide)
    ⟨false, false, canonicalPermutation363, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28938 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 0, 2, 0], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput28938 : ExponentCode := normalNode3883

theorem canonicalSound28938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28938.moment H = canonicalOutput28938.moment H :=
  canonical_of_padded canonicalInput28938 canonicalOutput28938 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28939 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 0, 2, 0], ![1, 1, 0, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput28939 : ExponentCode := normalNode4040

theorem canonicalSound28939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28939.moment H = canonicalOutput28939.moment H :=
  canonical_of_padded canonicalInput28939 canonicalOutput28939 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28940 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![0, -2, 1, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput28940 : ExponentCode := normalNode3867

theorem canonicalSound28940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28940.moment H = canonicalOutput28940.moment H :=
  canonical_of_padded canonicalInput28940 canonicalOutput28940 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation351, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28941 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput28941 : ExponentCode := normalNode3871

theorem canonicalSound28941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28941.moment H = canonicalOutput28941.moment H :=
  canonical_of_padded canonicalInput28941 canonicalOutput28941 (by decide) (by decide)
    ⟨false, false, canonicalPermutation137, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput28942 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput28942 : ExponentCode := normalNode4355

theorem canonicalSound28942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28942.moment H = canonicalOutput28942.moment H :=
  canonical_of_padded canonicalInput28942 canonicalOutput28942 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28943 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput28943 : ExponentCode := normalNode4339

theorem canonicalSound28943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28943.moment H = canonicalOutput28943.moment H :=
  canonical_of_padded canonicalInput28943 canonicalOutput28943 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28944 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, 0, 1], ![1, 1, -1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput28944 : ExponentCode := normalNode5386

theorem canonicalSound28944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28944.moment H = canonicalOutput28944.moment H :=
  canonical_of_padded canonicalInput28944 canonicalOutput28944 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28945 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, 1, 0], ![0, -2, 0, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput28945 : ExponentCode := normalNode3885

theorem canonicalSound28945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28945.moment H = canonicalOutput28945.moment H :=
  canonical_of_padded canonicalInput28945 canonicalOutput28945 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation351, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28946 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput28946 : ExponentCode := normalNode4349

theorem canonicalSound28946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28946.moment H = canonicalOutput28946.moment H :=
  canonical_of_padded canonicalInput28946 canonicalOutput28946 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28947 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, 1, 0], ![1, 0, 1, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput28947 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3261⟩

theorem canonicalSound28947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28947.moment H = canonicalOutput28947.moment H :=
  canonical_of_padded canonicalInput28947 canonicalOutput28947 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28948 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 1, 1, 0], ![1, 1, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput28948 : ExponentCode := normalNode4370

theorem canonicalSound28948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28948.moment H = canonicalOutput28948.moment H :=
  canonical_of_padded canonicalInput28948 canonicalOutput28948 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28949 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-2, 2, 0, 0], ![2, 0, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput28949 : ExponentCode := normalNode3920

theorem canonicalSound28949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28949.moment H = canonicalOutput28949.moment H :=
  canonical_of_padded canonicalInput28949 canonicalOutput28949 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28950 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput28950 : ExponentCode := normalNode1751

theorem canonicalSound28950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28950.moment H = canonicalOutput28950.moment H :=
  canonical_of_padded canonicalInput28950 canonicalOutput28950 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28951 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput28951 : ExponentCode := normalNode4387

theorem canonicalSound28951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28951.moment H = canonicalOutput28951.moment H :=
  canonical_of_padded canonicalInput28951 canonicalOutput28951 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation338, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28952 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput28952 : ExponentCode := normalNode4358

theorem canonicalSound28952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28952.moment H = canonicalOutput28952.moment H :=
  canonical_of_padded canonicalInput28952 canonicalOutput28952 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28953 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![-1, 2, -1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput28953 : ExponentCode := normalNode5099

theorem canonicalSound28953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28953.moment H = canonicalOutput28953.moment H :=
  canonical_of_padded canonicalInput28953 canonicalOutput28953 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28954 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, -1, 2, 0], ![-1, 2, 0, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput28954 : ExponentCode := normalNode2466

theorem canonicalSound28954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28954.moment H = canonicalOutput28954.moment H :=
  canonical_of_padded canonicalInput28954 canonicalOutput28954 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation314, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28955 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput28955 : ExponentCode := normalNode5876

theorem canonicalSound28955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28955.moment H = canonicalOutput28955.moment H :=
  canonical_of_padded canonicalInput28955 canonicalOutput28955 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28956 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, 1, 0], ![-1, -2, 0, 3], ![2, 1, 0, -3]]⟩

def canonicalOutput28956 : ExponentCode := normalNode1750

theorem canonicalSound28956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28956.moment H = canonicalOutput28956.moment H :=
  canonical_of_padded canonicalInput28956 canonicalOutput28956 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28957 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, 1, 0], ![-1, -2, 1, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput28957 : ExponentCode := normalNode2433

theorem canonicalSound28957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28957.moment H = canonicalOutput28957.moment H :=
  canonical_of_padded canonicalInput28957 canonicalOutput28957 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28958 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![-1, -2, -1, 4], ![2, 1, 0, -3]]⟩

def canonicalOutput28958 : ExponentCode := normalNode1286

theorem canonicalSound28958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28958.moment H = canonicalOutput28958.moment H :=
  canonical_of_padded canonicalInput28958 canonicalOutput28958 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28959 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 0, 3], ![2, 1, -1, -2]]⟩

def canonicalOutput28959 : ExponentCode := normalNode1821

theorem canonicalSound28959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28959.moment H = canonicalOutput28959.moment H :=
  canonical_of_padded canonicalInput28959 canonicalOutput28959 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28960 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 1, 2], ![2, 1, -2, -1]]⟩

def canonicalOutput28960 : ExponentCode := normalNode2355

theorem canonicalSound28960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28960.moment H = canonicalOutput28960.moment H :=
  canonical_of_padded canonicalInput28960 canonicalOutput28960 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28961 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![2, -3, 0, 1]]⟩

def canonicalOutput28961 : ExponentCode := normalNode1770

theorem canonicalSound28961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28961.moment H = canonicalOutput28961.moment H :=
  canonical_of_padded canonicalInput28961 canonicalOutput28961 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation315, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28962 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![-1, -2, 0, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput28962 : ExponentCode := normalNode1958

theorem canonicalSound28962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28962.moment H = canonicalOutput28962.moment H :=
  canonical_of_padded canonicalInput28962 canonicalOutput28962 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28963 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![-1, -1, -1, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput28963 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3226⟩

theorem canonicalSound28963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28963.moment H = canonicalOutput28963.moment H :=
  canonical_of_padded canonicalInput28963 canonicalOutput28963 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28964 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![-1, 0, 3, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput28964 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3307⟩

theorem canonicalSound28964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28964.moment H = canonicalOutput28964.moment H :=
  canonical_of_padded canonicalInput28964 canonicalOutput28964 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28965 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![2, 0, -1, -1], ![-1, -2, 1, 2]]⟩

def canonicalOutput28965 : ExponentCode := normalNode2648

theorem canonicalSound28965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28965.moment H = canonicalOutput28965.moment H :=
  canonical_of_padded canonicalInput28965 canonicalOutput28965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28966 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 2, -1, 0], ![2, -1, 0, -1], ![-1, -2, 2, 1]]⟩

def canonicalOutput28966 : ExponentCode := normalNode5392

theorem canonicalSound28966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28966.moment H = canonicalOutput28966.moment H :=
  canonical_of_padded canonicalInput28966 canonicalOutput28966 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28967 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 2, 0, -1], ![2, -1, -1, 0], ![-1, -2, 2, 1]]⟩

def canonicalOutput28967 : ExponentCode := normalNode4359

theorem canonicalSound28967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28967.moment H = canonicalOutput28967.moment H :=
  canonical_of_padded canonicalInput28967 canonicalOutput28967 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation265, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28968 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, -1, 3], ![-2, 0, 3, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput28968 : ExponentCode := normalNode2431

theorem canonicalSound28968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28968.moment H = canonicalOutput28968.moment H :=
  canonical_of_padded canonicalInput28968 canonicalOutput28968 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28969 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, 0, 2], ![-2, 0, 2, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput28969 : ExponentCode := normalNode2430

theorem canonicalSound28969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28969.moment H = canonicalOutput28969.moment H :=
  canonical_of_padded canonicalInput28969 canonicalOutput28969 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28970 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput28970 : ExponentCode := normalNode2352

theorem canonicalSound28970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28970.moment H = canonicalOutput28970.moment H :=
  canonical_of_padded canonicalInput28970 canonicalOutput28970 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28971 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput28971 : ExponentCode := normalNode4042

theorem canonicalSound28971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28971.moment H = canonicalOutput28971.moment H :=
  canonical_of_padded canonicalInput28971 canonicalOutput28971 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28972 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, 1, 1], ![-2, 1, -1, 2], ![2, 0, 1, -3]]⟩

def canonicalOutput28972 : ExponentCode := normalNode3459

theorem canonicalSound28972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28972.moment H = canonicalOutput28972.moment H :=
  canonical_of_padded canonicalInput28972 canonicalOutput28972 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28973 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, 1, 1], ![2, -1, -1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput28973 : ExponentCode := normalNode2439

theorem canonicalSound28973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28973.moment H = canonicalOutput28973.moment H :=
  canonical_of_padded canonicalInput28973 canonicalOutput28973 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28974 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, 2, 0], ![-2, 1, -2, 3], ![2, 0, 1, -3]]⟩

def canonicalOutput28974 : ExponentCode := normalNode3458

theorem canonicalSound28974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28974.moment H = canonicalOutput28974.moment H :=
  canonical_of_padded canonicalInput28974 canonicalOutput28974 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28975 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -2, 2, 0], ![-2, 1, -1, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput28975 : ExponentCode := normalNode3919

theorem canonicalSound28975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28975.moment H = canonicalOutput28975.moment H :=
  canonical_of_padded canonicalInput28975 canonicalOutput28975 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28976 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, -1, 2], ![2, -1, 0, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput28976 : ExponentCode := normalNode5122

theorem canonicalSound28976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28976.moment H = canonicalOutput28976.moment H :=
  canonical_of_padded canonicalInput28976 canonicalOutput28976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28977 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![-1, -1, -1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput28977 : ExponentCode := normalNode7387

theorem canonicalSound28977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28977.moment H = canonicalOutput28977.moment H :=
  canonical_of_padded canonicalInput28977 canonicalOutput28977 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28978 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, -1, -2, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput28978 : ExponentCode := normalNode10971

theorem canonicalSound28978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28978.moment H = canonicalOutput28978.moment H :=
  canonical_of_padded canonicalInput28978 canonicalOutput28978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28979 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 0, 1], ![1, -1, 0, 0], ![-1, 1, 1, -1]]⟩

def canonicalOutput28979 : ExponentCode := normalNode9410

theorem canonicalSound28979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28979.moment H = canonicalOutput28979.moment H :=
  canonical_of_padded canonicalInput28979 canonicalOutput28979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput28980 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, -1, 2, -1], ![2, -2, 0, 0], ![-2, 2, -1, 1]]⟩

def canonicalOutput28980 : ExponentCode := normalNode3924

theorem canonicalSound28980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28980.moment H = canonicalOutput28980.moment H :=
  canonical_of_padded canonicalInput28980 canonicalOutput28980 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation266, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28981 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, -1, 1], ![-1, -2, 0, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput28981 : ExponentCode := normalNode6734

theorem canonicalSound28981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28981.moment H = canonicalOutput28981.moment H :=
  canonical_of_padded canonicalInput28981 canonicalOutput28981 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28982 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![-1, 1, -2, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput28982 : ExponentCode := normalNode11187

theorem canonicalSound28982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28982.moment H = canonicalOutput28982.moment H :=
  canonical_of_padded canonicalInput28982 canonicalOutput28982 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28983 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -2, 1], ![2, 0, 1, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput28983 : ExponentCode := normalNode842

theorem canonicalSound28983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28983.moment H = canonicalOutput28983.moment H :=
  canonical_of_padded canonicalInput28983 canonicalOutput28983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28984 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -2, 0, 4], ![2, 0, 2, -4]]⟩

def canonicalOutput28984 : ExponentCode := normalNode407

theorem canonicalSound28984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28984.moment H = canonicalOutput28984.moment H :=
  canonical_of_padded canonicalInput28984 canonicalOutput28984 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28985 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 0, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput28985 : ExponentCode := normalNode1949

theorem canonicalSound28985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28985.moment H = canonicalOutput28985.moment H :=
  canonical_of_padded canonicalInput28985 canonicalOutput28985 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28986 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-2, -1, 1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput28986 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3056⟩

theorem canonicalSound28986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28986.moment H = canonicalOutput28986.moment H :=
  canonical_of_padded canonicalInput28986 canonicalOutput28986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28987 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 0, 3], ![1, 0, 2, -3]]⟩

def canonicalOutput28987 : ExponentCode := normalNode6743

theorem canonicalSound28987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28987.moment H = canonicalOutput28987.moment H :=
  canonical_of_padded canonicalInput28987 canonicalOutput28987 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28988 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 0, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput28988 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2892⟩

theorem canonicalSound28988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28988.moment H = canonicalOutput28988.moment H :=
  canonical_of_padded canonicalInput28988 canonicalOutput28988 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28989 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput28989 : ExponentCode := normalNode595

theorem canonicalSound28989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28989.moment H = canonicalOutput28989.moment H :=
  canonical_of_padded canonicalInput28989 canonicalOutput28989 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28990 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, -1, 4], ![2, -1, 2, -3]]⟩

def canonicalOutput28990 : ExponentCode := normalNode1340

theorem canonicalSound28990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28990.moment H = canonicalOutput28990.moment H :=
  canonical_of_padded canonicalInput28990 canonicalOutput28990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28991 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput28991 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3057⟩

theorem canonicalSound28991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28991.moment H = canonicalOutput28991.moment H :=
  canonical_of_padded canonicalInput28991 canonicalOutput28991 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
