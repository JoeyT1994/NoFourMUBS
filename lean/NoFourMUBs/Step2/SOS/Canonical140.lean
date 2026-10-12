import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8960 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, -3, 4], ![0, 1, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput8960 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1018

theorem canonicalSound8960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8960.moment H = canonicalOutput8960.moment H :=
  canonical_of_padded canonicalInput8960 canonicalOutput8960 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8961 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, -3, 4], ![0, 1, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput8961 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1021

theorem canonicalSound8961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8961.moment H = canonicalOutput8961.moment H :=
  canonical_of_padded canonicalInput8961 canonicalOutput8961 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8962 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![1, -2, -3, 4], ![1, 2, 2, -5]]⟩

def canonicalOutput8962 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1222

theorem canonicalSound8962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8962.moment H = canonicalOutput8962.moment H :=
  canonical_of_padded canonicalInput8962 canonicalOutput8962 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8963 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, -2, 3], ![0, 1, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput8963 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound8963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8963.moment H = canonicalOutput8963.moment H :=
  canonical_of_padded canonicalInput8963 canonicalOutput8963 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8964 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, -2, 3], ![0, 2, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput8964 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code924

theorem canonicalSound8964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8964.moment H = canonicalOutput8964.moment H :=
  canonical_of_padded canonicalInput8964 canonicalOutput8964 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput8965 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, -1, 2], ![0, -1, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput8965 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code634

theorem canonicalSound8965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8965.moment H = canonicalOutput8965.moment H :=
  canonical_of_padded canonicalInput8965 canonicalOutput8965 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8966 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![1, -2, -1, 2], ![0, 0, 2, -2], ![0, 3, -2, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput8966 : ExponentCode := normalNode4440

theorem canonicalSound8966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8966.moment H = canonicalOutput8966.moment H :=
  canonical_of_padded canonicalInput8966 canonicalOutput8966 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8967 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![1, -2, -1, 2], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput8967 : ExponentCode := normalNode4537

theorem canonicalSound8967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8967.moment H = canonicalOutput8967.moment H :=
  canonical_of_padded canonicalInput8967 canonicalOutput8967 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8968 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, -1, 2], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput8968 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound8968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8968.moment H = canonicalOutput8968.moment H :=
  canonical_of_padded canonicalInput8968 canonicalOutput8968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8969 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, -1, 2], ![0, 1, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput8969 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound8969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8969.moment H = canonicalOutput8969.moment H :=
  canonical_of_padded canonicalInput8969 canonicalOutput8969 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8970 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, -1, 2], ![0, 1, 3, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput8970 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code995

theorem canonicalSound8970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8970.moment H = canonicalOutput8970.moment H :=
  canonical_of_padded canonicalInput8970 canonicalOutput8970 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8971 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, -1, 2], ![0, 2, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput8971 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound8971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8971.moment H = canonicalOutput8971.moment H :=
  canonical_of_padded canonicalInput8971 canonicalOutput8971 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8972 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, -1, 2], ![0, 3, -2, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput8972 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1029

theorem canonicalSound8972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8972.moment H = canonicalOutput8972.moment H :=
  canonical_of_padded canonicalInput8972 canonicalOutput8972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8973 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, 0, 1], ![0, -1, 2, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput8973 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node495⟩

theorem canonicalSound8973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8973.moment H = canonicalOutput8973.moment H :=
  canonical_of_padded canonicalInput8973 canonicalOutput8973 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8974 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, 0, 1], ![0, 1, -3, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput8974 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node615⟩

theorem canonicalSound8974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8974.moment H = canonicalOutput8974.moment H :=
  canonical_of_padded canonicalInput8974 canonicalOutput8974 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8975 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, 0, 1], ![0, 1, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8975 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node619⟩

theorem canonicalSound8975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8975.moment H = canonicalOutput8975.moment H :=
  canonical_of_padded canonicalInput8975 canonicalOutput8975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8976 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, 0, 1], ![0, 3, -3, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput8976 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound8976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8976.moment H = canonicalOutput8976.moment H :=
  canonical_of_padded canonicalInput8976 canonicalOutput8976 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8977 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, 1, 0], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput8977 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound8977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8977.moment H = canonicalOutput8977.moment H :=
  canonical_of_padded canonicalInput8977 canonicalOutput8977 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8978 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -2, 1, 0], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8978 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node620⟩

