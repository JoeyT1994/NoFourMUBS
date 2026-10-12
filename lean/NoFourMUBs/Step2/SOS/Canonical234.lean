import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14976 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, -1, -1], ![0, 2, 0, 0, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput14976 : ExponentCode := normalNode2373

theorem canonicalSound14976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14976.moment H = canonicalOutput14976.moment H :=
  canonical_of_padded canonicalInput14976 canonicalOutput14976 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14977 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14977 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1519⟩

theorem canonicalSound14977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14977.moment H = canonicalOutput14977.moment H :=
  canonical_of_padded canonicalInput14977 canonicalOutput14977 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14978 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput14978 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound14978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14978.moment H = canonicalOutput14978.moment H :=
  canonical_of_padded canonicalInput14978 canonicalOutput14978 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14979 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14979 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩

theorem canonicalSound14979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14979.moment H = canonicalOutput14979.moment H :=
  canonical_of_padded canonicalInput14979 canonicalOutput14979 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput14980 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14980 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩

theorem canonicalSound14980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14980.moment H = canonicalOutput14980.moment H :=
  canonical_of_padded canonicalInput14980 canonicalOutput14980 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14981 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, 1, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput14981 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1519⟩

theorem canonicalSound14981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14981.moment H = canonicalOutput14981.moment H :=
  canonical_of_padded canonicalInput14981 canonicalOutput14981 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14982 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, 1, -3], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput14982 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2717⟩

theorem canonicalSound14982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14982.moment H = canonicalOutput14982.moment H :=
  canonical_of_padded canonicalInput14982 canonicalOutput14982 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14983 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, 1, -3], ![0, 1, 0, -2, 1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput14983 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2717⟩

theorem canonicalSound14983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14983.moment H = canonicalOutput14983.moment H :=
  canonical_of_padded canonicalInput14983 canonicalOutput14983 (by decide) (by decide)
    ⟨true, false, canonicalPermutation35, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput14984 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, 1, -3], ![0, 1, 0, -1, 0], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput14984 : ExponentCode := normalNode9396

theorem canonicalSound14984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14984.moment H = canonicalOutput14984.moment H :=
  canonical_of_padded canonicalInput14984 canonicalOutput14984 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14985 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 0, 2, 1, -3], ![0, 2, 0, -1, -1], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput14985 : ExponentCode := normalNode4203

theorem canonicalSound14985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14985.moment H = canonicalOutput14985.moment H :=
  canonical_of_padded canonicalInput14985 canonicalOutput14985 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14986 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, -1, -2, 2], ![0, 0, 1, 1, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14986 : ExponentCode := normalNode888

theorem canonicalSound14986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14986.moment H = canonicalOutput14986.moment H :=
  canonical_of_padded canonicalInput14986 canonicalOutput14986 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14987 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, -1, -2, 2], ![0, 0, 2, 0, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14987 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1519⟩

theorem canonicalSound14987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14987.moment H = canonicalOutput14987.moment H :=
  canonical_of_padded canonicalInput14987 canonicalOutput14987 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14988 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, -1, -1, 1], ![0, 0, 2, -1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput14988 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1801⟩

theorem canonicalSound14988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14988.moment H = canonicalOutput14988.moment H :=
  canonical_of_padded canonicalInput14988 canonicalOutput14988 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14989 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, -1, 1, -1], ![0, 0, 1, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput14989 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1819⟩

theorem canonicalSound14989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14989.moment H = canonicalOutput14989.moment H :=
  canonical_of_padded canonicalInput14989 canonicalOutput14989 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14990 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, -1, 1, -1], ![0, 0, 1, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput14990 : ExponentCode := normalNode9098

theorem canonicalSound14990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14990.moment H = canonicalOutput14990.moment H :=
  canonical_of_padded canonicalInput14990 canonicalOutput14990 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14991 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 0, -2, 1], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput14991 : ExponentCode := normalNode5428

theorem canonicalSound14991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14991.moment H = canonicalOutput14991.moment H :=
  canonical_of_padded canonicalInput14991 canonicalOutput14991 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14992 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput14992 : ExponentCode := normalNode8863

theorem canonicalSound14992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14992.moment H = canonicalOutput14992.moment H :=
  canonical_of_padded canonicalInput14992 canonicalOutput14992 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14993 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, -1, 1, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput14993 : ExponentCode := normalNode2747

