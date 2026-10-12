import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19968 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 1, 0, 1, -2], ![0, 0, 2, -1, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput19968 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound19968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19968.moment H = canonicalOutput19968.moment H :=
  canonical_of_padded canonicalInput19968 canonicalOutput19968 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19969 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 1, 0, 1, -2], ![0, 0, 2, 0, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput19969 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1521⟩

theorem canonicalSound19969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19969.moment H = canonicalOutput19969.moment H :=
  canonical_of_padded canonicalInput19969 canonicalOutput19969 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput19970 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![0, 1, 1, -2, 0], ![0, 0, 1, 1, -2], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput19970 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound19970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19970.moment H = canonicalOutput19970.moment H :=
  canonical_of_padded canonicalInput19970 canonicalOutput19970 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19971 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, -1, 0, 1], ![0, 0, 1, 1, -2], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput19971 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1790⟩

theorem canonicalSound19971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19971.moment H = canonicalOutput19971.moment H :=
  canonical_of_padded canonicalInput19971 canonicalOutput19971 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput19972 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, -1, 0, 1], ![0, 0, 2, -1, -1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput19972 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound19972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19972.moment H = canonicalOutput19972.moment H :=
  canonical_of_padded canonicalInput19972 canonicalOutput19972 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19973 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, -1, 1, 0], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput19973 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound19973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19973.moment H = canonicalOutput19973.moment H :=
  canonical_of_padded canonicalInput19973 canonicalOutput19973 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19974 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, -1, 1, 0], ![0, 0, 2, -2, 0], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput19974 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound19974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19974.moment H = canonicalOutput19974.moment H :=
  canonical_of_padded canonicalInput19974 canonicalOutput19974 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput19975 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, -1, 2, -1], ![0, 0, 1, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput19975 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1848⟩

theorem canonicalSound19975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19975.moment H = canonicalOutput19975.moment H :=
  canonical_of_padded canonicalInput19975 canonicalOutput19975 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19976 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, -1, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput19976 : ExponentCode := normalNode2934

theorem canonicalSound19976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19976.moment H = canonicalOutput19976.moment H :=
  canonical_of_padded canonicalInput19976 canonicalOutput19976 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19977 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, 0, 1, -1], ![0, 0, 1, -3, 2], ![0, 1, 0, 2, -3]]⟩

def canonicalOutput19977 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2177⟩

theorem canonicalSound19977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19977.moment H = canonicalOutput19977.moment H :=
  canonical_of_padded canonicalInput19977 canonicalOutput19977 (by decide) (by decide)
    ⟨true, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19978 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, 0, 1, -1], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1]]⟩

def canonicalOutput19978 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1751⟩

theorem canonicalSound19978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19978.moment H = canonicalOutput19978.moment H :=
  canonical_of_padded canonicalInput19978 canonicalOutput19978 (by decide) (by decide)
    ⟨true, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19979 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, 0, 1, -1], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput19979 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1747⟩

theorem canonicalSound19979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19979.moment H = canonicalOutput19979.moment H :=
  canonical_of_padded canonicalInput19979 canonicalOutput19979 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19980 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, 1, -1, 0], ![0, 0, -1, 2, -1], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput19980 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound19980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19980.moment H = canonicalOutput19980.moment H :=
  canonical_of_padded canonicalInput19980 canonicalOutput19980 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput19981 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, 1, 1, -2], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput19981 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1774⟩

theorem canonicalSound19981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19981.moment H = canonicalOutput19981.moment H :=
  canonical_of_padded canonicalInput19981 canonicalOutput19981 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput19982 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, 1, 2, -3], ![0, 0, -1, -1, 2], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput19982 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1500⟩

theorem canonicalSound19982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19982.moment H = canonicalOutput19982.moment H :=
  canonical_of_padded canonicalInput19982 canonicalOutput19982 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput19983 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 0, 2], ![1, -1, 2, -1, -1], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput19983 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1842⟩