theorem canonicalSound8978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8978.moment H = canonicalOutput8978.moment H :=
  canonical_of_padded canonicalInput8978 canonicalOutput8978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8979 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![1, -1, -3, 3], ![0, 0, 3, -3], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput8979 : ExponentCode := normalNode4423

theorem canonicalSound8979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8979.moment H = canonicalOutput8979.moment H :=
  canonical_of_padded canonicalInput8979 canonicalOutput8979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8980 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -1, -3, 3], ![0, 2, -1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput8980 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1025

theorem canonicalSound8980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8980.moment H = canonicalOutput8980.moment H :=
  canonical_of_padded canonicalInput8980 canonicalOutput8980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8981 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -1, -2, 2], ![0, 2, -1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput8981 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1026

theorem canonicalSound8981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8981.moment H = canonicalOutput8981.moment H :=
  canonical_of_padded canonicalInput8981 canonicalOutput8981 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8982 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -1, -2, 2], ![0, 3, -1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput8982 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1029

theorem canonicalSound8982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8982.moment H = canonicalOutput8982.moment H :=
  canonical_of_padded canonicalInput8982 canonicalOutput8982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8983 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, -1, -1, 1], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput8983 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node621⟩

theorem canonicalSound8983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8983.moment H = canonicalOutput8983.moment H :=
  canonical_of_padded canonicalInput8983 canonicalOutput8983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8984 : ExponentCode := ⟨6, 4, ![![-2, 0, 1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 2, -1, -1], ![0, 0, -3, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput8984 : ExponentCode := normalNode4417

theorem canonicalSound8984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8984.moment H = canonicalOutput8984.moment H :=
  canonical_of_padded canonicalInput8984 canonicalOutput8984 (by decide) (by decide)
    ⟨false, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8985 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 0, -4, 3], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput8985 : ExponentCode := normalNode9945

theorem canonicalSound8985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8985.moment H = canonicalOutput8985.moment H :=
  canonical_of_padded canonicalInput8985 canonicalOutput8985 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8986 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 0, -4, 3], ![0, 1, 3, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput8986 : ExponentCode := normalNode9729

theorem canonicalSound8986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8986.moment H = canonicalOutput8986.moment H :=
  canonical_of_padded canonicalInput8986 canonicalOutput8986 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8987 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 0, -3, 2], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput8987 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1249⟩

theorem canonicalSound8987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8987.moment H = canonicalOutput8987.moment H :=
  canonical_of_padded canonicalInput8987 canonicalOutput8987 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8988 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 0, -3, 2], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput8988 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩

theorem canonicalSound8988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8988.moment H = canonicalOutput8988.moment H :=
  canonical_of_padded canonicalInput8988 canonicalOutput8988 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8989 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 0, -3, 2], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput8989 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code895

theorem canonicalSound8989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8989.moment H = canonicalOutput8989.moment H :=
  canonical_of_padded canonicalInput8989 canonicalOutput8989 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8990 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 0, -3, 2], ![0, 2, 1, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput8990 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound8990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8990.moment H = canonicalOutput8990.moment H :=
  canonical_of_padded canonicalInput8990 canonicalOutput8990 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8991 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 0, 1, -2], ![0, 1, 1, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput8991 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1239⟩

theorem canonicalSound8991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8991.moment H = canonicalOutput8991.moment H :=
  canonical_of_padded canonicalInput8991 canonicalOutput8991 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8992 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 1, -4, 2], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput8992 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node618⟩

theorem canonicalSound8992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8992.moment H = canonicalOutput8992.moment H :=
  canonical_of_padded canonicalInput8992 canonicalOutput8992 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8993 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 1, -3, 1], ![0, 1, 1, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput8993 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node619⟩

theorem canonicalSound8993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8993.moment H = canonicalOutput8993.moment H :=
  canonical_of_padded canonicalInput8993 canonicalOutput8993 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8994 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 1, -3, 1], ![0, 2, 0, -2], ![1, -3, 2, 0]]⟩

def canonicalOutput8994 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound8994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8994.moment H = canonicalOutput8994.moment H :=
  canonical_of_padded canonicalInput8994 canonicalOutput8994 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8995 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 1, -3, 1], ![0, 2, 1, -3], ![1, -3, 1, 1]]⟩

def canonicalOutput8995 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1024