theorem canonicalSound14993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14993.moment H = canonicalOutput14993.moment H :=
  canonical_of_padded canonicalInput14993 canonicalOutput14993 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14994 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, -1, 2, -2], ![0, 0, 1, -2, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput14994 : ExponentCode := normalNode2700

theorem canonicalSound14994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14994.moment H = canonicalOutput14994.moment H :=
  canonical_of_padded canonicalInput14994 canonicalOutput14994 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput14995 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, 0, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14995 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2447⟩

theorem canonicalSound14995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14995.moment H = canonicalOutput14995.moment H :=
  canonical_of_padded canonicalInput14995 canonicalOutput14995 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput14996 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, 0, 1, -2], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput14996 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2447⟩

theorem canonicalSound14996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14996.moment H = canonicalOutput14996.moment H :=
  canonical_of_padded canonicalInput14996 canonicalOutput14996 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput14997 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, 1, -2, 0], ![0, 0, 1, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput14997 : ExponentCode := normalNode9098

theorem canonicalSound14997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14997.moment H = canonicalOutput14997.moment H :=
  canonical_of_padded canonicalInput14997 canonicalOutput14997 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput14998 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput14998 : ExponentCode := normalNode3760

theorem canonicalSound14998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14998.moment H = canonicalOutput14998.moment H :=
  canonical_of_padded canonicalInput14998 canonicalOutput14998 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput14999 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![1, -1, -1, -1, 2], ![0, 0, 2, 1, -3], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput14999 : ExponentCode := normalNode4203

theorem canonicalSound14999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14999.moment H = canonicalOutput14999.moment H :=
  canonical_of_padded canonicalInput14999 canonicalOutput14999 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation169, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15000 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![1, -1, 0, 1, -1], ![0, 1, 0, -2, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput15000 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1819⟩

theorem canonicalSound15000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15000.moment H = canonicalOutput15000.moment H :=
  canonical_of_padded canonicalInput15000 canonicalOutput15000 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15001 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![1, -1, 1, 0, -1], ![0, 1, 0, -2, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput15001 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound15001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15001.moment H = canonicalOutput15001.moment H :=
  canonical_of_padded canonicalInput15001 canonicalOutput15001 (by decide) (by decide)
    ⟨true, false, canonicalPermutation65, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15002 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 1, 2], ![1, -1, 1, 1, -2], ![0, 0, 1, -2, 1], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput15002 : ExponentCode := normalNode4490

theorem canonicalSound15002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15002.moment H = canonicalOutput15002.moment H :=
  canonical_of_padded canonicalInput15002 canonicalOutput15002 (by decide) (by decide)
    ⟨true, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15003 : ExponentCode := ⟨3, 5, ![![-1, -1, -1, 2, 1], ![-2, -1, 3, -1, 1], ![3, 2, -2, -1, -2]]⟩

def canonicalOutput15003 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1211

theorem canonicalSound15003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15003.moment H = canonicalOutput15003.moment H :=
  canonical_of_padded canonicalInput15003 canonicalOutput15003 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15004 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![-1, -1, 1, 2, -1], ![0, 2, -1, -2, 1], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput15004 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code186

theorem canonicalSound15004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15004.moment H = canonicalOutput15004.moment H :=
  canonical_of_padded canonicalInput15004 canonicalOutput15004 (by decide) (by decide)
    ⟨true, false, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15005 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![-1, -1, 3, -1, 0], ![-1, 2, -1, -1, 1], ![3, 0, -1, 0, -2]]⟩

def canonicalOutput15005 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code64

theorem canonicalSound15005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15005.moment H = canonicalOutput15005.moment H :=
  canonical_of_padded canonicalInput15005 canonicalOutput15005 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput15006 : ExponentCode := ⟨3, 5, ![![-1, -1, -1, 2, 1], ![-1, -1, 3, 0, -1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput15006 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node361⟩

theorem canonicalSound15006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15006.moment H = canonicalOutput15006.moment H :=
  canonical_of_padded canonicalInput15006 canonicalOutput15006 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15007 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 2, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput15007 : ExponentCode := normalNode9538

theorem canonicalSound15007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15007.moment H = canonicalOutput15007.moment H :=
  canonical_of_padded canonicalInput15007 canonicalOutput15007 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput15008 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 2, 1], ![0, -1, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 1, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15008 : ExponentCode := normalNode6621

theorem canonicalSound15008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15008.moment H = canonicalOutput15008.moment H :=
  canonical_of_padded canonicalInput15008 canonicalOutput15008 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput15009 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 2, 1], ![0, -1, -1, 0, 2], ![0, 0, 2, 0, -2], ![0, 1, 0, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15009 : ExponentCode := normalNode6622

theorem canonicalSound15009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15009.moment H = canonicalOutput15009.moment H :=
  canonical_of_padded canonicalInput15009 canonicalOutput15009 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput15010 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 2, 1], ![0, -1, -1, 0, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15010 : ExponentCode := normalNode6628

theorem canonicalSound15010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15010.moment H = canonicalOutput15010.moment H :=
  canonical_of_padded canonicalInput15010 canonicalOutput15010 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput15011 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, -1, -1, 0, 2], ![0, 2, 1, 0, -3], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15011 : ExponentCode := normalNode3491

theorem canonicalSound15011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15011.moment H = canonicalOutput15011.moment H :=
  canonical_of_padded canonicalInput15011 canonicalOutput15011 (by decide) (by decide)
    ⟨true, true, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15012 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 0, -1, 2], ![0, 0, 2, 0, -2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput15012 : ExponentCode := normalNode4461

theorem canonicalSound15012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15012.moment H = canonicalOutput15012.moment H :=
  canonical_of_padded canonicalInput15012 canonicalOutput15012 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15013 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 0, -1, 2], ![1, 0, 1, 0, -2], ![0, 2, 0, -1, -1]]⟩

