import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26944 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26944 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound26944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26944.moment H = canonicalOutput26944.moment H :=
  canonical_of_padded canonicalInput26944 canonicalOutput26944 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput26945 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26945 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound26945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26945.moment H = canonicalOutput26945.moment H :=
  canonical_of_padded canonicalInput26945 canonicalOutput26945 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput26946 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26946 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound26946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26946.moment H = canonicalOutput26946.moment H :=
  canonical_of_padded canonicalInput26946 canonicalOutput26946 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput26947 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26947 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound26947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26947.moment H = canonicalOutput26947.moment H :=
  canonical_of_padded canonicalInput26947 canonicalOutput26947 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput26948 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26948 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound26948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26948.moment H = canonicalOutput26948.moment H :=
  canonical_of_padded canonicalInput26948 canonicalOutput26948 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput26949 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26949 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound26949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26949.moment H = canonicalOutput26949.moment H :=
  canonical_of_padded canonicalInput26949 canonicalOutput26949 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput26950 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26950 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound26950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26950.moment H = canonicalOutput26950.moment H :=
  canonical_of_padded canonicalInput26950 canonicalOutput26950 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput26951 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26951 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound26951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26951.moment H = canonicalOutput26951.moment H :=
  canonical_of_padded canonicalInput26951 canonicalOutput26951 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput26952 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput26952 : ExponentCode := normalNode10685

theorem canonicalSound26952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26952.moment H = canonicalOutput26952.moment H :=
  canonical_of_padded canonicalInput26952 canonicalOutput26952 (by decide) (by decide)
    ⟨false, true, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput26953 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput26953 : ExponentCode := normalNode10452

theorem canonicalSound26953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26953.moment H = canonicalOutput26953.moment H :=
  canonical_of_padded canonicalInput26953 canonicalOutput26953 (by decide) (by decide)
    ⟨false, false, canonicalPermutation170, canonicalPermutation85⟩ (by decide +kernel) hH

def canonicalInput26954 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput26954 : ExponentCode := normalNode10367

theorem canonicalSound26954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26954.moment H = canonicalOutput26954.moment H :=
  canonical_of_padded canonicalInput26954 canonicalOutput26954 (by decide) (by decide)
    ⟨false, false, canonicalPermutation333, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput26955 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput26955 : ExponentCode := normalNode10869

theorem canonicalSound26955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26955.moment H = canonicalOutput26955.moment H :=
  canonical_of_padded canonicalInput26955 canonicalOutput26955 (by decide) (by decide)
    ⟨false, true, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26956 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput26956 : ExponentCode := normalNode8067

theorem canonicalSound26956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26956.moment H = canonicalOutput26956.moment H :=
  canonical_of_padded canonicalInput26956 canonicalOutput26956 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput26957 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput26957 : ExponentCode := normalNode8067

theorem canonicalSound26957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26957.moment H = canonicalOutput26957.moment H :=
  canonical_of_padded canonicalInput26957 canonicalOutput26957 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput26958 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput26958 : ExponentCode := normalNode10869

theorem canonicalSound26958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26958.moment H = canonicalOutput26958.moment H :=
  canonical_of_padded canonicalInput26958 canonicalOutput26958 (by decide) (by decide)
    ⟨false, true, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26959 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput26959 : ExponentCode := normalNode8067

theorem canonicalSound26959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26959.moment H = canonicalOutput26959.moment H :=
  canonical_of_padded canonicalInput26959 canonicalOutput26959 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput26960 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput26960 : ExponentCode := normalNode10453

theorem canonicalSound26960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26960.moment H = canonicalOutput26960.moment H :=
  canonical_of_padded canonicalInput26960 canonicalOutput26960 (by decide) (by decide)
    ⟨false, false, canonicalPermutation89, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput26961 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput26961 : ExponentCode := normalNode10435

theorem canonicalSound26961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26961.moment H = canonicalOutput26961.moment H :=
  canonical_of_padded canonicalInput26961 canonicalOutput26961 (by decide) (by decide)
    ⟨false, false, canonicalPermutation69, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput26962 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput26962 : ExponentCode := normalNode10435

theorem canonicalSound26962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26962.moment H = canonicalOutput26962.moment H :=
  canonical_of_padded canonicalInput26962 canonicalOutput26962 (by decide) (by decide)
    ⟨false, false, canonicalPermutation334, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput26963 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26963 : ExponentCode := normalNode10453

theorem canonicalSound26963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26963.moment H = canonicalOutput26963.moment H :=
  canonical_of_padded canonicalInput26963 canonicalOutput26963 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput26964 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput26964 : ExponentCode := normalNode8067

theorem canonicalSound26964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26964.moment H = canonicalOutput26964.moment H :=
  canonical_of_padded canonicalInput26964 canonicalOutput26964 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput26965 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput26965 : ExponentCode := normalNode8067

theorem canonicalSound26965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26965.moment H = canonicalOutput26965.moment H :=
  canonical_of_padded canonicalInput26965 canonicalOutput26965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput26966 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput26966 : ExponentCode := normalNode10435

