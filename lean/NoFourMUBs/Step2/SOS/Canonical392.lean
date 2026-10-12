import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25088 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![-1, 0, 0, 1, 0], ![-1, 0, 1, -1, 1], ![1, 1, -2, -1, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput25088 : ExponentCode := normalNode2214

theorem canonicalSound25088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25088.moment H = canonicalOutput25088.moment H :=
  canonical_of_padded canonicalInput25088 canonicalOutput25088 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput25089 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, 0, -1, 0, 1], ![-1, 1, -1, 1, 0], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput25089 : ExponentCode := normalNode8033

theorem canonicalSound25089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25089.moment H = canonicalOutput25089.moment H :=
  canonical_of_padded canonicalInput25089 canonicalOutput25089 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25090 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, 0, -1, 0, 1], ![-1, 1, -1, 1, 0], ![0, 0, 2, 1, -3], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput25090 : ExponentCode := normalNode8028

theorem canonicalSound25090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25090.moment H = canonicalOutput25090.moment H :=
  canonical_of_padded canonicalInput25090 canonicalOutput25090 (by decide) (by decide)
    ⟨false, true, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25091 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, 0, 0, 1, -1], ![-2, 0, 1, -1, 2], ![1, 1, -2, -1, 1], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput25091 : ExponentCode := normalNode1576

theorem canonicalSound25091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25091.moment H = canonicalOutput25091.moment H :=
  canonical_of_padded canonicalInput25091 canonicalOutput25091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25092 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, 0, 0, 1, -1], ![-1, 0, 1, -1, 1], ![0, 1, -2, -1, 2], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput25092 : ExponentCode := normalNode7517

theorem canonicalSound25092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25092.moment H = canonicalOutput25092.moment H :=
  canonical_of_padded canonicalInput25092 canonicalOutput25092 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25093 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, 0, 0, 1, -1], ![-1, 0, 1, -1, 1], ![1, 1, -2, -1, 1], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput25093 : ExponentCode := normalNode8703

theorem canonicalSound25093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25093.moment H = canonicalOutput25093.moment H :=
  canonical_of_padded canonicalInput25093 canonicalOutput25093 (by decide) (by decide)
    ⟨false, false, canonicalPermutation241, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25094 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![1, 0, -1, 0, 0], ![-2, 1, -1, 1, 1], ![0, 0, 2, -3, 1], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput25094 : ExponentCode := normalNode2208

theorem canonicalSound25094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25094.moment H = canonicalOutput25094.moment H :=
  canonical_of_padded canonicalInput25094 canonicalOutput25094 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25095 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![1, 0, -1, 0, 0], ![-2, 1, -1, 1, 1], ![0, 0, 2, 1, -3], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput25095 : ExponentCode := normalNode2208

theorem canonicalSound25095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25095.moment H = canonicalOutput25095.moment H :=
  canonical_of_padded canonicalInput25095 canonicalOutput25095 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25096 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![1, 0, -1, 0, 0], ![-1, 1, -1, 1, 0], ![-1, 0, 2, -3, 2], ![1, 1, 0, 1, -3]]⟩

def canonicalOutput25096 : ExponentCode := normalNode4137

theorem canonicalSound25096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25096.moment H = canonicalOutput25096.moment H :=
  canonical_of_padded canonicalInput25096 canonicalOutput25096 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation295, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput25097 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![1, 0, -1, 0, 0], ![-1, 1, -1, 1, 0], ![-1, 0, 2, 1, -2], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput25097 : ExponentCode := normalNode1615

theorem canonicalSound25097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25097.moment H = canonicalOutput25097.moment H :=
  canonical_of_padded canonicalInput25097 canonicalOutput25097 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation197⟩ (by decide +kernel) hH

def canonicalInput25098 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![1, 0, -1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, -3, 1], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput25098 : ExponentCode := normalNode8607

theorem canonicalSound25098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25098.moment H = canonicalOutput25098.moment H :=
  canonical_of_padded canonicalInput25098 canonicalOutput25098 (by decide) (by decide)
    ⟨false, false, canonicalPermutation299, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput25099 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![1, 0, -1, 0, 0], ![-1, 1, -1, 1, 0], ![0, 0, 2, 1, -3], ![0, 1, 0, -3, 2]]⟩

def canonicalOutput25099 : ExponentCode := normalNode9224

