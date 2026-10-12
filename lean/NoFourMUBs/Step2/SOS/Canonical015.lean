import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput960 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput960 : ExponentCode := normalNode9871

theorem canonicalSound960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput960.moment H = canonicalOutput960.moment H :=
  canonical_of_padded canonicalInput960 canonicalOutput960 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput961 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput961 : ExponentCode := normalNode6958

theorem canonicalSound961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput961.moment H = canonicalOutput961.moment H :=
  canonical_of_padded canonicalInput961 canonicalOutput961 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput962 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput962 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput962.moment H = canonicalOutput962.moment H :=
  canonical_of_padded canonicalInput962 canonicalOutput962 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput963 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput963 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput963.moment H = canonicalOutput963.moment H :=
  canonical_of_padded canonicalInput963 canonicalOutput963 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput964 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput964 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node958⟩

theorem canonicalSound964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput964.moment H = canonicalOutput964.moment H :=
  canonical_of_padded canonicalInput964 canonicalOutput964 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput965 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput965 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node955⟩

theorem canonicalSound965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput965.moment H = canonicalOutput965.moment H :=
  canonical_of_padded canonicalInput965 canonicalOutput965 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput966 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput966 : ExponentCode := normalNode6781

theorem canonicalSound966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput966.moment H = canonicalOutput966.moment H :=
  canonical_of_padded canonicalInput966 canonicalOutput966 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput967 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput967 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node790⟩

theorem canonicalSound967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput967.moment H = canonicalOutput967.moment H :=
  canonical_of_padded canonicalInput967 canonicalOutput967 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput968 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 2, 0, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput968 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node789⟩

theorem canonicalSound968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput968.moment H = canonicalOutput968.moment H :=
  canonical_of_padded canonicalInput968 canonicalOutput968 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput969 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![0, 2, 1, -3], ![2, 0, -3, 1]]⟩

def canonicalOutput969 : ExponentCode := normalNode6115

theorem canonicalSound969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput969.moment H = canonicalOutput969.moment H :=
  canonical_of_padded canonicalInput969 canonicalOutput969 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput970 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput970 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1196⟩

theorem canonicalSound970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput970.moment H = canonicalOutput970.moment H :=
  canonical_of_padded canonicalInput970 canonicalOutput970 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput971 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput971 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1195⟩

theorem canonicalSound971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput971.moment H = canonicalOutput971.moment H :=
  canonical_of_padded canonicalInput971 canonicalOutput971 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput972 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput972 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node958⟩

theorem canonicalSound972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput972.moment H = canonicalOutput972.moment H :=
  canonical_of_padded canonicalInput972 canonicalOutput972 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput973 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput973 : ExponentCode := normalNode6801

theorem canonicalSound973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput973.moment H = canonicalOutput973.moment H :=
  canonical_of_padded canonicalInput973 canonicalOutput973 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput974 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput974 : ExponentCode := normalNode6124

theorem canonicalSound974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput974.moment H = canonicalOutput974.moment H :=
  canonical_of_padded canonicalInput974 canonicalOutput974 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput975 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput975 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node790⟩

theorem canonicalSound975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput975.moment H = canonicalOutput975.moment H :=
  canonical_of_padded canonicalInput975 canonicalOutput975 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput976 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput976 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node930⟩

theorem canonicalSound976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput976.moment H = canonicalOutput976.moment H :=
  canonical_of_padded canonicalInput976 canonicalOutput976 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput977 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 1, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput977 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node790⟩

theorem canonicalSound977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput977.moment H = canonicalOutput977.moment H :=
  canonical_of_padded canonicalInput977 canonicalOutput977 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput978 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 1, 1, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput978 : ExponentCode := normalNode6124

theorem canonicalSound978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput978.moment H = canonicalOutput978.moment H :=
  canonical_of_padded canonicalInput978 canonicalOutput978 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput979 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, 1, -3, 0]]⟩

def canonicalOutput979 : ExponentCode := normalNode6781