theorem canonicalSound8995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8995.moment H = canonicalOutput8995.moment H :=
  canonical_of_padded canonicalInput8995 canonicalOutput8995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8996 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 1, -3, 1], ![0, 2, 2, -4], ![1, -3, 0, 2]]⟩

def canonicalOutput8996 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1028

theorem canonicalSound8996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8996.moment H = canonicalOutput8996.moment H :=
  canonical_of_padded canonicalInput8996 canonicalOutput8996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8997 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 1, -2, 0], ![0, 1, 2, -3], ![1, -2, -1, 2]]⟩

def canonicalOutput8997 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound8997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8997.moment H = canonicalOutput8997.moment H :=
  canonical_of_padded canonicalInput8997 canonicalOutput8997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8998 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 1, 1, -3], ![0, 1, 1, -2], ![1, -2, -3, 4]]⟩

def canonicalOutput8998 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1018

theorem canonicalSound8998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8998.moment H = canonicalOutput8998.moment H :=
  canonical_of_padded canonicalInput8998 canonicalOutput8998 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8999 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 1, 1, -3], ![0, 2, -1, -1], ![1, -3, -1, 3]]⟩

def canonicalOutput8999 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node604⟩

theorem canonicalSound8999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8999.moment H = canonicalOutput8999.moment H :=
  canonical_of_padded canonicalInput8999 canonicalOutput8999 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9000 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 1, 2, -4], ![0, 2, -3, 1], ![1, -3, 0, 2]]⟩

def canonicalOutput9000 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1023

theorem canonicalSound9000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9000.moment H = canonicalOutput9000.moment H :=
  canonical_of_padded canonicalInput9000 canonicalOutput9000 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9001 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![1, 1, 2, -4], ![0, 2, -2, 0], ![1, -3, -1, 3]]⟩

def canonicalOutput9001 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code785

theorem canonicalSound9001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9001.moment H = canonicalOutput9001.moment H :=
  canonical_of_padded canonicalInput9001 canonicalOutput9001 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9002 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![1, 2, -4, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput9002 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound9002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9002.moment H = canonicalOutput9002.moment H :=
  canonical_of_padded canonicalInput9002 canonicalOutput9002 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9003 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![1, 2, 1, -4], ![1, -2, -2, 3]]⟩

def canonicalOutput9003 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node225⟩

theorem canonicalSound9003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9003.moment H = canonicalOutput9003.moment H :=
  canonical_of_padded canonicalInput9003 canonicalOutput9003 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9004 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![1, 3, -4, 0], ![1, -3, 3, -1]]⟩

def canonicalOutput9004 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node221⟩

theorem canonicalSound9004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9004.moment H = canonicalOutput9004.moment H :=
  canonical_of_padded canonicalInput9004 canonicalOutput9004 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9005 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![1, 3, -3, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput9005 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound9005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9005.moment H = canonicalOutput9005.moment H :=
  canonical_of_padded canonicalInput9005 canonicalOutput9005 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9006 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![2, -4, 1, 1], ![0, 4, -2, -2]]⟩

def canonicalOutput9006 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node218⟩

theorem canonicalSound9006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9006.moment H = canonicalOutput9006.moment H :=
  canonical_of_padded canonicalInput9006 canonicalOutput9006 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9007 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![2, -3, 1, 0], ![0, 3, -2, -1]]⟩

def canonicalOutput9007 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node215⟩

theorem canonicalSound9007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9007.moment H = canonicalOutput9007.moment H :=
  canonical_of_padded canonicalInput9007 canonicalOutput9007 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9008 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, -1, 0, 1, 2], ![1, 2, -2, -1, 0], ![3, -1, 1, -1, -2]]⟩

def canonicalOutput9008 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code149

theorem canonicalSound9008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9008.moment H = canonicalOutput9008.moment H :=
  canonical_of_padded canonicalInput9008 canonicalOutput9008 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9009 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, -1, 0, 1, 2], ![1, 2, -2, 0, -1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput9009 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code148

theorem canonicalSound9009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9009.moment H = canonicalOutput9009.moment H :=
  canonical_of_padded canonicalInput9009 canonicalOutput9009 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9010 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 0, -1, 1, 2], ![1, -2, 1, 0, 0], ![3, 2, -1, -2, -2]]⟩

def canonicalOutput9010 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code904

