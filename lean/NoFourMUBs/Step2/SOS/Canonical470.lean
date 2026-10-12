import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30080 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, -2, -1, 3], ![0, 2, 1, -3]]⟩

def canonicalOutput30080 : ExponentCode := normalNode3344

theorem canonicalSound30080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30080.moment H = canonicalOutput30080.moment H :=
  canonical_of_padded canonicalInput30080 canonicalOutput30080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30081 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, -1, -1, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput30081 : ExponentCode := normalNode10233

theorem canonicalSound30081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30081.moment H = canonicalOutput30081.moment H :=
  canonical_of_padded canonicalInput30081 canonicalOutput30081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30082 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -2, -1, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput30082 : ExponentCode := normalNode3576

theorem canonicalSound30082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30082.moment H = canonicalOutput30082.moment H :=
  canonical_of_padded canonicalInput30082 canonicalOutput30082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30083 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, -1, 2], ![0, 0, 2, -2]]⟩

def canonicalOutput30083 : ExponentCode := normalNode10329

theorem canonicalSound30083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30083.moment H = canonicalOutput30083.moment H :=
  canonical_of_padded canonicalInput30083 canonicalOutput30083 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30084 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 2, -1], ![-1, 0, 2, 0, -1], ![0, 1, -1, -1, 1], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput30084 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2084⟩

theorem canonicalSound30084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30084.moment H = canonicalOutput30084.moment H :=
  canonical_of_padded canonicalInput30084 canonicalOutput30084 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30085 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 2, -1], ![-1, 0, 2, 0, -1], ![0, 1, 0, -2, 1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput30085 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2018⟩

theorem canonicalSound30085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30085.moment H = canonicalOutput30085.moment H :=
  canonical_of_padded canonicalInput30085 canonicalOutput30085 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30086 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 2, -1], ![0, 0, 2, 0, -2], ![-1, 1, -1, -1, 2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput30086 : ExponentCode := normalNode2649

theorem canonicalSound30086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30086.moment H = canonicalOutput30086.moment H :=
  canonical_of_padded canonicalInput30086 canonicalOutput30086 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput30087 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 2, -1], ![0, 0, 2, 0, -2], ![-1, 1, 0, -2, 2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput30087 : ExponentCode := normalNode2651

theorem canonicalSound30087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30087.moment H = canonicalOutput30087.moment H :=
  canonical_of_padded canonicalInput30087 canonicalOutput30087 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput30088 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, -1, -1, 1], ![0, -1, 0, -1, 2]]⟩

def canonicalOutput30088 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1058⟩

theorem canonicalSound30088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30088.moment H = canonicalOutput30088.moment H :=
  canonical_of_padded canonicalInput30088 canonicalOutput30088 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30089 : ExponentCode := ⟨4, 5, ![![0, 0, -1, 2, -1], ![0, 0, 2, 0, -2], ![0, 1, 0, -2, 1], ![0, -1, -1, 0, 2]]⟩

def canonicalOutput30089 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound30089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30089.moment H = canonicalOutput30089.moment H :=
  canonical_of_padded canonicalInput30089 canonicalOutput30089 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30090 : ExponentCode := ⟨6, 3, ![![0, 0, 0], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![1, 2, -3], ![-3, -1, 4]]⟩

def canonicalOutput30090 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node320⟩

theorem canonicalSound30090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30090.moment H = canonicalOutput30090.moment H :=
  canonical_of_padded canonicalInput30090 canonicalOutput30090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30091 : ExponentCode := ⟨6, 3, ![![0, 0, 0], ![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![0, 3, -3], ![-3, -1, 4]]⟩

def canonicalOutput30091 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node324⟩

theorem canonicalSound30091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30091.moment H = canonicalOutput30091.moment H :=
  canonical_of_padded canonicalInput30091 canonicalOutput30091 (by decide) (by decide)
    ⟨false, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30092 : ExponentCode := ⟨6, 3, ![![0, 0, 0], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![1, 1, -2]]⟩

def canonicalOutput30092 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1141⟩

theorem canonicalSound30092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30092.moment H = canonicalOutput30092.moment H :=
  canonical_of_padded canonicalInput30092 canonicalOutput30092 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30093 : ExponentCode := ⟨6, 3, ![![0, 0, 0], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![0, -3, 3], ![0, 3, -3]]⟩

def canonicalOutput30093 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node700⟩

theorem canonicalSound30093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30093.moment H = canonicalOutput30093.moment H :=
  canonical_of_padded canonicalInput30093 canonicalOutput30093 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30094 : ExponentCode := ⟨6, 3, ![![0, 0, 0], ![1, -1, 0], ![1, 0, -1], ![-1, -1, 2], ![-1, -1, 2], ![0, 3, -3]]⟩

def canonicalOutput30094 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1132⟩

theorem canonicalSound30094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30094.moment H = canonicalOutput30094.moment H :=
  canonical_of_padded canonicalInput30094 canonicalOutput30094 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30095 : ExponentCode := ⟨6, 3, ![![0, 0, 0], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-2, 3, -1], ![-1, -2, 3]]⟩

