import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput19072 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput19072 : ExponentCode := normalNode8237

theorem canonicalSound19072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19072.moment H = canonicalOutput19072.moment H :=
  canonical_of_padded canonicalInput19072 canonicalOutput19072 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation392⟩ (by decide +kernel) hH

def canonicalInput19073 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19073 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound19073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19073.moment H = canonicalOutput19073.moment H :=
  canonical_of_padded canonicalInput19073 canonicalOutput19073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput19074 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19074 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound19074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19074.moment H = canonicalOutput19074.moment H :=
  canonical_of_padded canonicalInput19074 canonicalOutput19074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput19075 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19075 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound19075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19075.moment H = canonicalOutput19075.moment H :=
  canonical_of_padded canonicalInput19075 canonicalOutput19075 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput19076 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19076 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound19076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19076.moment H = canonicalOutput19076.moment H :=
  canonical_of_padded canonicalInput19076 canonicalOutput19076 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput19077 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19077 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound19077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19077.moment H = canonicalOutput19077.moment H :=
  canonical_of_padded canonicalInput19077 canonicalOutput19077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput19078 : ExponentCode := ⟨6, 6, ![![-1, -1, 2, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput19078 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound19078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19078.moment H = canonicalOutput19078.moment H :=
  canonical_of_padded canonicalInput19078 canonicalOutput19078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput19079 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 1, -1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19079 : ExponentCode := normalNode8701

theorem canonicalSound19079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19079.moment H = canonicalOutput19079.moment H :=
  canonical_of_padded canonicalInput19079 canonicalOutput19079 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput19080 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 1, -1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput19080 : ExponentCode := normalNode8699

theorem canonicalSound19080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19080.moment H = canonicalOutput19080.moment H :=
  canonical_of_padded canonicalInput19080 canonicalOutput19080 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput19081 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 1, -1], ![0, -1, 0, -1, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput19081 : ExponentCode := normalNode8689

theorem canonicalSound19081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19081.moment H = canonicalOutput19081.moment H :=
  canonical_of_padded canonicalInput19081 canonicalOutput19081 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation167, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput19082 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 1, -1], ![0, 0, -2, 0, 2], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput19082 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1839⟩

theorem canonicalSound19082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19082.moment H = canonicalOutput19082.moment H :=
  canonical_of_padded canonicalInput19082 canonicalOutput19082 (by decide) (by decide)
    ⟨true, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19083 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 1, -1], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput19083 : ExponentCode := normalNode8307

theorem canonicalSound19083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19083.moment H = canonicalOutput19083.moment H :=
  canonical_of_padded canonicalInput19083 canonicalOutput19083 (by decide) (by decide)
    ⟨true, false, canonicalPermutation26, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput19084 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 1, -1], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput19084 : ExponentCode := normalNode3364

theorem canonicalSound19084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19084.moment H = canonicalOutput19084.moment H :=
  canonical_of_padded canonicalInput19084 canonicalOutput19084 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19085 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 2, -2], ![0, -1, -1, -1, 3], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19085 : ExponentCode := normalNode8705

theorem canonicalSound19085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19085.moment H = canonicalOutput19085.moment H :=
  canonical_of_padded canonicalInput19085 canonicalOutput19085 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput19086 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 2, -2], ![0, -1, -1, 0, 2], ![0, 1, -1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19086 : ExponentCode := normalNode10103

theorem canonicalSound19086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19086.moment H = canonicalOutput19086.moment H :=
  canonical_of_padded canonicalInput19086 canonicalOutput19086 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput19087 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 2, -2], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput19087 : ExponentCode := normalNode8316

theorem canonicalSound19087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19087.moment H = canonicalOutput19087.moment H :=
  canonical_of_padded canonicalInput19087 canonicalOutput19087 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput19088 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 2, -2], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput19088 : ExponentCode := normalNode8711

theorem canonicalSound19088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19088.moment H = canonicalOutput19088.moment H :=
  canonical_of_padded canonicalInput19088 canonicalOutput19088 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput19089 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 2, -2], ![0, -1, 0, -1, 2], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput19089 : ExponentCode := normalNode8711