theorem canonicalSound25099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25099.moment H = canonicalOutput25099.moment H :=
  canonical_of_padded canonicalInput25099 canonicalOutput25099 (by decide) (by decide)
    ⟨false, false, canonicalPermutation205, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25100 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, -1, 1, -1, 1], ![0, 0, -2, 1, 1], ![0, 2, 1, 0, -3]]⟩

def canonicalOutput25100 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound25100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25100.moment H = canonicalOutput25100.moment H :=
  canonical_of_padded canonicalInput25100 canonicalOutput25100 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25101 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, -1, 1, -1, 1], ![0, 0, 1, 1, -2], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput25101 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound25101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25101.moment H = canonicalOutput25101.moment H :=
  canonical_of_padded canonicalInput25101 canonicalOutput25101 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25102 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, -1, 1, -1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput25102 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1006⟩

theorem canonicalSound25102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25102.moment H = canonicalOutput25102.moment H :=
  canonical_of_padded canonicalInput25102 canonicalOutput25102 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput25103 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 1, 0, 0], ![-1, 0, -1, 1, 1], ![-1, 1, -1, 1, 0], ![0, 1, 1, -3, 1], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput25103 : ExponentCode := normalNode3642

theorem canonicalSound25103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25103.moment H = canonicalOutput25103.moment H :=
  canonical_of_padded canonicalInput25103 canonicalOutput25103 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25104 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 1, 0, 0], ![0, 0, -1, 1, 0], ![-2, 1, -1, 1, 1], ![0, 1, 1, -3, 1], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput25104 : ExponentCode := normalNode2181

theorem canonicalSound25104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25104.moment H = canonicalOutput25104.moment H :=
  canonical_of_padded canonicalInput25104 canonicalOutput25104 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25105 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 1, 0, 0], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![-1, 1, 1, -3, 2], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput25105 : ExponentCode := normalNode3655

theorem canonicalSound25105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25105.moment H = canonicalOutput25105.moment H :=
  canonical_of_padded canonicalInput25105 canonicalOutput25105 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25106 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, -1, 1, 0, 0], ![0, 0, -1, 1, 0], ![-1, 1, -1, 1, 0], ![0, 1, 1, -3, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput25106 : ExponentCode := normalNode8518

theorem canonicalSound25106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25106.moment H = canonicalOutput25106.moment H :=
  canonical_of_padded canonicalInput25106 canonicalOutput25106 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput25107 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, -1, 1, 1, -1], ![0, 0, -2, 1, 1], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput25107 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound25107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25107.moment H = canonicalOutput25107.moment H :=
  canonical_of_padded canonicalInput25107 canonicalOutput25107 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25108 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, -1, 1, 1, -1], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput25108 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1126⟩

theorem canonicalSound25108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25108.moment H = canonicalOutput25108.moment H :=
  canonical_of_padded canonicalInput25108 canonicalOutput25108 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput25109 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 2, -2]]⟩

def canonicalOutput25109 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound25109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25109.moment H = canonicalOutput25109.moment H :=
  canonical_of_padded canonicalInput25109 canonicalOutput25109 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25110 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, 2, 0, -2], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput25110 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound25110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25110.moment H = canonicalOutput25110.moment H :=
  canonical_of_padded canonicalInput25110 canonicalOutput25110 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25111 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![-1, -1, 1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput25111 : ExponentCode := normalNode1475

theorem canonicalSound25111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25111.moment H = canonicalOutput25111.moment H :=
  canonical_of_padded canonicalInput25111 canonicalOutput25111 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25112 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![-1, -1, 1, 1, 0], ![0, 2, 0, 0, -2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput25112 : ExponentCode := normalNode1628

theorem canonicalSound25112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25112.moment H = canonicalOutput25112.moment H :=
  canonical_of_padded canonicalInput25112 canonicalOutput25112 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25113 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 0, 1, 1, -1], ![2, -1, 0, 0, -1], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput25113 : ExponentCode := normalNode1624

theorem canonicalSound25113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25113.moment H = canonicalOutput25113.moment H :=
  canonical_of_padded canonicalInput25113 canonicalOutput25113 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput25114 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 1, 0, 1, -1], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput25114 : ExponentCode := normalNode2859

theorem canonicalSound25114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25114.moment H = canonicalOutput25114.moment H :=
  canonical_of_padded canonicalInput25114 canonicalOutput25114 (by decide) (by decide)
    ⟨false, true, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput25115 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 1, 0, 1, -1], ![2, -1, 0, 0, -1], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput25115 : ExponentCode := normalNode1619

