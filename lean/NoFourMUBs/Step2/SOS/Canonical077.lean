import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4928 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput4928 : ExponentCode := normalNode6972

theorem canonicalSound4928 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4928.moment H = canonicalOutput4928.moment H :=
  canonical_of_padded canonicalInput4928 canonicalOutput4928 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4929 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4929 : ExponentCode := normalNode6971

theorem canonicalSound4929 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4929.moment H = canonicalOutput4929.moment H :=
  canonical_of_padded canonicalInput4929 canonicalOutput4929 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4930 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput4930 : ExponentCode := normalNode6971

theorem canonicalSound4930 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4930.moment H = canonicalOutput4930.moment H :=
  canonical_of_padded canonicalInput4930 canonicalOutput4930 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4931 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 2, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput4931 : ExponentCode := normalNode6979

theorem canonicalSound4931 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4931.moment H = canonicalOutput4931.moment H :=
  canonical_of_padded canonicalInput4931 canonicalOutput4931 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4932 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4932 : ExponentCode := normalNode6970

theorem canonicalSound4932 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4932.moment H = canonicalOutput4932.moment H :=
  canonical_of_padded canonicalInput4932 canonicalOutput4932 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4933 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 2, -2, 0], ![2, -1, 3, -4]]⟩

def canonicalOutput4933 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code155

theorem canonicalSound4933 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4933.moment H = canonicalOutput4933.moment H :=
  canonical_of_padded canonicalInput4933 canonicalOutput4933 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4934 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput4934 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1761⟩

