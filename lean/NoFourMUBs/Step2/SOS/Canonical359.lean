import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
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

def canonicalInput22976 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22976 : ExponentCode := normalNode8361

theorem canonicalSound22976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22976.moment H = canonicalOutput22976.moment H :=
  canonical_of_padded canonicalInput22976 canonicalOutput22976 (by decide) (by decide)
    ⟨false, false, canonicalPermutation181, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput22977 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22977 : ExponentCode := normalNode8067

theorem canonicalSound22977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22977.moment H = canonicalOutput22977.moment H :=
  canonical_of_padded canonicalInput22977 canonicalOutput22977 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22978 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22978 : ExponentCode := normalNode8066

theorem canonicalSound22978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22978.moment H = canonicalOutput22978.moment H :=
  canonical_of_padded canonicalInput22978 canonicalOutput22978 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22979 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22979 : ExponentCode := normalNode8067

theorem canonicalSound22979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22979.moment H = canonicalOutput22979.moment H :=
  canonical_of_padded canonicalInput22979 canonicalOutput22979 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22980 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22980 : ExponentCode := normalNode8361

theorem canonicalSound22980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22980.moment H = canonicalOutput22980.moment H :=
  canonical_of_padded canonicalInput22980 canonicalOutput22980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22981 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22981 : ExponentCode := normalNode8066

theorem canonicalSound22981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22981.moment H = canonicalOutput22981.moment H :=
  canonical_of_padded canonicalInput22981 canonicalOutput22981 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22982 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22982 : ExponentCode := normalNode8066

theorem canonicalSound22982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22982.moment H = canonicalOutput22982.moment H :=
  canonical_of_padded canonicalInput22982 canonicalOutput22982 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22983 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22983 : ExponentCode := normalNode8361

theorem canonicalSound22983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22983.moment H = canonicalOutput22983.moment H :=
  canonical_of_padded canonicalInput22983 canonicalOutput22983 (by decide) (by decide)
    ⟨false, false, canonicalPermutation181, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22984 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22984 : ExponentCode := normalNode8067

theorem canonicalSound22984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22984.moment H = canonicalOutput22984.moment H :=
  canonical_of_padded canonicalInput22984 canonicalOutput22984 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22985 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput22985 : ExponentCode := normalNode8066

theorem canonicalSound22985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22985.moment H = canonicalOutput22985.moment H :=
  canonical_of_padded canonicalInput22985 canonicalOutput22985 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22986 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22986 : ExponentCode := normalNode8361

theorem canonicalSound22986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22986.moment H = canonicalOutput22986.moment H :=
  canonical_of_padded canonicalInput22986 canonicalOutput22986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22987 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput22987 : ExponentCode := normalNode8067

theorem canonicalSound22987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22987.moment H = canonicalOutput22987.moment H :=
  canonical_of_padded canonicalInput22987 canonicalOutput22987 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22988 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22988 : ExponentCode := normalNode8067

theorem canonicalSound22988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22988.moment H = canonicalOutput22988.moment H :=
  canonical_of_padded canonicalInput22988 canonicalOutput22988 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput22989 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22989 : ExponentCode := normalNode8361

theorem canonicalSound22989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22989.moment H = canonicalOutput22989.moment H :=
  canonical_of_padded canonicalInput22989 canonicalOutput22989 (by decide) (by decide)
    ⟨false, false, canonicalPermutation181, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput22990 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22990 : ExponentCode := normalNode8066

theorem canonicalSound22990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22990.moment H = canonicalOutput22990.moment H :=
  canonical_of_padded canonicalInput22990 canonicalOutput22990 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22991 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput22991 : ExponentCode := normalNode8064

theorem canonicalSound22991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22991.moment H = canonicalOutput22991.moment H :=
  canonical_of_padded canonicalInput22991 canonicalOutput22991 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22992 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput22992 : ExponentCode := normalNode8066

theorem canonicalSound22992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22992.moment H = canonicalOutput22992.moment H :=
  canonical_of_padded canonicalInput22992 canonicalOutput22992 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22993 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput22993 : ExponentCode := normalNode8066

theorem canonicalSound22993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22993.moment H = canonicalOutput22993.moment H :=
  canonical_of_padded canonicalInput22993 canonicalOutput22993 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput22994 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput22994 : ExponentCode := normalNode8064

theorem canonicalSound22994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22994.moment H = canonicalOutput22994.moment H :=
  canonical_of_padded canonicalInput22994 canonicalOutput22994 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput22995 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput22995 : ExponentCode := normalNode8068

theorem canonicalSound22995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22995.moment H = canonicalOutput22995.moment H :=
  canonical_of_padded canonicalInput22995 canonicalOutput22995 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, canonicalPermutation221⟩ (by decide +kernel) hH

def canonicalInput22996 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput22996 : ExponentCode := normalNode8458

theorem canonicalSound22996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22996.moment H = canonicalOutput22996.moment H :=
  canonical_of_padded canonicalInput22996 canonicalOutput22996 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput22997 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput22997 : ExponentCode := normalNode8346

