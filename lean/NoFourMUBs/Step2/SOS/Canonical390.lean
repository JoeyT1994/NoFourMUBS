import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput24960 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![-1, 0, 0, 2, -1], ![1, -1, -1, 0, 1], ![1, 2, 1, -1, -3]]⟩

def canonicalOutput24960 : ExponentCode := normalNode1133

theorem canonicalSound24960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24960.moment H = canonicalOutput24960.moment H :=
  canonical_of_padded canonicalInput24960 canonicalOutput24960 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput24961 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![-1, 1, 1, -1, 0], ![0, 1, 0, 1, -2], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput24961 : ExponentCode := normalNode2161

theorem canonicalSound24961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24961.moment H = canonicalOutput24961.moment H :=
  canonical_of_padded canonicalInput24961 canonicalOutput24961 (by decide) (by decide)
    ⟨false, true, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput24962 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![-1, 1, 1, -1, 0], ![1, 1, 0, 0, -2], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput24962 : ExponentCode := normalNode2162

theorem canonicalSound24962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24962.moment H = canonicalOutput24962.moment H :=
  canonical_of_padded canonicalInput24962 canonicalOutput24962 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput24963 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, -1, -1, 1, 1], ![2, 0, 0, -1, -1], ![-1, 2, 1, 1, -3]]⟩

def canonicalOutput24963 : ExponentCode := normalNode1137

theorem canonicalSound24963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24963.moment H = canonicalOutput24963.moment H :=
  canonical_of_padded canonicalInput24963 canonicalOutput24963 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput24964 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, -1, 0, 2, -1], ![2, 0, -1, -1, 0], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput24964 : ExponentCode := normalNode1545

theorem canonicalSound24964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24964.moment H = canonicalOutput24964.moment H :=
  canonical_of_padded canonicalInput24964 canonicalOutput24964 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput24965 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, -1, 0, 2, -1], ![2, 0, -1, 0, -1], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput24965 : ExponentCode := normalNode2191

theorem canonicalSound24965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24965.moment H = canonicalOutput24965.moment H :=
  canonical_of_padded canonicalInput24965 canonicalOutput24965 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation370, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput24966 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![2, -1, 0, -1, 0], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput24966 : ExponentCode := normalNode1536

theorem canonicalSound24966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24966.moment H = canonicalOutput24966.moment H :=
  canonical_of_padded canonicalInput24966 canonicalOutput24966 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput24967 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 0, -1, 2, -1], ![2, -1, 0, 0, -1], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput24967 : ExponentCode := normalNode2193

theorem canonicalSound24967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24967.moment H = canonicalOutput24967.moment H :=
  canonical_of_padded canonicalInput24967 canonicalOutput24967 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput24968 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, -1, 1], ![2, -1, 0, 0, -1], ![-1, 1, 1, 2, -3]]⟩

def canonicalOutput24968 : ExponentCode := normalNode1152

theorem canonicalSound24968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24968.moment H = canonicalOutput24968.moment H :=
  canonical_of_padded canonicalInput24968 canonicalOutput24968 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput24969 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, -1, -1, 0, 0], ![-1, 0, 1, 2, -2]]⟩

def canonicalOutput24969 : ExponentCode := normalNode1603

theorem canonicalSound24969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24969.moment H = canonicalOutput24969.moment H :=
  canonical_of_padded canonicalInput24969 canonicalOutput24969 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput24970 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 0, 1, -1, 0], ![0, 2, 0, -1, -1], ![2, 0, -1, 0, -1], ![-1, -1, 1, 2, -1]]⟩

def canonicalOutput24970 : ExponentCode := normalNode2222

theorem canonicalSound24970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24970.moment H = canonicalOutput24970.moment H :=
  canonical_of_padded canonicalInput24970 canonicalOutput24970 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput24971 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput24971 : ExponentCode := normalNode1456

