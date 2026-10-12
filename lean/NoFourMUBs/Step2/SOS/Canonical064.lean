import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput4096 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput4096 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1080⟩

theorem canonicalSound4096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4096.moment H = canonicalOutput4096.moment H :=
  canonical_of_padded canonicalInput4096 canonicalOutput4096 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput4097 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput4097 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound4097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4097.moment H = canonicalOutput4097.moment H :=
  canonical_of_padded canonicalInput4097 canonicalOutput4097 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput4098 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput4098 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node292⟩

theorem canonicalSound4098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4098.moment H = canonicalOutput4098.moment H :=
  canonical_of_padded canonicalInput4098 canonicalOutput4098 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4099 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput4099 : ExponentCode := normalNode2027

theorem canonicalSound4099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4099.moment H = canonicalOutput4099.moment H :=
  canonical_of_padded canonicalInput4099 canonicalOutput4099 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4100 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 0, 3, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput4100 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node811⟩

theorem canonicalSound4100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4100.moment H = canonicalOutput4100.moment H :=
  canonical_of_padded canonicalInput4100 canonicalOutput4100 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4101 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 1, -2, 1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput4101 : ExponentCode := normalNode2091

theorem canonicalSound4101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4101.moment H = canonicalOutput4101.moment H :=
  canonical_of_padded canonicalInput4101 canonicalOutput4101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4102 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput4102 : ExponentCode := normalNode1307

theorem canonicalSound4102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4102.moment H = canonicalOutput4102.moment H :=
  canonical_of_padded canonicalInput4102 canonicalOutput4102 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4103 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput4103 : ExponentCode := normalNode2574

theorem canonicalSound4103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4103.moment H = canonicalOutput4103.moment H :=
  canonical_of_padded canonicalInput4103 canonicalOutput4103 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4104 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput4104 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1798⟩

theorem canonicalSound4104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4104.moment H = canonicalOutput4104.moment H :=
  canonical_of_padded canonicalInput4104 canonicalOutput4104 (by decide) (by decide)
    ⟨false, true, canonicalPermutation61, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4105 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput4105 : ExponentCode := normalNode2115

theorem canonicalSound4105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4105.moment H = canonicalOutput4105.moment H :=
  canonical_of_padded canonicalInput4105 canonicalOutput4105 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4106 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput4106 : ExponentCode := normalNode3485

theorem canonicalSound4106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4106.moment H = canonicalOutput4106.moment H :=
  canonical_of_padded canonicalInput4106 canonicalOutput4106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4107 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput4107 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1723⟩

theorem canonicalSound4107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4107.moment H = canonicalOutput4107.moment H :=
  canonical_of_padded canonicalInput4107 canonicalOutput4107 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4108 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 1, 3, -4], ![2, -1, -2, 1]]⟩

def canonicalOutput4108 : ExponentCode := normalNode6812

theorem canonicalSound4108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4108.moment H = canonicalOutput4108.moment H :=
  canonical_of_padded canonicalInput4108 canonicalOutput4108 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4109 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput4109 : ExponentCode := normalNode2125

theorem canonicalSound4109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4109.moment H = canonicalOutput4109.moment H :=
  canonical_of_padded canonicalInput4109 canonicalOutput4109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4110 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput4110 : ExponentCode := normalNode3456

theorem canonicalSound4110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4110.moment H = canonicalOutput4110.moment H :=
  canonical_of_padded canonicalInput4110 canonicalOutput4110 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4111 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput4111 : ExponentCode := normalNode2524

theorem canonicalSound4111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4111.moment H = canonicalOutput4111.moment H :=
  canonical_of_padded canonicalInput4111 canonicalOutput4111 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4112 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput4112 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1814⟩

theorem canonicalSound4112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4112.moment H = canonicalOutput4112.moment H :=
  canonical_of_padded canonicalInput4112 canonicalOutput4112 (by decide) (by decide)
    ⟨false, true, canonicalPermutation61, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4113 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 2, 2, -4], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput4113 : ExponentCode := normalNode3248

theorem canonicalSound4113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4113.moment H = canonicalOutput4113.moment H :=
  canonical_of_padded canonicalInput4113 canonicalOutput4113 (by decide) (by decide)
    ⟨false, true, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4114 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 2, 2, -4], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput4114 : ExponentCode := normalNode3229

theorem canonicalSound4114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4114.moment H = canonicalOutput4114.moment H :=
  canonical_of_padded canonicalInput4114 canonicalOutput4114 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4115 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![0, 2, 2, -4], ![2, -2, -1, 1]]⟩

def canonicalOutput4115 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1087⟩

theorem canonicalSound4115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4115.moment H = canonicalOutput4115.moment H :=
  canonical_of_padded canonicalInput4115 canonicalOutput4115 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4116 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput4116 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node823⟩