theorem canonicalSound9010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9010.moment H = canonicalOutput9010.moment H :=
  canonical_of_padded canonicalInput9010 canonicalOutput9010 (by decide) (by decide)
    ⟨true, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9011 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 1, -1, 0, 2], ![1, -2, 1, 1, -1], ![3, 1, -1, -2, -1]]⟩

def canonicalOutput9011 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code172

theorem canonicalSound9011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9011.moment H = canonicalOutput9011.moment H :=
  canonical_of_padded canonicalInput9011 canonicalOutput9011 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9012 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 1, -1, 0, 2], ![1, 1, 1, -2, -1], ![3, -2, -1, 1, -1]]⟩

def canonicalOutput9012 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code178

theorem canonicalSound9012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9012.moment H = canonicalOutput9012.moment H :=
  canonical_of_padded canonicalInput9012 canonicalOutput9012 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9013 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 1, -1, 0, 2], ![2, -2, -1, 1, 0], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput9013 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code215

theorem canonicalSound9013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9013.moment H = canonicalOutput9013.moment H :=
  canonical_of_padded canonicalInput9013 canonicalOutput9013 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9014 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 1, -1, 1, 1], ![1, -2, 1, -1, 1], ![3, 1, -1, -1, -2]]⟩

def canonicalOutput9014 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code168

theorem canonicalSound9014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9014.moment H = canonicalOutput9014.moment H :=
  canonical_of_padded canonicalInput9014 canonicalOutput9014 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9015 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 1, -1, 1, 1], ![2, -2, -1, 0, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput9015 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code213

theorem canonicalSound9015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9015.moment H = canonicalOutput9015.moment H :=
  canonical_of_padded canonicalInput9015 canonicalOutput9015 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9016 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 1, 0, 1, 0], ![1, -2, 1, -1, 1], ![3, 1, -2, -1, -1]]⟩

def canonicalOutput9016 : ExponentCode := normalNode657

theorem canonicalSound9016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9016.moment H = canonicalOutput9016.moment H :=
  canonical_of_padded canonicalInput9016 canonicalOutput9016 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9017 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 1, 0, 1, 0], ![1, 1, -2, -1, 1], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput9017 : ExponentCode := normalNode657

theorem canonicalSound9017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9017.moment H = canonicalOutput9017.moment H :=
  canonical_of_padded canonicalInput9017 canonicalOutput9017 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9018 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 1, 0, 1, 0], ![2, -2, 1, 0, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput9018 : ExponentCode := normalNode869

theorem canonicalSound9018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9018.moment H = canonicalOutput9018.moment H :=
  canonical_of_padded canonicalInput9018 canonicalOutput9018 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9019 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 2, -1, 0, 1], ![1, -1, 1, -2, 1], ![3, -1, -1, 1, -2]]⟩

def canonicalOutput9019 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code178

theorem canonicalSound9019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9019.moment H = canonicalOutput9019.moment H :=
  canonical_of_padded canonicalInput9019 canonicalOutput9019 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9020 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 2, -1, 0, 1], ![2, 0, -1, -2, 1], ![2, -2, 1, 1, -2]]⟩

def canonicalOutput9020 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code217

theorem canonicalSound9020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9020.moment H = canonicalOutput9020.moment H :=
  canonical_of_padded canonicalInput9020 canonicalOutput9020 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9021 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 2, 0, 0, 0], ![1, -1, -2, 1, 1], ![3, -1, 1, -2, -1]]⟩

def canonicalOutput9021 : ExponentCode := normalNode655

theorem canonicalSound9021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9021.moment H = canonicalOutput9021.moment H :=
  canonical_of_padded canonicalInput9021 canonicalOutput9021 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9022 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-2, 2, 0, 0, 0], ![2, 0, -2, 1, -1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput9022 : ExponentCode := normalNode863

theorem canonicalSound9022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9022.moment H = canonicalOutput9022.moment H :=
  canonical_of_padded canonicalInput9022 canonicalOutput9022 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9023 : ExponentCode := ⟨4, 5, ![![-2, 0, 1, 1, 0], ![-1, -2, 0, 1, 2], ![1, 0, 1, -2, 0], ![2, 2, -2, 0, -2]]⟩

def canonicalOutput9023 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1119

theorem canonicalSound9023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9023.moment H = canonicalOutput9023.moment H :=
  canonical_of_padded canonicalInput9023 canonicalOutput9023 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
