import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23936 : ExponentCode := ⟨4, 5, ![![0, -2, -2, 1, 3], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput23936 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node408⟩

theorem canonicalSound23936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23936.moment H = canonicalOutput23936.moment H :=
  canonical_of_padded canonicalInput23936 canonicalOutput23936 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput23937 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, -1, 2, 0], ![0, 3, -1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput23937 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1076⟩

theorem canonicalSound23937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23937.moment H = canonicalOutput23937.moment H :=
  canonical_of_padded canonicalInput23937 canonicalOutput23937 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23938 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput23938 : ExponentCode := normalNode6464

theorem canonicalSound23938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23938.moment H = canonicalOutput23938.moment H :=
  canonical_of_padded canonicalInput23938 canonicalOutput23938 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput23939 : ExponentCode := ⟨5, 4, ![![0, -2, -2, 4], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput23939 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2747⟩

theorem canonicalSound23939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23939.moment H = canonicalOutput23939.moment H :=
  canonical_of_padded canonicalInput23939 canonicalOutput23939 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23940 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, 0, 1, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput23940 : ExponentCode := normalNode11050

theorem canonicalSound23940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23940.moment H = canonicalOutput23940.moment H :=
  canonical_of_padded canonicalInput23940 canonicalOutput23940 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput23941 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, 0, 2, -1], ![0, 1, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput23941 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1014⟩

theorem canonicalSound23941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23941.moment H = canonicalOutput23941.moment H :=
  canonical_of_padded canonicalInput23941 canonicalOutput23941 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23942 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, 0, 2, -1], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput23942 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1295⟩

theorem canonicalSound23942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23942.moment H = canonicalOutput23942.moment H :=
  canonical_of_padded canonicalInput23942 canonicalOutput23942 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23943 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput23943 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1125⟩

theorem canonicalSound23943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23943.moment H = canonicalOutput23943.moment H :=
  canonical_of_padded canonicalInput23943 canonicalOutput23943 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23944 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, 0, 3, -2], ![0, 1, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput23944 : ExponentCode := normalNode9008

theorem canonicalSound23944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23944.moment H = canonicalOutput23944.moment H :=
  canonical_of_padded canonicalInput23944 canonicalOutput23944 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23945 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput23945 : ExponentCode := normalNode10549

theorem canonicalSound23945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23945.moment H = canonicalOutput23945.moment H :=
  canonical_of_padded canonicalInput23945 canonicalOutput23945 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23946 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, 1, 1, -1], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput23946 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1298⟩

theorem canonicalSound23946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23946.moment H = canonicalOutput23946.moment H :=
  canonical_of_padded canonicalInput23946 canonicalOutput23946 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23947 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, 3, -1, -1], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput23947 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node988⟩

