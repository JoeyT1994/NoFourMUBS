import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8064 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, -1, 0, -1, 1], ![0, 3, -2, 0, -1], ![1, -2, 2, -1, 0]]⟩

def canonicalOutput8064 : ExponentCode := normalNode5396

theorem canonicalSound8064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8064.moment H = canonicalOutput8064.moment H :=
  canonical_of_padded canonicalInput8064 canonicalOutput8064 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8065 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, -1, 1, -1, 0], ![0, 3, -2, 0, -1], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput8065 : ExponentCode := normalNode5425

theorem canonicalSound8065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8065.moment H = canonicalOutput8065.moment H :=
  canonical_of_padded canonicalInput8065 canonicalOutput8065 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8066 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, 0, 0, -2, 1], ![-1, -2, 3, 0, 0], ![2, 2, -3, 0, -1]]⟩

def canonicalOutput8066 : ExponentCode := normalNode5169

theorem canonicalSound8066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8066.moment H = canonicalOutput8066.moment H :=
  canonical_of_padded canonicalInput8066 canonicalOutput8066 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8067 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, 0, 0, -2, 1], ![0, -2, 2, 1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput8067 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2273⟩

theorem canonicalSound8067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8067.moment H = canonicalOutput8067.moment H :=
  canonical_of_padded canonicalInput8067 canonicalOutput8067 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8068 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, 0, 0, -2, 1], ![0, -2, 3, 0, -1], ![1, 2, -3, 0, 0]]⟩

def canonicalOutput8068 : ExponentCode := normalNode5471

theorem canonicalSound8068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8068.moment H = canonicalOutput8068.moment H :=
  canonical_of_padded canonicalInput8068 canonicalOutput8068 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8069 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, 0, 1, -2, 0], ![0, 2, -2, 1, -1], ![1, -2, 1, -1, 1]]⟩

def canonicalOutput8069 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2281⟩

theorem canonicalSound8069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8069.moment H = canonicalOutput8069.moment H :=
  canonical_of_padded canonicalInput8069 canonicalOutput8069 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8070 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![1, 0, 1, -2, 0], ![0, 3, -2, 0, -1], ![1, -3, 1, 0, 1]]⟩

def canonicalOutput8070 : ExponentCode := normalNode5494

theorem canonicalSound8070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8070.moment H = canonicalOutput8070.moment H :=
  canonical_of_padded canonicalInput8070 canonicalOutput8070 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8071 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![2, 0, 0, -2, 0], ![0, -3, 2, 0, 1], ![0, 3, -2, 0, -1]]⟩

def canonicalOutput8071 : ExponentCode := normalNode5958

theorem canonicalSound8071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8071.moment H = canonicalOutput8071.moment H :=
  canonical_of_padded canonicalInput8071 canonicalOutput8071 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8072 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![2, 0, 0, -1, -1], ![0, -3, 2, 0, 1], ![0, 3, -2, -1, 0]]⟩

def canonicalOutput8072 : ExponentCode := normalNode5471

theorem canonicalSound8072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8072.moment H = canonicalOutput8072.moment H :=
  canonical_of_padded canonicalInput8072 canonicalOutput8072 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8073 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![2, 0, 0, -1, -1], ![0, -3, 2, 1, 0], ![0, 3, -2, -2, 1]]⟩

def canonicalOutput8073 : ExponentCode := normalNode5169

theorem canonicalSound8073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8073.moment H = canonicalOutput8073.moment H :=
  canonical_of_padded canonicalInput8073 canonicalOutput8073 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8074 : ExponentCode := ⟨4, 5, ![![-2, 0, 0, 2, 0], ![2, 0, 0, -1, -1], ![0, -3, 3, 0, 0], ![0, 3, -3, -1, 1]]⟩

def canonicalOutput8074 : ExponentCode := normalNode5452