theorem canonicalSound24971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24971.moment H = canonicalOutput24971.moment H :=
  canonical_of_padded canonicalInput24971 canonicalOutput24971 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation397, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24972 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![0, 1, 1, 0, -2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput24972 : ExponentCode := normalNode1606

theorem canonicalSound24972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24972.moment H = canonicalOutput24972.moment H :=
  canonical_of_padded canonicalInput24972 canonicalOutput24972 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation397, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24973 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 0, 1, -2, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput24973 : ExponentCode := normalNode4574

theorem canonicalSound24973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24973.moment H = canonicalOutput24973.moment H :=
  canonical_of_padded canonicalInput24973 canonicalOutput24973 (by decide) (by decide)
    ⟨false, true, canonicalPermutation120, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput24974 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 0, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput24974 : ExponentCode := normalNode4577

theorem canonicalSound24974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24974.moment H = canonicalOutput24974.moment H :=
  canonical_of_padded canonicalInput24974 canonicalOutput24974 (by decide) (by decide)
    ⟨false, true, canonicalPermutation121, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput24975 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 1, 0, -2, 0], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput24975 : ExponentCode := normalNode1460

theorem canonicalSound24975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24975.moment H = canonicalOutput24975.moment H :=
  canonical_of_padded canonicalInput24975 canonicalOutput24975 (by decide) (by decide)
    ⟨false, true, canonicalPermutation293, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput24976 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![-1, -1, 0, 2, 0], ![1, 1, 0, 0, -2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput24976 : ExponentCode := normalNode1608

theorem canonicalSound24976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24976.moment H = canonicalOutput24976.moment H :=
  canonical_of_padded canonicalInput24976 canonicalOutput24976 (by decide) (by decide)
    ⟨false, true, canonicalPermutation293, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput24977 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![2, 1, 1, -1, -3]]⟩

def canonicalOutput24977 : ExponentCode := normalNode1146

theorem canonicalSound24977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24977.moment H = canonicalOutput24977.moment H :=
  canonical_of_padded canonicalInput24977 canonicalOutput24977 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation369, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24978 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![0, 1, 1, 0, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput24978 : ExponentCode := normalNode2860

theorem canonicalSound24978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24978.moment H = canonicalOutput24978.moment H :=
  canonical_of_padded canonicalInput24978 canonicalOutput24978 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation397, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24979 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![-1, 0, 0, 2, -1], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput24979 : ExponentCode := normalNode2861

theorem canonicalSound24979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24979.moment H = canonicalOutput24979.moment H :=
  canonical_of_padded canonicalInput24979 canonicalOutput24979 (by decide) (by decide)
    ⟨false, true, canonicalPermutation293, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput24980 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![-1, 0, 1, 1, -1], ![0, 1, 0, 1, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput24980 : ExponentCode := normalNode2873

theorem canonicalSound24980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24980.moment H = canonicalOutput24980.moment H :=
  canonical_of_padded canonicalInput24980 canonicalOutput24980 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput24981 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, -1, 1, -1, 1], ![-1, 0, 1, 2, -2], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput24981 : ExponentCode := normalNode1540

theorem canonicalSound24981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24981.moment H = canonicalOutput24981.moment H :=
  canonical_of_padded canonicalInput24981 canonicalOutput24981 (by decide) (by decide)
    ⟨false, true, canonicalPermutation103, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24982 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, -1, 1, -1, 1], ![2, 0, 0, -1, -1], ![-1, 1, 1, 2, -3]]⟩

def canonicalOutput24982 : ExponentCode := normalNode1144

theorem canonicalSound24982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24982.moment H = canonicalOutput24982.moment H :=
  canonical_of_padded canonicalInput24982 canonicalOutput24982 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput24983 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, -1, 2, -1, 0], ![2, 0, 0, -1, -1], ![-1, 1, 0, 2, -2]]⟩

def canonicalOutput24983 : ExponentCode := normalNode1532

theorem canonicalSound24983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24983.moment H = canonicalOutput24983.moment H :=
  canonical_of_padded canonicalInput24983 canonicalOutput24983 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput24984 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1], ![-1, 1, 0, 2, -2]]⟩

def canonicalOutput24984 : ExponentCode := normalNode1530

theorem canonicalSound24984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24984.moment H = canonicalOutput24984.moment H :=
  canonical_of_padded canonicalInput24984 canonicalOutput24984 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput24985 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, -1, 1, 0], ![-1, -1, 1, 0, 1], ![0, 1, 1, -2, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput24985 : ExponentCode := normalNode1452

theorem canonicalSound24985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24985.moment H = canonicalOutput24985.moment H :=
  canonical_of_padded canonicalInput24985 canonicalOutput24985 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput24986 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, -1, 1, 0], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput24986 : ExponentCode := normalNode3661