theorem canonicalSound22997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22997.moment H = canonicalOutput22997.moment H :=
  canonical_of_padded canonicalInput22997 canonicalOutput22997 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput22998 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22998 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound22998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22998.moment H = canonicalOutput22998.moment H :=
  canonical_of_padded canonicalInput22998 canonicalOutput22998 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput22999 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput22999 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound22999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput22999.moment H = canonicalOutput22999.moment H :=
  canonical_of_padded canonicalInput22999 canonicalOutput22999 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23000 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23000 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound23000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23000.moment H = canonicalOutput23000.moment H :=
  canonical_of_padded canonicalInput23000 canonicalOutput23000 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23001 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23001 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound23001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23001.moment H = canonicalOutput23001.moment H :=
  canonical_of_padded canonicalInput23001 canonicalOutput23001 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23002 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput23002 : ExponentCode := normalNode10685

theorem canonicalSound23002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23002.moment H = canonicalOutput23002.moment H :=
  canonical_of_padded canonicalInput23002 canonicalOutput23002 (by decide) (by decide)
    ⟨false, true, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput23003 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput23003 : ExponentCode := normalNode10452

theorem canonicalSound23003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23003.moment H = canonicalOutput23003.moment H :=
  canonical_of_padded canonicalInput23003 canonicalOutput23003 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation286, canonicalPermutation85⟩ (by decide +kernel) hH

def canonicalInput23004 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput23004 : ExponentCode := normalNode10367

theorem canonicalSound23004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23004.moment H = canonicalOutput23004.moment H :=
  canonical_of_padded canonicalInput23004 canonicalOutput23004 (by decide) (by decide)
    ⟨false, false, canonicalPermutation240, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput23005 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23005 : ExponentCode := normalNode10869

theorem canonicalSound23005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23005.moment H = canonicalOutput23005.moment H :=
  canonical_of_padded canonicalInput23005 canonicalOutput23005 (by decide) (by decide)
    ⟨false, true, canonicalPermutation138, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23006 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23006 : ExponentCode := normalNode8067

theorem canonicalSound23006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23006.moment H = canonicalOutput23006.moment H :=
  canonical_of_padded canonicalInput23006 canonicalOutput23006 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23007 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23007 : ExponentCode := normalNode8067

theorem canonicalSound23007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23007.moment H = canonicalOutput23007.moment H :=
  canonical_of_padded canonicalInput23007 canonicalOutput23007 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23008 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23008 : ExponentCode := normalNode10869

theorem canonicalSound23008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23008.moment H = canonicalOutput23008.moment H :=
  canonical_of_padded canonicalInput23008 canonicalOutput23008 (by decide) (by decide)
    ⟨false, true, canonicalPermutation108, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23009 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23009 : ExponentCode := normalNode8067

theorem canonicalSound23009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23009.moment H = canonicalOutput23009.moment H :=
  canonical_of_padded canonicalInput23009 canonicalOutput23009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23010 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23010 : ExponentCode := normalNode10453

theorem canonicalSound23010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23010.moment H = canonicalOutput23010.moment H :=
  canonical_of_padded canonicalInput23010 canonicalOutput23010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23011 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23011 : ExponentCode := normalNode10435

theorem canonicalSound23011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23011.moment H = canonicalOutput23011.moment H :=
  canonical_of_padded canonicalInput23011 canonicalOutput23011 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput23012 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23012 : ExponentCode := normalNode10435

theorem canonicalSound23012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23012.moment H = canonicalOutput23012.moment H :=
  canonical_of_padded canonicalInput23012 canonicalOutput23012 (by decide) (by decide)
    ⟨false, false, canonicalPermutation27, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput23013 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23013 : ExponentCode := normalNode10453

theorem canonicalSound23013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23013.moment H = canonicalOutput23013.moment H :=
  canonical_of_padded canonicalInput23013 canonicalOutput23013 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23014 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23014 : ExponentCode := normalNode8067

theorem canonicalSound23014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23014.moment H = canonicalOutput23014.moment H :=
  canonical_of_padded canonicalInput23014 canonicalOutput23014 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23015 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23015 : ExponentCode := normalNode8067

theorem canonicalSound23015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23015.moment H = canonicalOutput23015.moment H :=
  canonical_of_padded canonicalInput23015 canonicalOutput23015 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23016 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23016 : ExponentCode := normalNode10435

theorem canonicalSound23016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23016.moment H = canonicalOutput23016.moment H :=
  canonical_of_padded canonicalInput23016 canonicalOutput23016 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23017 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23017 : ExponentCode := normalNode10453

theorem canonicalSound23017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23017.moment H = canonicalOutput23017.moment H :=
  canonical_of_padded canonicalInput23017 canonicalOutput23017 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23018 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23018 : ExponentCode := normalNode10453

