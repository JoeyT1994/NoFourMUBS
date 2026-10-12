import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6976 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput6976 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code823

theorem canonicalSound6976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6976.moment H = canonicalOutput6976.moment H :=
  canonical_of_padded canonicalInput6976 canonicalOutput6976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation196⟩ (by decide +kernel) hH

def canonicalInput6977 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, -2, 1, 0], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput6977 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code850

theorem canonicalSound6977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6977.moment H = canonicalOutput6977.moment H :=
  canonical_of_padded canonicalInput6977 canonicalOutput6977 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6978 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput6978 : ExponentCode := normalNode8123

theorem canonicalSound6978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6978.moment H = canonicalOutput6978.moment H :=
  canonical_of_padded canonicalInput6978 canonicalOutput6978 (by decide) (by decide)
    ⟨false, true, canonicalPermutation39, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput6979 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput6979 : ExponentCode := normalNode10788

theorem canonicalSound6979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6979.moment H = canonicalOutput6979.moment H :=
  canonical_of_padded canonicalInput6979 canonicalOutput6979 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput6980 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, -1, -2, 2], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput6980 : ExponentCode := normalNode10787

theorem canonicalSound6980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6980.moment H = canonicalOutput6980.moment H :=
  canonical_of_padded canonicalInput6980 canonicalOutput6980 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput6981 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, -1, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput6981 : ExponentCode := normalNode8549

theorem canonicalSound6981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6981.moment H = canonicalOutput6981.moment H :=
  canonical_of_padded canonicalInput6981 canonicalOutput6981 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput6982 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput6982 : ExponentCode := normalNode10744

theorem canonicalSound6982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6982.moment H = canonicalOutput6982.moment H :=
  canonical_of_padded canonicalInput6982 canonicalOutput6982 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput6983 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput6983 : ExponentCode := normalNode8128

theorem canonicalSound6983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6983.moment H = canonicalOutput6983.moment H :=
  canonical_of_padded canonicalInput6983 canonicalOutput6983 (by decide) (by decide)
    ⟨false, true, canonicalPermutation39, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput6984 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput6984 : ExponentCode := normalNode8119

theorem canonicalSound6984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6984.moment H = canonicalOutput6984.moment H :=
  canonical_of_padded canonicalInput6984 canonicalOutput6984 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput6985 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput6985 : ExponentCode := normalNode10767

theorem canonicalSound6985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6985.moment H = canonicalOutput6985.moment H :=
  canonical_of_padded canonicalInput6985 canonicalOutput6985 (by decide) (by decide)
    ⟨false, true, canonicalPermutation64, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput6986 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 0, 1, -2], ![0, 1, 0, -1, 0], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput6986 : ExponentCode := normalNode8120

theorem canonicalSound6986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6986.moment H = canonicalOutput6986.moment H :=
  canonical_of_padded canonicalInput6986 canonicalOutput6986 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput6987 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput6987 : ExponentCode := normalNode10762

theorem canonicalSound6987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6987.moment H = canonicalOutput6987.moment H :=
  canonical_of_padded canonicalInput6987 canonicalOutput6987 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput6988 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 1, -2, 0], ![1, 1, -2, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput6988 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code829

theorem canonicalSound6988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6988.moment H = canonicalOutput6988.moment H :=
  canonical_of_padded canonicalInput6988 canonicalOutput6988 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6989 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 1, -2, 0], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput6989 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code853

theorem canonicalSound6989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6989.moment H = canonicalOutput6989.moment H :=
  canonical_of_padded canonicalInput6989 canonicalOutput6989 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6990 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, -2, 1, 0], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput6990 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code829

theorem canonicalSound6990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6990.moment H = canonicalOutput6990.moment H :=
  canonical_of_padded canonicalInput6990 canonicalOutput6990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput6991 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, -1, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput6991 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code367

theorem canonicalSound6991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6991.moment H = canonicalOutput6991.moment H :=
  canonical_of_padded canonicalInput6991 canonicalOutput6991 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput6992 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, -1, 1, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput6992 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code523

theorem canonicalSound6992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6992.moment H = canonicalOutput6992.moment H :=
  canonical_of_padded canonicalInput6992 canonicalOutput6992 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput6993 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput6993 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code828