theorem canonicalSound24986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24986.moment H = canonicalOutput24986.moment H :=
  canonical_of_padded canonicalInput24986 canonicalOutput24986 (by decide) (by decide)
    ⟨false, true, canonicalPermutation12, canonicalPermutation18⟩ (by decide +kernel) hH

def canonicalInput24987 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, -1, 1, 0], ![0, 0, 1, -2, 1], ![2, -1, 0, 0, -1], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput24987 : ExponentCode := normalNode1570

theorem canonicalSound24987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24987.moment H = canonicalOutput24987.moment H :=
  canonical_of_padded canonicalInput24987 canonicalOutput24987 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput24988 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 0, 1, -1], ![-1, 0, 2, -1, 0], ![0, 2, -1, -1, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput24988 : ExponentCode := normalNode3689

theorem canonicalSound24988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24988.moment H = canonicalOutput24988.moment H :=
  canonical_of_padded canonicalInput24988 canonicalOutput24988 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput24989 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 0, 1, -1], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput24989 : ExponentCode := normalNode3662

theorem canonicalSound24989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24989.moment H = canonicalOutput24989.moment H :=
  canonical_of_padded canonicalInput24989 canonicalOutput24989 (by decide) (by decide)
    ⟨false, true, canonicalPermutation123, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput24990 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 0, 1, -1], ![-1, 2, 0, 0, -1], ![1, -1, -1, -1, 2], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput24990 : ExponentCode := normalNode1585

theorem canonicalSound24990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24990.moment H = canonicalOutput24990.moment H :=
  canonical_of_padded canonicalInput24990 canonicalOutput24990 (by decide) (by decide)
    ⟨false, true, canonicalPermutation292, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput24991 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, -1, -1, 2], ![-1, 2, 1, 0, -2], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput24991 : ExponentCode := normalNode1580

theorem canonicalSound24991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24991.moment H = canonicalOutput24991.moment H :=
  canonical_of_padded canonicalInput24991 canonicalOutput24991 (by decide) (by decide)
    ⟨false, true, canonicalPermutation117, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput24992 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, -1, -1, 2], ![2, -1, 0, 0, -1], ![-1, 2, 2, -1, -2]]⟩

def canonicalOutput24992 : ExponentCode := normalNode482

theorem canonicalSound24992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24992.moment H = canonicalOutput24992.moment H :=
  canonical_of_padded canonicalInput24992 canonicalOutput24992 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput24993 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![2, -1, 0, 0, -1], ![-1, 2, -1, -1, 1]]⟩

def canonicalOutput24993 : ExponentCode := normalNode3666

theorem canonicalSound24993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24993.moment H = canonicalOutput24993.moment H :=
  canonical_of_padded canonicalInput24993 canonicalOutput24993 (by decide) (by decide)
    ⟨false, true, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput24994 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 0, 2, -2, 0], ![2, 1, 0, 0, -3]]⟩

def canonicalOutput24994 : ExponentCode := normalNode1471

theorem canonicalSound24994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24994.moment H = canonicalOutput24994.moment H :=
  canonical_of_padded canonicalInput24994 canonicalOutput24994 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation368, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput24995 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, -1, 0, 0], ![-1, -1, 0, 1, 1], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput24995 : ExponentCode := normalNode1457