theorem canonicalSound19089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19089.moment H = canonicalOutput19089.moment H :=
  canonical_of_padded canonicalInput19089 canonicalOutput19089 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput19090 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 2, -2], ![0, -1, 0, -1, 2], ![0, 2, 0, -1, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput19090 : ExponentCode := normalNode2414

theorem canonicalSound19090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19090.moment H = canonicalOutput19090.moment H :=
  canonical_of_padded canonicalInput19090 canonicalOutput19090 (by decide) (by decide)
    ⟨true, true, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput19091 : ExponentCode := ⟨5, 5, ![![-1, -1, 2, 2, -2], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput19091 : ExponentCode := normalNode8744

theorem canonicalSound19091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19091.moment H = canonicalOutput19091.moment H :=
  canonical_of_padded canonicalInput19091 canonicalOutput19091 (by decide) (by decide)
    ⟨true, true, canonicalPermutation78, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput19092 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, 2, -2], ![0, 0, 0, -2, 2], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput19092 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2762⟩

theorem canonicalSound19092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19092.moment H = canonicalOutput19092.moment H :=
  canonical_of_padded canonicalInput19092 canonicalOutput19092 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19093 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![-3, 3, -2, 2], ![4, -2, -1, -1]]⟩

def canonicalOutput19093 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code85

theorem canonicalSound19093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19093.moment H = canonicalOutput19093.moment H :=
  canonical_of_padded canonicalInput19093 canonicalOutput19093 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19094 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![-2, 2, 1, -1], ![3, -1, -4, 2]]⟩

def canonicalOutput19094 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node89⟩

theorem canonicalSound19094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19094.moment H = canonicalOutput19094.moment H :=
  canonical_of_padded canonicalInput19094 canonicalOutput19094 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19095 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![-2, 3, -2, 1], ![3, -2, -1, 0]]⟩

def canonicalOutput19095 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound19095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19095.moment H = canonicalOutput19095.moment H :=
  canonical_of_padded canonicalInput19095 canonicalOutput19095 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19096 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![-2, 3, -1, 0], ![3, -2, -2, 1]]⟩

def canonicalOutput19096 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound19096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19096.moment H = canonicalOutput19096.moment H :=
  canonical_of_padded canonicalInput19096 canonicalOutput19096 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19097 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![-2, 4, -2, 0], ![3, -3, -1, 1]]⟩

def canonicalOutput19097 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node113⟩

theorem canonicalSound19097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19097.moment H = canonicalOutput19097.moment H :=
  canonical_of_padded canonicalInput19097 canonicalOutput19097 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19098 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![-1, -1, -3, 5], ![2, 2, 0, -4]]⟩

def canonicalOutput19098 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code63

theorem canonicalSound19098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19098.moment H = canonicalOutput19098.moment H :=
  canonical_of_padded canonicalInput19098 canonicalOutput19098 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19099 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![-1, -1, -2, 4], ![2, 2, -1, -3]]⟩

