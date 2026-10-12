import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical150
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7936 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput7936 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node481⟩

theorem canonicalSound7936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7936.moment H = canonicalOutput7936.moment H :=
  canonical_of_padded canonicalInput7936 canonicalOutput7936 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7937 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, 2, -4], ![1, -2, -2, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput7937 : ExponentCode := normalNode11199

theorem canonicalSound7937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7937.moment H = canonicalOutput7937.moment H :=
  canonical_of_padded canonicalInput7937 canonicalOutput7937 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput7938 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 2, 2, -4], ![1, -2, 1, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput7938 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code733

theorem canonicalSound7938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7938.moment H = canonicalOutput7938.moment H :=
  canonical_of_padded canonicalInput7938 canonicalOutput7938 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7939 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 3, -2, -1], ![1, -3, 1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput7939 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound7939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7939.moment H = canonicalOutput7939.moment H :=
  canonical_of_padded canonicalInput7939 canonicalOutput7939 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7940 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, 3, -2, -1], ![1, -2, 0, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput7940 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node504⟩

theorem canonicalSound7940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7940.moment H = canonicalOutput7940.moment H :=
  canonical_of_padded canonicalInput7940 canonicalOutput7940 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7941 : ExponentCode := ⟨3, 4, ![![-2, 0, 0, 2], ![1, -4, 4, -1], ![1, 4, -4, -1]]⟩

def canonicalOutput7941 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1213

theorem canonicalSound7941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7941.moment H = canonicalOutput7941.moment H :=
  canonical_of_padded canonicalInput7941 canonicalOutput7941 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7942 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -3, 1, 1], ![0, 0, 2, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput7942 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code792

theorem canonicalSound7942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7942.moment H = canonicalOutput7942.moment H :=
  canonical_of_padded canonicalInput7942 canonicalOutput7942 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7943 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -3, 1, 1], ![0, 1, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput7943 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound7943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7943.moment H = canonicalOutput7943.moment H :=
  canonical_of_padded canonicalInput7943 canonicalOutput7943 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7944 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -3, 1, 1], ![0, 1, 2, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput7944 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code441

theorem canonicalSound7944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7944.moment H = canonicalOutput7944.moment H :=
  canonical_of_padded canonicalInput7944 canonicalOutput7944 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7945 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -3, 1, 1], ![0, 2, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput7945 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code763

theorem canonicalSound7945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7945.moment H = canonicalOutput7945.moment H :=
  canonical_of_padded canonicalInput7945 canonicalOutput7945 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7946 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -3, 1, 1], ![0, 2, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput7946 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound7946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7946.moment H = canonicalOutput7946.moment H :=
  canonical_of_padded canonicalInput7946 canonicalOutput7946 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7947 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -3, 1, 1], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput7947 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound7947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7947.moment H = canonicalOutput7947.moment H :=
  canonical_of_padded canonicalInput7947 canonicalOutput7947 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7948 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -3, 1, 1], ![0, 3, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput7948 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node462⟩

theorem canonicalSound7948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7948.moment H = canonicalOutput7948.moment H :=
  canonical_of_padded canonicalInput7948 canonicalOutput7948 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7949 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -3, 2, 0], ![0, 1, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput7949 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code998

theorem canonicalSound7949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7949.moment H = canonicalOutput7949.moment H :=
  canonical_of_padded canonicalInput7949 canonicalOutput7949 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput7950 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -3, 2, 0], ![0, 3, -3, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput7950 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1197

theorem canonicalSound7950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7950.moment H = canonicalOutput7950.moment H :=
  canonical_of_padded canonicalInput7950 canonicalOutput7950 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput7951 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -3, 3, -1], ![0, 1, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput7951 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code660

theorem canonicalSound7951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7951.moment H = canonicalOutput7951.moment H :=
  canonical_of_padded canonicalInput7951 canonicalOutput7951 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput7952 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -3, 3, -1], ![0, 2, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput7952 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code792

theorem canonicalSound7952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7952.moment H = canonicalOutput7952.moment H :=
  canonical_of_padded canonicalInput7952 canonicalOutput7952 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7953 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, -2, 3], ![0, 1, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput7953 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code922

theorem canonicalSound7953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7953.moment H = canonicalOutput7953.moment H :=
  canonical_of_padded canonicalInput7953 canonicalOutput7953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7954 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, -1, 2], ![0, -1, 3, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput7954 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code209

theorem canonicalSound7954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7954.moment H = canonicalOutput7954.moment H :=
  canonical_of_padded canonicalInput7954 canonicalOutput7954 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7955 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, -1, 2], ![0, 1, -2, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput7955 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code250

theorem canonicalSound7955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7955.moment H = canonicalOutput7955.moment H :=
  canonical_of_padded canonicalInput7955 canonicalOutput7955 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7956 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![1, -2, 0, 1], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7956 : ExponentCode := normalNode3995

theorem canonicalSound7956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7956.moment H = canonicalOutput7956.moment H :=
  canonical_of_padded canonicalInput7956 canonicalOutput7956 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7957 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![1, -2, 0, 1], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput7957 : ExponentCode := normalNode1962

theorem canonicalSound7957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7957.moment H = canonicalOutput7957.moment H :=
  canonical_of_padded canonicalInput7957 canonicalOutput7957 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7958 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 0, 1], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput7958 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound7958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7958.moment H = canonicalOutput7958.moment H :=
  canonical_of_padded canonicalInput7958 canonicalOutput7958 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7959 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 0, 1], ![0, 1, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput7959 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node481⟩

theorem canonicalSound7959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7959.moment H = canonicalOutput7959.moment H :=
  canonical_of_padded canonicalInput7959 canonicalOutput7959 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7960 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 0, 1], ![0, 2, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput7960 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node474⟩

theorem canonicalSound7960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7960.moment H = canonicalOutput7960.moment H :=
  canonical_of_padded canonicalInput7960 canonicalOutput7960 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7961 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 0, 1], ![0, 2, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput7961 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound7961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7961.moment H = canonicalOutput7961.moment H :=
  canonical_of_padded canonicalInput7961 canonicalOutput7961 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7962 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![1, -2, 1, 0], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput7962 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound7962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7962.moment H = canonicalOutput7962.moment H :=
  canonical_of_padded canonicalInput7962 canonicalOutput7962 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7963 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 1, 0], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput7963 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound7963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7963.moment H = canonicalOutput7963.moment H :=
  canonical_of_padded canonicalInput7963 canonicalOutput7963 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7964 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 1, 0], ![0, 1, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput7964 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound7964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7964.moment H = canonicalOutput7964.moment H :=
  canonical_of_padded canonicalInput7964 canonicalOutput7964 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7965 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 1, 0], ![0, 2, -3, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput7965 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node589⟩

theorem canonicalSound7965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7965.moment H = canonicalOutput7965.moment H :=
  canonical_of_padded canonicalInput7965 canonicalOutput7965 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7966 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 2, -1], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput7966 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code913

