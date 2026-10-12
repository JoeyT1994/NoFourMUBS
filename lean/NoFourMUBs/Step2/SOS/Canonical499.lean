import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31936 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, -1, 0], ![0, -2, 3, -1]]⟩

def canonicalOutput31936 : ExponentCode := normalNode4444

theorem canonicalSound31936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31936.moment H = canonicalOutput31936.moment H :=
  canonical_of_padded canonicalInput31936 canonicalOutput31936 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31937 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, 0, -1], ![0, -2, 2, 0]]⟩

def canonicalOutput31937 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3154⟩

theorem canonicalSound31937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31937.moment H = canonicalOutput31937.moment H :=
  canonical_of_padded canonicalInput31937 canonicalOutput31937 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput31938 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 0, 1], ![-2, 0, -1, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput31938 : ExponentCode := normalNode1729

theorem canonicalSound31938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31938.moment H = canonicalOutput31938.moment H :=
  canonical_of_padded canonicalInput31938 canonicalOutput31938 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31939 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, -1, 4], ![1, -1, 3, -3]]⟩

def canonicalOutput31939 : ExponentCode := normalNode1219

theorem canonicalSound31939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31939.moment H = canonicalOutput31939.moment H :=
  canonical_of_padded canonicalInput31939 canonicalOutput31939 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31940 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![1, -2, 3, -2]]⟩

def canonicalOutput31940 : ExponentCode := normalNode1730

theorem canonicalSound31940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31940.moment H = canonicalOutput31940.moment H :=
  canonical_of_padded canonicalInput31940 canonicalOutput31940 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31941 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 3, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput31941 : ExponentCode := normalNode1765

theorem canonicalSound31941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31941.moment H = canonicalOutput31941.moment H :=
  canonical_of_padded canonicalInput31941 canonicalOutput31941 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31942 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, -1, 3, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput31942 : ExponentCode := normalNode2734

theorem canonicalSound31942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31942.moment H = canonicalOutput31942.moment H :=
  canonical_of_padded canonicalInput31942 canonicalOutput31942 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation313, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31943 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput31943 : ExponentCode := normalNode1735

theorem canonicalSound31943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31943.moment H = canonicalOutput31943.moment H :=
  canonical_of_padded canonicalInput31943 canonicalOutput31943 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31944 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput31944 : ExponentCode := normalNode2108

theorem canonicalSound31944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31944.moment H = canonicalOutput31944.moment H :=
  canonical_of_padded canonicalInput31944 canonicalOutput31944 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31945 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 0, 4, -4]]⟩

def canonicalOutput31945 : ExponentCode := normalNode2076

theorem canonicalSound31945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31945.moment H = canonicalOutput31945.moment H :=
  canonical_of_padded canonicalInput31945 canonicalOutput31945 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31946 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput31946 : ExponentCode := normalNode2060

theorem canonicalSound31946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31946.moment H = canonicalOutput31946.moment H :=
  canonical_of_padded canonicalInput31946 canonicalOutput31946 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31947 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput31947 : ExponentCode := normalNode3548

theorem canonicalSound31947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31947.moment H = canonicalOutput31947.moment H :=
  canonical_of_padded canonicalInput31947 canonicalOutput31947 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31948 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput31948 : ExponentCode := normalNode7763

theorem canonicalSound31948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31948.moment H = canonicalOutput31948.moment H :=
  canonical_of_padded canonicalInput31948 canonicalOutput31948 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31949 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput31949 : ExponentCode := normalNode4279

theorem canonicalSound31949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31949.moment H = canonicalOutput31949.moment H :=
  canonical_of_padded canonicalInput31949 canonicalOutput31949 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31950 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput31950 : ExponentCode := normalNode9272