theorem canonicalSound23018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23018.moment H = canonicalOutput23018.moment H :=
  canonical_of_padded canonicalInput23018 canonicalOutput23018 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23019 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23019 : ExponentCode := normalNode10435

theorem canonicalSound23019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23019.moment H = canonicalOutput23019.moment H :=
  canonical_of_padded canonicalInput23019 canonicalOutput23019 (by decide) (by decide)
    ⟨false, false, canonicalPermutation27, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23020 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23020 : ExponentCode := normalNode8067

theorem canonicalSound23020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23020.moment H = canonicalOutput23020.moment H :=
  canonical_of_padded canonicalInput23020 canonicalOutput23020 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23021 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23021 : ExponentCode := normalNode10869

theorem canonicalSound23021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23021.moment H = canonicalOutput23021.moment H :=
  canonical_of_padded canonicalInput23021 canonicalOutput23021 (by decide) (by decide)
    ⟨false, true, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23022 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23022 : ExponentCode := normalNode8067

theorem canonicalSound23022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23022.moment H = canonicalOutput23022.moment H :=
  canonical_of_padded canonicalInput23022 canonicalOutput23022 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23023 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23023 : ExponentCode := normalNode8067

theorem canonicalSound23023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23023.moment H = canonicalOutput23023.moment H :=
  canonical_of_padded canonicalInput23023 canonicalOutput23023 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23024 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23024 : ExponentCode := normalNode10869

theorem canonicalSound23024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23024.moment H = canonicalOutput23024.moment H :=
  canonical_of_padded canonicalInput23024 canonicalOutput23024 (by decide) (by decide)
    ⟨false, true, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23025 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23025 : ExponentCode := normalNode10435

theorem canonicalSound23025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23025.moment H = canonicalOutput23025.moment H :=
  canonical_of_padded canonicalInput23025 canonicalOutput23025 (by decide) (by decide)
    ⟨false, false, canonicalPermutation61, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23026 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23026 : ExponentCode := normalNode8067

theorem canonicalSound23026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23026.moment H = canonicalOutput23026.moment H :=
  canonical_of_padded canonicalInput23026 canonicalOutput23026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23027 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23027 : ExponentCode := normalNode10453

theorem canonicalSound23027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23027.moment H = canonicalOutput23027.moment H :=
  canonical_of_padded canonicalInput23027 canonicalOutput23027 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23028 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23028 : ExponentCode := normalNode10453

theorem canonicalSound23028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23028.moment H = canonicalOutput23028.moment H :=
  canonical_of_padded canonicalInput23028 canonicalOutput23028 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23029 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23029 : ExponentCode := normalNode8067

theorem canonicalSound23029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23029.moment H = canonicalOutput23029.moment H :=
  canonical_of_padded canonicalInput23029 canonicalOutput23029 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23030 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23030 : ExponentCode := normalNode10435

theorem canonicalSound23030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23030.moment H = canonicalOutput23030.moment H :=
  canonical_of_padded canonicalInput23030 canonicalOutput23030 (by decide) (by decide)
    ⟨false, false, canonicalPermutation43, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23031 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23031 : ExponentCode := normalNode10453

theorem canonicalSound23031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23031.moment H = canonicalOutput23031.moment H :=
  canonical_of_padded canonicalInput23031 canonicalOutput23031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23032 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23032 : ExponentCode := normalNode10453

theorem canonicalSound23032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23032.moment H = canonicalOutput23032.moment H :=
  canonical_of_padded canonicalInput23032 canonicalOutput23032 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23033 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23033 : ExponentCode := normalNode10453

theorem canonicalSound23033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23033.moment H = canonicalOutput23033.moment H :=
  canonical_of_padded canonicalInput23033 canonicalOutput23033 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23034 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23034 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound23034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23034.moment H = canonicalOutput23034.moment H :=
  canonical_of_padded canonicalInput23034 canonicalOutput23034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23035 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23035 : ExponentCode := normalNode10453

theorem canonicalSound23035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23035.moment H = canonicalOutput23035.moment H :=
  canonical_of_padded canonicalInput23035 canonicalOutput23035 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23036 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23036 : ExponentCode := normalNode10453

theorem canonicalSound23036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23036.moment H = canonicalOutput23036.moment H :=
  canonical_of_padded canonicalInput23036 canonicalOutput23036 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23037 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23037 : ExponentCode := normalNode10453

theorem canonicalSound23037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23037.moment H = canonicalOutput23037.moment H :=
  canonical_of_padded canonicalInput23037 canonicalOutput23037 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23038 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23038 : ExponentCode := normalNode8067

theorem canonicalSound23038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23038.moment H = canonicalOutput23038.moment H :=
  canonical_of_padded canonicalInput23038 canonicalOutput23038 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23039 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23039 : ExponentCode := normalNode10435

theorem canonicalSound23039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23039.moment H = canonicalOutput23039.moment H :=
  canonical_of_padded canonicalInput23039 canonicalOutput23039 (by decide) (by decide)
    ⟨false, false, canonicalPermutation61, canonicalPermutation28⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