theorem canonicalSound19983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19983.moment H = canonicalOutput19983.moment H :=
  canonical_of_padded canonicalInput19983 canonicalOutput19983 (by decide) (by decide)
    ⟨true, true, canonicalPermutation71, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19984 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, 1, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19984 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound19984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19984.moment H = canonicalOutput19984.moment H :=
  canonical_of_padded canonicalInput19984 canonicalOutput19984 (by decide) (by decide)
    ⟨true, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput19985 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, -1, 1, 1], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput19985 : ExponentCode := normalNode7684

theorem canonicalSound19985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19985.moment H = canonicalOutput19985.moment H :=
  canonical_of_padded canonicalInput19985 canonicalOutput19985 (by decide) (by decide)
    ⟨true, true, canonicalPermutation75, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19986 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 1, 1], ![0, -1, -1, 1, 1], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19986 : ExponentCode := normalNode8628

theorem canonicalSound19986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19986.moment H = canonicalOutput19986.moment H :=
  canonical_of_padded canonicalInput19986 canonicalOutput19986 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, canonicalPermutation76⟩ (by decide +kernel) hH

def canonicalInput19987 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19987 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2618⟩

theorem canonicalSound19987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19987.moment H = canonicalOutput19987.moment H :=
  canonical_of_padded canonicalInput19987 canonicalOutput19987 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19988 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput19988 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound19988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19988.moment H = canonicalOutput19988.moment H :=
  canonical_of_padded canonicalInput19988 canonicalOutput19988 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19989 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, -1, 1, 1], ![0, 1, 2, -3, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19989 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2315⟩

theorem canonicalSound19989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19989.moment H = canonicalOutput19989.moment H :=
  canonical_of_padded canonicalInput19989 canonicalOutput19989 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19990 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19990 : ExponentCode := normalNode9290

theorem canonicalSound19990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19990.moment H = canonicalOutput19990.moment H :=
  canonical_of_padded canonicalInput19990 canonicalOutput19990 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19991 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19991 : ExponentCode := normalNode9326

theorem canonicalSound19991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19991.moment H = canonicalOutput19991.moment H :=
  canonical_of_padded canonicalInput19991 canonicalOutput19991 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19992 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, 0, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19992 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2645⟩

theorem canonicalSound19992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19992.moment H = canonicalOutput19992.moment H :=
  canonical_of_padded canonicalInput19992 canonicalOutput19992 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput19993 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 1, 0, 0], ![0, 1, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19993 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2785⟩

theorem canonicalSound19993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19993.moment H = canonicalOutput19993.moment H :=
  canonical_of_padded canonicalInput19993 canonicalOutput19993 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput19994 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, -1, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput19994 : ExponentCode := normalNode9290

theorem canonicalSound19994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19994.moment H = canonicalOutput19994.moment H :=
  canonical_of_padded canonicalInput19994 canonicalOutput19994 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19995 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput19995 : ExponentCode := normalNode9326

theorem canonicalSound19995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19995.moment H = canonicalOutput19995.moment H :=
  canonical_of_padded canonicalInput19995 canonicalOutput19995 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput19996 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 2, -3, 2], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19996 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1730⟩