theorem canonicalSound24995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24995.moment H = canonicalOutput24995.moment H :=
  canonical_of_padded canonicalInput24995 canonicalOutput24995 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation397, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput24996 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, -1, 0, 0], ![-1, 0, 1, 1, -1], ![0, 1, 1, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput24996 : ExponentCode := normalNode3698

theorem canonicalSound24996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24996.moment H = canonicalOutput24996.moment H :=
  canonical_of_padded canonicalInput24996 canonicalOutput24996 (by decide) (by decide)
    ⟨false, false, canonicalPermutation111, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput24997 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![1, -1, 0, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput24997 : ExponentCode := normalNode3641

theorem canonicalSound24997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24997.moment H = canonicalOutput24997.moment H :=
  canonical_of_padded canonicalInput24997 canonicalOutput24997 (by decide) (by decide)
    ⟨false, true, canonicalPermutation111, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput24998 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![1, -1, 0, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, 1, -3], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput24998 : ExponentCode := normalNode3642

theorem canonicalSound24998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24998.moment H = canonicalOutput24998.moment H :=
  canonical_of_padded canonicalInput24998 canonicalOutput24998 (by decide) (by decide)
    ⟨false, true, canonicalPermutation111, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput24999 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, 0, 1, 0, -1], ![-1, -1, 1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput24999 : ExponentCode := normalNode10441

theorem canonicalSound24999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput24999.moment H = canonicalOutput24999.moment H :=
  canonical_of_padded canonicalInput24999 canonicalOutput24999 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, canonicalPermutation59⟩ (by decide +kernel) hH

def canonicalInput25000 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, 0, 1, 0, -1], ![-1, 1, -1, 1, 0], ![1, -1, 1, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput25000 : ExponentCode := normalNode10449

theorem canonicalSound25000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25000.moment H = canonicalOutput25000.moment H :=
  canonical_of_padded canonicalInput25000 canonicalOutput25000 (by decide) (by decide)
    ⟨false, false, canonicalPermutation272, canonicalPermutation74⟩ (by decide +kernel) hH

def canonicalInput25001 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput25001 : ExponentCode := normalNode10453

theorem canonicalSound25001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25001.moment H = canonicalOutput25001.moment H :=
  canonical_of_padded canonicalInput25001 canonicalOutput25001 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25002 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, 1, -1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1]]⟩

def canonicalOutput25002 : ExponentCode := normalNode8292

theorem canonicalSound25002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25002.moment H = canonicalOutput25002.moment H :=
  canonical_of_padded canonicalInput25002 canonicalOutput25002 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation401, canonicalPermutation13⟩ (by decide +kernel) hH

def canonicalInput25003 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, 1, -1, 0, 0], ![-1, 1, 1, 0, -1], ![1, -1, -1, 1, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput25003 : ExponentCode := normalNode8540

theorem canonicalSound25003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25003.moment H = canonicalOutput25003.moment H :=
  canonical_of_padded canonicalInput25003 canonicalOutput25003 (by decide) (by decide)
    ⟨false, false, canonicalPermutation294, canonicalPermutation21⟩ (by decide +kernel) hH

def canonicalInput25004 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 0, 1, 0], ![0, 1, 0, 0, -1], ![-1, 0, 2, -1, 0], ![0, 1, -2, 1, 0], ![2, -1, 0, -1, 0]]⟩

def canonicalOutput25004 : ExponentCode := normalNode10437

theorem canonicalSound25004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25004.moment H = canonicalOutput25004.moment H :=
  canonical_of_padded canonicalInput25004 canonicalOutput25004 (by decide) (by decide)
    ⟨false, false, canonicalPermutation295, canonicalPermutation43⟩ (by decide +kernel) hH

def canonicalInput25005 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 0, 1, 0], ![1, -1, 0, 0, 0], ![-1, 2, 0, 0, -1], ![0, 0, 2, -2, 0], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput25005 : ExponentCode := normalNode8155

theorem canonicalSound25005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25005.moment H = canonicalOutput25005.moment H :=
  canonical_of_padded canonicalInput25005 canonicalOutput25005 (by decide) (by decide)
    ⟨false, false, canonicalPermutation276, canonicalPermutation14⟩ (by decide +kernel) hH

def canonicalInput25006 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput25006 : ExponentCode := normalNode10401

theorem canonicalSound25006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25006.moment H = canonicalOutput25006.moment H :=
  canonical_of_padded canonicalInput25006 canonicalOutput25006 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25007 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 1, 1, -1], ![-1, 1, 0, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput25007 : ExponentCode := normalNode10805

theorem canonicalSound25007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25007.moment H = canonicalOutput25007.moment H :=
  canonical_of_padded canonicalInput25007 canonicalOutput25007 (by decide) (by decide)
    ⟨false, false, canonicalPermutation296, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput25008 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 1, 1, -1], ![0, 1, -1, -1, 1], ![-1, 1, 0, 1, -1], ![1, -1, 0, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput25008 : ExponentCode := normalNode10799

theorem canonicalSound25008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25008.moment H = canonicalOutput25008.moment H :=
  canonical_of_padded canonicalInput25008 canonicalOutput25008 (by decide) (by decide)
    ⟨false, true, canonicalPermutation100, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput25009 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 1, 1, -1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![0, -1, 1, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput25009 : ExponentCode := normalNode10407

theorem canonicalSound25009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25009.moment H = canonicalOutput25009.moment H :=
  canonical_of_padded canonicalInput25009 canonicalOutput25009 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25010 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![-1, 0, 1, 1, -1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, 1, -1], ![0, 0, 1, -2, 1]]⟩

def canonicalOutput25010 : ExponentCode := normalNode10796

theorem canonicalSound25010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25010.moment H = canonicalOutput25010.moment H :=
  canonical_of_padded canonicalInput25010 canonicalOutput25010 (by decide) (by decide)
    ⟨false, false, canonicalPermutation297, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25011 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, -1, -1, 1, 1], ![0, 0, 1, 2, -3], ![0, 2, 0, -3, 1]]⟩