theorem canonicalSound7966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7966.moment H = canonicalOutput7966.moment H :=
  canonical_of_padded canonicalInput7966 canonicalOutput7966 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7967 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 2, -1], ![0, 1, 2, -3], ![1, 1, -4, 2]]⟩

def canonicalOutput7967 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code921

theorem canonicalSound7967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7967.moment H = canonicalOutput7967.moment H :=
  canonical_of_padded canonicalInput7967 canonicalOutput7967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7968 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 2, -1], ![0, 3, -1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput7968 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node511⟩

theorem canonicalSound7968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7968.moment H = canonicalOutput7968.moment H :=
  canonical_of_padded canonicalInput7968 canonicalOutput7968 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7969 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![1, -2, 3, -2], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput7969 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2029⟩

theorem canonicalSound7969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7969.moment H = canonicalOutput7969.moment H :=
  canonical_of_padded canonicalInput7969 canonicalOutput7969 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7970 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 3, -2], ![0, 1, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput7970 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node611⟩

theorem canonicalSound7970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7970.moment H = canonicalOutput7970.moment H :=
  canonical_of_padded canonicalInput7970 canonicalOutput7970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7971 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 3, -2], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput7971 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node488⟩

theorem canonicalSound7971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7971.moment H = canonicalOutput7971.moment H :=
  canonical_of_padded canonicalInput7971 canonicalOutput7971 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput7972 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 3, -2], ![0, 1, 1, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput7972 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code920

theorem canonicalSound7972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7972.moment H = canonicalOutput7972.moment H :=
  canonical_of_padded canonicalInput7972 canonicalOutput7972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7973 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 3, -2], ![0, 2, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput7973 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node496⟩

theorem canonicalSound7973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7973.moment H = canonicalOutput7973.moment H :=
  canonical_of_padded canonicalInput7973 canonicalOutput7973 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput7974 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -2, 3, -2], ![0, 2, 0, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput7974 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code896

theorem canonicalSound7974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7974.moment H = canonicalOutput7974.moment H :=
  canonical_of_padded canonicalInput7974 canonicalOutput7974 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7975 : ExponentCode := ⟨3, 4, ![![-2, 0, 0, 2], ![1, -2, 3, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput7975 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound7975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7975.moment H = canonicalOutput7975.moment H :=
  canonical_of_padded canonicalInput7975 canonicalOutput7975 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7976 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -1, -2, 2], ![0, 2, -1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput7976 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code924

theorem canonicalSound7976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7976.moment H = canonicalOutput7976.moment H :=
  canonical_of_padded canonicalInput7976 canonicalOutput7976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7977 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![1, -1, -1, 1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput7977 : ExponentCode := normalNode3994

theorem canonicalSound7977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7977.moment H = canonicalOutput7977.moment H :=
  canonical_of_padded canonicalInput7977 canonicalOutput7977 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7978 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -1, -1, 1], ![0, 2, -2, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput7978 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node485⟩

theorem canonicalSound7978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7978.moment H = canonicalOutput7978.moment H :=
  canonical_of_padded canonicalInput7978 canonicalOutput7978 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7979 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![1, -1, 2, -2], ![0, 1, -3, 2], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput7979 : ExponentCode := normalNode4121

theorem canonicalSound7979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7979.moment H = canonicalOutput7979.moment H :=
  canonical_of_padded canonicalInput7979 canonicalOutput7979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7980 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -1, 2, -2], ![0, 2, -1, -1], ![1, -1, -1, 1]]⟩

def canonicalOutput7980 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound7980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7980.moment H = canonicalOutput7980.moment H :=
  canonical_of_padded canonicalInput7980 canonicalOutput7980 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput7981 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -1, 3, -3], ![0, 2, -2, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput7981 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node485⟩

theorem canonicalSound7981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7981.moment H = canonicalOutput7981.moment H :=
  canonical_of_padded canonicalInput7981 canonicalOutput7981 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput7982 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, -1, 3, -3], ![0, 2, -1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput7982 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code924

theorem canonicalSound7982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7982.moment H = canonicalOutput7982.moment H :=
  canonical_of_padded canonicalInput7982 canonicalOutput7982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7983 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, 0, -3, 2], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput7983 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1250⟩

theorem canonicalSound7983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7983.moment H = canonicalOutput7983.moment H :=
  canonical_of_padded canonicalInput7983 canonicalOutput7983 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7984 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, 0, -3, 2], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput7984 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1215⟩

