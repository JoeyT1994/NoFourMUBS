import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11072 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11072 : ExponentCode := normalNode11152

theorem canonicalSound11072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11072.moment H = canonicalOutput11072.moment H :=
  canonical_of_padded canonicalInput11072 canonicalOutput11072 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11073 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput11073 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2847⟩

theorem canonicalSound11073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11073.moment H = canonicalOutput11073.moment H :=
  canonical_of_padded canonicalInput11073 canonicalOutput11073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11074 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput11074 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1180

theorem canonicalSound11074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11074.moment H = canonicalOutput11074.moment H :=
  canonical_of_padded canonicalInput11074 canonicalOutput11074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11075 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11075 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2849⟩

theorem canonicalSound11075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11075.moment H = canonicalOutput11075.moment H :=
  canonical_of_padded canonicalInput11075 canonicalOutput11075 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11076 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput11076 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2243⟩

theorem canonicalSound11076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11076.moment H = canonicalOutput11076.moment H :=
  canonical_of_padded canonicalInput11076 canonicalOutput11076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11077 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput11077 : ExponentCode := normalNode5541

theorem canonicalSound11077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11077.moment H = canonicalOutput11077.moment H :=
  canonical_of_padded canonicalInput11077 canonicalOutput11077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11078 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![0, 1, 2, -3], ![2, -2, 0, 0]]⟩

def canonicalOutput11078 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1197

theorem canonicalSound11078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11078.moment H = canonicalOutput11078.moment H :=
  canonical_of_padded canonicalInput11078 canonicalOutput11078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11079 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![1, -2, 0, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput11079 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node692⟩

theorem canonicalSound11079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11079.moment H = canonicalOutput11079.moment H :=
  canonical_of_padded canonicalInput11079 canonicalOutput11079 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11080 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![1, -2, 1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput11080 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1198

theorem canonicalSound11080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11080.moment H = canonicalOutput11080.moment H :=
  canonical_of_padded canonicalInput11080 canonicalOutput11080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11081 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![1, -2, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput11081 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound11081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11081.moment H = canonicalOutput11081.moment H :=
  canonical_of_padded canonicalInput11081 canonicalOutput11081 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput11082 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11082 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1355⟩

theorem canonicalSound11082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11082.moment H = canonicalOutput11082.moment H :=
  canonical_of_padded canonicalInput11082 canonicalOutput11082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11083 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput11083 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1352⟩

theorem canonicalSound11083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11083.moment H = canonicalOutput11083.moment H :=
  canonical_of_padded canonicalInput11083 canonicalOutput11083 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11084 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, -3, 3], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput11084 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1231⟩

theorem canonicalSound11084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11084.moment H = canonicalOutput11084.moment H :=
  canonical_of_padded canonicalInput11084 canonicalOutput11084 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput11085 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput11085 : ExponentCode := normalNode3994

theorem canonicalSound11085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11085.moment H = canonicalOutput11085.moment H :=
  canonical_of_padded canonicalInput11085 canonicalOutput11085 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11086 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput11086 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1804⟩

theorem canonicalSound11086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11086.moment H = canonicalOutput11086.moment H :=
  canonical_of_padded canonicalInput11086 canonicalOutput11086 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11087 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, -2, 2], ![0, 1, 2, -3], ![2, -2, -1, 1]]⟩

def canonicalOutput11087 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩

theorem canonicalSound11087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11087.moment H = canonicalOutput11087.moment H :=
  canonical_of_padded canonicalInput11087 canonicalOutput11087 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11088 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput11088 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound11088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11088.moment H = canonicalOutput11088.moment H :=
  canonical_of_padded canonicalInput11088 canonicalOutput11088 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11089 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput11089 : ExponentCode := normalNode2408

theorem canonicalSound11089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11089.moment H = canonicalOutput11089.moment H :=
  canonical_of_padded canonicalInput11089 canonicalOutput11089 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11090 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput11090 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2581⟩

theorem canonicalSound11090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11090.moment H = canonicalOutput11090.moment H :=
  canonical_of_padded canonicalInput11090 canonicalOutput11090 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11091 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput11091 : ExponentCode := normalNode5322

theorem canonicalSound11091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11091.moment H = canonicalOutput11091.moment H :=
  canonical_of_padded canonicalInput11091 canonicalOutput11091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput11092 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -2, -1, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput11092 : ExponentCode := normalNode2380

theorem canonicalSound11092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11092.moment H = canonicalOutput11092.moment H :=
  canonical_of_padded canonicalInput11092 canonicalOutput11092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11093 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput11093 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound11093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11093.moment H = canonicalOutput11093.moment H :=
  canonical_of_padded canonicalInput11093 canonicalOutput11093 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput11094 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, -1, 1], ![1, -2, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput11094 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1172⟩

theorem canonicalSound11094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11094.moment H = canonicalOutput11094.moment H :=
  canonical_of_padded canonicalInput11094 canonicalOutput11094 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11095 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, -1, 1], ![1, -1, -2, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput11095 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1204⟩

theorem canonicalSound11095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11095.moment H = canonicalOutput11095.moment H :=
  canonical_of_padded canonicalInput11095 canonicalOutput11095 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11096 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -4, 3], ![2, -2, 1, -1]]⟩

