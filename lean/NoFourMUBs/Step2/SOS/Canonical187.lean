import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11968 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, -1, 3, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput11968 : ExponentCode := normalNode5844

theorem canonicalSound11968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11968.moment H = canonicalOutput11968.moment H :=
  canonical_of_padded canonicalInput11968 canonicalOutput11968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11969 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, -1, 3, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput11969 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound11969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11969.moment H = canonicalOutput11969.moment H :=
  canonical_of_padded canonicalInput11969 canonicalOutput11969 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11970 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, -1, 4, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput11970 : ExponentCode := normalNode5839

theorem canonicalSound11970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11970.moment H = canonicalOutput11970.moment H :=
  canonical_of_padded canonicalInput11970 canonicalOutput11970 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11971 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput11971 : ExponentCode := normalNode5858

theorem canonicalSound11971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11971.moment H = canonicalOutput11971.moment H :=
  canonical_of_padded canonicalInput11971 canonicalOutput11971 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11972 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11972 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1836⟩

theorem canonicalSound11972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11972.moment H = canonicalOutput11972.moment H :=
  canonical_of_padded canonicalInput11972 canonicalOutput11972 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11973 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput11973 : ExponentCode := normalNode5851

theorem canonicalSound11973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11973.moment H = canonicalOutput11973.moment H :=
  canonical_of_padded canonicalInput11973 canonicalOutput11973 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11974 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11974 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound11974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11974.moment H = canonicalOutput11974.moment H :=
  canonical_of_padded canonicalInput11974 canonicalOutput11974 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11975 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput11975 : ExponentCode := normalNode5852

theorem canonicalSound11975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11975.moment H = canonicalOutput11975.moment H :=
  canonical_of_padded canonicalInput11975 canonicalOutput11975 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11976 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, 0, 2, -2], ![2, -1, 0, -1]]⟩

def canonicalOutput11976 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node521⟩

theorem canonicalSound11976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11976.moment H = canonicalOutput11976.moment H :=
  canonical_of_padded canonicalInput11976 canonicalOutput11976 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11977 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, 0, 3, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput11977 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound11977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11977.moment H = canonicalOutput11977.moment H :=
  canonical_of_padded canonicalInput11977 canonicalOutput11977 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11978 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput11978 : ExponentCode := normalNode5855

theorem canonicalSound11978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11978.moment H = canonicalOutput11978.moment H :=
  canonical_of_padded canonicalInput11978 canonicalOutput11978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11979 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![0, 0, 4, -4], ![2, -1, -2, 1]]⟩

def canonicalOutput11979 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1133

theorem canonicalSound11979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11979.moment H = canonicalOutput11979.moment H :=
  canonical_of_padded canonicalInput11979 canonicalOutput11979 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11980 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput11980 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1276⟩