def canonicalOutput19099 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound19099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19099.moment H = canonicalOutput19099.moment H :=
  canonical_of_padded canonicalInput19099 canonicalOutput19099 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19100 : ExponentCode := ⟨5, 4, ![![-1, -1, 3, -1], ![-1, 2, 0, -1], ![0, -2, -2, 4], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput19100 : ExponentCode := normalNode8827

theorem canonicalSound19100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19100.moment H = canonicalOutput19100.moment H :=
  canonical_of_padded canonicalInput19100 canonicalOutput19100 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19101 : ExponentCode := ⟨5, 4, ![![-1, -1, 3, -1], ![-1, 2, 0, -1], ![0, -2, -2, 4], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput19101 : ExponentCode := normalNode9292

theorem canonicalSound19101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19101.moment H = canonicalOutput19101.moment H :=
  canonical_of_padded canonicalInput19101 canonicalOutput19101 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19102 : ExponentCode := ⟨5, 4, ![![-1, -1, 3, -1], ![-1, 2, 0, -1], ![0, -2, -1, 3], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput19102 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1370

theorem canonicalSound19102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19102.moment H = canonicalOutput19102.moment H :=
  canonical_of_padded canonicalInput19102 canonicalOutput19102 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19103 : ExponentCode := ⟨5, 4, ![![-1, -1, 3, -1], ![-1, 2, 0, -1], ![0, -2, -1, 3], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19103 : ExponentCode := normalNode7668

theorem canonicalSound19103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19103.moment H = canonicalOutput19103.moment H :=
  canonical_of_padded canonicalInput19103 canonicalOutput19103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19104 : ExponentCode := ⟨5, 4, ![![-1, -1, 3, -1], ![-1, 2, 0, -1], ![0, -1, -2, 3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput19104 : ExponentCode := normalNode5322

theorem canonicalSound19104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19104.moment H = canonicalOutput19104.moment H :=
  canonical_of_padded canonicalInput19104 canonicalOutput19104 (by decide) (by decide)
    ⟨false, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19105 : ExponentCode := ⟨5, 4, ![![-1, -1, 3, -1], ![-1, 2, 0, -1], ![0, -1, -1, 2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput19105 : ExponentCode := normalNode5328

theorem canonicalSound19105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19105.moment H = canonicalOutput19105.moment H :=
  canonical_of_padded canonicalInput19105 canonicalOutput19105 (by decide) (by decide)
    ⟨false, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput19106 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![-1, 2, 1, -2], ![2, -1, -4, 3]]⟩

def canonicalOutput19106 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node89⟩

theorem canonicalSound19106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19106.moment H = canonicalOutput19106.moment H :=
  canonical_of_padded canonicalInput19106 canonicalOutput19106 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19107 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![-1, 3, -1, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput19107 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node114⟩

theorem canonicalSound19107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19107.moment H = canonicalOutput19107.moment H :=
  canonical_of_padded canonicalInput19107 canonicalOutput19107 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19108 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![-1, 3, 0, -2], ![0, -2, -2, 4], ![2, 0, -1, -1]]⟩

def canonicalOutput19108 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1028

theorem canonicalSound19108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19108.moment H = canonicalOutput19108.moment H :=
  canonical_of_padded canonicalInput19108 canonicalOutput19108 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19109 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![-1, 3, 0, -2], ![0, -2, -1, 3], ![2, 0, -2, 0]]⟩

def canonicalOutput19109 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code400

theorem canonicalSound19109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19109.moment H = canonicalOutput19109.moment H :=
  canonical_of_padded canonicalInput19109 canonicalOutput19109 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19110 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![-1, 3, 0, -2], ![0, -1, -2, 3], ![2, -1, -1, 0]]⟩

def canonicalOutput19110 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code934

theorem canonicalSound19110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19110.moment H = canonicalOutput19110.moment H :=
  canonical_of_padded canonicalInput19110 canonicalOutput19110 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19111 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![-1, 3, 0, -2], ![1, -2, -3, 4], ![1, 0, 0, -1]]⟩

def canonicalOutput19111 : ExponentCode := normalNode6513

theorem canonicalSound19111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19111.moment H = canonicalOutput19111.moment H :=
  canonical_of_padded canonicalInput19111 canonicalOutput19111 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput19112 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![-1, 3, 0, -2], ![1, -2, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput19112 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code405

theorem canonicalSound19112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19112.moment H = canonicalOutput19112.moment H :=
  canonical_of_padded canonicalInput19112 canonicalOutput19112 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput19113 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![-1, 3, 0, -2], ![1, -1, -2, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput19113 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1301

theorem canonicalSound19113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19113.moment H = canonicalOutput19113.moment H :=
  canonical_of_padded canonicalInput19113 canonicalOutput19113 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput19114 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![-1, 4, -2, -1], ![2, -3, -1, 2]]⟩

def canonicalOutput19114 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node115⟩

theorem canonicalSound19114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19114.moment H = canonicalOutput19114.moment H :=
  canonical_of_padded canonicalInput19114 canonicalOutput19114 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19115 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![0, -3, 1, 2], ![1, 4, -4, -1]]⟩

def canonicalOutput19115 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node80⟩

theorem canonicalSound19115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19115.moment H = canonicalOutput19115.moment H :=
  canonical_of_padded canonicalInput19115 canonicalOutput19115 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19116 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, -2, -2, 4], ![0, 2, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput19116 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1090⟩

theorem canonicalSound19116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19116.moment H = canonicalOutput19116.moment H :=
  canonical_of_padded canonicalInput19116 canonicalOutput19116 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19117 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![0, -2, -2, 4], ![1, 3, -1, -3]]⟩

def canonicalOutput19117 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node113⟩

theorem canonicalSound19117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19117.moment H = canonicalOutput19117.moment H :=
  canonical_of_padded canonicalInput19117 canonicalOutput19117 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19118 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, -2, -1, 3], ![0, 1, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput19118 : ExponentCode := normalNode6702

theorem canonicalSound19118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19118.moment H = canonicalOutput19118.moment H :=
  canonical_of_padded canonicalInput19118 canonicalOutput19118 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19119 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, -2, 0, 2], ![0, 0, -2, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput19119 : ExponentCode := normalNode6122

theorem canonicalSound19119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19119.moment H = canonicalOutput19119.moment H :=
  canonical_of_padded canonicalInput19119 canonicalOutput19119 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19120 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, -2, 0, 2], ![0, 1, -3, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput19120 : ExponentCode := normalNode6715

theorem canonicalSound19120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19120.moment H = canonicalOutput19120.moment H :=
  canonical_of_padded canonicalInput19120 canonicalOutput19120 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19121 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, -2, 0, 2], ![1, 0, -2, 1], ![0, 3, -1, -2]]⟩

def canonicalOutput19121 : ExponentCode := normalNode7824

theorem canonicalSound19121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19121.moment H = canonicalOutput19121.moment H :=
  canonical_of_padded canonicalInput19121 canonicalOutput19121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19122 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![0, -2, 2, 0], ![1, 3, -5, 1]]⟩