theorem canonicalSound7984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7984.moment H = canonicalOutput7984.moment H :=
  canonical_of_padded canonicalInput7984 canonicalOutput7984 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7985 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw4800step0⟩

def canonicalOutput7985 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1196⟩

theorem canonicalSound7985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7985.moment H = canonicalOutput7985.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw4800step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw4800step0 = OAI.MUB6.Certificate.PairSemantics.raw4800.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw4800).trans (OAI.MUB6.Certificate.PairSemantics.canonical4800 hH)

def canonicalInput7986 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![1, 1, -3, 1], ![0, 1, 2, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput7986 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound7986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7986.moment H = canonicalOutput7986.moment H :=
  canonical_of_padded canonicalInput7986 canonicalOutput7986 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7987 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![-2, 1, 1, -1, 1], ![2, -2, 1, -1, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput7987 : ExponentCode := normalNode924

theorem canonicalSound7987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7987.moment H = canonicalOutput7987.moment H :=
  canonical_of_padded canonicalInput7987 canonicalOutput7987 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7988 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![-1, -2, 3, 0, 0], ![0, 2, -2, -1, 1], ![3, 0, -1, -1, -1]]⟩

def canonicalOutput7988 : ExponentCode := normalNode1640

theorem canonicalSound7988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7988.moment H = canonicalOutput7988.moment H :=
  canonical_of_padded canonicalInput7988 canonicalOutput7988 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7989 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![-1, -1, 2, -1, 1], ![1, 2, -1, 0, -2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput7989 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code551

theorem canonicalSound7989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7989.moment H = canonicalOutput7989.moment H :=
  canonical_of_padded canonicalInput7989 canonicalOutput7989 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7990 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![-1, -1, 2, 0, 0], ![0, 2, -1, 0, -1], ![3, -1, -1, -2, 1]]⟩

def canonicalOutput7990 : ExponentCode := normalNode1827

theorem canonicalSound7990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7990.moment H = canonicalOutput7990.moment H :=
  canonical_of_padded canonicalInput7990 canonicalOutput7990 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7991 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 0, 1], ![0, 1, -2, -1, 2], ![2, 1, 1, -1, -3]]⟩