theorem canonicalSound25115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25115.moment H = canonicalOutput25115.moment H :=
  canonical_of_padded canonicalInput25115 canonicalOutput25115 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation389, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput25116 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![-1, 2, 0, 0, -1], ![1, -1, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput25116 : ExponentCode := normalNode2179

theorem canonicalSound25116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25116.moment H = canonicalOutput25116.moment H :=
  canonical_of_padded canonicalInput25116 canonicalOutput25116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput25117 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![0, -1, 1, 1, -1], ![2, 0, 0, 0, -2], ![-1, 2, 1, -2, 0]]⟩

def canonicalOutput25117 : ExponentCode := normalNode2876

theorem canonicalSound25117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25117.moment H = canonicalOutput25117.moment H :=
  canonical_of_padded canonicalInput25117 canonicalOutput25117 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation401, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput25118 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![0, -1, 2, -1, 0], ![2, 0, 0, -1, -1], ![-1, 2, 0, 1, -2]]⟩

def canonicalOutput25118 : ExponentCode := normalNode1548

theorem canonicalSound25118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25118.moment H = canonicalOutput25118.moment H :=
  canonical_of_padded canonicalInput25118 canonicalOutput25118 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput25119 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 1, -2, 1], ![-1, 2, 0, 1, -2], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput25119 : ExponentCode := normalNode1553

theorem canonicalSound25119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25119.moment H = canonicalOutput25119.moment H :=
  canonical_of_padded canonicalInput25119 canonicalOutput25119 (by decide) (by decide)
    ⟨false, true, canonicalPermutation117, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput25120 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 1, -2, 1], ![2, -1, 0, 0, -1], ![-1, 2, 1, 1, -3]]⟩

def canonicalOutput25120 : ExponentCode := normalNode1149

theorem canonicalSound25120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25120.moment H = canonicalOutput25120.moment H :=
  canonical_of_padded canonicalInput25120 canonicalOutput25120 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput25121 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 1, 1, -2], ![2, -1, 0, -1, 0], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput25121 : ExponentCode := normalNode2166

theorem canonicalSound25121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25121.moment H = canonicalOutput25121.moment H :=
  canonical_of_padded canonicalInput25121 canonicalOutput25121 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25122 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 1, 1, -2], ![2, -1, 0, 0, -1], ![-1, 2, 1, -2, 0]]⟩

def canonicalOutput25122 : ExponentCode := normalNode2872

theorem canonicalSound25122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25122.moment H = canonicalOutput25122.moment H :=
  canonical_of_padded canonicalInput25122 canonicalOutput25122 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput25123 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![0, 0, 2, -2, 0], ![2, -1, 0, 0, -1], ![-1, 2, 0, 1, -2]]⟩

def canonicalOutput25123 : ExponentCode := normalNode1551

theorem canonicalSound25123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25123.moment H = canonicalOutput25123.moment H :=
  canonical_of_padded canonicalInput25123 canonicalOutput25123 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput25124 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, 0, 1, -2], ![2, -1, 0, -1, 0], ![-1, 1, 2, -1, -1]]⟩

def canonicalOutput25124 : ExponentCode := normalNode2170

theorem canonicalSound25124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25124.moment H = canonicalOutput25124.moment H :=
  canonical_of_padded canonicalInput25124 canonicalOutput25124 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation376, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput25125 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, 0, 1, -2], ![2, -1, 0, 0, -1], ![-1, 1, 2, -2, 0]]⟩

def canonicalOutput25125 : ExponentCode := normalNode2870

theorem canonicalSound25125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25125.moment H = canonicalOutput25125.moment H :=
  canonical_of_padded canonicalInput25125 canonicalOutput25125 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation389, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput25126 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, -1, 1, 1], ![0, 1, 1, -2, 0], ![2, -1, 0, 0, -1], ![-1, 1, 1, 1, -2]]⟩

def canonicalOutput25126 : ExponentCode := normalNode3699