def canonicalOutput15013 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1837⟩

theorem canonicalSound15013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15013.moment H = canonicalOutput15013.moment H :=
  canonical_of_padded canonicalInput15013 canonicalOutput15013 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15014 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 0, 0, 1], ![0, 0, 1, 0, -1], ![0, 1, 0, 0, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15014 : ExponentCode := normalNode9245

theorem canonicalSound15014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15014.moment H = canonicalOutput15014.moment H :=
  canonical_of_padded canonicalInput15014 canonicalOutput15014 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput15015 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 1, -1, 1], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15015 : ExponentCode := normalNode10163

theorem canonicalSound15015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15015.moment H = canonicalOutput15015.moment H :=
  canonical_of_padded canonicalInput15015 canonicalOutput15015 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput15016 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15016 : ExponentCode := normalNode8863

theorem canonicalSound15016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15016.moment H = canonicalOutput15016.moment H :=
  canonical_of_padded canonicalInput15016 canonicalOutput15016 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15017 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 1, -1, 1], ![0, 2, -1, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15017 : ExponentCode := normalNode4396

theorem canonicalSound15017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15017.moment H = canonicalOutput15017.moment H :=
  canonical_of_padded canonicalInput15017 canonicalOutput15017 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15018 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 2, -2, 1], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15018 : ExponentCode := normalNode8654

theorem canonicalSound15018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15018.moment H = canonicalOutput15018.moment H :=
  canonical_of_padded canonicalInput15018 canonicalOutput15018 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation76⟩ (by decide +kernel) hH

def canonicalInput15019 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 2, -1, 0], ![-2, 2, -1, 0, 1], ![3, 0, 0, -1, -2]]⟩

def canonicalOutput15019 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code930

theorem canonicalSound15019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15019.moment H = canonicalOutput15019.moment H :=
  canonical_of_padded canonicalInput15019 canonicalOutput15019 (by decide) (by decide)
    ⟨true, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15020 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 2, -1, 0], ![-1, 1, 0, 2, -2], ![2, 1, -1, -3, 1]]⟩

def canonicalOutput15020 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1017

theorem canonicalSound15020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15020.moment H = canonicalOutput15020.moment H :=
  canonical_of_padded canonicalInput15020 canonicalOutput15020 (by decide) (by decide)
    ⟨true, true, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15021 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 2, -1, 0], ![0, 1, -1, -1, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15021 : ExponentCode := normalNode4311

theorem canonicalSound15021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15021.moment H = canonicalOutput15021.moment H :=
  canonical_of_padded canonicalInput15021 canonicalOutput15021 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15022 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 2, 0, -1], ![-1, 1, 2, -1, -1], ![2, 1, -3, -1, 1]]⟩

def canonicalOutput15022 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code168