theorem canonicalSound4934 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4934.moment H = canonicalOutput4934.moment H :=
  canonical_of_padded canonicalInput4934 canonicalOutput4934 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4935 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![1, -2, 1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput4935 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node580⟩

theorem canonicalSound4935 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4935.moment H = canonicalOutput4935.moment H :=
  canonical_of_padded canonicalInput4935 canonicalOutput4935 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4936 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput4936 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node829⟩

theorem canonicalSound4936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4936.moment H = canonicalOutput4936.moment H :=
  canonical_of_padded canonicalInput4936 canonicalOutput4936 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4937 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput4937 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node830⟩

theorem canonicalSound4937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4937.moment H = canonicalOutput4937.moment H :=
  canonical_of_padded canonicalInput4937 canonicalOutput4937 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4938 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![1, 1, -2, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput4938 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node830⟩

theorem canonicalSound4938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4938.moment H = canonicalOutput4938.moment H :=
  canonical_of_padded canonicalInput4938 canonicalOutput4938 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4939 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput4939 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node829⟩

theorem canonicalSound4939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4939.moment H = canonicalOutput4939.moment H :=
  canonical_of_padded canonicalInput4939 canonicalOutput4939 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4940 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![1, 2, -2, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput4940 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code580

theorem canonicalSound4940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4940.moment H = canonicalOutput4940.moment H :=
  canonical_of_padded canonicalInput4940 canonicalOutput4940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4941 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![1, 2, -1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput4941 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code579

theorem canonicalSound4941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4941.moment H = canonicalOutput4941.moment H :=
  canonical_of_padded canonicalInput4941 canonicalOutput4941 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4942 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -2, 2], ![1, 2, 2, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput4942 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code248

theorem canonicalSound4942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4942.moment H = canonicalOutput4942.moment H :=
  canonical_of_padded canonicalInput4942 canonicalOutput4942 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4943 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, 1, 0, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput4943 : ExponentCode := normalNode10622

theorem canonicalSound4943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4943.moment H = canonicalOutput4943.moment H :=
  canonical_of_padded canonicalInput4943 canonicalOutput4943 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4944 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput4944 : ExponentCode := normalNode2450

theorem canonicalSound4944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4944.moment H = canonicalOutput4944.moment H :=
  canonical_of_padded canonicalInput4944 canonicalOutput4944 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4945 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 2, -2, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput4945 : ExponentCode := normalNode2452

theorem canonicalSound4945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4945.moment H = canonicalOutput4945.moment H :=
  canonical_of_padded canonicalInput4945 canonicalOutput4945 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4946 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 2, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput4946 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1742⟩

theorem canonicalSound4946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4946.moment H = canonicalOutput4946.moment H :=
  canonical_of_padded canonicalInput4946 canonicalOutput4946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4947 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 2, 0, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput4947 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1743⟩

theorem canonicalSound4947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4947.moment H = canonicalOutput4947.moment H :=
  canonical_of_padded canonicalInput4947 canonicalOutput4947 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4948 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput4948 : ExponentCode := normalNode2458

theorem canonicalSound4948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4948.moment H = canonicalOutput4948.moment H :=
  canonical_of_padded canonicalInput4948 canonicalOutput4948 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4949 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 1, 0], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput4949 : ExponentCode := normalNode2461

theorem canonicalSound4949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4949.moment H = canonicalOutput4949.moment H :=
  canonical_of_padded canonicalInput4949 canonicalOutput4949 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4950 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput4950 : ExponentCode := normalNode2464

theorem canonicalSound4950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4950.moment H = canonicalOutput4950.moment H :=
  canonical_of_padded canonicalInput4950 canonicalOutput4950 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4951 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput4951 : ExponentCode := normalNode2538

theorem canonicalSound4951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4951.moment H = canonicalOutput4951.moment H :=
  canonical_of_padded canonicalInput4951 canonicalOutput4951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4952 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 2, 0, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput4952 : ExponentCode := normalNode2539

theorem canonicalSound4952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4952.moment H = canonicalOutput4952.moment H :=
  canonical_of_padded canonicalInput4952 canonicalOutput4952 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4953 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 2, 1, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput4953 : ExponentCode := normalNode2540

theorem canonicalSound4953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4953.moment H = canonicalOutput4953.moment H :=
  canonical_of_padded canonicalInput4953 canonicalOutput4953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4954 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput4954 : ExponentCode := normalNode2542

theorem canonicalSound4954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4954.moment H = canonicalOutput4954.moment H :=
  canonical_of_padded canonicalInput4954 canonicalOutput4954 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4955 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput4955 : ExponentCode := normalNode2485

theorem canonicalSound4955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4955.moment H = canonicalOutput4955.moment H :=
  canonical_of_padded canonicalInput4955 canonicalOutput4955 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4956 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 3, -2], ![0, 2, 0, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput4956 : ExponentCode := normalNode2580

theorem canonicalSound4956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4956.moment H = canonicalOutput4956.moment H :=
  canonical_of_padded canonicalInput4956 canonicalOutput4956 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4957 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, -1, 3, -2], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput4957 : ExponentCode := normalNode2550

theorem canonicalSound4957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4957.moment H = canonicalOutput4957.moment H :=
  canonical_of_padded canonicalInput4957 canonicalOutput4957 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4958 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput4958 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1585⟩

theorem canonicalSound4958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4958.moment H = canonicalOutput4958.moment H :=
  canonical_of_padded canonicalInput4958 canonicalOutput4958 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4959 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput4959 : ExponentCode := normalNode6988

theorem canonicalSound4959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4959.moment H = canonicalOutput4959.moment H :=
  canonical_of_padded canonicalInput4959 canonicalOutput4959 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4960 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 1, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput4960 : ExponentCode := normalNode6988

theorem canonicalSound4960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4960.moment H = canonicalOutput4960.moment H :=
  canonical_of_padded canonicalInput4960 canonicalOutput4960 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4961 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput4961 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound4961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4961.moment H = canonicalOutput4961.moment H :=
  canonical_of_padded canonicalInput4961 canonicalOutput4961 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput4962 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput4962 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1284⟩

theorem canonicalSound4962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4962.moment H = canonicalOutput4962.moment H :=
  canonical_of_padded canonicalInput4962 canonicalOutput4962 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4963 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 2, -1, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput4963 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound4963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4963.moment H = canonicalOutput4963.moment H :=
  canonical_of_padded canonicalInput4963 canonicalOutput4963 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput4964 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 2, 0, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput4964 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1281⟩

theorem canonicalSound4964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4964.moment H = canonicalOutput4964.moment H :=
  canonical_of_padded canonicalInput4964 canonicalOutput4964 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4965 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput4965 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound4965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4965.moment H = canonicalOutput4965.moment H :=
  canonical_of_padded canonicalInput4965 canonicalOutput4965 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput4966 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput4966 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node894⟩

theorem canonicalSound4966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4966.moment H = canonicalOutput4966.moment H :=
  canonical_of_padded canonicalInput4966 canonicalOutput4966 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput4967 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput4967 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound4967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4967.moment H = canonicalOutput4967.moment H :=
  canonical_of_padded canonicalInput4967 canonicalOutput4967 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput4968 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput4968 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1259⟩

theorem canonicalSound4968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4968.moment H = canonicalOutput4968.moment H :=
  canonical_of_padded canonicalInput4968 canonicalOutput4968 (by decide) (by decide)
    ⟨false, true, canonicalPermutation22, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4969 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput4969 : ExponentCode := normalNode11069

theorem canonicalSound4969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4969.moment H = canonicalOutput4969.moment H :=
  canonical_of_padded canonicalInput4969 canonicalOutput4969 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput4970 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput4970 : ExponentCode := normalNode6991

theorem canonicalSound4970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4970.moment H = canonicalOutput4970.moment H :=
  canonical_of_padded canonicalInput4970 canonicalOutput4970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4971 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput4971 : ExponentCode := normalNode6996

theorem canonicalSound4971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4971.moment H = canonicalOutput4971.moment H :=
  canonical_of_padded canonicalInput4971 canonicalOutput4971 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4972 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput4972 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2440⟩

theorem canonicalSound4972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4972.moment H = canonicalOutput4972.moment H :=
  canonical_of_padded canonicalInput4972 canonicalOutput4972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4973 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput4973 : ExponentCode := normalNode6995

theorem canonicalSound4973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4973.moment H = canonicalOutput4973.moment H :=
  canonical_of_padded canonicalInput4973 canonicalOutput4973 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4974 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 2, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput4974 : ExponentCode := normalNode6994

theorem canonicalSound4974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4974.moment H = canonicalOutput4974.moment H :=
  canonical_of_padded canonicalInput4974 canonicalOutput4974 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4975 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput4975 : ExponentCode := normalNode6992

theorem canonicalSound4975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4975.moment H = canonicalOutput4975.moment H :=
  canonical_of_padded canonicalInput4975 canonicalOutput4975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4976 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput4976 : ExponentCode := normalNode6993

theorem canonicalSound4976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4976.moment H = canonicalOutput4976.moment H :=
  canonical_of_padded canonicalInput4976 canonicalOutput4976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4977 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput4977 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2438⟩

theorem canonicalSound4977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4977.moment H = canonicalOutput4977.moment H :=
  canonical_of_padded canonicalInput4977 canonicalOutput4977 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4978 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput4978 : ExponentCode := normalNode7000

theorem canonicalSound4978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4978.moment H = canonicalOutput4978.moment H :=
  canonical_of_padded canonicalInput4978 canonicalOutput4978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4979 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 1, 1, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput4979 : ExponentCode := normalNode6999

theorem canonicalSound4979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4979.moment H = canonicalOutput4979.moment H :=
  canonical_of_padded canonicalInput4979 canonicalOutput4979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4980 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput4980 : ExponentCode := normalNode2595

theorem canonicalSound4980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4980.moment H = canonicalOutput4980.moment H :=
  canonical_of_padded canonicalInput4980 canonicalOutput4980 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4981 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput4981 : ExponentCode := normalNode6997

theorem canonicalSound4981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4981.moment H = canonicalOutput4981.moment H :=
  canonical_of_padded canonicalInput4981 canonicalOutput4981 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4982 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput4982 : ExponentCode := normalNode6998

theorem canonicalSound4982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4982.moment H = canonicalOutput4982.moment H :=
  canonical_of_padded canonicalInput4982 canonicalOutput4982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4983 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 0, 2, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput4983 : ExponentCode := normalNode7001

theorem canonicalSound4983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4983.moment H = canonicalOutput4983.moment H :=
  canonical_of_padded canonicalInput4983 canonicalOutput4983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4984 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, -2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput4984 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node826⟩

theorem canonicalSound4984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4984.moment H = canonicalOutput4984.moment H :=
  canonical_of_padded canonicalInput4984 canonicalOutput4984 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4985 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput4985 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound4985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4985.moment H = canonicalOutput4985.moment H :=
  canonical_of_padded canonicalInput4985 canonicalOutput4985 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput4986 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput4986 : ExponentCode := normalNode7000

theorem canonicalSound4986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4986.moment H = canonicalOutput4986.moment H :=
  canonical_of_padded canonicalInput4986 canonicalOutput4986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4987 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput4987 : ExponentCode := normalNode923

theorem canonicalSound4987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4987.moment H = canonicalOutput4987.moment H :=
  canonical_of_padded canonicalInput4987 canonicalOutput4987 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4988 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 2, 1, -3], ![2, -2, 0, 0]]⟩

def canonicalOutput4988 : ExponentCode := normalNode4013

theorem canonicalSound4988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4988.moment H = canonicalOutput4988.moment H :=
  canonical_of_padded canonicalInput4988 canonicalOutput4988 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput4989 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput4989 : ExponentCode := normalNode5044

theorem canonicalSound4989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4989.moment H = canonicalOutput4989.moment H :=
  canonical_of_padded canonicalInput4989 canonicalOutput4989 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4990 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput4990 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2445⟩

theorem canonicalSound4990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4990.moment H = canonicalOutput4990.moment H :=
  canonical_of_padded canonicalInput4990 canonicalOutput4990 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4991 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput4991 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1109⟩

theorem canonicalSound4991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4991.moment H = canonicalOutput4991.moment H :=
  canonical_of_padded canonicalInput4991 canonicalOutput4991 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