def canonicalOutput11096 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2278⟩

theorem canonicalSound11096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11096.moment H = canonicalOutput11096.moment H :=
  canonical_of_padded canonicalInput11096 canonicalOutput11096 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11097 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -3, 2], ![2, -2, 0, 0]]⟩

def canonicalOutput11097 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound11097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11097.moment H = canonicalOutput11097.moment H :=
  canonical_of_padded canonicalInput11097 canonicalOutput11097 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11098 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, -2, -1, 1]]⟩

def canonicalOutput11098 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1835⟩

theorem canonicalSound11098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11098.moment H = canonicalOutput11098.moment H :=
  canonical_of_padded canonicalInput11098 canonicalOutput11098 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11099 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput11099 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2064⟩

theorem canonicalSound11099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11099.moment H = canonicalOutput11099.moment H :=
  canonical_of_padded canonicalInput11099 canonicalOutput11099 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11100 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, 1, -1], ![0, 1, -4, 3], ![2, -2, 2, -2]]⟩

def canonicalOutput11100 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node895⟩

theorem canonicalSound11100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11100.moment H = canonicalOutput11100.moment H :=
  canonical_of_padded canonicalInput11100 canonicalOutput11100 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11101 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput11101 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound11101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11101.moment H = canonicalOutput11101.moment H :=
  canonical_of_padded canonicalInput11101 canonicalOutput11101 (by decide) (by decide)
    ⟨false, true, canonicalPermutation42, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11102 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, 1, -1], ![0, 1, -3, 2], ![2, -2, 1, -1]]⟩

def canonicalOutput11102 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound11102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11102.moment H = canonicalOutput11102.moment H :=
  canonical_of_padded canonicalInput11102 canonicalOutput11102 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11103 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput11103 : ExponentCode := normalNode4396

theorem canonicalSound11103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11103.moment H = canonicalOutput11103.moment H :=
  canonical_of_padded canonicalInput11103 canonicalOutput11103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11104 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput11104 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2285⟩

theorem canonicalSound11104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11104.moment H = canonicalOutput11104.moment H :=
  canonical_of_padded canonicalInput11104 canonicalOutput11104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11105 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, -3, 3], ![1, -1, 0, 0]]⟩

def canonicalOutput11105 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2284⟩

theorem canonicalSound11105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11105.moment H = canonicalOutput11105.moment H :=
  canonical_of_padded canonicalInput11105 canonicalOutput11105 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11106 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, 2, -2], ![0, 1, -4, 3], ![2, -2, 1, -1]]⟩

def canonicalOutput11106 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node448⟩

theorem canonicalSound11106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11106.moment H = canonicalOutput11106.moment H :=
  canonical_of_padded canonicalInput11106 canonicalOutput11106 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11107 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, 2, -2], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput11107 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1646⟩

theorem canonicalSound11107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11107.moment H = canonicalOutput11107.moment H :=
  canonical_of_padded canonicalInput11107 canonicalOutput11107 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11108 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, 2, -2], ![0, 1, -3, 2], ![2, -2, 0, 0]]⟩

def canonicalOutput11108 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node472⟩

theorem canonicalSound11108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11108.moment H = canonicalOutput11108.moment H :=
  canonical_of_padded canonicalInput11108 canonicalOutput11108 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11109 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput11109 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound11109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11109.moment H = canonicalOutput11109.moment H :=
  canonical_of_padded canonicalInput11109 canonicalOutput11109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11110 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, 2, -2], ![0, 1, -2, 1], ![2, -2, -1, 1]]⟩

def canonicalOutput11110 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node521⟩

theorem canonicalSound11110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11110.moment H = canonicalOutput11110.moment H :=
  canonical_of_padded canonicalInput11110 canonicalOutput11110 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11111 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, 2, -2], ![1, -3, -1, 3], ![1, 2, -2, -1]]⟩

def canonicalOutput11111 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code659

theorem canonicalSound11111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11111.moment H = canonicalOutput11111.moment H :=
  canonical_of_padded canonicalInput11111 canonicalOutput11111 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11112 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, 2, -2], ![1, -2, -2, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput11112 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node484⟩

theorem canonicalSound11112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11112.moment H = canonicalOutput11112.moment H :=
  canonical_of_padded canonicalInput11112 canonicalOutput11112 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11113 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 0, 2, -2], ![1, -2, 0, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput11113 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound11113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11113.moment H = canonicalOutput11113.moment H :=
  canonical_of_padded canonicalInput11113 canonicalOutput11113 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11114 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -4, 3], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput11114 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1230⟩