def canonicalOutput7991 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code849

theorem canonicalSound7991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7991.moment H = canonicalOutput7991.moment H :=
  canonical_of_padded canonicalInput7991 canonicalOutput7991 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7992 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput7992 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code821

theorem canonicalSound7992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7992.moment H = canonicalOutput7992.moment H :=
  canonical_of_padded canonicalInput7992 canonicalOutput7992 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7993 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 0, 1], ![0, 1, 1, -2, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput7993 : ExponentCode := normalNode3780

theorem canonicalSound7993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7993.moment H = canonicalOutput7993.moment H :=
  canonical_of_padded canonicalInput7993 canonicalOutput7993 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7994 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 0, 1], ![0, 1, 1, -1, -1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput7994 : ExponentCode := normalNode3773

theorem canonicalSound7994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7994.moment H = canonicalOutput7994.moment H :=
  canonical_of_padded canonicalInput7994 canonicalOutput7994 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7995 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 0, 1], ![0, 1, 1, 0, -2], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput7995 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound7995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7995.moment H = canonicalOutput7995.moment H :=
  canonical_of_padded canonicalInput7995 canonicalOutput7995 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7996 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 0, 1], ![0, 2, -2, -1, 1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput7996 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code859

theorem canonicalSound7996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7996.moment H = canonicalOutput7996.moment H :=
  canonical_of_padded canonicalInput7996 canonicalOutput7996 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7997 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 0, 1], ![0, 2, -2, 1, -1], ![2, 0, 1, -3, 0]]⟩

def canonicalOutput7997 : ExponentCode := normalNode3451

theorem canonicalSound7997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7997.moment H = canonicalOutput7997.moment H :=
  canonical_of_padded canonicalInput7997 canonicalOutput7997 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7998 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 0, 1], ![0, 3, -2, -1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput7998 : ExponentCode := normalNode3376

theorem canonicalSound7998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7998.moment H = canonicalOutput7998.moment H :=
  canonical_of_padded canonicalInput7998 canonicalOutput7998 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7999 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![0, -2, 1, 0, 1], ![0, 3, -2, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput7999 : ExponentCode := normalNode3375

theorem canonicalSound7999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7999.moment H = canonicalOutput7999.moment H :=
  canonical_of_padded canonicalInput7999 canonicalOutput7999 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