theorem canonicalSound26966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26966.moment H = canonicalOutput26966.moment H :=
  canonical_of_padded canonicalInput26966 canonicalOutput26966 (by decide) (by decide)
    ⟨false, false, canonicalPermutation69, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput26967 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput26967 : ExponentCode := normalNode10453

theorem canonicalSound26967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26967.moment H = canonicalOutput26967.moment H :=
  canonical_of_padded canonicalInput26967 canonicalOutput26967 (by decide) (by decide)
    ⟨false, false, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput26968 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26968 : ExponentCode := normalNode10453

theorem canonicalSound26968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26968.moment H = canonicalOutput26968.moment H :=
  canonical_of_padded canonicalInput26968 canonicalOutput26968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput26969 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput26969 : ExponentCode := normalNode10435

theorem canonicalSound26969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26969.moment H = canonicalOutput26969.moment H :=
  canonical_of_padded canonicalInput26969 canonicalOutput26969 (by decide) (by decide)
    ⟨false, false, canonicalPermutation334, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput26970 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput26970 : ExponentCode := normalNode8067

theorem canonicalSound26970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26970.moment H = canonicalOutput26970.moment H :=
  canonical_of_padded canonicalInput26970 canonicalOutput26970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput26971 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput26971 : ExponentCode := normalNode10869

theorem canonicalSound26971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26971.moment H = canonicalOutput26971.moment H :=
  canonical_of_padded canonicalInput26971 canonicalOutput26971 (by decide) (by decide)
    ⟨false, true, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26972 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput26972 : ExponentCode := normalNode8067

theorem canonicalSound26972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26972.moment H = canonicalOutput26972.moment H :=
  canonical_of_padded canonicalInput26972 canonicalOutput26972 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput26973 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput26973 : ExponentCode := normalNode8067

theorem canonicalSound26973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26973.moment H = canonicalOutput26973.moment H :=
  canonical_of_padded canonicalInput26973 canonicalOutput26973 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput26974 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput26974 : ExponentCode := normalNode10869

theorem canonicalSound26974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26974.moment H = canonicalOutput26974.moment H :=
  canonical_of_padded canonicalInput26974 canonicalOutput26974 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26975 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput26975 : ExponentCode := normalNode10435

theorem canonicalSound26975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26975.moment H = canonicalOutput26975.moment H :=
  canonical_of_padded canonicalInput26975 canonicalOutput26975 (by decide) (by decide)
    ⟨false, false, canonicalPermutation335, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput26976 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput26976 : ExponentCode := normalNode8067

theorem canonicalSound26976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26976.moment H = canonicalOutput26976.moment H :=
  canonical_of_padded canonicalInput26976 canonicalOutput26976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput26977 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput26977 : ExponentCode := normalNode10453

theorem canonicalSound26977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26977.moment H = canonicalOutput26977.moment H :=
  canonical_of_padded canonicalInput26977 canonicalOutput26977 (by decide) (by decide)
    ⟨false, false, canonicalPermutation89, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput26978 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26978 : ExponentCode := normalNode10453

theorem canonicalSound26978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26978.moment H = canonicalOutput26978.moment H :=
  canonical_of_padded canonicalInput26978 canonicalOutput26978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput26979 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput26979 : ExponentCode := normalNode8067

theorem canonicalSound26979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26979.moment H = canonicalOutput26979.moment H :=
  canonical_of_padded canonicalInput26979 canonicalOutput26979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput26980 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput26980 : ExponentCode := normalNode10435

theorem canonicalSound26980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26980.moment H = canonicalOutput26980.moment H :=
  canonical_of_padded canonicalInput26980 canonicalOutput26980 (by decide) (by decide)
    ⟨false, false, canonicalPermutation336, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput26981 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput26981 : ExponentCode := normalNode10453

theorem canonicalSound26981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26981.moment H = canonicalOutput26981.moment H :=
  canonical_of_padded canonicalInput26981 canonicalOutput26981 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput26982 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput26982 : ExponentCode := normalNode10453

theorem canonicalSound26982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26982.moment H = canonicalOutput26982.moment H :=
  canonical_of_padded canonicalInput26982 canonicalOutput26982 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput26983 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput26983 : ExponentCode := normalNode10453

theorem canonicalSound26983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26983.moment H = canonicalOutput26983.moment H :=
  canonical_of_padded canonicalInput26983 canonicalOutput26983 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput26984 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26984 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound26984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26984.moment H = canonicalOutput26984.moment H :=
  canonical_of_padded canonicalInput26984 canonicalOutput26984 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput26985 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput26985 : ExponentCode := normalNode10453

theorem canonicalSound26985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26985.moment H = canonicalOutput26985.moment H :=
  canonical_of_padded canonicalInput26985 canonicalOutput26985 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput26986 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput26986 : ExponentCode := normalNode10453

theorem canonicalSound26986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26986.moment H = canonicalOutput26986.moment H :=
  canonical_of_padded canonicalInput26986 canonicalOutput26986 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput26987 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput26987 : ExponentCode := normalNode10453