theorem canonicalSound25126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25126.moment H = canonicalOutput25126.moment H :=
  canonical_of_padded canonicalInput25126 canonicalOutput25126 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation289, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput25127 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![-1, -1, 0, 2, 0], ![0, 2, -1, 0, -1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput25127 : ExponentCode := normalNode1599

theorem canonicalSound25127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25127.moment H = canonicalOutput25127.moment H :=
  canonical_of_padded canonicalInput25127 canonicalOutput25127 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25128 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![-1, -1, 1, 1, 0], ![0, 1, 0, 1, -2], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput25128 : ExponentCode := normalNode2158

theorem canonicalSound25128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25128.moment H = canonicalOutput25128.moment H :=
  canonical_of_padded canonicalInput25128 canonicalOutput25128 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25129 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![-1, 0, -1, 2, 0], ![2, -1, 0, 0, -1], ![0, 2, 1, -1, -2]]⟩

def canonicalOutput25129 : ExponentCode := normalNode1558

theorem canonicalSound25129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25129.moment H = canonicalOutput25129.moment H :=
  canonical_of_padded canonicalInput25129 canonicalOutput25129 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput25130 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![-1, 0, 0, 2, -1], ![1, -1, -1, 0, 1], ![1, 2, 1, -1, -3]]⟩

def canonicalOutput25130 : ExponentCode := normalNode1147

theorem canonicalSound25130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25130.moment H = canonicalOutput25130.moment H :=
  canonical_of_padded canonicalInput25130 canonicalOutput25130 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput25131 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![-1, 1, 1, -1, 0], ![0, 1, 0, 1, -2], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput25131 : ExponentCode := normalNode2156

theorem canonicalSound25131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25131.moment H = canonicalOutput25131.moment H :=
  canonical_of_padded canonicalInput25131 canonicalOutput25131 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25132 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![-1, 1, 1, -1, 0], ![1, 1, 0, 0, -2], ![1, -1, -1, 2, -1]]⟩

def canonicalOutput25132 : ExponentCode := normalNode2156

theorem canonicalSound25132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25132.moment H = canonicalOutput25132.moment H :=
  canonical_of_padded canonicalInput25132 canonicalOutput25132 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation34⟩ (by decide +kernel) hH

def canonicalInput25133 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![0, -1, -1, 1, 1], ![2, 0, 0, -1, -1], ![-1, 2, 1, 1, -3]]⟩

def canonicalOutput25133 : ExponentCode := normalNode1147

theorem canonicalSound25133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25133.moment H = canonicalOutput25133.moment H :=
  canonical_of_padded canonicalInput25133 canonicalOutput25133 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25134 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![0, -1, 0, 2, -1], ![2, 0, -1, -1, 0], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput25134 : ExponentCode := normalNode1558

theorem canonicalSound25134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25134.moment H = canonicalOutput25134.moment H :=
  canonical_of_padded canonicalInput25134 canonicalOutput25134 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25135 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![0, -1, 0, 2, -1], ![2, 0, -1, 0, -1], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput25135 : ExponentCode := normalNode2194

theorem canonicalSound25135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25135.moment H = canonicalOutput25135.moment H :=
  canonical_of_padded canonicalInput25135 canonicalOutput25135 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation370, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput25136 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![0, 0, -1, 2, -1], ![2, -1, 0, -1, 0], ![-1, 2, 1, 0, -2]]⟩

def canonicalOutput25136 : ExponentCode := normalNode1554

theorem canonicalSound25136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25136.moment H = canonicalOutput25136.moment H :=
  canonical_of_padded canonicalInput25136 canonicalOutput25136 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25137 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![0, 0, -1, 2, -1], ![2, -1, 0, 0, -1], ![-1, 2, 1, -1, -1]]⟩

def canonicalOutput25137 : ExponentCode := normalNode2194

theorem canonicalSound25137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25137.moment H = canonicalOutput25137.moment H :=
  canonical_of_padded canonicalInput25137 canonicalOutput25137 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput25138 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![0, 1, -1, -1, 1], ![2, -1, 0, 0, -1], ![-1, 1, 1, 2, -3]]⟩

def canonicalOutput25138 : ExponentCode := normalNode1151

theorem canonicalSound25138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25138.moment H = canonicalOutput25138.moment H :=
  canonical_of_padded canonicalInput25138 canonicalOutput25138 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation395, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput25139 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![0, 2, 0, -1, -1], ![2, -1, -1, 0, 0], ![-1, 0, 1, 2, -2]]⟩

def canonicalOutput25139 : ExponentCode := normalNode1602

