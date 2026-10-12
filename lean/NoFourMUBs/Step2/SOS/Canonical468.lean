import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
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
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29952 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, 2, -1, -1], ![1, -3, 0, 2]]⟩

def canonicalOutput29952 : ExponentCode := normalNode5924

theorem canonicalSound29952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29952.moment H = canonicalOutput29952.moment H :=
  canonical_of_padded canonicalInput29952 canonicalOutput29952 (by decide) (by decide)
    ⟨false, true, canonicalPermutation144, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29953 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, 0, 3, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput29953 : ExponentCode := normalNode5211

theorem canonicalSound29953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29953.moment H = canonicalOutput29953.moment H :=
  canonical_of_padded canonicalInput29953 canonicalOutput29953 (by decide) (by decide)
    ⟨false, false, canonicalPermutation199, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29954 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 0, 2, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput29954 : ExponentCode := normalNode2374

theorem canonicalSound29954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29954.moment H = canonicalOutput29954.moment H :=
  canonical_of_padded canonicalInput29954 canonicalOutput29954 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation319, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29955 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 0, 3, -3], ![1, -2, -2, 3]]⟩

def canonicalOutput29955 : ExponentCode := normalNode4946

theorem canonicalSound29955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29955.moment H = canonicalOutput29955.moment H :=
  canonical_of_padded canonicalInput29955 canonicalOutput29955 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation328, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29956 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![1, 1, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput29956 : ExponentCode := normalNode3472

theorem canonicalSound29956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29956.moment H = canonicalOutput29956.moment H :=
  canonical_of_padded canonicalInput29956 canonicalOutput29956 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29957 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![1, 1, -2, 0], ![0, -3, 2, 1]]⟩

def canonicalOutput29957 : ExponentCode := normalNode4390

theorem canonicalSound29957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29957.moment H = canonicalOutput29957.moment H :=
  canonical_of_padded canonicalInput29957 canonicalOutput29957 (by decide) (by decide)
    ⟨false, false, canonicalPermutation323, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29958 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![1, 1, -1, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput29958 : ExponentCode := normalNode5387

theorem canonicalSound29958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29958.moment H = canonicalOutput29958.moment H :=
  canonical_of_padded canonicalInput29958 canonicalOutput29958 (by decide) (by decide)
    ⟨false, false, canonicalPermutation320, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29959 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![1, 1, -2, 0], ![-1, 0, 3, -2]]⟩

def canonicalOutput29959 : ExponentCode := normalNode1872

theorem canonicalSound29959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29959.moment H = canonicalOutput29959.moment H :=
  canonical_of_padded canonicalInput29959 canonicalOutput29959 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29960 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![1, 0, -2, 1], ![-1, 0, 3, -2]]⟩

def canonicalOutput29960 : ExponentCode := normalNode9017

theorem canonicalSound29960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29960.moment H = canonicalOutput29960.moment H :=
  canonical_of_padded canonicalInput29960 canonicalOutput29960 (by decide) (by decide)
    ⟨false, false, canonicalPermutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29961 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![1, 1, -2, 0], ![-1, -1, 3, -1]]⟩

def canonicalOutput29961 : ExponentCode := normalNode7655

theorem canonicalSound29961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29961.moment H = canonicalOutput29961.moment H :=
  canonical_of_padded canonicalInput29961 canonicalOutput29961 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29962 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -2, -1, 3], ![1, 1, -1, -1], ![-2, 0, 3, -1]]⟩

def canonicalOutput29962 : ExponentCode := normalNode3379

theorem canonicalSound29962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29962.moment H = canonicalOutput29962.moment H :=
  canonical_of_padded canonicalInput29962 canonicalOutput29962 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29963 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -2, 0, 2], ![1, 1, -2, 0], ![-2, 0, 3, -1]]⟩

def canonicalOutput29963 : ExponentCode := normalNode3348