theorem canonicalSound26987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26987.moment H = canonicalOutput26987.moment H :=
  canonical_of_padded canonicalInput26987 canonicalOutput26987 (by decide) (by decide)
    ⟨false, false, canonicalPermutation284, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput26988 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput26988 : ExponentCode := normalNode8067

theorem canonicalSound26988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26988.moment H = canonicalOutput26988.moment H :=
  canonical_of_padded canonicalInput26988 canonicalOutput26988 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput26989 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput26989 : ExponentCode := normalNode10435

theorem canonicalSound26989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26989.moment H = canonicalOutput26989.moment H :=
  canonical_of_padded canonicalInput26989 canonicalOutput26989 (by decide) (by decide)
    ⟨false, false, canonicalPermutation335, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput26990 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26990 : ExponentCode := normalNode10453

theorem canonicalSound26990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26990.moment H = canonicalOutput26990.moment H :=
  canonical_of_padded canonicalInput26990 canonicalOutput26990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput26991 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput26991 : ExponentCode := normalNode10453

theorem canonicalSound26991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26991.moment H = canonicalOutput26991.moment H :=
  canonical_of_padded canonicalInput26991 canonicalOutput26991 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput26992 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput26992 : ExponentCode := normalNode10435

theorem canonicalSound26992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26992.moment H = canonicalOutput26992.moment H :=
  canonical_of_padded canonicalInput26992 canonicalOutput26992 (by decide) (by decide)
    ⟨false, false, canonicalPermutation336, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput26993 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput26993 : ExponentCode := normalNode8067

theorem canonicalSound26993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26993.moment H = canonicalOutput26993.moment H :=
  canonical_of_padded canonicalInput26993 canonicalOutput26993 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput26994 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput26994 : ExponentCode := normalNode10435

theorem canonicalSound26994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26994.moment H = canonicalOutput26994.moment H :=
  canonical_of_padded canonicalInput26994 canonicalOutput26994 (by decide) (by decide)
    ⟨false, false, canonicalPermutation337, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput26995 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput26995 : ExponentCode := normalNode10453

theorem canonicalSound26995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26995.moment H = canonicalOutput26995.moment H :=
  canonical_of_padded canonicalInput26995 canonicalOutput26995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput26996 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput26996 : ExponentCode := normalNode8067

theorem canonicalSound26996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26996.moment H = canonicalOutput26996.moment H :=
  canonical_of_padded canonicalInput26996 canonicalOutput26996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput26997 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput26997 : ExponentCode := normalNode8067

theorem canonicalSound26997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26997.moment H = canonicalOutput26997.moment H :=
  canonical_of_padded canonicalInput26997 canonicalOutput26997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput26998 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput26998 : ExponentCode := normalNode10453

theorem canonicalSound26998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26998.moment H = canonicalOutput26998.moment H :=
  canonical_of_padded canonicalInput26998 canonicalOutput26998 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput26999 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput26999 : ExponentCode := normalNode10435

theorem canonicalSound26999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26999.moment H = canonicalOutput26999.moment H :=
  canonical_of_padded canonicalInput26999 canonicalOutput26999 (by decide) (by decide)
    ⟨false, false, canonicalPermutation327, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput27000 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27000 : ExponentCode := normalNode8067

theorem canonicalSound27000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27000.moment H = canonicalOutput27000.moment H :=
  canonical_of_padded canonicalInput27000 canonicalOutput27000 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27001 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27001 : ExponentCode := normalNode10453

theorem canonicalSound27001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27001.moment H = canonicalOutput27001.moment H :=
  canonical_of_padded canonicalInput27001 canonicalOutput27001 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput27002 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27002 : ExponentCode := normalNode10435

theorem canonicalSound27002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27002.moment H = canonicalOutput27002.moment H :=
  canonical_of_padded canonicalInput27002 canonicalOutput27002 (by decide) (by decide)
    ⟨false, false, canonicalPermutation337, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput27003 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27003 : ExponentCode := normalNode10435

theorem canonicalSound27003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27003.moment H = canonicalOutput27003.moment H :=
  canonical_of_padded canonicalInput27003 canonicalOutput27003 (by decide) (by decide)
    ⟨false, false, canonicalPermutation327, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput27004 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27004 : ExponentCode := normalNode10453

theorem canonicalSound27004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27004.moment H = canonicalOutput27004.moment H :=
  canonical_of_padded canonicalInput27004 canonicalOutput27004 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput27005 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27005 : ExponentCode := normalNode8067

theorem canonicalSound27005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27005.moment H = canonicalOutput27005.moment H :=
  canonical_of_padded canonicalInput27005 canonicalOutput27005 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27006 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27006 : ExponentCode := normalNode10869

theorem canonicalSound27006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27006.moment H = canonicalOutput27006.moment H :=
  canonical_of_padded canonicalInput27006 canonicalOutput27006 (by decide) (by decide)
    ⟨false, true, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27007 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27007 : ExponentCode := normalNode8067

theorem canonicalSound27007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27007.moment H = canonicalOutput27007.moment H :=
  canonical_of_padded canonicalInput27007 canonicalOutput27007 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