def canonicalOutput30095 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node372⟩

theorem canonicalSound30095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30095.moment H = canonicalOutput30095.moment H :=
  canonical_of_padded canonicalInput30095 canonicalOutput30095 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30096 : ExponentCode := ⟨6, 3, ![![0, 0, 0], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-1, 3, -2], ![-2, -2, 4]]⟩

def canonicalOutput30096 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node362⟩

theorem canonicalSound30096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30096.moment H = canonicalOutput30096.moment H :=
  canonical_of_padded canonicalInput30096 canonicalOutput30096 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30097 : ExponentCode := ⟨6, 3, ![![0, 0, 0], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-3, 3, 0], ![0, -3, 3]]⟩

def canonicalOutput30097 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node341⟩

theorem canonicalSound30097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30097.moment H = canonicalOutput30097.moment H :=
  canonical_of_padded canonicalInput30097 canonicalOutput30097 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30098 : ExponentCode := ⟨6, 3, ![![0, 0, 0], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![-2, 3, -1], ![-1, -3, 4]]⟩

def canonicalOutput30098 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node312⟩

theorem canonicalSound30098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30098.moment H = canonicalOutput30098.moment H :=
  canonical_of_padded canonicalInput30098 canonicalOutput30098 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30099 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -3, 3], ![-1, 0, 1, 3, -3], ![0, 1, -2, 0, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput30099 : ExponentCode := normalNode5457

theorem canonicalSound30099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30099.moment H = canonicalOutput30099.moment H :=
  canonical_of_padded canonicalInput30099 canonicalOutput30099 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput30100 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -3, 3], ![-1, 0, 1, 3, -3], ![0, 1, -1, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput30100 : ExponentCode := normalNode10674

theorem canonicalSound30100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30100.moment H = canonicalOutput30100.moment H :=
  canonical_of_padded canonicalInput30100 canonicalOutput30100 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput30101 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![-1, 1, -1, 0, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput30101 : ExponentCode := normalNode10949

theorem canonicalSound30101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30101.moment H = canonicalOutput30101.moment H :=
  canonical_of_padded canonicalInput30101 canonicalOutput30101 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput30102 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![-1, 1, 0, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput30102 : ExponentCode := normalNode11156

theorem canonicalSound30102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30102.moment H = canonicalOutput30102.moment H :=
  canonical_of_padded canonicalInput30102 canonicalOutput30102 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput30103 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![0, 1, -2, 0, 1], ![0, -1, 2, 0, -1]]⟩

def canonicalOutput30103 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1375⟩

theorem canonicalSound30103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30103.moment H = canonicalOutput30103.moment H :=
  canonical_of_padded canonicalInput30103 canonicalOutput30103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30104 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![0, 1, -1, 0, 0], ![0, -1, 1, 0, 0]]⟩

def canonicalOutput30104 : ExponentCode := normalNode11156

theorem canonicalSound30104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30104.moment H = canonicalOutput30104.moment H :=
  canonical_of_padded canonicalInput30104 canonicalOutput30104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30105 : ExponentCode := ⟨5, 6, ![![0, 0, 0, -2, 1, 1], ![-1, 0, 1, 1, -2, 1], ![0, 0, 0, 1, 1, -2], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0]]⟩

def canonicalOutput30105 : ExponentCode := normalNode10467