theorem canonicalSound19996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19996.moment H = canonicalOutput19996.moment H :=
  canonical_of_padded canonicalInput19996 canonicalOutput19996 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput19997 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 2, -3, 2], ![0, 1, 0, 1, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput19997 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1728⟩

theorem canonicalSound19997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19997.moment H = canonicalOutput19997.moment H :=
  canonical_of_padded canonicalInput19997 canonicalOutput19997 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19998 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19998 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2585⟩

theorem canonicalSound19998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19998.moment H = canonicalOutput19998.moment H :=
  canonical_of_padded canonicalInput19998 canonicalOutput19998 (by decide) (by decide)
    ⟨true, false, canonicalPermutation55, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput19999 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19999 : ExponentCode := normalNode9397

theorem canonicalSound19999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19999.moment H = canonicalOutput19999.moment H :=
  canonical_of_padded canonicalInput19999 canonicalOutput19999 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput20000 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20000 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2625⟩

theorem canonicalSound20000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20000.moment H = canonicalOutput20000.moment H :=
  canonical_of_padded canonicalInput20000 canonicalOutput20000 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput20001 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20001 : ExponentCode := normalNode9099

theorem canonicalSound20001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20001.moment H = canonicalOutput20001.moment H :=
  canonical_of_padded canonicalInput20001 canonicalOutput20001 (by decide) (by decide)
    ⟨true, false, canonicalPermutation49, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput20002 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 2, -1, 0], ![0, 1, -1, 2, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput20002 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1741⟩

theorem canonicalSound20002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20002.moment H = canonicalOutput20002.moment H :=
  canonical_of_padded canonicalInput20002 canonicalOutput20002 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput20003 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput20003 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2076⟩

theorem canonicalSound20003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20003.moment H = canonicalOutput20003.moment H :=
  canonical_of_padded canonicalInput20003 canonicalOutput20003 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput20004 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, 1, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput20004 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1773⟩

theorem canonicalSound20004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20004.moment H = canonicalOutput20004.moment H :=
  canonical_of_padded canonicalInput20004 canonicalOutput20004 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput20005 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 2, 1, -2], ![0, 1, -1, -3, 3], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20005 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2163⟩

theorem canonicalSound20005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20005.moment H = canonicalOutput20005.moment H :=
  canonical_of_padded canonicalInput20005 canonicalOutput20005 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput20006 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, -1, 2, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20006 : ExponentCode := normalNode9099

theorem canonicalSound20006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20006.moment H = canonicalOutput20006.moment H :=
  canonical_of_padded canonicalInput20006 canonicalOutput20006 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput20007 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![1, 0, 3, -2, -2]]⟩

def canonicalOutput20007 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node730⟩

theorem canonicalSound20007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20007.moment H = canonicalOutput20007.moment H :=
  canonical_of_padded canonicalInput20007 canonicalOutput20007 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20008 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20008 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound20008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20008.moment H = canonicalOutput20008.moment H :=
  canonical_of_padded canonicalInput20008 canonicalOutput20008 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20009 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 2, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput20009 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound20009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20009.moment H = canonicalOutput20009.moment H :=
  canonical_of_padded canonicalInput20009 canonicalOutput20009 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput20010 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 2, -2, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput20010 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1098⟩

theorem canonicalSound20010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20010.moment H = canonicalOutput20010.moment H :=
  canonical_of_padded canonicalInput20010 canonicalOutput20010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20011 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, -1, 2], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20011 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound20011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20011.moment H = canonicalOutput20011.moment H :=
  canonical_of_padded canonicalInput20011 canonicalOutput20011 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20012 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput20012 : ExponentCode := normalNode10646

theorem canonicalSound20012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20012.moment H = canonicalOutput20012.moment H :=
  canonical_of_padded canonicalInput20012 canonicalOutput20012 (by decide) (by decide)
    ⟨true, true, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20013 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, -1, -1], ![1, -1, 1, 1, -2]]⟩

def canonicalOutput20013 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1771⟩

theorem canonicalSound20013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20013.moment H = canonicalOutput20013.moment H :=
  canonical_of_padded canonicalInput20013 canonicalOutput20013 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20014 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, 0, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20014 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1790⟩

theorem canonicalSound20014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20014.moment H = canonicalOutput20014.moment H :=
  canonical_of_padded canonicalInput20014 canonicalOutput20014 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput20015 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, 1, -3], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20015 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1683⟩

theorem canonicalSound20015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20015.moment H = canonicalOutput20015.moment H :=
  canonical_of_padded canonicalInput20015 canonicalOutput20015 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20016 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 2, -2, -1], ![1, -1, 0, 2, -2]]⟩