theorem canonicalSound979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput979.moment H = canonicalOutput979.moment H :=
  canonical_of_padded canonicalInput979 canonicalOutput979 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput980 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 1, -2], ![0, 2, -2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput980 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node478⟩

theorem canonicalSound980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput980.moment H = canonicalOutput980.moment H :=
  canonical_of_padded canonicalInput980 canonicalOutput980 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput981 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 1, -2], ![0, 2, -1, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput981 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node479⟩

theorem canonicalSound981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput981.moment H = canonicalOutput981.moment H :=
  canonical_of_padded canonicalInput981 canonicalOutput981 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput982 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 1, -2], ![0, 2, 0, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput982 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code159

theorem canonicalSound982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput982.moment H = canonicalOutput982.moment H :=
  canonical_of_padded canonicalInput982 canonicalOutput982 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput983 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput983 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1101

theorem canonicalSound983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput983.moment H = canonicalOutput983.moment H :=
  canonical_of_padded canonicalInput983 canonicalOutput983 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput984 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput984 : ExponentCode := normalNode10246

theorem canonicalSound984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput984.moment H = canonicalOutput984.moment H :=
  canonical_of_padded canonicalInput984 canonicalOutput984 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput985 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput985 : ExponentCode := normalNode6802

theorem canonicalSound985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput985.moment H = canonicalOutput985.moment H :=
  canonical_of_padded canonicalInput985 canonicalOutput985 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput986 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 1, -2], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput986 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code488

theorem canonicalSound986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput986.moment H = canonicalOutput986.moment H :=
  canonical_of_padded canonicalInput986 canonicalOutput986 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput987 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 1, -2], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput987 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code488

theorem canonicalSound987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput987.moment H = canonicalOutput987.moment H :=
  canonical_of_padded canonicalInput987 canonicalOutput987 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput988 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 1, 1, -2], ![1, 2, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput988 : ExponentCode := normalNode10246

theorem canonicalSound988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput988.moment H = canonicalOutput988.moment H :=
  canonical_of_padded canonicalInput988 canonicalOutput988 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput989 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, -2, 0], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput989 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node478⟩

theorem canonicalSound989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput989.moment H = canonicalOutput989.moment H :=
  canonical_of_padded canonicalInput989 canonicalOutput989 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput990 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput990 : ExponentCode := normalNode6961

theorem canonicalSound990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput990.moment H = canonicalOutput990.moment H :=
  canonical_of_padded canonicalInput990 canonicalOutput990 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput991 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput991 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node791⟩

theorem canonicalSound991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput991.moment H = canonicalOutput991.moment H :=
  canonical_of_padded canonicalInput991 canonicalOutput991 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput992 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, -2, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput992 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node470⟩

theorem canonicalSound992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput992.moment H = canonicalOutput992.moment H :=
  canonical_of_padded canonicalInput992 canonicalOutput992 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput993 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, -2, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput993 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node470⟩

theorem canonicalSound993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput993.moment H = canonicalOutput993.moment H :=
  canonical_of_padded canonicalInput993 canonicalOutput993 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput994 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, -1, -1], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput994 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node479⟩

theorem canonicalSound994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput994.moment H = canonicalOutput994.moment H :=
  canonical_of_padded canonicalInput994 canonicalOutput994 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput995 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, -1, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput995 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code641

theorem canonicalSound995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput995.moment H = canonicalOutput995.moment H :=
  canonical_of_padded canonicalInput995 canonicalOutput995 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput996 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput996 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node993⟩

theorem canonicalSound996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput996.moment H = canonicalOutput996.moment H :=
  canonical_of_padded canonicalInput996 canonicalOutput996 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput997 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput997 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput997.moment H = canonicalOutput997.moment H :=
  canonical_of_padded canonicalInput997 canonicalOutput997 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput998 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, -1, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput998 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code412

theorem canonicalSound998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput998.moment H = canonicalOutput998.moment H :=
  canonical_of_padded canonicalInput998 canonicalOutput998 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput999 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, -1, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput999 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code412

theorem canonicalSound999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput999.moment H = canonicalOutput999.moment H :=
  canonical_of_padded canonicalInput999 canonicalOutput999 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1000 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, 0, -2], ![0, 1, 1, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput1000 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code159

theorem canonicalSound1000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1000.moment H = canonicalOutput1000.moment H :=
  canonical_of_padded canonicalInput1000 canonicalOutput1000 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1001 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput1001 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node405⟩

theorem canonicalSound1001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1001.moment H = canonicalOutput1001.moment H :=
  canonical_of_padded canonicalInput1001 canonicalOutput1001 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1002 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput1002 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node991⟩

theorem canonicalSound1002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1002.moment H = canonicalOutput1002.moment H :=
  canonical_of_padded canonicalInput1002 canonicalOutput1002 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1003 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, 0, -2], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput1003 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code164

theorem canonicalSound1003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1003.moment H = canonicalOutput1003.moment H :=
  canonical_of_padded canonicalInput1003 canonicalOutput1003 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1004 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, 0, -2], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput1004 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code164