theorem canonicalSound31950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31950.moment H = canonicalOutput31950.moment H :=
  canonical_of_padded canonicalInput31950 canonicalOutput31950 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31951 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -2, 0, 1], ![-2, 0, -1, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput31951 : ExponentCode := normalNode1735

theorem canonicalSound31951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31951.moment H = canonicalOutput31951.moment H :=
  canonical_of_padded canonicalInput31951 canonicalOutput31951 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31952 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, -1, 0, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput31952 : ExponentCode := normalNode2109

theorem canonicalSound31952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31952.moment H = canonicalOutput31952.moment H :=
  canonical_of_padded canonicalInput31952 canonicalOutput31952 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31953 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, -1, -1, 4], ![0, 1, 3, -4]]⟩

def canonicalOutput31953 : ExponentCode := normalNode1230

theorem canonicalSound31953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31953.moment H = canonicalOutput31953.moment H :=
  canonical_of_padded canonicalInput31953 canonicalOutput31953 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31954 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput31954 : ExponentCode := normalNode3613

theorem canonicalSound31954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31954.moment H = canonicalOutput31954.moment H :=
  canonical_of_padded canonicalInput31954 canonicalOutput31954 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31955 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput31955 : ExponentCode := normalNode9612

theorem canonicalSound31955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31955.moment H = canonicalOutput31955.moment H :=
  canonical_of_padded canonicalInput31955 canonicalOutput31955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31956 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -2, 1], ![-2, -1, 0, 3], ![0, 0, 4, -4]]⟩

def canonicalOutput31956 : ExponentCode := normalNode2077

theorem canonicalSound31956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31956.moment H = canonicalOutput31956.moment H :=
  canonical_of_padded canonicalInput31956 canonicalOutput31956 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31957 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -2, 0, 4], ![0, 1, 3, -4]]⟩

def canonicalOutput31957 : ExponentCode := normalNode476

theorem canonicalSound31957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31957.moment H = canonicalOutput31957.moment H :=
  canonical_of_padded canonicalInput31957 canonicalOutput31957 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31958 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, 0, 4, -4]]⟩

def canonicalOutput31958 : ExponentCode := normalNode1420

theorem canonicalSound31958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31958.moment H = canonicalOutput31958.moment H :=
  canonical_of_padded canonicalInput31958 canonicalOutput31958 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31959 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput31959 : ExponentCode := normalNode2061

theorem canonicalSound31959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31959.moment H = canonicalOutput31959.moment H :=
  canonical_of_padded canonicalInput31959 canonicalOutput31959 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31960 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput31960 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3218⟩

theorem canonicalSound31960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31960.moment H = canonicalOutput31960.moment H :=
  canonical_of_padded canonicalInput31960 canonicalOutput31960 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31961 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput31961 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3408⟩

theorem canonicalSound31961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31961.moment H = canonicalOutput31961.moment H :=
  canonical_of_padded canonicalInput31961 canonicalOutput31961 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31962 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, -1, 4], ![0, 0, 3, -3]]⟩

def canonicalOutput31962 : ExponentCode := normalNode1404

theorem canonicalSound31962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31962.moment H = canonicalOutput31962.moment H :=
  canonical_of_padded canonicalInput31962 canonicalOutput31962 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31963 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 0, 2, -2]]⟩

def canonicalOutput31963 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3017⟩

theorem canonicalSound31963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31963.moment H = canonicalOutput31963.moment H :=
  canonical_of_padded canonicalInput31963 canonicalOutput31963 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31964 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, -2, 4], ![0, -1, 4, -3]]⟩

def canonicalOutput31964 : ExponentCode := normalNode3269

theorem canonicalSound31964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31964.moment H = canonicalOutput31964.moment H :=
  canonical_of_padded canonicalInput31964 canonicalOutput31964 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31965 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, -2, 4], ![-1, 0, 4, -3]]⟩

def canonicalOutput31965 : ExponentCode := normalNode7334

theorem canonicalSound31965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31965.moment H = canonicalOutput31965.moment H :=
  canonical_of_padded canonicalInput31965 canonicalOutput31965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31966 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput31966 : ExponentCode := normalNode7330