theorem canonicalSound29963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29963.moment H = canonicalOutput29963.moment H :=
  canonical_of_padded canonicalInput29963 canonicalOutput29963 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29964 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -2, 0, 2], ![1, 1, -1, -1], ![-2, 0, 2, 0]]⟩

def canonicalOutput29964 : ExponentCode := normalNode3798

theorem canonicalSound29964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29964.moment H = canonicalOutput29964.moment H :=
  canonical_of_padded canonicalInput29964 canonicalOutput29964 (by decide) (by decide)
    ⟨false, false, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29965 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -1, 1, 0], ![1, 1, -1, -1], ![-2, -1, 1, 2]]⟩

def canonicalOutput29965 : ExponentCode := normalNode2447

theorem canonicalSound29965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29965.moment H = canonicalOutput29965.moment H :=
  canonical_of_padded canonicalInput29965 canonicalOutput29965 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29966 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -1, 1, 0], ![1, 1, 0, -2], ![-2, -1, 0, 3]]⟩

def canonicalOutput29966 : ExponentCode := normalNode10508

theorem canonicalSound29966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29966.moment H = canonicalOutput29966.moment H :=
  canonical_of_padded canonicalInput29966 canonicalOutput29966 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29967 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![1, 1, -2, 0], ![-2, -1, 1, 2]]⟩

def canonicalOutput29967 : ExponentCode := normalNode2535

theorem canonicalSound29967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29967.moment H = canonicalOutput29967.moment H :=
  canonical_of_padded canonicalInput29967 canonicalOutput29967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29968 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, -1, 0, 3]]⟩

def canonicalOutput29968 : ExponentCode := normalNode1825

theorem canonicalSound29968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29968.moment H = canonicalOutput29968.moment H :=
  canonical_of_padded canonicalInput29968 canonicalOutput29968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29969 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -1, 2, -1], ![1, 1, 0, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput29969 : ExponentCode := normalNode1202

theorem canonicalSound29969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29969.moment H = canonicalOutput29969.moment H :=
  canonical_of_padded canonicalInput29969 canonicalOutput29969 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29970 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 0, 0, 0], ![0, 1, -3, 2], ![-1, -2, 4, -1]]⟩

def canonicalOutput29970 : ExponentCode := normalNode6497

theorem canonicalSound29970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29970.moment H = canonicalOutput29970.moment H :=
  canonical_of_padded canonicalInput29970 canonicalOutput29970 (by decide) (by decide)
    ⟨false, false, canonicalPermutation115, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29971 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 1, -1, 0], ![-1, -1, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput29971 : ExponentCode := normalNode7907

theorem canonicalSound29971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29971.moment H = canonicalOutput29971.moment H :=
  canonical_of_padded canonicalInput29971 canonicalOutput29971 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29972 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 2, -2, 0], ![1, -2, 1, 0], ![-2, -1, 2, 1]]⟩

def canonicalOutput29972 : ExponentCode := normalNode5105

theorem canonicalSound29972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29972.moment H = canonicalOutput29972.moment H :=
  canonical_of_padded canonicalInput29972 canonicalOutput29972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29973 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 2, -1, -1], ![1, -2, 0, 1], ![-2, -1, 2, 1]]⟩

def canonicalOutput29973 : ExponentCode := normalNode5837

theorem canonicalSound29973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29973.moment H = canonicalOutput29973.moment H :=
  canonical_of_padded canonicalInput29973 canonicalOutput29973 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29974 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, -1, 1, 2]]⟩

def canonicalOutput29974 : ExponentCode := normalNode5049

theorem canonicalSound29974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29974.moment H = canonicalOutput29974.moment H :=
  canonical_of_padded canonicalInput29974 canonicalOutput29974 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29975 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 1, -3, 3], ![-1, -2, 4, -1]]⟩

def canonicalOutput29975 : ExponentCode := normalNode1379