theorem canonicalSound11980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11980.moment H = canonicalOutput11980.moment H :=
  canonical_of_padded canonicalInput11980 canonicalOutput11980 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11981 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![1, -1, 4, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput11981 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code290

theorem canonicalSound11981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11981.moment H = canonicalOutput11981.moment H :=
  canonical_of_padded canonicalInput11981 canonicalOutput11981 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11982 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![1, 0, -2, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput11982 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code290

theorem canonicalSound11982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11982.moment H = canonicalOutput11982.moment H :=
  canonical_of_padded canonicalInput11982 canonicalOutput11982 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11983 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput11983 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node947⟩

theorem canonicalSound11983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11983.moment H = canonicalOutput11983.moment H :=
  canonical_of_padded canonicalInput11983 canonicalOutput11983 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput11984 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![1, 0, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput11984 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound11984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11984.moment H = canonicalOutput11984.moment H :=
  canonical_of_padded canonicalInput11984 canonicalOutput11984 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11985 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, -1, 2], ![1, 0, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput11985 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩

theorem canonicalSound11985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11985.moment H = canonicalOutput11985.moment H :=
  canonical_of_padded canonicalInput11985 canonicalOutput11985 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11986 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 0, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput11986 : ExponentCode := normalNode5836

theorem canonicalSound11986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11986.moment H = canonicalOutput11986.moment H :=
  canonical_of_padded canonicalInput11986 canonicalOutput11986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11987 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 0, 1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11987 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound11987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11987.moment H = canonicalOutput11987.moment H :=
  canonical_of_padded canonicalInput11987 canonicalOutput11987 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11988 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11988 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound11988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11988.moment H = canonicalOutput11988.moment H :=
  canonical_of_padded canonicalInput11988 canonicalOutput11988 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11989 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput11989 : ExponentCode := normalNode5866

theorem canonicalSound11989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11989.moment H = canonicalOutput11989.moment H :=
  canonical_of_padded canonicalInput11989 canonicalOutput11989 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11990 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11990 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound11990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11990.moment H = canonicalOutput11990.moment H :=
  canonical_of_padded canonicalInput11990 canonicalOutput11990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11991 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 0, 1], ![1, -1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput11991 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node758⟩

theorem canonicalSound11991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11991.moment H = canonicalOutput11991.moment H :=
  canonical_of_padded canonicalInput11991 canonicalOutput11991 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11992 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 0, 1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput11992 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound11992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11992.moment H = canonicalOutput11992.moment H :=
  canonical_of_padded canonicalInput11992 canonicalOutput11992 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11993 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 0, 1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput11993 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1247⟩

theorem canonicalSound11993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11993.moment H = canonicalOutput11993.moment H :=
  canonical_of_padded canonicalInput11993 canonicalOutput11993 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11994 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput11994 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node947⟩

theorem canonicalSound11994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11994.moment H = canonicalOutput11994.moment H :=
  canonical_of_padded canonicalInput11994 canonicalOutput11994 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11995 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11995 : ExponentCode := normalNode5840

theorem canonicalSound11995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11995.moment H = canonicalOutput11995.moment H :=
  canonical_of_padded canonicalInput11995 canonicalOutput11995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11996 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 1, 0], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput11996 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound11996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11996.moment H = canonicalOutput11996.moment H :=
  canonical_of_padded canonicalInput11996 canonicalOutput11996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput11997 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 1, 0], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput11997 : ExponentCode := normalNode5873

theorem canonicalSound11997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11997.moment H = canonicalOutput11997.moment H :=
  canonical_of_padded canonicalInput11997 canonicalOutput11997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11998 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11998 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound11998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11998.moment H = canonicalOutput11998.moment H :=
  canonical_of_padded canonicalInput11998 canonicalOutput11998 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput11999 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput11999 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1738⟩

theorem canonicalSound11999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11999.moment H = canonicalOutput11999.moment H :=
  canonical_of_padded canonicalInput11999 canonicalOutput11999 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput12000 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 1, 0], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12000 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound12000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12000.moment H = canonicalOutput12000.moment H :=
  canonical_of_padded canonicalInput12000 canonicalOutput12000 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput12001 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 2, -1], ![0, 0, -2, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput12001 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node683⟩

theorem canonicalSound12001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12001.moment H = canonicalOutput12001.moment H :=
  canonical_of_padded canonicalInput12001 canonicalOutput12001 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12002 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 2, -1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12002 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound12002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12002.moment H = canonicalOutput12002.moment H :=
  canonical_of_padded canonicalInput12002 canonicalOutput12002 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput12003 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 2, -1], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput12003 : ExponentCode := normalNode5881

theorem canonicalSound12003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12003.moment H = canonicalOutput12003.moment H :=
  canonical_of_padded canonicalInput12003 canonicalOutput12003 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12004 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 2, -1], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput12004 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound12004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12004.moment H = canonicalOutput12004.moment H :=
  canonical_of_padded canonicalInput12004 canonicalOutput12004 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput12005 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12005 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound12005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12005.moment H = canonicalOutput12005.moment H :=
  canonical_of_padded canonicalInput12005 canonicalOutput12005 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput12006 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 2, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput12006 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node522⟩

theorem canonicalSound12006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12006.moment H = canonicalOutput12006.moment H :=
  canonical_of_padded canonicalInput12006 canonicalOutput12006 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12007 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 3, -2], ![0, 0, -2, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput12007 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩

theorem canonicalSound12007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12007.moment H = canonicalOutput12007.moment H :=
  canonical_of_padded canonicalInput12007 canonicalOutput12007 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12008 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 3, -2], ![1, -1, -3, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput12008 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1263

theorem canonicalSound12008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12008.moment H = canonicalOutput12008.moment H :=
  canonical_of_padded canonicalInput12008 canonicalOutput12008 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12009 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, -1, 4, -3], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput12009 : ExponentCode := normalNode5860

theorem canonicalSound12009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12009.moment H = canonicalOutput12009.moment H :=
  canonical_of_padded canonicalInput12009 canonicalOutput12009 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12010 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 4, -3], ![1, -1, -3, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput12010 : ExponentCode := normalNode10989

theorem canonicalSound12010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12010.moment H = canonicalOutput12010.moment H :=
  canonical_of_padded canonicalInput12010 canonicalOutput12010 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput12011 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 4, -3], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput12011 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node758⟩