theorem canonicalSound11114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11114.moment H = canonicalOutput11114.moment H :=
  canonical_of_padded canonicalInput11114 canonicalOutput11114 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput11115 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -4, 3], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput11115 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1343⟩

theorem canonicalSound11115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11115.moment H = canonicalOutput11115.moment H :=
  canonical_of_padded canonicalInput11115 canonicalOutput11115 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput11116 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -3, 2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11116 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1951⟩

theorem canonicalSound11116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11116.moment H = canonicalOutput11116.moment H :=
  canonical_of_padded canonicalInput11116 canonicalOutput11116 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11117 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, -3, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput11117 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1024

theorem canonicalSound11117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11117.moment H = canonicalOutput11117.moment H :=
  canonical_of_padded canonicalInput11117 canonicalOutput11117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput11118 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, -3, 2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput11118 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound11118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11118.moment H = canonicalOutput11118.moment H :=
  canonical_of_padded canonicalInput11118 canonicalOutput11118 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput11119 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, -2, 0, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput11119 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1205

theorem canonicalSound11119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11119.moment H = canonicalOutput11119.moment H :=
  canonical_of_padded canonicalInput11119 canonicalOutput11119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11120 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11120 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound11120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11120.moment H = canonicalOutput11120.moment H :=
  canonical_of_padded canonicalInput11120 canonicalOutput11120 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11121 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput11121 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1206

theorem canonicalSound11121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11121.moment H = canonicalOutput11121.moment H :=
  canonical_of_padded canonicalInput11121 canonicalOutput11121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11122 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput11122 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1347⟩

theorem canonicalSound11122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11122.moment H = canonicalOutput11122.moment H :=
  canonical_of_padded canonicalInput11122 canonicalOutput11122 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput11123 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -3, 2], ![1, -1, 1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput11123 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound11123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11123.moment H = canonicalOutput11123.moment H :=
  canonical_of_padded canonicalInput11123 canonicalOutput11123 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11124 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, 1, -2, 1], ![0, 1, 2, -3], ![1, -3, 0, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput11124 : ExponentCode := normalNode4163

theorem canonicalSound11124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11124.moment H = canonicalOutput11124.moment H :=
  canonical_of_padded canonicalInput11124 canonicalOutput11124 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11125 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -2, 1], ![1, -3, 0, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput11125 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound11125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11125.moment H = canonicalOutput11125.moment H :=
  canonical_of_padded canonicalInput11125 canonicalOutput11125 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput11126 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -2, 1], ![1, -2, -1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput11126 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound11126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11126.moment H = canonicalOutput11126.moment H :=
  canonical_of_padded canonicalInput11126 canonicalOutput11126 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11127 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -2, 1], ![1, -1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput11127 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound11127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11127.moment H = canonicalOutput11127.moment H :=
  canonical_of_padded canonicalInput11127 canonicalOutput11127 (by decide) (by decide)
    ⟨true, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11128 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput11128 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound11128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11128.moment H = canonicalOutput11128.moment H :=
  canonical_of_padded canonicalInput11128 canonicalOutput11128 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput11129 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -1, 0], ![1, -3, -1, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput11129 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node980⟩

theorem canonicalSound11129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11129.moment H = canonicalOutput11129.moment H :=
  canonical_of_padded canonicalInput11129 canonicalOutput11129 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11130 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, -1, 0], ![1, -1, -3, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput11130 : ExponentCode := normalNode9441

theorem canonicalSound11130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11130.moment H = canonicalOutput11130.moment H :=
  canonical_of_padded canonicalInput11130 canonicalOutput11130 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11131 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -3, -2, 3]]⟩

def canonicalOutput11131 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node790⟩

theorem canonicalSound11131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11131.moment H = canonicalOutput11131.moment H :=
  canonical_of_padded canonicalInput11131 canonicalOutput11131 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11132 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 0, -1], ![1, -1, -3, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput11132 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1093⟩

theorem canonicalSound11132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11132.moment H = canonicalOutput11132.moment H :=
  canonical_of_padded canonicalInput11132 canonicalOutput11132 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11133 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 1, -2], ![1, -2, -3, 4], ![1, 0, 1, -2]]⟩

def canonicalOutput11133 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node402⟩

theorem canonicalSound11133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11133.moment H = canonicalOutput11133.moment H :=
  canonical_of_padded canonicalInput11133 canonicalOutput11133 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11134 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 1, -2], ![1, -1, -3, 3], ![1, -1, 1, -1]]⟩

def canonicalOutput11134 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound11134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11134.moment H = canonicalOutput11134.moment H :=
  canonical_of_padded canonicalInput11134 canonicalOutput11134 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput11135 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput11135 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node614⟩

theorem canonicalSound11135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11135.moment H = canonicalOutput11135.moment H :=
  canonical_of_padded canonicalInput11135 canonicalOutput11135 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