theorem canonicalSound29975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29975.moment H = canonicalOutput29975.moment H :=
  canonical_of_padded canonicalInput29975 canonicalOutput29975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29976 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-2, -2, 4, 0]]⟩

def canonicalOutput29976 : ExponentCode := normalNode449

theorem canonicalSound29976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29976.moment H = canonicalOutput29976.moment H :=
  canonical_of_padded canonicalInput29976 canonicalOutput29976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29977 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-2, -1, -1, 4], ![0, -1, 3, -2]]⟩

def canonicalOutput29977 : ExponentCode := normalNode1308

theorem canonicalSound29977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29977.moment H = canonicalOutput29977.moment H :=
  canonical_of_padded canonicalInput29977 canonicalOutput29977 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29978 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput29978 : ExponentCode := normalNode7673

theorem canonicalSound29978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29978.moment H = canonicalOutput29978.moment H :=
  canonical_of_padded canonicalInput29978 canonicalOutput29978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29979 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, 1, -2], ![-1, 1, 2, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput29979 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1371⟩

theorem canonicalSound29979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29979.moment H = canonicalOutput29979.moment H :=
  canonical_of_padded canonicalInput29979 canonicalOutput29979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29980 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, 1, -2], ![0, 1, 1, -2], ![0, -2, -1, 3]]⟩

def canonicalOutput29980 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node175⟩

theorem canonicalSound29980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29980.moment H = canonicalOutput29980.moment H :=
  canonical_of_padded canonicalInput29980 canonicalOutput29980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29981 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput29981 : ExponentCode := normalNode4270

theorem canonicalSound29981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29981.moment H = canonicalOutput29981.moment H :=
  canonical_of_padded canonicalInput29981 canonicalOutput29981 (by decide) (by decide)
    ⟨false, false, canonicalPermutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29982 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput29982 : ExponentCode := normalNode8853

theorem canonicalSound29982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29982.moment H = canonicalOutput29982.moment H :=
  canonical_of_padded canonicalInput29982 canonicalOutput29982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation293, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29983 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![0, 2, -1, -1], ![-1, 1, 2, -2]]⟩

def canonicalOutput29983 : ExponentCode := normalNode6863

theorem canonicalSound29983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29983.moment H = canonicalOutput29983.moment H :=
  canonical_of_padded canonicalInput29983 canonicalOutput29983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation390, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29984 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![0, 2, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput29984 : ExponentCode := normalNode4079

theorem canonicalSound29984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29984.moment H = canonicalOutput29984.moment H :=
  canonical_of_padded canonicalInput29984 canonicalOutput29984 (by decide) (by decide)
    ⟨false, true, canonicalPermutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29985 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 1, -1, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput29985 : ExponentCode := normalNode10193

theorem canonicalSound29985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29985.moment H = canonicalOutput29985.moment H :=
  canonical_of_padded canonicalInput29985 canonicalOutput29985 (by decide) (by decide)
    ⟨false, false, canonicalPermutation184, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29986 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![0, 1, 1, -2], ![-2, 2, -1, 1]]⟩

def canonicalOutput29986 : ExponentCode := normalNode2494

theorem canonicalSound29986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29986.moment H = canonicalOutput29986.moment H :=
  canonical_of_padded canonicalInput29986 canonicalOutput29986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29987 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![0, -1, 3, -2]]⟩

def canonicalOutput29987 : ExponentCode := normalNode3933

theorem canonicalSound29987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29987.moment H = canonicalOutput29987.moment H :=
  canonical_of_padded canonicalInput29987 canonicalOutput29987 (by decide) (by decide)
    ⟨false, true, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29988 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput29988 : ExponentCode := normalNode3932

theorem canonicalSound29988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29988.moment H = canonicalOutput29988.moment H :=
  canonical_of_padded canonicalInput29988 canonicalOutput29988 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29989 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput29989 : ExponentCode := normalNode5422