theorem canonicalSound15022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15022.moment H = canonicalOutput15022.moment H :=
  canonical_of_padded canonicalInput15022 canonicalOutput15022 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15023 : ExponentCode := ⟨5, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 2, 0, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput15023 : ExponentCode := normalNode7612

theorem canonicalSound15023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15023.moment H = canonicalOutput15023.moment H :=
  canonical_of_padded canonicalInput15023 canonicalOutput15023 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput15024 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput15024 : ExponentCode := normalNode3994

theorem canonicalSound15024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15024.moment H = canonicalOutput15024.moment H :=
  canonical_of_padded canonicalInput15024 canonicalOutput15024 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation189, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15025 : ExponentCode := ⟨3, 5, ![![-1, -1, -1, 2, 1], ![0, -1, 3, 0, -2], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput15025 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node356⟩

theorem canonicalSound15025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15025.moment H = canonicalOutput15025.moment H :=
  canonical_of_padded canonicalInput15025 canonicalOutput15025 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15026 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, -2, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput15026 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1798⟩

theorem canonicalSound15026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15026.moment H = canonicalOutput15026.moment H :=
  canonical_of_padded canonicalInput15026 canonicalOutput15026 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation186, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15027 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15027 : ExponentCode := normalNode2920

theorem canonicalSound15027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15027.moment H = canonicalOutput15027.moment H :=
  canonical_of_padded canonicalInput15027 canonicalOutput15027 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15028 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, -1, -1, 2], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15028 : ExponentCode := normalNode2920

theorem canonicalSound15028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15028.moment H = canonicalOutput15028.moment H :=
  canonical_of_padded canonicalInput15028 canonicalOutput15028 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15029 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 0, -2, 2], ![0, 0, 1, 0, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15029 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2453⟩

theorem canonicalSound15029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15029.moment H = canonicalOutput15029.moment H :=
  canonical_of_padded canonicalInput15029 canonicalOutput15029 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15030 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15030 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1843⟩

theorem canonicalSound15030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15030.moment H = canonicalOutput15030.moment H :=
  canonical_of_padded canonicalInput15030 canonicalOutput15030 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15031 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15031 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2637⟩

theorem canonicalSound15031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15031.moment H = canonicalOutput15031.moment H :=
  canonical_of_padded canonicalInput15031 canonicalOutput15031 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15032 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 1, -2, 1], ![0, 1, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15032 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2761⟩

theorem canonicalSound15032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15032.moment H = canonicalOutput15032.moment H :=
  canonical_of_padded canonicalInput15032 canonicalOutput15032 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15033 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 1, -2, 1], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15033 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1792⟩

theorem canonicalSound15033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15033.moment H = canonicalOutput15033.moment H :=
  canonical_of_padded canonicalInput15033 canonicalOutput15033 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput15034 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 1, -2, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15034 : ExponentCode := normalNode9447

theorem canonicalSound15034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15034.moment H = canonicalOutput15034.moment H :=
  canonical_of_padded canonicalInput15034 canonicalOutput15034 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15035 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 1, -1, 0], ![0, 1, 1, 0, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput15035 : ExponentCode := normalNode9098

theorem canonicalSound15035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15035.moment H = canonicalOutput15035.moment H :=
  canonical_of_padded canonicalInput15035 canonicalOutput15035 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput15036 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput15036 : ExponentCode := normalNode3753

theorem canonicalSound15036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15036.moment H = canonicalOutput15036.moment H :=
  canonical_of_padded canonicalInput15036 canonicalOutput15036 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15037 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 2, -1, -1], ![0, 0, -1, -1, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15037 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1837⟩

theorem canonicalSound15037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15037.moment H = canonicalOutput15037.moment H :=
  canonical_of_padded canonicalInput15037 canonicalOutput15037 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15038 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15038 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2623⟩

theorem canonicalSound15038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15038.moment H = canonicalOutput15038.moment H :=
  canonical_of_padded canonicalInput15038 canonicalOutput15038 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15039 : ExponentCode := ⟨4, 5, ![![-1, -1, -1, 2, 1], ![0, 0, 2, -1, -1], ![0, 2, 0, -1, -1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput15039 : ExponentCode := normalNode4206

theorem canonicalSound15039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15039.moment H = canonicalOutput15039.moment H :=
  canonical_of_padded canonicalInput15039 canonicalOutput15039 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