theorem canonicalSound31966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31966.moment H = canonicalOutput31966.moment H :=
  canonical_of_padded canonicalInput31966 canonicalOutput31966 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31967 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput31967 : ExponentCode := normalNode3259

theorem canonicalSound31967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31967.moment H = canonicalOutput31967.moment H :=
  canonical_of_padded canonicalInput31967 canonicalOutput31967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31968 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, 3, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31968 : ExponentCode := normalNode1404

theorem canonicalSound31968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31968.moment H = canonicalOutput31968.moment H :=
  canonical_of_padded canonicalInput31968 canonicalOutput31968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31969 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput31969 : ExponentCode := normalNode3775

theorem canonicalSound31969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31969.moment H = canonicalOutput31969.moment H :=
  canonical_of_padded canonicalInput31969 canonicalOutput31969 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation292, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31970 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput31970 : ExponentCode := normalNode4413

theorem canonicalSound31970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31970.moment H = canonicalOutput31970.moment H :=
  canonical_of_padded canonicalInput31970 canonicalOutput31970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation249, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31971 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![1, -2, 0, 1], ![0, -1, 3, -2]]⟩

def canonicalOutput31971 : ExponentCode := normalNode3594

theorem canonicalSound31971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31971.moment H = canonicalOutput31971.moment H :=
  canonical_of_padded canonicalInput31971 canonicalOutput31971 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput31972 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput31972 : ExponentCode := normalNode8783

theorem canonicalSound31972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31972.moment H = canonicalOutput31972.moment H :=
  canonical_of_padded canonicalInput31972 canonicalOutput31972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31973 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -1, 1, -1], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput31973 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3409⟩

theorem canonicalSound31973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31973.moment H = canonicalOutput31973.moment H :=
  canonical_of_padded canonicalInput31973 canonicalOutput31973 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31974 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput31974 : ExponentCode := normalNode3032

theorem canonicalSound31974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31974.moment H = canonicalOutput31974.moment H :=
  canonical_of_padded canonicalInput31974 canonicalOutput31974 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31975 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput31975 : ExponentCode := normalNode3032

theorem canonicalSound31975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31975.moment H = canonicalOutput31975.moment H :=
  canonical_of_padded canonicalInput31975 canonicalOutput31975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31976 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput31976 : ExponentCode := normalNode1885

theorem canonicalSound31976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31976.moment H = canonicalOutput31976.moment H :=
  canonical_of_padded canonicalInput31976 canonicalOutput31976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31977 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput31977 : ExponentCode := normalNode7271

theorem canonicalSound31977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31977.moment H = canonicalOutput31977.moment H :=
  canonical_of_padded canonicalInput31977 canonicalOutput31977 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31978 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1]]⟩

def canonicalOutput31978 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3301⟩

theorem canonicalSound31978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31978.moment H = canonicalOutput31978.moment H :=
  canonical_of_padded canonicalInput31978 canonicalOutput31978 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput31979 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 0, 2], ![-2, 0, 3, -1]]⟩

def canonicalOutput31979 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3002⟩

theorem canonicalSound31979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31979.moment H = canonicalOutput31979.moment H :=
  canonical_of_padded canonicalInput31979 canonicalOutput31979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31980 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 0, 3, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput31980 : ExponentCode := normalNode463

theorem canonicalSound31980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31980.moment H = canonicalOutput31980.moment H :=
  canonical_of_padded canonicalInput31980 canonicalOutput31980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31981 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, 2, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput31981 : ExponentCode := normalNode2736

theorem canonicalSound31981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31981.moment H = canonicalOutput31981.moment H :=
  canonical_of_padded canonicalInput31981 canonicalOutput31981 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31982 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 3, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput31982 : ExponentCode := normalNode1765

theorem canonicalSound31982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31982.moment H = canonicalOutput31982.moment H :=
  canonical_of_padded canonicalInput31982 canonicalOutput31982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31983 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, -1, 3, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput31983 : ExponentCode := normalNode2734