def canonicalOutput25011 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node950⟩

theorem canonicalSound25011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25011.moment H = canonicalOutput25011.moment H :=
  canonical_of_padded canonicalInput25011 canonicalOutput25011 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25012 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, -1, -1, 1, 1], ![0, 1, -1, 1, -1], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput25012 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound25012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25012.moment H = canonicalOutput25012.moment H :=
  canonical_of_padded canonicalInput25012 canonicalOutput25012 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25013 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, -1, -1, 2, 0], ![0, 0, 2, -2, 0], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput25013 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound25013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25013.moment H = canonicalOutput25013.moment H :=
  canonical_of_padded canonicalInput25013 canonicalOutput25013 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput25014 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, -1, -1, 2, 0], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput25014 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound25014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25014.moment H = canonicalOutput25014.moment H :=
  canonical_of_padded canonicalInput25014 canonicalOutput25014 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput25015 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, -1, -1, 2, 0], ![0, 1, -1, -1, 1], ![0, 1, 2, -1, -2]]⟩

def canonicalOutput25015 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound25015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25015.moment H = canonicalOutput25015.moment H :=
  canonical_of_padded canonicalInput25015 canonicalOutput25015 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25016 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 0, 1, 1, -1], ![0, 1, 1, 0, -2], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput25016 : ExponentCode := normalNode2865

theorem canonicalSound25016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25016.moment H = canonicalOutput25016.moment H :=
  canonical_of_padded canonicalInput25016 canonicalOutput25016 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25017 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 0, 2, 0, -1], ![0, 1, -1, 1, -1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput25017 : ExponentCode := normalNode1623

theorem canonicalSound25017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25017.moment H = canonicalOutput25017.moment H :=
  canonical_of_padded canonicalInput25017 canonicalOutput25017 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25018 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 0, 2, 0, -1], ![0, 2, 0, -2, 0], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput25018 : ExponentCode := normalNode1595

theorem canonicalSound25018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25018.moment H = canonicalOutput25018.moment H :=
  canonical_of_padded canonicalInput25018 canonicalOutput25018 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25019 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 0, 2, 0, -1], ![1, 1, -1, -2, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput25019 : ExponentCode := normalNode2203

theorem canonicalSound25019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25019.moment H = canonicalOutput25019.moment H :=
  canonical_of_padded canonicalInput25019 canonicalOutput25019 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput25020 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 0, 2, 0, -1], ![1, 1, 0, -2, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput25020 : ExponentCode := normalNode3700

theorem canonicalSound25020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25020.moment H = canonicalOutput25020.moment H :=
  canonical_of_padded canonicalInput25020 canonicalOutput25020 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation249, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput25021 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 1, -1, 1, 0], ![2, 0, 0, -2, 0], ![0, 1, 2, 0, -3]]⟩

def canonicalOutput25021 : ExponentCode := normalNode1477

theorem canonicalSound25021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25021.moment H = canonicalOutput25021.moment H :=
  canonical_of_padded canonicalInput25021 canonicalOutput25021 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput25022 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 1, -1, 1, 0], ![2, 0, 0, 0, -2], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput25022 : ExponentCode := normalNode1630

theorem canonicalSound25022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25022.moment H = canonicalOutput25022.moment H :=
  canonical_of_padded canonicalInput25022 canonicalOutput25022 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput25023 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 2, 0, -1, 0], ![0, 0, 2, -1, -1], ![2, 0, -1, 1, -2]]⟩

def canonicalOutput25023 : ExponentCode := normalNode1594

theorem canonicalSound25023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25023.moment H = canonicalOutput25023.moment H :=
  canonical_of_padded canonicalInput25023 canonicalOutput25023 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