theorem canonicalSound29989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29989.moment H = canonicalOutput29989.moment H :=
  canonical_of_padded canonicalInput29989 canonicalOutput29989 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29990 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 2, 1, -3]]⟩

def canonicalOutput29990 : ExponentCode := normalNode3466

theorem canonicalSound29990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29990.moment H = canonicalOutput29990.moment H :=
  canonical_of_padded canonicalInput29990 canonicalOutput29990 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29991 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, 2, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput29991 : ExponentCode := normalNode3923

theorem canonicalSound29991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29991.moment H = canonicalOutput29991.moment H :=
  canonical_of_padded canonicalInput29991 canonicalOutput29991 (by decide) (by decide)
    ⟨false, true, canonicalPermutation344, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29992 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 2, 0, -2]]⟩

def canonicalOutput29992 : ExponentCode := normalNode3925

theorem canonicalSound29992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29992.moment H = canonicalOutput29992.moment H :=
  canonical_of_padded canonicalInput29992 canonicalOutput29992 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29993 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput29993 : ExponentCode := normalNode9321

theorem canonicalSound29993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29993.moment H = canonicalOutput29993.moment H :=
  canonical_of_padded canonicalInput29993 canonicalOutput29993 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29994 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, 2, 0, -1], ![0, 1, 1, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput29994 : ExponentCode := normalNode6897

theorem canonicalSound29994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29994.moment H = canonicalOutput29994.moment H :=
  canonical_of_padded canonicalInput29994 canonicalOutput29994 (by decide) (by decide)
    ⟨false, false, canonicalPermutation301, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29995 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput29995 : ExponentCode := normalNode3424

theorem canonicalSound29995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29995.moment H = canonicalOutput29995.moment H :=
  canonical_of_padded canonicalInput29995 canonicalOutput29995 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29996 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput29996 : ExponentCode := normalNode5623

theorem canonicalSound29996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29996.moment H = canonicalOutput29996.moment H :=
  canonical_of_padded canonicalInput29996 canonicalOutput29996 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29997 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![0, -1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput29997 : ExponentCode := normalNode5942

theorem canonicalSound29997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29997.moment H = canonicalOutput29997.moment H :=
  canonical_of_padded canonicalInput29997 canonicalOutput29997 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29998 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, 0, 3, -3]]⟩

def canonicalOutput29998 : ExponentCode := normalNode5633

theorem canonicalSound29998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29998.moment H = canonicalOutput29998.moment H :=
  canonical_of_padded canonicalInput29998 canonicalOutput29998 (by decide) (by decide)
    ⟨false, true, canonicalPermutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29999 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, 2, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput29999 : ExponentCode := normalNode5345

theorem canonicalSound29999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29999.moment H = canonicalOutput29999.moment H :=
  canonical_of_padded canonicalInput29999 canonicalOutput29999 (by decide) (by decide)
    ⟨false, true, canonicalPermutation136, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30000 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![0, -1, 2, -1], ![-1, 2, 1, -2]]⟩

def canonicalOutput30000 : ExponentCode := normalNode5059

theorem canonicalSound30000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30000.moment H = canonicalOutput30000.moment H :=
  canonical_of_padded canonicalInput30000 canonicalOutput30000 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30001 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput30001 : ExponentCode := normalNode4270

theorem canonicalSound30001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30001.moment H = canonicalOutput30001.moment H :=
  canonical_of_padded canonicalInput30001 canonicalOutput30001 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30002 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput30002 : ExponentCode := normalNode8853

theorem canonicalSound30002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30002.moment H = canonicalOutput30002.moment H :=
  canonical_of_padded canonicalInput30002 canonicalOutput30002 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30003 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-1, -1, 1, 1], ![0, 2, -1, -1], ![-1, 1, 2, -2]]⟩

def canonicalOutput30003 : ExponentCode := normalNode6863