theorem canonicalSound6993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6993.moment H = canonicalOutput6993.moment H :=
  canonical_of_padded canonicalInput6993 canonicalOutput6993 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput6994 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 2, -2, 1, -1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput6994 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code860

theorem canonicalSound6994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6994.moment H = canonicalOutput6994.moment H :=
  canonical_of_padded canonicalInput6994 canonicalOutput6994 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6995 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput6995 : ExponentCode := normalNode10759

theorem canonicalSound6995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6995.moment H = canonicalOutput6995.moment H :=
  canonical_of_padded canonicalInput6995 canonicalOutput6995 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput6996 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![0, 2, 0, -2, 0], ![1, 0, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput6996 : ExponentCode := normalNode8134

theorem canonicalSound6996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6996.moment H = canonicalOutput6996.moment H :=
  canonical_of_padded canonicalInput6996 canonicalOutput6996 (by decide) (by decide)
    ⟨false, true, canonicalPermutation41, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput6997 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![1, 0, -2, 1, 0], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput6997 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code853

theorem canonicalSound6997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6997.moment H = canonicalOutput6997.moment H :=
  canonical_of_padded canonicalInput6997 canonicalOutput6997 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6998 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![1, 0, 1, 1, -3], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput6998 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code854

theorem canonicalSound6998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6998.moment H = canonicalOutput6998.moment H :=
  canonical_of_padded canonicalInput6998 canonicalOutput6998 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6999 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![1, 0, 2, -2, -1], ![1, 2, -3, 1, -1]]⟩

def canonicalOutput6999 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code851

theorem canonicalSound6999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6999.moment H = canonicalOutput6999.moment H :=
  canonical_of_padded canonicalInput6999 canonicalOutput6999 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7000 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![1, 1, -3, 1, 0], ![1, 1, 2, -2, -2]]⟩

def canonicalOutput7000 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code942

theorem canonicalSound7000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7000.moment H = canonicalOutput7000.moment H :=
  canonical_of_padded canonicalInput7000 canonicalOutput7000 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7001 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![1, 1, -2, -2, 2], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput7001 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code947

theorem canonicalSound7001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7001.moment H = canonicalOutput7001.moment H :=
  canonical_of_padded canonicalInput7001 canonicalOutput7001 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7002 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![1, 1, -2, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput7002 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound7002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7002.moment H = canonicalOutput7002.moment H :=
  canonical_of_padded canonicalInput7002 canonicalOutput7002 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7003 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 0, 1], ![2, 0, 1, -3, 0], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput7003 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code858

theorem canonicalSound7003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7003.moment H = canonicalOutput7003.moment H :=
  canonical_of_padded canonicalInput7003 canonicalOutput7003 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7004 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 1, 0], ![0, 1, -2, 0, 1], ![0, 1, 1, 0, -2], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput7004 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code823

theorem canonicalSound7004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7004.moment H = canonicalOutput7004.moment H :=
  canonical_of_padded canonicalInput7004 canonicalOutput7004 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput7005 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 1, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput7005 : ExponentCode := normalNode8113

theorem canonicalSound7005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7005.moment H = canonicalOutput7005.moment H :=
  canonical_of_padded canonicalInput7005 canonicalOutput7005 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, canonicalPermutation26⟩ (by decide +kernel) hH

def canonicalInput7006 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput7006 : ExponentCode := normalNode8119

theorem canonicalSound7006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7006.moment H = canonicalOutput7006.moment H :=
  canonical_of_padded canonicalInput7006 canonicalOutput7006 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput7007 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 1, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput7007 : ExponentCode := normalNode8128

theorem canonicalSound7007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7007.moment H = canonicalOutput7007.moment H :=
  canonical_of_padded canonicalInput7007 canonicalOutput7007 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput7008 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 2, -1, 1], ![1, 0, -1, 2, -2], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput7008 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code938