theorem canonicalSound12011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12011.moment H = canonicalOutput12011.moment H :=
  canonical_of_padded canonicalInput12011 canonicalOutput12011 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12012 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 4, -3], ![1, -1, -1, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput12012 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node453⟩

theorem canonicalSound12012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12012.moment H = canonicalOutput12012.moment H :=
  canonical_of_padded canonicalInput12012 canonicalOutput12012 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput12013 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput12013 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1154⟩

theorem canonicalSound12013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12013.moment H = canonicalOutput12013.moment H :=
  canonical_of_padded canonicalInput12013 canonicalOutput12013 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput12014 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -3, 3], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12014 : ExponentCode := normalNode5870

theorem canonicalSound12014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12014.moment H = canonicalOutput12014.moment H :=
  canonical_of_padded canonicalInput12014 canonicalOutput12014 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12015 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, -3, 3], ![0, 0, 2, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput12015 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1255

theorem canonicalSound12015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12015.moment H = canonicalOutput12015.moment H :=
  canonical_of_padded canonicalInput12015 canonicalOutput12015 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12016 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput12016 : ExponentCode := normalNode5450

theorem canonicalSound12016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12016.moment H = canonicalOutput12016.moment H :=
  canonical_of_padded canonicalInput12016 canonicalOutput12016 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12017 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, -3, 3], ![1, -2, 1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput12017 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1196

theorem canonicalSound12017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12017.moment H = canonicalOutput12017.moment H :=
  canonical_of_padded canonicalInput12017 canonicalOutput12017 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12018 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, -3, 3], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput12018 : ExponentCode := normalNode10875

theorem canonicalSound12018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12018.moment H = canonicalOutput12018.moment H :=
  canonical_of_padded canonicalInput12018 canonicalOutput12018 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput12019 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, -3, 3], ![1, -1, 3, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput12019 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1265

theorem canonicalSound12019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12019.moment H = canonicalOutput12019.moment H :=
  canonical_of_padded canonicalInput12019 canonicalOutput12019 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12020 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -2, 2], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12020 : ExponentCode := normalNode5883

theorem canonicalSound12020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12020.moment H = canonicalOutput12020.moment H :=
  canonical_of_padded canonicalInput12020 canonicalOutput12020 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12021 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -2, 2], ![0, 0, 0, 0], ![0, 0, 2, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput12021 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node719⟩

theorem canonicalSound12021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12021.moment H = canonicalOutput12021.moment H :=
  canonical_of_padded canonicalInput12021 canonicalOutput12021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12022 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput12022 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2281⟩

theorem canonicalSound12022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12022.moment H = canonicalOutput12022.moment H :=
  canonical_of_padded canonicalInput12022 canonicalOutput12022 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput12023 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, -2, 0, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput12023 : ExponentCode := normalNode5472

theorem canonicalSound12023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12023.moment H = canonicalOutput12023.moment H :=
  canonical_of_padded canonicalInput12023 canonicalOutput12023 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput12024 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, -2, 2], ![1, -1, -1, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput12024 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code282

theorem canonicalSound12024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12024.moment H = canonicalOutput12024.moment H :=
  canonical_of_padded canonicalInput12024 canonicalOutput12024 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput12025 : ExponentCode := ⟨4, 4, ![![-2, 2, -1, 1], ![0, 0, -2, 2], ![1, -1, 4, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput12025 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code282

theorem canonicalSound12025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12025.moment H = canonicalOutput12025.moment H :=
  canonical_of_padded canonicalInput12025 canonicalOutput12025 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput12026 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput12026 : ExponentCode := normalNode5848

theorem canonicalSound12026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12026.moment H = canonicalOutput12026.moment H :=
  canonical_of_padded canonicalInput12026 canonicalOutput12026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12027 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput12027 : ExponentCode := normalNode5849

theorem canonicalSound12027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12027.moment H = canonicalOutput12027.moment H :=
  canonical_of_padded canonicalInput12027 canonicalOutput12027 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12028 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput12028 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2349⟩

theorem canonicalSound12028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12028.moment H = canonicalOutput12028.moment H :=
  canonical_of_padded canonicalInput12028 canonicalOutput12028 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12029 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput12029 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound12029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12029.moment H = canonicalOutput12029.moment H :=
  canonical_of_padded canonicalInput12029 canonicalOutput12029 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput12030 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput12030 : ExponentCode := normalNode5878

theorem canonicalSound12030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12030.moment H = canonicalOutput12030.moment H :=
  canonical_of_padded canonicalInput12030 canonicalOutput12030 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12031 : ExponentCode := ⟨5, 4, ![![-2, 2, -1, 1], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput12031 : ExponentCode := normalNode5885

theorem canonicalSound12031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12031.moment H = canonicalOutput12031.moment H :=
  canonical_of_padded canonicalInput12031 canonicalOutput12031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