def canonicalOutput19122 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node119⟩

theorem canonicalSound19122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19122.moment H = canonicalOutput19122.moment H :=
  canonical_of_padded canonicalInput19122 canonicalOutput19122 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19123 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![0, -1, -3, 4], ![1, 2, 0, -3]]⟩

def canonicalOutput19123 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound19123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19123.moment H = canonicalOutput19123.moment H :=
  canonical_of_padded canonicalInput19123 canonicalOutput19123 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19124 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, -1, -1, 2], ![0, -1, -1, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput19124 : ExponentCode := normalNode6131

theorem canonicalSound19124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19124.moment H = canonicalOutput19124.moment H :=
  canonical_of_padded canonicalInput19124 canonicalOutput19124 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput19125 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![0, -1, 2, -1], ![1, 2, -5, 2]]⟩

def canonicalOutput19125 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node124⟩

theorem canonicalSound19125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19125.moment H = canonicalOutput19125.moment H :=
  canonical_of_padded canonicalInput19125 canonicalOutput19125 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19126 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, 0, -3, 3], ![0, 2, 0, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput19126 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node979⟩

theorem canonicalSound19126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19126.moment H = canonicalOutput19126.moment H :=
  canonical_of_padded canonicalInput19126 canonicalOutput19126 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19127 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput19127 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node946⟩

theorem canonicalSound19127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19127.moment H = canonicalOutput19127.moment H :=
  canonical_of_padded canonicalInput19127 canonicalOutput19127 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput19128 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, 0, -2, 2], ![0, 2, 0, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput19128 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound19128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19128.moment H = canonicalOutput19128.moment H :=
  canonical_of_padded canonicalInput19128 canonicalOutput19128 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19129 : ExponentCode := ⟨5, 4, ![![-1, -1, 3, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput19129 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2548⟩

theorem canonicalSound19129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19129.moment H = canonicalOutput19129.moment H :=
  canonical_of_padded canonicalInput19129 canonicalOutput19129 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19130 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, 1, -4, 3], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput19130 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node985⟩

theorem canonicalSound19130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19130.moment H = canonicalOutput19130.moment H :=
  canonical_of_padded canonicalInput19130 canonicalOutput19130 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput19131 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput19131 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1268⟩

theorem canonicalSound19131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19131.moment H = canonicalOutput19131.moment H :=
  canonical_of_padded canonicalInput19131 canonicalOutput19131 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput19132 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput19132 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound19132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19132.moment H = canonicalOutput19132.moment H :=
  canonical_of_padded canonicalInput19132 canonicalOutput19132 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput19133 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput19133 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node960⟩

theorem canonicalSound19133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19133.moment H = canonicalOutput19133.moment H :=
  canonical_of_padded canonicalInput19133 canonicalOutput19133 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput19134 : ExponentCode := ⟨3, 4, ![![-1, -1, 3, -1], ![0, 2, 1, -3], ![1, -1, -4, 4]]⟩

def canonicalOutput19134 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node80⟩

theorem canonicalSound19134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19134.moment H = canonicalOutput19134.moment H :=
  canonical_of_padded canonicalInput19134 canonicalOutput19134 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput19135 : ExponentCode := ⟨4, 4, ![![-1, -1, 3, -1], ![0, 3, -1, -2], ![0, -2, -2, 4], ![1, 0, 0, -1]]⟩

def canonicalOutput19135 : ExponentCode := normalNode6464

theorem canonicalSound19135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput19135.moment H = canonicalOutput19135.moment H :=
  canonical_of_padded canonicalInput19135 canonicalOutput19135 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation15⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