theorem canonicalSound1004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1004.moment H = canonicalOutput1004.moment H :=
  canonical_of_padded canonicalInput1004 canonicalOutput1004 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput1005 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, 1, -3], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput1005 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code621

theorem canonicalSound1005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1005.moment H = canonicalOutput1005.moment H :=
  canonical_of_padded canonicalInput1005 canonicalOutput1005 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1006 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput1006 : ExponentCode := normalNode6959

theorem canonicalSound1006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1006.moment H = canonicalOutput1006.moment H :=
  canonical_of_padded canonicalInput1006 canonicalOutput1006 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1007 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 2, 1, -3], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1007 : ExponentCode := normalNode6959

theorem canonicalSound1007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1007.moment H = canonicalOutput1007.moment H :=
  canonical_of_padded canonicalInput1007 canonicalOutput1007 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1008 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 3, -3, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput1008 : ExponentCode := normalNode6786

theorem canonicalSound1008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1008.moment H = canonicalOutput1008.moment H :=
  canonical_of_padded canonicalInput1008 canonicalOutput1008 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1009 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 3, -3, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput1009 : ExponentCode := normalNode6786

theorem canonicalSound1009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1009.moment H = canonicalOutput1009.moment H :=
  canonical_of_padded canonicalInput1009 canonicalOutput1009 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1010 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 3, -2, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput1010 : ExponentCode := normalNode9054

theorem canonicalSound1010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1010.moment H = canonicalOutput1010.moment H :=
  canonical_of_padded canonicalInput1010 canonicalOutput1010 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1011 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput1011 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node956⟩

theorem canonicalSound1011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1011.moment H = canonicalOutput1011.moment H :=
  canonical_of_padded canonicalInput1011 canonicalOutput1011 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1012 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 3, -1, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput1012 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1094

theorem canonicalSound1012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1012.moment H = canonicalOutput1012.moment H :=
  canonical_of_padded canonicalInput1012 canonicalOutput1012 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1013 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput1013 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1024⟩

theorem canonicalSound1013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1013.moment H = canonicalOutput1013.moment H :=
  canonical_of_padded canonicalInput1013 canonicalOutput1013 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1014 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 3, -1, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput1014 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1024⟩

theorem canonicalSound1014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1014.moment H = canonicalOutput1014.moment H :=
  canonical_of_padded canonicalInput1014 canonicalOutput1014 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1015 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 3, 0, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput1015 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1025⟩

theorem canonicalSound1015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1015.moment H = canonicalOutput1015.moment H :=
  canonical_of_padded canonicalInput1015 canonicalOutput1015 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1016 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 3, 0, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput1016 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1021⟩

theorem canonicalSound1016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1016.moment H = canonicalOutput1016.moment H :=
  canonical_of_padded canonicalInput1016 canonicalOutput1016 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1017 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 3, 1, -4], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput1017 : ExponentCode := normalNode7054

theorem canonicalSound1017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1017.moment H = canonicalOutput1017.moment H :=
  canonical_of_padded canonicalInput1017 canonicalOutput1017 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1018 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput1018 : ExponentCode := normalNode7054

theorem canonicalSound1018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1018.moment H = canonicalOutput1018.moment H :=
  canonical_of_padded canonicalInput1018 canonicalOutput1018 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1019 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![1, 1, -3, 1], ![0, 2, 0, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput1019 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code164

theorem canonicalSound1019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1019.moment H = canonicalOutput1019.moment H :=
  canonical_of_padded canonicalInput1019 canonicalOutput1019 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput1020 : ExponentCode := ⟨4, 4, ![![-2, -3, 2, 3], ![1, 1, 0, -2], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput1020 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node993⟩

theorem canonicalSound1020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1020.moment H = canonicalOutput1020.moment H :=
  canonical_of_padded canonicalInput1020 canonicalOutput1020 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput1021 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 3, 0, -4]]⟩

def canonicalOutput1021 : ExponentCode := normalNode6792

theorem canonicalSound1021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1021.moment H = canonicalOutput1021.moment H :=
  canonical_of_padded canonicalInput1021 canonicalOutput1021 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput1022 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput1022 : ExponentCode := normalNode6791

theorem canonicalSound1022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1022.moment H = canonicalOutput1022.moment H :=
  canonical_of_padded canonicalInput1022 canonicalOutput1022 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput1023 : ExponentCode := ⟨4, 4, ![![-2, -3, 3, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput1023 : ExponentCode := normalNode7977

theorem canonicalSound1023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput1023.moment H = canonicalOutput1023.moment H :=
  canonical_of_padded canonicalInput1023 canonicalOutput1023 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