theorem canonicalSound23947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23947.moment H = canonicalOutput23947.moment H :=
  canonical_of_padded canonicalInput23947 canonicalOutput23947 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23948 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, 3, -1, -1], ![0, -1, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput23948 : ExponentCode := normalNode6464

theorem canonicalSound23948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23948.moment H = canonicalOutput23948.moment H :=
  canonical_of_padded canonicalInput23948 canonicalOutput23948 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput23949 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![-1, 3, -1, -1], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput23949 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1090⟩

theorem canonicalSound23949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23949.moment H = canonicalOutput23949.moment H :=
  canonical_of_padded canonicalInput23949 canonicalOutput23949 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23950 : ExponentCode := ⟨3, 4, ![![0, -2, -2, 4], ![0, -1, 3, -2], ![0, 3, -1, -2]]⟩

def canonicalOutput23950 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node20⟩

theorem canonicalSound23950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23950.moment H = canonicalOutput23950.moment H :=
  canonical_of_padded canonicalInput23950 canonicalOutput23950 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23951 : ExponentCode := ⟨5, 4, ![![0, -2, -2, 4], ![0, 0, 1, -1], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput23951 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2747⟩

theorem canonicalSound23951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23951.moment H = canonicalOutput23951.moment H :=
  canonical_of_padded canonicalInput23951 canonicalOutput23951 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23952 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![0, 0, 1, -1], ![-1, 2, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput23952 : ExponentCode := normalNode9744

theorem canonicalSound23952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23952.moment H = canonicalOutput23952.moment H :=
  canonical_of_padded canonicalInput23952 canonicalOutput23952 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput23953 : ExponentCode := ⟨5, 4, ![![0, -2, -2, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-1, 1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput23953 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2755⟩

theorem canonicalSound23953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23953.moment H = canonicalOutput23953.moment H :=
  canonical_of_padded canonicalInput23953 canonicalOutput23953 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23954 : ExponentCode := ⟨5, 4, ![![0, -2, -2, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, 0, 0, 0]]⟩

def canonicalOutput23954 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node150⟩

theorem canonicalSound23954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23954.moment H = canonicalOutput23954.moment H :=
  canonical_of_padded canonicalInput23954 canonicalOutput23954 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23955 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![0, 0, 1, -1], ![0, 2, 2, -4], ![0, 0, -1, 1]]⟩

def canonicalOutput23955 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node139⟩

theorem canonicalSound23955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23955.moment H = canonicalOutput23955.moment H :=
  canonical_of_padded canonicalInput23955 canonicalOutput23955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23956 : ExponentCode := ⟨3, 4, ![![0, -2, -2, 4], ![0, 0, 4, -4], ![0, 2, -2, 0]]⟩

def canonicalOutput23956 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node33⟩

theorem canonicalSound23956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23956.moment H = canonicalOutput23956.moment H :=
  canonical_of_padded canonicalInput23956 canonicalOutput23956 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23957 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![0, 1, -1, 0], ![-1, 1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput23957 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1174⟩

theorem canonicalSound23957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23957.moment H = canonicalOutput23957.moment H :=
  canonical_of_padded canonicalInput23957 canonicalOutput23957 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput23958 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![0, 1, -1, 0], ![0, 1, 3, -4], ![0, 0, 0, 0]]⟩

def canonicalOutput23958 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩

theorem canonicalSound23958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23958.moment H = canonicalOutput23958.moment H :=
  canonical_of_padded canonicalInput23958 canonicalOutput23958 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput23959 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![0, 1, 0, -1], ![-1, 1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput23959 : ExponentCode := normalNode9720

theorem canonicalSound23959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23959.moment H = canonicalOutput23959.moment H :=
  canonical_of_padded canonicalInput23959 canonicalOutput23959 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput23960 : ExponentCode := ⟨4, 4, ![![0, -2, -2, 4], ![0, 1, 0, -1], ![0, 1, 2, -3], ![0, 0, 0, 0]]⟩

def canonicalOutput23960 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node52⟩

theorem canonicalSound23960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23960.moment H = canonicalOutput23960.moment H :=
  canonical_of_padded canonicalInput23960 canonicalOutput23960 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput23961 : ExponentCode := ⟨4, 5, ![![0, -2, -1, 0, 3], ![0, 0, -1, 2, -1], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput23961 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound23961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23961.moment H = canonicalOutput23961.moment H :=
  canonical_of_padded canonicalInput23961 canonicalOutput23961 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23962 : ExponentCode := ⟨4, 5, ![![0, -2, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput23962 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound23962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23962.moment H = canonicalOutput23962.moment H :=
  canonical_of_padded canonicalInput23962 canonicalOutput23962 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23963 : ExponentCode := ⟨4, 5, ![![0, -2, -1, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput23963 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound23963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23963.moment H = canonicalOutput23963.moment H :=
  canonical_of_padded canonicalInput23963 canonicalOutput23963 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput23964 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, -1, 2, 0], ![0, 1, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput23964 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node823⟩

theorem canonicalSound23964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23964.moment H = canonicalOutput23964.moment H :=
  canonical_of_padded canonicalInput23964 canonicalOutput23964 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23965 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, -1, 2, 0], ![0, 2, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput23965 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node989⟩

theorem canonicalSound23965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23965.moment H = canonicalOutput23965.moment H :=
  canonical_of_padded canonicalInput23965 canonicalOutput23965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23966 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, -1, 2, 0], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput23966 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound23966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23966.moment H = canonicalOutput23966.moment H :=
  canonical_of_padded canonicalInput23966 canonicalOutput23966 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23967 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, -1, 3, -1], ![0, 2, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput23967 : ExponentCode := normalNode7839

theorem canonicalSound23967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23967.moment H = canonicalOutput23967.moment H :=
  canonical_of_padded canonicalInput23967 canonicalOutput23967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23968 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, -1, 3, -1], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput23968 : ExponentCode := normalNode7838

theorem canonicalSound23968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23968.moment H = canonicalOutput23968.moment H :=
  canonical_of_padded canonicalInput23968 canonicalOutput23968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23969 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, -1, 3, -1], ![0, 3, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput23969 : ExponentCode := normalNode7841

theorem canonicalSound23969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23969.moment H = canonicalOutput23969.moment H :=
  canonical_of_padded canonicalInput23969 canonicalOutput23969 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23970 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, -1, 3, -1], ![0, 3, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput23970 : ExponentCode := normalNode7840

theorem canonicalSound23970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23970.moment H = canonicalOutput23970.moment H :=
  canonical_of_padded canonicalInput23970 canonicalOutput23970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23971 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![-1, 0, -1, 2], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput23971 : ExponentCode := normalNode8918

theorem canonicalSound23971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23971.moment H = canonicalOutput23971.moment H :=
  canonical_of_padded canonicalInput23971 canonicalOutput23971 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput23972 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 0, -1, 2], ![0, 1, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput23972 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1091⟩

theorem canonicalSound23972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23972.moment H = canonicalOutput23972.moment H :=
  canonical_of_padded canonicalInput23972 canonicalOutput23972 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23973 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 0, -1, 2], ![0, 2, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput23973 : ExponentCode := normalNode7940

theorem canonicalSound23973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23973.moment H = canonicalOutput23973.moment H :=
  canonical_of_padded canonicalInput23973 canonicalOutput23973 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput23974 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput23974 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2748⟩

theorem canonicalSound23974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23974.moment H = canonicalOutput23974.moment H :=
  canonical_of_padded canonicalInput23974 canonicalOutput23974 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23975 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput23975 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2803⟩

theorem canonicalSound23975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23975.moment H = canonicalOutput23975.moment H :=
  canonical_of_padded canonicalInput23975 canonicalOutput23975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23976 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 0, 2, -1], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput23976 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node947⟩

theorem canonicalSound23976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23976.moment H = canonicalOutput23976.moment H :=
  canonical_of_padded canonicalInput23976 canonicalOutput23976 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23977 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 0, 2, -1], ![0, 1, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput23977 : ExponentCode := normalNode7917

theorem canonicalSound23977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23977.moment H = canonicalOutput23977.moment H :=
  canonical_of_padded canonicalInput23977 canonicalOutput23977 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23978 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput23978 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node946⟩

theorem canonicalSound23978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23978.moment H = canonicalOutput23978.moment H :=
  canonical_of_padded canonicalInput23978 canonicalOutput23978 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput23979 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 0, 2, -1], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput23979 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1296⟩

theorem canonicalSound23979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23979.moment H = canonicalOutput23979.moment H :=
  canonical_of_padded canonicalInput23979 canonicalOutput23979 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23980 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput23980 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1018⟩

theorem canonicalSound23980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23980.moment H = canonicalOutput23980.moment H :=
  canonical_of_padded canonicalInput23980 canonicalOutput23980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23981 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 0, 4, -3], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput23981 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1097⟩

theorem canonicalSound23981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23981.moment H = canonicalOutput23981.moment H :=
  canonical_of_padded canonicalInput23981 canonicalOutput23981 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23982 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput23982 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2682⟩

theorem canonicalSound23982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23982.moment H = canonicalOutput23982.moment H :=
  canonical_of_padded canonicalInput23982 canonicalOutput23982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23983 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 1, -2, 2], ![0, 0, 2, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput23983 : ExponentCode := normalNode7938

theorem canonicalSound23983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23983.moment H = canonicalOutput23983.moment H :=
  canonical_of_padded canonicalInput23983 canonicalOutput23983 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23984 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 1, -2, 2], ![0, 0, 3, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput23984 : ExponentCode := normalNode9054

theorem canonicalSound23984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23984.moment H = canonicalOutput23984.moment H :=
  canonical_of_padded canonicalInput23984 canonicalOutput23984 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23985 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 1, -2, 2], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput23985 : ExponentCode := normalNode10548

theorem canonicalSound23985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23985.moment H = canonicalOutput23985.moment H :=
  canonical_of_padded canonicalInput23985 canonicalOutput23985 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23986 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput23986 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1071⟩

theorem canonicalSound23986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23986.moment H = canonicalOutput23986.moment H :=
  canonical_of_padded canonicalInput23986 canonicalOutput23986 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23987 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput23987 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1267⟩

theorem canonicalSound23987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23987.moment H = canonicalOutput23987.moment H :=
  canonical_of_padded canonicalInput23987 canonicalOutput23987 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput23988 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput23988 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1310⟩

theorem canonicalSound23988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23988.moment H = canonicalOutput23988.moment H :=
  canonical_of_padded canonicalInput23988 canonicalOutput23988 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23989 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 1, 2, -2], ![0, 2, -2, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput23989 : ExponentCode := normalNode7052

theorem canonicalSound23989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23989.moment H = canonicalOutput23989.moment H :=
  canonical_of_padded canonicalInput23989 canonicalOutput23989 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput23990 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 3, -2, 0], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput23990 : ExponentCode := normalNode6714

theorem canonicalSound23990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23990.moment H = canonicalOutput23990.moment H :=
  canonical_of_padded canonicalInput23990 canonicalOutput23990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23991 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 3, -2, 0], ![0, 0, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput23991 : ExponentCode := normalNode6713

theorem canonicalSound23991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23991.moment H = canonicalOutput23991.moment H :=
  canonical_of_padded canonicalInput23991 canonicalOutput23991 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput23992 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![-1, 3, -1, -1], ![0, -1, 3, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput23992 : ExponentCode := normalNode7841

theorem canonicalSound23992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23992.moment H = canonicalOutput23992.moment H :=
  canonical_of_padded canonicalInput23992 canonicalOutput23992 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput23993 : ExponentCode := ⟨3, 4, ![![0, -2, -1, 3], ![0, -1, 3, -2], ![0, 3, -2, -1]]⟩

def canonicalOutput23993 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound23993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23993.moment H = canonicalOutput23993.moment H :=
  canonical_of_padded canonicalInput23993 canonicalOutput23993 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput23994 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 0, -2, 2], ![0, 0, 3, -3], ![0, 2, 0, -2]]⟩

def canonicalOutput23994 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node163⟩

theorem canonicalSound23994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23994.moment H = canonicalOutput23994.moment H :=
  canonical_of_padded canonicalInput23994 canonicalOutput23994 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23995 : ExponentCode := ⟨3, 4, ![![0, -2, -1, 3], ![0, 0, -2, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput23995 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node27⟩

theorem canonicalSound23995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23995.moment H = canonicalOutput23995.moment H :=
  canonical_of_padded canonicalInput23995 canonicalOutput23995 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23996 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput23996 : ExponentCode := normalNode10575

theorem canonicalSound23996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23996.moment H = canonicalOutput23996.moment H :=
  canonical_of_padded canonicalInput23996 canonicalOutput23996 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23997 : ExponentCode := ⟨4, 4, ![![0, -2, -1, 3], ![0, 0, -1, 1], ![-1, 2, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput23997 : ExponentCode := normalNode7936

theorem canonicalSound23997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23997.moment H = canonicalOutput23997.moment H :=
  canonical_of_padded canonicalInput23997 canonicalOutput23997 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput23998 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![0, 0, -1, 1], ![0, 1, 1, -2], ![-1, 1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput23998 : ExponentCode := normalNode10575

theorem canonicalSound23998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23998.moment H = canonicalOutput23998.moment H :=
  canonical_of_padded canonicalInput23998 canonicalOutput23998 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23999 : ExponentCode := ⟨5, 4, ![![0, -2, -1, 3], ![0, 0, -1, 1], ![0, 1, 1, -2], ![0, 1, 1, -2], ![0, 0, 0, 0]]⟩

def canonicalOutput23999 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node175⟩

theorem canonicalSound23999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23999.moment H = canonicalOutput23999.moment H :=
  canonical_of_padded canonicalInput23999 canonicalOutput23999 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