theorem canonicalSound30105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30105.moment H = canonicalOutput30105.moment H :=
  canonical_of_padded canonicalInput30105 canonicalOutput30105 (by decide) (by decide)
    ⟨true, false, canonicalPermutation101, canonicalPermutation58⟩ (by decide +kernel) hH

def canonicalInput30106 : ExponentCode := ⟨5, 6, ![![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, -2, 1], ![-1, 0, 1, 1, 1, -2], ![0, 1, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0]]⟩

def canonicalOutput30106 : ExponentCode := normalNode10467

theorem canonicalSound30106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30106.moment H = canonicalOutput30106.moment H :=
  canonical_of_padded canonicalInput30106 canonicalOutput30106 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation195⟩ (by decide +kernel) hH

def canonicalInput30107 : ExponentCode := ⟨5, 6, ![![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 1, 1, -2], ![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0]]⟩

def canonicalOutput30107 : ExponentCode := normalNode11165

theorem canonicalSound30107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30107.moment H = canonicalOutput30107.moment H :=
  canonical_of_padded canonicalInput30107 canonicalOutput30107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput30108 : ExponentCode := ⟨5, 6, ![![0, 0, 0, -2, 1, 1], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 1, 1, -2], ![0, 1, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0]]⟩

def canonicalOutput30108 : ExponentCode := normalNode11165

theorem canonicalSound30108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30108.moment H = canonicalOutput30108.moment H :=
  canonical_of_padded canonicalInput30108 canonicalOutput30108 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30109 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -2, 2], ![-1, 0, 1, 2, -2], ![0, 1, -2, 0, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput30109 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1742⟩

theorem canonicalSound30109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30109.moment H = canonicalOutput30109.moment H :=
  canonical_of_padded canonicalInput30109 canonicalOutput30109 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30110 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -2, 2], ![-1, 0, 2, 1, -2], ![0, 1, -2, 0, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput30110 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1743⟩

theorem canonicalSound30110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30110.moment H = canonicalOutput30110.moment H :=
  canonical_of_padded canonicalInput30110 canonicalOutput30110 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30111 : ExponentCode := ⟨5, 5, ![![0, 0, 0, -2, 2], ![0, -2, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0], ![0, 1, 1, -1, -1]]⟩

def canonicalOutput30111 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1190

theorem canonicalSound30111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30111.moment H = canonicalOutput30111.moment H :=
  canonical_of_padded canonicalInput30111 canonicalOutput30111 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30112 : ExponentCode := ⟨5, 5, ![![0, 0, 0, -2, 2], ![0, -1, -1, 1, 1], ![0, -1, 2, -1, 0], ![0, 0, 0, 2, -2], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput30112 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1190

theorem canonicalSound30112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30112.moment H = canonicalOutput30112.moment H :=
  canonical_of_padded canonicalInput30112 canonicalOutput30112 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30113 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -2, 2], ![0, -1, 0, 2, -1], ![0, 0, 2, -1, -1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput30113 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound30113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30113.moment H = canonicalOutput30113.moment H :=
  canonical_of_padded canonicalInput30113 canonicalOutput30113 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30114 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -2, 2], ![0, -1, 2, -1, 0], ![0, 0, -2, 2, 0], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput30114 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound30114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30114.moment H = canonicalOutput30114.moment H :=
  canonical_of_padded canonicalInput30114 canonicalOutput30114 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30115 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -2, 2], ![0, -1, 2, -1, 0], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput30115 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound30115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30115.moment H = canonicalOutput30115.moment H :=
  canonical_of_padded canonicalInput30115 canonicalOutput30115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput30116 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![-1, 1, -2, 1, 1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput30116 : ExponentCode := normalNode2932

theorem canonicalSound30116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30116.moment H = canonicalOutput30116.moment H :=
  canonical_of_padded canonicalInput30116 canonicalOutput30116 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput30117 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![0, 1, -2, 0, 1], ![0, -1, 1, 1, -1]]⟩

def canonicalOutput30117 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound30117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30117.moment H = canonicalOutput30117.moment H :=
  canonical_of_padded canonicalInput30117 canonicalOutput30117 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30118 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![-1, 1, -2, 1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput30118 : ExponentCode := normalNode2931

theorem canonicalSound30118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30118.moment H = canonicalOutput30118.moment H :=
  canonical_of_padded canonicalInput30118 canonicalOutput30118 (by decide) (by decide)
    ⟨true, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput30119 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![0, 1, -2, 0, 1], ![0, -1, 0, 2, -1]]⟩