theorem canonicalSound8074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8074.moment H = canonicalOutput8074.moment H :=
  canonical_of_padded canonicalInput8074 canonicalOutput8074 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8075 : ExponentCode := ⟨6, 6, ![![-2, 0, 0, 2, 0, 0], ![1, -3, 3, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8075 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound8075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8075.moment H = canonicalOutput8075.moment H :=
  canonical_of_padded canonicalInput8075 canonicalOutput8075 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput8076 : ExponentCode := ⟨6, 6, ![![-2, 0, 0, 2, 0, 0], ![1, -3, 3, -1, 0, 0], ![1, 3, -3, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8076 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node220⟩

theorem canonicalSound8076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8076.moment H = canonicalOutput8076.moment H :=
  canonical_of_padded canonicalInput8076 canonicalOutput8076 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput8077 : ExponentCode := ⟨6, 6, ![![-2, 0, 0, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, 0, -1, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8077 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1002⟩

theorem canonicalSound8077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8077.moment H = canonicalOutput8077.moment H :=
  canonical_of_padded canonicalInput8077 canonicalOutput8077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation307, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput8078 : ExponentCode := ⟨6, 6, ![![-2, 0, 0, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8078 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound8078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8078.moment H = canonicalOutput8078.moment H :=
  canonical_of_padded canonicalInput8078 canonicalOutput8078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput8079 : ExponentCode := ⟨6, 6, ![![-2, 0, 0, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8079 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound8079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8079.moment H = canonicalOutput8079.moment H :=
  canonical_of_padded canonicalInput8079 canonicalOutput8079 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput8080 : ExponentCode := ⟨6, 6, ![![-2, 0, 0, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 3, -3, -1, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8080 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound8080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8080.moment H = canonicalOutput8080.moment H :=
  canonical_of_padded canonicalInput8080 canonicalOutput8080 (by decide) (by decide)
    ⟨true, false, canonicalPermutation10, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput8081 : ExponentCode := ⟨6, 6, ![![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8081 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound8081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8081.moment H = canonicalOutput8081.moment H :=
  canonical_of_padded canonicalInput8081 canonicalOutput8081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation209⟩ (by decide +kernel) hH

def canonicalInput8082 : ExponentCode := ⟨6, 6, ![![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8082 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1002⟩

theorem canonicalSound8082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8082.moment H = canonicalOutput8082.moment H :=
  canonical_of_padded canonicalInput8082 canonicalOutput8082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation305, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput8083 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput8083 : ExponentCode := normalNode9483

theorem canonicalSound8083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8083.moment H = canonicalOutput8083.moment H :=
  canonical_of_padded canonicalInput8083 canonicalOutput8083 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput8084 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput8084 : ExponentCode := normalNode8049

theorem canonicalSound8084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8084.moment H = canonicalOutput8084.moment H :=
  canonical_of_padded canonicalInput8084 canonicalOutput8084 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput8085 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput8085 : ExponentCode := normalNode8010

theorem canonicalSound8085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8085.moment H = canonicalOutput8085.moment H :=
  canonical_of_padded canonicalInput8085 canonicalOutput8085 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput8086 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput8086 : ExponentCode := normalNode8055

theorem canonicalSound8086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8086.moment H = canonicalOutput8086.moment H :=
  canonical_of_padded canonicalInput8086 canonicalOutput8086 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput8087 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, -1, -1, 3, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput8087 : ExponentCode := normalNode10005

theorem canonicalSound8087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8087.moment H = canonicalOutput8087.moment H :=
  canonical_of_padded canonicalInput8087 canonicalOutput8087 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput8088 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -1, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput8088 : ExponentCode := normalNode8438

theorem canonicalSound8088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8088.moment H = canonicalOutput8088.moment H :=
  canonical_of_padded canonicalInput8088 canonicalOutput8088 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput8089 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, 0, -2], ![1, -1, 0, 0, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput8089 : ExponentCode := normalNode8456

theorem canonicalSound8089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8089.moment H = canonicalOutput8089.moment H :=
  canonical_of_padded canonicalInput8089 canonicalOutput8089 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput8090 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, -1, -1, 3, -1], ![0, 2, -1, -1, 0], ![1, -1, 1, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput8090 : ExponentCode := normalNode8020

theorem canonicalSound8090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8090.moment H = canonicalOutput8090.moment H :=
  canonical_of_padded canonicalInput8090 canonicalOutput8090 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput8091 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, -1, -1, 3, -1], ![0, 2, 0, -1, -1], ![1, -1, 1, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput8091 : ExponentCode := normalNode8437

theorem canonicalSound8091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8091.moment H = canonicalOutput8091.moment H :=
  canonical_of_padded canonicalInput8091 canonicalOutput8091 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput8092 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, -1, 0, 1, 0], ![0, 0, 0, 1, -1], ![1, 0, 1, -1, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput8092 : ExponentCode := normalNode9182

theorem canonicalSound8092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8092.moment H = canonicalOutput8092.moment H :=
  canonical_of_padded canonicalInput8092 canonicalOutput8092 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput8093 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput8093 : ExponentCode := normalNode10000

theorem canonicalSound8093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8093.moment H = canonicalOutput8093.moment H :=
  canonical_of_padded canonicalInput8093 canonicalOutput8093 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation20⟩ (by decide +kernel) hH

def canonicalInput8094 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -2, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput8094 : ExponentCode := normalNode9984

theorem canonicalSound8094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8094.moment H = canonicalOutput8094.moment H :=
  canonical_of_padded canonicalInput8094 canonicalOutput8094 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput8095 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -1, 2], ![0, -2, 0, 2, 0], ![0, 0, 1, 0, -1], ![1, 1, -2, 0, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput8095 : ExponentCode := normalNode8178

theorem canonicalSound8095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8095.moment H = canonicalOutput8095.moment H :=
  canonical_of_padded canonicalInput8095 canonicalOutput8095 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation22⟩ (by decide +kernel) hH

def canonicalInput8096 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -1, 2], ![0, -1, -1, 3, -1], ![0, 1, 1, -2, 0], ![1, -1, 0, 0, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput8096 : ExponentCode := normalNode8453

theorem canonicalSound8096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8096.moment H = canonicalOutput8096.moment H :=
  canonical_of_padded canonicalInput8096 canonicalOutput8096 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput8097 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, -1, 2], ![0, -1, -1, 3, -1], ![0, 1, 1, -1, -1], ![1, -1, 0, 0, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput8097 : ExponentCode := normalNode8446

theorem canonicalSound8097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8097.moment H = canonicalOutput8097.moment H :=
  canonical_of_padded canonicalInput8097 canonicalOutput8097 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput8098 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, -1, 2, 0], ![1, -3, 1, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8098 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound8098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8098.moment H = canonicalOutput8098.moment H :=
  canonical_of_padded canonicalInput8098 canonicalOutput8098 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation307⟩ (by decide +kernel) hH

def canonicalInput8099 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, -1, 2, 0], ![1, -3, 1, 2, -1, 0], ![1, 3, -2, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8099 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound8099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8099.moment H = canonicalOutput8099.moment H :=
  canonical_of_padded canonicalInput8099 canonicalOutput8099 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput8100 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -2, 2, -1, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8100 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound8100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8100.moment H = canonicalOutput8100.moment H :=
  canonical_of_padded canonicalInput8100 canonicalOutput8100 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation347, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput8101 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, 2, -1, 0], ![0, 2, 0, -1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8101 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound8101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8101.moment H = canonicalOutput8101.moment H :=
  canonical_of_padded canonicalInput8101 canonicalOutput8101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation323⟩ (by decide +kernel) hH

def canonicalInput8102 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, 0, -1, -1, 0], ![0, -1, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8102 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code655

theorem canonicalSound8102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8102.moment H = canonicalOutput8102.moment H :=
  canonical_of_padded canonicalInput8102 canonicalOutput8102 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, OAI.MUB6.Certificate.PairSemantics.permutation323⟩ (by decide +kernel) hH

def canonicalInput8103 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, -1, 2, 0], ![1, -2, 1, 0, 0, 0], ![1, 3, -2, -1, -1, 0], ![0, -1, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8103 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound8103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8103.moment H = canonicalOutput8103.moment H :=
  canonical_of_padded canonicalInput8103 canonicalOutput8103 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation353, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput8104 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, -1, 2, 0], ![1, 0, 1, -1, -1, 0], ![1, 0, -2, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8104 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node276⟩

theorem canonicalSound8104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8104.moment H = canonicalOutput8104.moment H :=
  canonical_of_padded canonicalInput8104 canonicalOutput8104 (by decide) (by decide)
    ⟨true, false, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput8105 : ExponentCode := ⟨6, 6, ![![-2, 0, 1, -1, 2, 0], ![1, 0, 1, -1, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput8105 : ExponentCode := normalNode4310

theorem canonicalSound8105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8105.moment H = canonicalOutput8105.moment H :=
  canonical_of_padded canonicalInput8105 canonicalOutput8105 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput8106 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -2, 0, 1, 1], ![0, 0, 0, -1, 1], ![1, 1, -2, 2, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput8106 : ExponentCode := normalNode7544

theorem canonicalSound8106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8106.moment H = canonicalOutput8106.moment H :=
  canonical_of_padded canonicalInput8106 canonicalOutput8106 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput8107 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -2, 0, 2, 0], ![0, 0, 0, -1, 1], ![1, 1, -2, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput8107 : ExponentCode := normalNode8511

theorem canonicalSound8107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8107.moment H = canonicalOutput8107.moment H :=
  canonical_of_padded canonicalInput8107 canonicalOutput8107 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput8108 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, -1, 1, 1], ![0, 1, 0, -1, 0], ![1, 0, -1, 0, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput8108 : ExponentCode := normalNode10061

theorem canonicalSound8108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8108.moment H = canonicalOutput8108.moment H :=
  canonical_of_padded canonicalInput8108 canonicalOutput8108 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput8109 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, 0, -2], ![1, 0, -1, 0, 0], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput8109 : ExponentCode := normalNode8374

theorem canonicalSound8109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8109.moment H = canonicalOutput8109.moment H :=
  canonical_of_padded canonicalInput8109 canonicalOutput8109 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation56⟩ (by decide +kernel) hH

def canonicalInput8110 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, -1, 2], ![0, -1, 0, 2, -1], ![1, 0, -2, 1, 0], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput8110 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code361

theorem canonicalSound8110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8110.moment H = canonicalOutput8110.moment H :=
  canonical_of_padded canonicalInput8110 canonicalOutput8110 (by decide) (by decide)
    ⟨true, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput8111 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, -1, 2], ![0, -1, 0, 2, -1], ![1, 0, 1, -1, -1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput8111 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code379

theorem canonicalSound8111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8111.moment H = canonicalOutput8111.moment H :=
  canonical_of_padded canonicalInput8111 canonicalOutput8111 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput8112 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, -1, 2], ![0, -1, 0, 2, -1], ![1, 1, -2, 0, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput8112 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code362

theorem canonicalSound8112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8112.moment H = canonicalOutput8112.moment H :=
  canonical_of_padded canonicalInput8112 canonicalOutput8112 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput8113 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, -1, 2], ![0, -1, 0, 2, -1], ![1, 1, 1, -2, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput8113 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code518

theorem canonicalSound8113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8113.moment H = canonicalOutput8113.moment H :=
  canonical_of_padded canonicalInput8113 canonicalOutput8113 (by decide) (by decide)
    ⟨true, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput8114 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, -1, 2], ![0, 0, 0, 1, -1], ![1, 0, -2, 1, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput8114 : ExponentCode := normalNode7576

theorem canonicalSound8114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8114.moment H = canonicalOutput8114.moment H :=
  canonical_of_padded canonicalInput8114 canonicalOutput8114 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput8115 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, -1, 2], ![0, 0, 0, 1, -1], ![1, 0, 1, -1, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput8115 : ExponentCode := normalNode7636

theorem canonicalSound8115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8115.moment H = canonicalOutput8115.moment H :=
  canonical_of_padded canonicalInput8115 canonicalOutput8115 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput8116 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, 1, 0], ![0, -1, 0, -1, 2], ![1, 1, -2, 2, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput8116 : ExponentCode := normalNode8622

theorem canonicalSound8116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8116.moment H = canonicalOutput8116.moment H :=
  canonical_of_padded canonicalInput8116 canonicalOutput8116 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput8117 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, 1, 0], ![0, 0, 0, -1, 1], ![1, 0, -2, 2, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput8117 : ExponentCode := normalNode10166

theorem canonicalSound8117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8117.moment H = canonicalOutput8117.moment H :=
  canonical_of_padded canonicalInput8117 canonicalOutput8117 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput8118 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, 1, 0], ![0, 0, 0, -1, 1], ![1, 1, -2, 2, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput8118 : ExponentCode := normalNode10111

theorem canonicalSound8118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8118.moment H = canonicalOutput8118.moment H :=
  canonical_of_padded canonicalInput8118 canonicalOutput8118 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput8119 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, 2, -1], ![0, -1, 0, -1, 2], ![1, 1, -2, 1, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput8119 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code518

theorem canonicalSound8119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8119.moment H = canonicalOutput8119.moment H :=
  canonical_of_padded canonicalInput8119 canonicalOutput8119 (by decide) (by decide)
    ⟨true, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput8120 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, 2, -1], ![0, 0, 0, -1, 1], ![1, 0, -2, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput8120 : ExponentCode := normalNode7576

theorem canonicalSound8120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8120.moment H = canonicalOutput8120.moment H :=
  canonical_of_padded canonicalInput8120 canonicalOutput8120 (by decide) (by decide)
    ⟨false, true, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput8121 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, -1, 0, 2, -1], ![0, 0, 0, -1, 1], ![1, 1, -2, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput8121 : ExponentCode := normalNode6635

theorem canonicalSound8121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8121.moment H = canonicalOutput8121.moment H :=
  canonical_of_padded canonicalInput8121 canonicalOutput8121 (by decide) (by decide)
    ⟨true, false, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput8122 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, -1, 0, 2, -1], ![1, 0, -2, 1, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput8122 : ExponentCode := normalNode7578

theorem canonicalSound8122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8122.moment H = canonicalOutput8122.moment H :=
  canonical_of_padded canonicalInput8122 canonicalOutput8122 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput8123 : ExponentCode := ⟨5, 5, ![![-2, 0, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, -1, 0, 2, -1], ![1, 0, 1, -1, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput8123 : ExponentCode := normalNode9530

theorem canonicalSound8123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8123.moment H = canonicalOutput8123.moment H :=
  canonical_of_padded canonicalInput8123 canonicalOutput8123 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput8124 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-3, 2, 2, -1], ![5, -2, -3, 0]]⟩

def canonicalOutput8124 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node126⟩

theorem canonicalSound8124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8124.moment H = canonicalOutput8124.moment H :=
  canonical_of_padded canonicalInput8124 canonicalOutput8124 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8125 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-3, 3, 1, -1], ![5, -3, -2, 0]]⟩

def canonicalOutput8125 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node128⟩

theorem canonicalSound8125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8125.moment H = canonicalOutput8125.moment H :=
  canonical_of_padded canonicalInput8125 canonicalOutput8125 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8126 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-2, -2, 2, 2], ![4, 2, -3, -3]]⟩

def canonicalOutput8126 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code237

theorem canonicalSound8126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8126.moment H = canonicalOutput8126.moment H :=
  canonical_of_padded canonicalInput8126 canonicalOutput8126 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8127 : ExponentCode := ⟨3, 4, ![![-2, 0, 1, 1], ![-2, -2, 3, 1], ![4, 2, -4, -2]]⟩

def canonicalOutput8127 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code236

theorem canonicalSound8127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8127.moment H = canonicalOutput8127.moment H :=
  canonical_of_padded canonicalInput8127 canonicalOutput8127 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