theorem canonicalSound31983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31983.moment H = canonicalOutput31983.moment H :=
  canonical_of_padded canonicalInput31983 canonicalOutput31983 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation319, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31984 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, 0, 3, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput31984 : ExponentCode := normalNode1731

theorem canonicalSound31984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31984.moment H = canonicalOutput31984.moment H :=
  canonical_of_padded canonicalInput31984 canonicalOutput31984 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31985 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput31985 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3033⟩

theorem canonicalSound31985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31985.moment H = canonicalOutput31985.moment H :=
  canonical_of_padded canonicalInput31985 canonicalOutput31985 (by decide) (by decide)
    ⟨false, true, canonicalPermutation301, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31986 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 3, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput31986 : ExponentCode := normalNode1730

theorem canonicalSound31986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31986.moment H = canonicalOutput31986.moment H :=
  canonical_of_padded canonicalInput31986 canonicalOutput31986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput31987 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 3, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput31987 : ExponentCode := normalNode2474

theorem canonicalSound31987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31987.moment H = canonicalOutput31987.moment H :=
  canonical_of_padded canonicalInput31987 canonicalOutput31987 (by decide) (by decide)
    ⟨false, true, canonicalPermutation301, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31988 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![1, -2, -1, 2]]⟩

def canonicalOutput31988 : ExponentCode := normalNode5880

theorem canonicalSound31988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31988.moment H = canonicalOutput31988.moment H :=
  canonical_of_padded canonicalInput31988 canonicalOutput31988 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31989 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, -1, 3, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput31989 : ExponentCode := normalNode2105

theorem canonicalSound31989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31989.moment H = canonicalOutput31989.moment H :=
  canonical_of_padded canonicalInput31989 canonicalOutput31989 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31990 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput31990 : ExponentCode := normalNode4281

theorem canonicalSound31990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31990.moment H = canonicalOutput31990.moment H :=
  canonical_of_padded canonicalInput31990 canonicalOutput31990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31991 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput31991 : ExponentCode := normalNode9274

theorem canonicalSound31991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31991.moment H = canonicalOutput31991.moment H :=
  canonical_of_padded canonicalInput31991 canonicalOutput31991 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31992 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput31992 : ExponentCode := normalNode3614

theorem canonicalSound31992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31992.moment H = canonicalOutput31992.moment H :=
  canonical_of_padded canonicalInput31992 canonicalOutput31992 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31993 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput31993 : ExponentCode := normalNode9610

theorem canonicalSound31993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31993.moment H = canonicalOutput31993.moment H :=
  canonical_of_padded canonicalInput31993 canonicalOutput31993 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31994 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput31994 : ExponentCode := normalNode2063

theorem canonicalSound31994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31994.moment H = canonicalOutput31994.moment H :=
  canonical_of_padded canonicalInput31994 canonicalOutput31994 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31995 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -1, 4, -3]]⟩

def canonicalOutput31995 : ExponentCode := normalNode3549

theorem canonicalSound31995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31995.moment H = canonicalOutput31995.moment H :=
  canonical_of_padded canonicalInput31995 canonicalOutput31995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31996 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 0, 4, -3]]⟩

def canonicalOutput31996 : ExponentCode := normalNode7764

theorem canonicalSound31996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31996.moment H = canonicalOutput31996.moment H :=
  canonical_of_padded canonicalInput31996 canonicalOutput31996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31997 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput31997 : ExponentCode := normalNode7325

theorem canonicalSound31997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31997.moment H = canonicalOutput31997.moment H :=
  canonical_of_padded canonicalInput31997 canonicalOutput31997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31998 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput31998 : ExponentCode := normalNode3253

theorem canonicalSound31998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31998.moment H = canonicalOutput31998.moment H :=
  canonical_of_padded canonicalInput31998 canonicalOutput31998 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31999 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![0, 0, 3, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31999 : ExponentCode := normalNode1406

theorem canonicalSound31999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31999.moment H = canonicalOutput31999.moment H :=
  canonical_of_padded canonicalInput31999 canonicalOutput31999 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