theorem canonicalSound30003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30003.moment H = canonicalOutput30003.moment H :=
  canonical_of_padded canonicalInput30003 canonicalOutput30003 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation389, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30004 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-1, 0, -1, 2], ![0, 2, 0, -2], ![-1, 0, 3, -2]]⟩

def canonicalOutput30004 : ExponentCode := normalNode4079

theorem canonicalSound30004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30004.moment H = canonicalOutput30004.moment H :=
  canonical_of_padded canonicalInput30004 canonicalOutput30004 (by decide) (by decide)
    ⟨false, true, canonicalPermutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30005 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-1, 0, 2, -1], ![-1, 1, -1, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput30005 : ExponentCode := normalNode10193

theorem canonicalSound30005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30005.moment H = canonicalOutput30005.moment H :=
  canonical_of_padded canonicalInput30005 canonicalOutput30005 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30006 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![0, -1, 2, -1], ![0, 1, 1, -2], ![-2, 2, -1, 1]]⟩

def canonicalOutput30006 : ExponentCode := normalNode2494

theorem canonicalSound30006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30006.moment H = canonicalOutput30006.moment H :=
  canonical_of_padded canonicalInput30006 canonicalOutput30006 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30007 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput30007 : ExponentCode := normalNode3879

theorem canonicalSound30007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30007.moment H = canonicalOutput30007.moment H :=
  canonical_of_padded canonicalInput30007 canonicalOutput30007 (by decide) (by decide)
    ⟨false, false, canonicalPermutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30008 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 1, 0], ![0, 3, -1, -2]]⟩

def canonicalOutput30008 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3001⟩

theorem canonicalSound30008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30008.moment H = canonicalOutput30008.moment H :=
  canonical_of_padded canonicalInput30008 canonicalOutput30008 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation341, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput30009 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 3, -2, -1]]⟩

def canonicalOutput30009 : ExponentCode := normalNode5287

theorem canonicalSound30009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30009.moment H = canonicalOutput30009.moment H :=
  canonical_of_padded canonicalInput30009 canonicalOutput30009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30010 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![0, 3, -1, -2]]⟩

def canonicalOutput30010 : ExponentCode := normalNode5367

theorem canonicalSound30010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30010.moment H = canonicalOutput30010.moment H :=
  canonical_of_padded canonicalInput30010 canonicalOutput30010 (by decide) (by decide)
    ⟨false, true, canonicalPermutation93, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput30011 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![0, 2, -1, -1], ![-1, 1, 2, -2]]⟩

def canonicalOutput30011 : ExponentCode := normalNode5078

theorem canonicalSound30011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30011.moment H = canonicalOutput30011.moment H :=
  canonical_of_padded canonicalInput30011 canonicalOutput30011 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput30012 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 1, 0], ![0, 3, -1, -2]]⟩

def canonicalOutput30012 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2999⟩

theorem canonicalSound30012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30012.moment H = canonicalOutput30012.moment H :=
  canonical_of_padded canonicalInput30012 canonicalOutput30012 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation341, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput30013 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 3, -2, -1]]⟩

def canonicalOutput30013 : ExponentCode := normalNode8834

theorem canonicalSound30013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30013.moment H = canonicalOutput30013.moment H :=
  canonical_of_padded canonicalInput30013 canonicalOutput30013 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation300, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput30014 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![0, 2, -2, 0], ![-1, 1, 2, -2]]⟩

def canonicalOutput30014 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3087⟩

theorem canonicalSound30014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30014.moment H = canonicalOutput30014.moment H :=
  canonical_of_padded canonicalInput30014 canonicalOutput30014 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput30015 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![0, 2, -1, -1], ![-1, 1, 1, -1]]⟩

def canonicalOutput30015 : ExponentCode := normalNode8859

theorem canonicalSound30015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30015.moment H = canonicalOutput30015.moment H :=
  canonical_of_padded canonicalInput30015 canonicalOutput30015 (by decide) (by decide)
    ⟨false, false, canonicalPermutation70, canonicalPermutation2⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