def canonicalOutput20016 : ExponentCode := normalNode2706

theorem canonicalSound20016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20016.moment H = canonicalOutput20016.moment H :=
  canonical_of_padded canonicalInput20016 canonicalOutput20016 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20017 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 2, -1, -2], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20017 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1789⟩

theorem canonicalSound20017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20017.moment H = canonicalOutput20017.moment H :=
  canonical_of_padded canonicalInput20017 canonicalOutput20017 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20018 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, 0, 1], ![0, 1, 1, -1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20018 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2628⟩

theorem canonicalSound20018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20018.moment H = canonicalOutput20018.moment H :=
  canonical_of_padded canonicalInput20018 canonicalOutput20018 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20019 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, 1, 0], ![0, -1, 2, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20019 : ExponentCode := normalNode8420

theorem canonicalSound20019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20019.moment H = canonicalOutput20019.moment H :=
  canonical_of_padded canonicalInput20019 canonicalOutput20019 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, canonicalPermutation44⟩ (by decide +kernel) hH

def canonicalInput20020 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, -3, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20020 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound20020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20020.moment H = canonicalOutput20020.moment H :=
  canonical_of_padded canonicalInput20020 canonicalOutput20020 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20021 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, 0, -2], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput20021 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound20021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20021.moment H = canonicalOutput20021.moment H :=
  canonical_of_padded canonicalInput20021 canonicalOutput20021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput20022 : ExponentCode := ⟨5, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 2, 0, -2], ![0, 1, 0, -1, 0], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20022 : ExponentCode := normalNode10114

theorem canonicalSound20022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20022.moment H = canonicalOutput20022.moment H :=
  canonical_of_padded canonicalInput20022 canonicalOutput20022 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation173⟩ (by decide +kernel) hH

def canonicalInput20023 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, -1, 1, 0], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20023 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2628⟩

theorem canonicalSound20023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20023.moment H = canonicalOutput20023.moment H :=
  canonical_of_padded canonicalInput20023 canonicalOutput20023 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20024 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20024 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound20024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20024.moment H = canonicalOutput20024.moment H :=
  canonical_of_padded canonicalInput20024 canonicalOutput20024 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput20025 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput20025 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1112⟩

theorem canonicalSound20025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20025.moment H = canonicalOutput20025.moment H :=
  canonical_of_padded canonicalInput20025 canonicalOutput20025 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20026 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput20026 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1769⟩

theorem canonicalSound20026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20026.moment H = canonicalOutput20026.moment H :=
  canonical_of_padded canonicalInput20026 canonicalOutput20026 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20027 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, 0, 1, -2], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20027 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1785⟩

theorem canonicalSound20027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20027.moment H = canonicalOutput20027.moment H :=
  canonical_of_padded canonicalInput20027 canonicalOutput20027 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20028 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, 2, 0, -3], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput20028 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1681⟩

theorem canonicalSound20028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20028.moment H = canonicalOutput20028.moment H :=
  canonical_of_padded canonicalInput20028 canonicalOutput20028 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20029 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 0, -1, 1], ![0, 1, 1, -1, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20029 : ExponentCode := normalNode9465

theorem canonicalSound20029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20029.moment H = canonicalOutput20029.moment H :=
  canonical_of_padded canonicalInput20029 canonicalOutput20029 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20030 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, -2, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20030 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2612⟩

theorem canonicalSound20030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20030.moment H = canonicalOutput20030.moment H :=
  canonical_of_padded canonicalInput20030 canonicalOutput20030 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20031 : ExponentCode := ⟨4, 5, ![![-1, 0, -1, 1, 1], ![0, 0, 0, 1, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput20031 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2785⟩

theorem canonicalSound20031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20031.moment H = canonicalOutput20031.moment H :=
  canonical_of_padded canonicalInput20031 canonicalOutput20031 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