theorem canonicalSound25139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25139.moment H = canonicalOutput25139.moment H :=
  canonical_of_padded canonicalInput25139 canonicalOutput25139 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation312, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput25140 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 0, 1, -1, 1], ![0, 2, 0, -1, -1], ![2, 0, -1, 0, -1], ![-1, -1, 1, 2, -1]]⟩

def canonicalOutput25140 : ExponentCode := normalNode2221

theorem canonicalSound25140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25140.moment H = canonicalOutput25140.moment H :=
  canonical_of_padded canonicalInput25140 canonicalOutput25140 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput25141 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![-1, -1, 0, 2, 0], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput25141 : ExponentCode := normalNode1459

theorem canonicalSound25141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25141.moment H = canonicalOutput25141.moment H :=
  canonical_of_padded canonicalInput25141 canonicalOutput25141 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25142 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![-1, -1, 0, 2, 0], ![0, 1, 1, 0, -2], ![2, 0, 1, -2, -1]]⟩

def canonicalOutput25142 : ExponentCode := normalNode1607

theorem canonicalSound25142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25142.moment H = canonicalOutput25142.moment H :=
  canonical_of_padded canonicalInput25142 canonicalOutput25142 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25143 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![-1, -1, 0, 2, 0], ![1, 0, 1, -2, 0], ![1, 1, 1, 0, -3]]⟩

def canonicalOutput25143 : ExponentCode := normalNode4575

theorem canonicalSound25143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25143.moment H = canonicalOutput25143.moment H :=
  canonical_of_padded canonicalInput25143 canonicalOutput25143 (by decide) (by decide)
    ⟨false, true, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput25144 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![-1, -1, 0, 2, 0], ![1, 0, 1, 0, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput25144 : ExponentCode := normalNode4578

theorem canonicalSound25144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25144.moment H = canonicalOutput25144.moment H :=
  canonical_of_padded canonicalInput25144 canonicalOutput25144 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation192⟩ (by decide +kernel) hH

def canonicalInput25145 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![-1, -1, 0, 2, 0], ![1, 1, 0, -2, 0], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput25145 : ExponentCode := normalNode1461

theorem canonicalSound25145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25145.moment H = canonicalOutput25145.moment H :=
  canonical_of_padded canonicalInput25145 canonicalOutput25145 (by decide) (by decide)
    ⟨false, true, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput25146 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![-1, -1, 0, 2, 0], ![1, 1, 0, 0, -2], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput25146 : ExponentCode := normalNode1609

theorem canonicalSound25146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25146.moment H = canonicalOutput25146.moment H :=
  canonical_of_padded canonicalInput25146 canonicalOutput25146 (by decide) (by decide)
    ⟨false, true, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput25147 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![-1, 0, 0, 2, -1], ![0, -1, 1, -1, 1], ![2, 1, 1, -1, -3]]⟩

def canonicalOutput25147 : ExponentCode := normalNode1148

theorem canonicalSound25147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25147.moment H = canonicalOutput25147.moment H :=
  canonical_of_padded canonicalInput25147 canonicalOutput25147 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25148 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![-1, 0, 0, 2, -1], ![0, 1, 1, 0, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput25148 : ExponentCode := normalNode2863

theorem canonicalSound25148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25148.moment H = canonicalOutput25148.moment H :=
  canonical_of_padded canonicalInput25148 canonicalOutput25148 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation396, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25149 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![-1, 0, 0, 2, -1], ![1, 1, 0, 0, -2], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput25149 : ExponentCode := normalNode2862

theorem canonicalSound25149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25149.moment H = canonicalOutput25149.moment H :=
  canonical_of_padded canonicalInput25149 canonicalOutput25149 (by decide) (by decide)
    ⟨false, true, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput25150 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![-1, 0, 1, 1, -1], ![0, 1, 0, 1, -2], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput25150 : ExponentCode := normalNode2874

theorem canonicalSound25150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25150.moment H = canonicalOutput25150.moment H :=
  canonical_of_padded canonicalInput25150 canonicalOutput25150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput25151 : ExponentCode := ⟨6, 5, ![![0, -1, 0, 0, 1], ![0, 0, -1, 0, 1], ![-1, 1, -1, 0, 1], ![0, -1, 1, -1, 1], ![-1, 0, 1, 2, -2], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput25151 : ExponentCode := normalNode1601

theorem canonicalSound25151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25151.moment H = canonicalOutput25151.moment H :=
  canonical_of_padded canonicalInput25151 canonicalOutput25151 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