theorem canonicalSound4116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4116.moment H = canonicalOutput4116.moment H :=
  canonical_of_padded canonicalInput4116 canonicalOutput4116 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4117 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![1, -2, 3, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput4117 : ExponentCode := normalNode6706

theorem canonicalSound4117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4117.moment H = canonicalOutput4117.moment H :=
  canonical_of_padded canonicalInput4117 canonicalOutput4117 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4118 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput4118 : ExponentCode := normalNode6806

theorem canonicalSound4118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4118.moment H = canonicalOutput4118.moment H :=
  canonical_of_padded canonicalInput4118 canonicalOutput4118 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4119 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput4119 : ExponentCode := normalNode6774

theorem canonicalSound4119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4119.moment H = canonicalOutput4119.moment H :=
  canonical_of_padded canonicalInput4119 canonicalOutput4119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4120 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput4120 : ExponentCode := normalNode2115

theorem canonicalSound4120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4120.moment H = canonicalOutput4120.moment H :=
  canonical_of_padded canonicalInput4120 canonicalOutput4120 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4121 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput4121 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2595⟩

theorem canonicalSound4121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4121.moment H = canonicalOutput4121.moment H :=
  canonical_of_padded canonicalInput4121 canonicalOutput4121 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput4122 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput4122 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1724⟩

theorem canonicalSound4122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4122.moment H = canonicalOutput4122.moment H :=
  canonical_of_padded canonicalInput4122 canonicalOutput4122 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4123 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![0, 2, -2, 0], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput4123 : ExponentCode := normalNode2475

theorem canonicalSound4123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4123.moment H = canonicalOutput4123.moment H :=
  canonical_of_padded canonicalInput4123 canonicalOutput4123 (by decide) (by decide)
    ⟨false, true, canonicalPermutation75, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput4124 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput4124 : ExponentCode := normalNode6951

theorem canonicalSound4124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4124.moment H = canonicalOutput4124.moment H :=
  canonical_of_padded canonicalInput4124 canonicalOutput4124 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4125 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput4125 : ExponentCode := normalNode6953

theorem canonicalSound4125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4125.moment H = canonicalOutput4125.moment H :=
  canonical_of_padded canonicalInput4125 canonicalOutput4125 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4126 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![1, -1, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput4126 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1364⟩

theorem canonicalSound4126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4126.moment H = canonicalOutput4126.moment H :=
  canonical_of_padded canonicalInput4126 canonicalOutput4126 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput4127 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput4127 : ExponentCode := normalNode9430

theorem canonicalSound4127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4127.moment H = canonicalOutput4127.moment H :=
  canonical_of_padded canonicalInput4127 canonicalOutput4127 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput4128 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput4128 : ExponentCode := normalNode6803

theorem canonicalSound4128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4128.moment H = canonicalOutput4128.moment H :=
  canonical_of_padded canonicalInput4128 canonicalOutput4128 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4129 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput4129 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node816⟩

theorem canonicalSound4129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4129.moment H = canonicalOutput4129.moment H :=
  canonical_of_padded canonicalInput4129 canonicalOutput4129 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4130 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 0, -1], ![1, 0, 3, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput4130 : ExponentCode := normalNode6803

theorem canonicalSound4130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4130.moment H = canonicalOutput4130.moment H :=
  canonical_of_padded canonicalInput4130 canonicalOutput4130 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4131 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4131 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2424⟩

theorem canonicalSound4131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4131.moment H = canonicalOutput4131.moment H :=
  canonical_of_padded canonicalInput4131 canonicalOutput4131 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4132 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput4132 : ExponentCode := normalNode3485

theorem canonicalSound4132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4132.moment H = canonicalOutput4132.moment H :=
  canonical_of_padded canonicalInput4132 canonicalOutput4132 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4133 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput4133 : ExponentCode := normalNode2140

theorem canonicalSound4133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4133.moment H = canonicalOutput4133.moment H :=
  canonical_of_padded canonicalInput4133 canonicalOutput4133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4134 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![0, 2, -3, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput4134 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code191

theorem canonicalSound4134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4134.moment H = canonicalOutput4134.moment H :=
  canonical_of_padded canonicalInput4134 canonicalOutput4134 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4135 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![0, 2, -2, 0], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4135 : ExponentCode := normalNode3374

theorem canonicalSound4135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4135.moment H = canonicalOutput4135.moment H :=
  canonical_of_padded canonicalInput4135 canonicalOutput4135 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4136 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![0, 2, -2, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput4136 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node504⟩

theorem canonicalSound4136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4136.moment H = canonicalOutput4136.moment H :=
  canonical_of_padded canonicalInput4136 canonicalOutput4136 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput4137 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput4137 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code773

theorem canonicalSound4137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4137.moment H = canonicalOutput4137.moment H :=
  canonical_of_padded canonicalInput4137 canonicalOutput4137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4138 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput4138 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node598⟩

theorem canonicalSound4138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4138.moment H = canonicalOutput4138.moment H :=
  canonical_of_padded canonicalInput4138 canonicalOutput4138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4139 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput4139 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound4139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4139.moment H = canonicalOutput4139.moment H :=
  canonical_of_padded canonicalInput4139 canonicalOutput4139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4140 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![1, 0, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput4140 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound4140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4140.moment H = canonicalOutput4140.moment H :=
  canonical_of_padded canonicalInput4140 canonicalOutput4140 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4141 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![1, 1, 0, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput4141 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node995⟩

theorem canonicalSound4141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4141.moment H = canonicalOutput4141.moment H :=
  canonical_of_padded canonicalInput4141 canonicalOutput4141 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4142 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 1, -2], ![1, 2, -3, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput4142 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code487

theorem canonicalSound4142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4142.moment H = canonicalOutput4142.moment H :=
  canonical_of_padded canonicalInput4142 canonicalOutput4142 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4143 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 2, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput4143 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1668⟩

theorem canonicalSound4143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4143.moment H = canonicalOutput4143.moment H :=
  canonical_of_padded canonicalInput4143 canonicalOutput4143 (by decide) (by decide)
    ⟨false, true, canonicalPermutation37, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4144 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 2, -3], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput4144 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1669⟩

theorem canonicalSound4144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4144.moment H = canonicalOutput4144.moment H :=
  canonical_of_padded canonicalInput4144 canonicalOutput4144 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation175, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4145 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 2, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4145 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1720⟩

theorem canonicalSound4145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4145.moment H = canonicalOutput4145.moment H :=
  canonical_of_padded canonicalInput4145 canonicalOutput4145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4146 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 2, -3], ![0, 1, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput4146 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1066⟩

theorem canonicalSound4146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4146.moment H = canonicalOutput4146.moment H :=
  canonical_of_padded canonicalInput4146 canonicalOutput4146 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput4147 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput4147 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1625⟩

theorem canonicalSound4147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4147.moment H = canonicalOutput4147.moment H :=
  canonical_of_padded canonicalInput4147 canonicalOutput4147 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4148 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 2, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput4148 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1623⟩

theorem canonicalSound4148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4148.moment H = canonicalOutput4148.moment H :=
  canonical_of_padded canonicalInput4148 canonicalOutput4148 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation171, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput4149 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 2, -3], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput4149 : ExponentCode := normalNode3378

theorem canonicalSound4149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4149.moment H = canonicalOutput4149.moment H :=
  canonical_of_padded canonicalInput4149 canonicalOutput4149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4150 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 2, -3], ![0, 2, -2, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput4150 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code759

theorem canonicalSound4150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4150.moment H = canonicalOutput4150.moment H :=
  canonical_of_padded canonicalInput4150 canonicalOutput4150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput4151 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 3, -4], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput4151 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1713⟩

theorem canonicalSound4151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4151.moment H = canonicalOutput4151.moment H :=
  canonical_of_padded canonicalInput4151 canonicalOutput4151 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4152 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput4152 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1722⟩

theorem canonicalSound4152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4152.moment H = canonicalOutput4152.moment H :=
  canonical_of_padded canonicalInput4152 canonicalOutput4152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4153 : ExponentCode := ⟨5, 4, ![![-2, -1, 0, 3], ![0, 1, 3, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput4153 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1723⟩

theorem canonicalSound4153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4153.moment H = canonicalOutput4153.moment H :=
  canonical_of_padded canonicalInput4153 canonicalOutput4153 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4154 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 3, -4], ![0, 1, -1, 0], ![2, -1, -2, 1]]⟩

def canonicalOutput4154 : ExponentCode := normalNode6812

theorem canonicalSound4154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4154.moment H = canonicalOutput4154.moment H :=
  canonical_of_padded canonicalInput4154 canonicalOutput4154 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput4155 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 3, -4], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput4155 : ExponentCode := normalNode6800

theorem canonicalSound4155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4155.moment H = canonicalOutput4155.moment H :=
  canonical_of_padded canonicalInput4155 canonicalOutput4155 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4156 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 3, -4], ![1, 0, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput4156 : ExponentCode := normalNode6800

theorem canonicalSound4156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4156.moment H = canonicalOutput4156.moment H :=
  canonical_of_padded canonicalInput4156 canonicalOutput4156 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput4157 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 3, -4], ![1, 1, -3, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput4157 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1106⟩

theorem canonicalSound4157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4157.moment H = canonicalOutput4157.moment H :=
  canonical_of_padded canonicalInput4157 canonicalOutput4157 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput4158 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 3, -4], ![1, 1, -2, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput4158 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node493⟩

theorem canonicalSound4158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4158.moment H = canonicalOutput4158.moment H :=
  canonical_of_padded canonicalInput4158 canonicalOutput4158 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput4159 : ExponentCode := ⟨4, 4, ![![-2, -1, 0, 3], ![0, 1, 3, -4], ![1, 2, -3, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput4159 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code496

theorem canonicalSound4159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput4159.moment H = canonicalOutput4159.moment H :=
  canonical_of_padded canonicalInput4159 canonicalOutput4159 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