def canonicalOutput30119 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound30119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30119.moment H = canonicalOutput30119.moment H :=
  canonical_of_padded canonicalInput30119 canonicalOutput30119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30120 : ExponentCode := ⟨6, 5, ![![0, 0, 0, -1, 1], ![-2, 0, 2, 1, -1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput30120 : ExponentCode := normalNode4639

theorem canonicalSound30120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30120.moment H = canonicalOutput30120.moment H :=
  canonical_of_padded canonicalInput30120 canonicalOutput30120 (by decide) (by decide)
    ⟨false, false, canonicalPermutation352, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30121 : ExponentCode := ⟨6, 5, ![![0, 0, 0, -1, 1], ![-1, 0, 1, 1, -1], ![-1, 1, 0, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput30121 : ExponentCode := normalNode10806

theorem canonicalSound30121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30121.moment H = canonicalOutput30121.moment H :=
  canonical_of_padded canonicalInput30121 canonicalOutput30121 (by decide) (by decide)
    ⟨false, false, canonicalPermutation368, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput30122 : ExponentCode := ⟨6, 5, ![![0, 0, 0, -1, 1], ![-1, 0, 1, 1, -1], ![0, 1, -1, -1, 1], ![-1, 1, 0, 1, -1], ![1, -1, 0, -1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput30122 : ExponentCode := normalNode10800

theorem canonicalSound30122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30122.moment H = canonicalOutput30122.moment H :=
  canonical_of_padded canonicalInput30122 canonicalOutput30122 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation212, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput30123 : ExponentCode := ⟨6, 5, ![![0, 0, 0, -1, 1], ![-1, 0, 1, 1, -1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![0, -1, 1, -1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput30123 : ExponentCode := normalNode10806

theorem canonicalSound30123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30123.moment H = canonicalOutput30123.moment H :=
  canonical_of_padded canonicalInput30123 canonicalOutput30123 (by decide) (by decide)
    ⟨false, false, canonicalPermutation113, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30124 : ExponentCode := ⟨6, 5, ![![0, 0, 0, -1, 1], ![-1, 0, 1, 1, -1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1], ![0, -1, 1, 1, -1]]⟩

def canonicalOutput30124 : ExponentCode := normalNode10800

theorem canonicalSound30124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30124.moment H = canonicalOutput30124.moment H :=
  canonical_of_padded canonicalInput30124 canonicalOutput30124 (by decide) (by decide)
    ⟨false, false, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30125 : ExponentCode := ⟨5, 5, ![![0, 0, 0, -1, 1], ![0, -2, 0, 1, 1], ![0, 0, 2, -2, 0], ![0, 1, -2, 1, 0], ![0, 1, 0, 1, -2]]⟩

def canonicalOutput30125 : ExponentCode := normalNode3873

theorem canonicalSound30125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30125.moment H = canonicalOutput30125.moment H :=
  canonical_of_padded canonicalInput30125 canonicalOutput30125 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput30126 : ExponentCode := ⟨4, 5, ![![0, 0, 0, -1, 1], ![0, -1, 1, 1, -1], ![0, 0, 1, -2, 1], ![0, 1, -2, 2, -1]]⟩

def canonicalOutput30126 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound30126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30126.moment H = canonicalOutput30126.moment H :=
  canonical_of_padded canonicalInput30126 canonicalOutput30126 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30127 : ExponentCode := ⟨3, 4, ![![0, 0, 0, 0], ![-3, 2, 2, -1], ![3, -2, -2, 1]]⟩

def canonicalOutput30127 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node25⟩

theorem canonicalSound30127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30127.moment H = canonicalOutput30127.moment H :=
  canonical_of_padded canonicalInput30127 canonicalOutput30127 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30128 : ExponentCode := ⟨3, 4, ![![0, 0, 0, 0], ![-2, -2, 2, 2], ![2, 2, -2, -2]]⟩

def canonicalOutput30128 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node45⟩

theorem canonicalSound30128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30128.moment H = canonicalOutput30128.moment H :=
  canonical_of_padded canonicalInput30128 canonicalOutput30128 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30129 : ExponentCode := ⟨3, 4, ![![0, 0, 0, 0], ![-2, -2, 3, 1], ![2, 2, -3, -1]]⟩

def canonicalOutput30129 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node25⟩

theorem canonicalSound30129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30129.moment H = canonicalOutput30129.moment H :=
  canonical_of_padded canonicalInput30129 canonicalOutput30129 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30130 : ExponentCode := ⟨3, 4, ![![0, 0, 0, 0], ![-2, 2, 2, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput30130 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node45⟩

theorem canonicalSound30130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30130.moment H = canonicalOutput30130.moment H :=
  canonical_of_padded canonicalInput30130 canonicalOutput30130 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30131 : ExponentCode := ⟨3, 4, ![![0, 0, 0, 0], ![-1, -3, 3, 1], ![1, 3, -3, -1]]⟩

def canonicalOutput30131 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node24⟩

theorem canonicalSound30131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30131.moment H = canonicalOutput30131.moment H :=
  canonical_of_padded canonicalInput30131 canonicalOutput30131 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30132 : ExponentCode := ⟨3, 4, ![![0, 0, 0, 0], ![-1, -2, 4, -1], ![1, 2, -4, 1]]⟩

def canonicalOutput30132 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node16⟩

theorem canonicalSound30132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30132.moment H = canonicalOutput30132.moment H :=
  canonical_of_padded canonicalInput30132 canonicalOutput30132 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30133 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, -1, -2], ![-2, -2, 0, 4]]⟩

def canonicalOutput30133 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1458⟩

theorem canonicalSound30133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30133.moment H = canonicalOutput30133.moment H :=
  canonical_of_padded canonicalInput30133 canonicalOutput30133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30134 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 0, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput30134 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1503⟩

theorem canonicalSound30134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30134.moment H = canonicalOutput30134.moment H :=
  canonical_of_padded canonicalInput30134 canonicalOutput30134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30135 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 1, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput30135 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1548⟩

theorem canonicalSound30135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30135.moment H = canonicalOutput30135.moment H :=
  canonical_of_padded canonicalInput30135 canonicalOutput30135 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30136 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput30136 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1504⟩

theorem canonicalSound30136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30136.moment H = canonicalOutput30136.moment H :=
  canonical_of_padded canonicalInput30136 canonicalOutput30136 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30137 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 1, 0, -2], ![-2, 0, -1, 3]]⟩

def canonicalOutput30137 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1639⟩

theorem canonicalSound30137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30137.moment H = canonicalOutput30137.moment H :=
  canonical_of_padded canonicalInput30137 canonicalOutput30137 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30138 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput30138 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1558⟩

theorem canonicalSound30138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30138.moment H = canonicalOutput30138.moment H :=
  canonical_of_padded canonicalInput30138 canonicalOutput30138 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30139 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput30139 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1469⟩

theorem canonicalSound30139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30139.moment H = canonicalOutput30139.moment H :=
  canonical_of_padded canonicalInput30139 canonicalOutput30139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30140 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![-2, -1, 1, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput30140 : ExponentCode := normalNode2298

theorem canonicalSound30140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30140.moment H = canonicalOutput30140.moment H :=
  canonical_of_padded canonicalInput30140 canonicalOutput30140 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30141 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, -1, -1, 2], ![-2, 1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput30141 : ExponentCode := normalNode2298

theorem canonicalSound30141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30141.moment H = canonicalOutput30141.moment H :=
  canonical_of_padded canonicalInput30141 canonicalOutput30141 (by decide) (by decide)
    ⟨false, false, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30142 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, 1, -1], ![-2, 0, -2, 4]]⟩

def canonicalOutput30142 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1459⟩

theorem canonicalSound30142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30142.moment H = canonicalOutput30142.moment H :=
  canonical_of_padded canonicalInput30142 canonicalOutput30142 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30143 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, -2, 1, 3]]⟩

def canonicalOutput30143 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1507⟩

theorem canonicalSound30143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30143.moment H = canonicalOutput30143.moment H :=
  canonical_of_padded canonicalInput30143 canonicalOutput30143 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