theorem canonicalSound7008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7008.moment H = canonicalOutput7008.moment H :=
  canonical_of_padded canonicalInput7008 canonicalOutput7008 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7009 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 2, -1, 1], ![1, 1, -2, -1, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput7009 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code952

theorem canonicalSound7009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7009.moment H = canonicalOutput7009.moment H :=
  canonical_of_padded canonicalInput7009 canonicalOutput7009 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7010 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 2, 0, 0], ![0, 1, 0, -2, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput7010 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code857

theorem canonicalSound7010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7010.moment H = canonicalOutput7010.moment H :=
  canonical_of_padded canonicalInput7010 canonicalOutput7010 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7011 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 2, 0, 0], ![0, 2, -2, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput7011 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code821

theorem canonicalSound7011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7011.moment H = canonicalOutput7011.moment H :=
  canonical_of_padded canonicalInput7011 canonicalOutput7011 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, canonicalPermutation78⟩ (by decide +kernel) hH

def canonicalInput7012 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 2, 0, 0], ![0, 2, -1, 0, -1], ![1, 0, -1, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput7012 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code360

theorem canonicalSound7012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7012.moment H = canonicalOutput7012.moment H :=
  canonical_of_padded canonicalInput7012 canonicalOutput7012 (by decide) (by decide)
    ⟨false, false, canonicalPermutation53, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput7013 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 2, 0, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput7013 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code822

theorem canonicalSound7013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7013.moment H = canonicalOutput7013.moment H :=
  canonical_of_padded canonicalInput7013 canonicalOutput7013 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, canonicalPermutation78⟩ (by decide +kernel) hH

def canonicalInput7014 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 2, 0, 0], ![1, 0, 0, -2, 1], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput7014 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code848

theorem canonicalSound7014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7014.moment H = canonicalOutput7014.moment H :=
  canonical_of_padded canonicalInput7014 canonicalOutput7014 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7015 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 2, 0, 0], ![1, 1, -1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput7015 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code943

theorem canonicalSound7015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7015.moment H = canonicalOutput7015.moment H :=
  canonical_of_padded canonicalInput7015 canonicalOutput7015 (by decide) (by decide)
    ⟨true, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7016 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -2, 2, 0, 0], ![1, 1, 0, -3, 1], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput7016 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code875

theorem canonicalSound7016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7016.moment H = canonicalOutput7016.moment H :=
  canonical_of_padded canonicalInput7016 canonicalOutput7016 (by decide) (by decide)
    ⟨true, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7017 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, -1, 3], ![1, -1, 2, -1, -1], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput7017 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code962

theorem canonicalSound7017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7017.moment H = canonicalOutput7017.moment H :=
  canonical_of_padded canonicalInput7017 canonicalOutput7017 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7018 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![1, 0, -1, 1, -1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput7018 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code379

theorem canonicalSound7018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7018.moment H = canonicalOutput7018.moment H :=
  canonical_of_padded canonicalInput7018 canonicalOutput7018 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput7019 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![1, 0, 0, -2, 1], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput7019 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound7019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7019.moment H = canonicalOutput7019.moment H :=
  canonical_of_padded canonicalInput7019 canonicalOutput7019 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput7020 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![1, 1, -1, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput7020 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code362

theorem canonicalSound7020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7020.moment H = canonicalOutput7020.moment H :=
  canonical_of_padded canonicalInput7020 canonicalOutput7020 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation168⟩ (by decide +kernel) hH

def canonicalInput7021 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![1, 1, 0, -2, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput7021 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code362

theorem canonicalSound7021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7021.moment H = canonicalOutput7021.moment H :=
  canonical_of_padded canonicalInput7021 canonicalOutput7021 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput7022 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 0, 0, 0], ![0, 1, 1, 1, -3], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput7022 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound7022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7022.moment H = canonicalOutput7022.moment H :=
  canonical_of_padded canonicalInput7022 canonicalOutput7022 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput7023 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 0, 0, 0], ![1, 0, 0, -2, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput7023 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1580⟩

theorem canonicalSound7023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7023.moment H = canonicalOutput7023.moment H :=
  canonical_of_padded canonicalInput7023 canonicalOutput7023 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput7024 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 2, 0, -2], ![1, 0, -1, 1, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput7024 : ExponentCode := normalNode8188

theorem canonicalSound7024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7024.moment H = canonicalOutput7024.moment H :=
  canonical_of_padded canonicalInput7024 canonicalOutput7024 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput7025 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 0, 2, 0, -2], ![1, 0, 0, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput7025 : ExponentCode := normalNode7581

theorem canonicalSound7025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7025.moment H = canonicalOutput7025.moment H :=
  canonical_of_padded canonicalInput7025 canonicalOutput7025 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput7026 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 0, 2, 1, -3], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput7026 : ExponentCode := normalNode8262

theorem canonicalSound7026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7026.moment H = canonicalOutput7026.moment H :=
  canonical_of_padded canonicalInput7026 canonicalOutput7026 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput7027 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 1, 1, -3], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput7027 : ExponentCode := normalNode8597

theorem canonicalSound7027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7027.moment H = canonicalOutput7027.moment H :=
  canonical_of_padded canonicalInput7027 canonicalOutput7027 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput7028 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![1, -1, 1, -2, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput7028 : ExponentCode := normalNode8618

theorem canonicalSound7028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7028.moment H = canonicalOutput7028.moment H :=
  canonical_of_padded canonicalInput7028 canonicalOutput7028 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput7029 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1], ![1, 0, 2, 1, -4]]⟩

def canonicalOutput7029 : ExponentCode := normalNode8244

theorem canonicalSound7029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7029.moment H = canonicalOutput7029.moment H :=
  canonical_of_padded canonicalInput7029 canonicalOutput7029 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput7030 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput7030 : ExponentCode := normalNode8252

theorem canonicalSound7030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7030.moment H = canonicalOutput7030.moment H :=
  canonical_of_padded canonicalInput7030 canonicalOutput7030 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput7031 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput7031 : ExponentCode := normalNode8248

theorem canonicalSound7031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7031.moment H = canonicalOutput7031.moment H :=
  canonical_of_padded canonicalInput7031 canonicalOutput7031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput7032 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 0, 2], ![1, -1, 2, -2, 0], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput7032 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound7032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7032.moment H = canonicalOutput7032.moment H :=
  canonical_of_padded canonicalInput7032 canonicalOutput7032 (by decide) (by decide)
    ⟨true, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7033 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput7033 : ExponentCode := normalNode8620

theorem canonicalSound7033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7033.moment H = canonicalOutput7033.moment H :=
  canonical_of_padded canonicalInput7033 canonicalOutput7033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput7034 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 1, 1], ![1, -1, 2, -3, 1], ![1, 2, -1, 1, -3]]⟩

def canonicalOutput7034 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code963

theorem canonicalSound7034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7034.moment H = canonicalOutput7034.moment H :=
  canonical_of_padded canonicalInput7034 canonicalOutput7034 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7035 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 1, 1], ![1, -1, 2, -2, 0], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput7035 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code964

theorem canonicalSound7035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7035.moment H = canonicalOutput7035.moment H :=
  canonical_of_padded canonicalInput7035 canonicalOutput7035 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7036 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 1, 1], ![0, -1, -1, 1, 1], ![1, -1, 2, -1, -1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput7036 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code965

theorem canonicalSound7036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7036.moment H = canonicalOutput7036.moment H :=
  canonical_of_padded canonicalInput7036 canonicalOutput7036 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7037 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![1, 0, -2, 1, 0], ![1, 2, 0, 0, -3]]⟩

def canonicalOutput7037 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code344

theorem canonicalSound7037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7037.moment H = canonicalOutput7037.moment H :=
  canonical_of_padded canonicalInput7037 canonicalOutput7037 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput7038 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![1, 0, 0, 1, -2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput7038 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code373

theorem canonicalSound7038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7038.moment H = canonicalOutput7038.moment H :=
  canonical_of_padded canonicalInput7038 canonicalOutput7038 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput7039 : ExponentCode := ⟨5, 5, ![![-2, 0, 0, 1, 1], ![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![1, 1, -2, 0, 0], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput7039 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code346

theorem canonicalSound7039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7039.moment H = canonicalOutput7039.moment H :=
  canonical_of_padded canonicalInput7039 canonicalOutput7039 (by decide) (by decide)
    ⟨true, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
