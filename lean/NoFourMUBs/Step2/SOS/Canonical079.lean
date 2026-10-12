import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput5056 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput5056 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2446⟩

theorem canonicalSound5056 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5056.moment H = canonicalOutput5056.moment H :=
  canonical_of_padded canonicalInput5056 canonicalOutput5056 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5057 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput5057 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1846⟩

theorem canonicalSound5057 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5057.moment H = canonicalOutput5057.moment H :=
  canonical_of_padded canonicalInput5057 canonicalOutput5057 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5058 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput5058 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩

theorem canonicalSound5058 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5058.moment H = canonicalOutput5058.moment H :=
  canonical_of_padded canonicalInput5058 canonicalOutput5058 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5059 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput5059 : ExponentCode := normalNode7017

theorem canonicalSound5059 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5059.moment H = canonicalOutput5059.moment H :=
  canonical_of_padded canonicalInput5059 canonicalOutput5059 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5060 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput5060 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2454⟩

theorem canonicalSound5060 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5060.moment H = canonicalOutput5060.moment H :=
  canonical_of_padded canonicalInput5060 canonicalOutput5060 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5061 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput5061 : ExponentCode := normalNode7021

theorem canonicalSound5061 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5061.moment H = canonicalOutput5061.moment H :=
  canonical_of_padded canonicalInput5061 canonicalOutput5061 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5062 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 0, 0, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput5062 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node840⟩

theorem canonicalSound5062 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5062.moment H = canonicalOutput5062.moment H :=
  canonical_of_padded canonicalInput5062 canonicalOutput5062 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5063 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 0, 1, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput5063 : ExponentCode := normalNode7024

theorem canonicalSound5063 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5063.moment H = canonicalOutput5063.moment H :=
  canonical_of_padded canonicalInput5063 canonicalOutput5063 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5064 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 2, 0, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput5064 : ExponentCode := normalNode3939

theorem canonicalSound5064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5064.moment H = canonicalOutput5064.moment H :=
  canonical_of_padded canonicalInput5064 canonicalOutput5064 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput5065 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput5065 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node840⟩

theorem canonicalSound5065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5065.moment H = canonicalOutput5065.moment H :=
  canonical_of_padded canonicalInput5065 canonicalOutput5065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5066 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 2, -2, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput5066 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2235⟩

theorem canonicalSound5066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5066.moment H = canonicalOutput5066.moment H :=
  canonical_of_padded canonicalInput5066 canonicalOutput5066 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5067 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput5067 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1844⟩

theorem canonicalSound5067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5067.moment H = canonicalOutput5067.moment H :=
  canonical_of_padded canonicalInput5067 canonicalOutput5067 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput5068 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput5068 : ExponentCode := normalNode5113

theorem canonicalSound5068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5068.moment H = canonicalOutput5068.moment H :=
  canonical_of_padded canonicalInput5068 canonicalOutput5068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5069 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput5069 : ExponentCode := normalNode2966

theorem canonicalSound5069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5069.moment H = canonicalOutput5069.moment H :=
  canonical_of_padded canonicalInput5069 canonicalOutput5069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput5070 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput5070 : ExponentCode := normalNode7031

theorem canonicalSound5070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5070.moment H = canonicalOutput5070.moment H :=
  canonical_of_padded canonicalInput5070 canonicalOutput5070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5071 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5071 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2449⟩

theorem canonicalSound5071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5071.moment H = canonicalOutput5071.moment H :=
  canonical_of_padded canonicalInput5071 canonicalOutput5071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5072 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput5072 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound5072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5072.moment H = canonicalOutput5072.moment H :=
  canonical_of_padded canonicalInput5072 canonicalOutput5072 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5073 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput5073 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2446⟩

theorem canonicalSound5073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5073.moment H = canonicalOutput5073.moment H :=
  canonical_of_padded canonicalInput5073 canonicalOutput5073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5074 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, -2, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput5074 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩

theorem canonicalSound5074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5074.moment H = canonicalOutput5074.moment H :=
  canonical_of_padded canonicalInput5074 canonicalOutput5074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5075 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -3, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput5075 : ExponentCode := normalNode2482

theorem canonicalSound5075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5075.moment H = canonicalOutput5075.moment H :=
  canonical_of_padded canonicalInput5075 canonicalOutput5075 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput5076 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput5076 : ExponentCode := normalNode5101

theorem canonicalSound5076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5076.moment H = canonicalOutput5076.moment H :=
  canonical_of_padded canonicalInput5076 canonicalOutput5076 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput5077 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, 0, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput5077 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2236⟩

theorem canonicalSound5077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5077.moment H = canonicalOutput5077.moment H :=
  canonical_of_padded canonicalInput5077 canonicalOutput5077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5078 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, 2, -2, -1]]⟩

def canonicalOutput5078 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2229⟩

theorem canonicalSound5078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5078.moment H = canonicalOutput5078.moment H :=
  canonical_of_padded canonicalInput5078 canonicalOutput5078 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5079 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput5079 : ExponentCode := normalNode5844

theorem canonicalSound5079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5079.moment H = canonicalOutput5079.moment H :=
  canonical_of_padded canonicalInput5079 canonicalOutput5079 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5080 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput5080 : ExponentCode := normalNode2751

theorem canonicalSound5080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5080.moment H = canonicalOutput5080.moment H :=
  canonical_of_padded canonicalInput5080 canonicalOutput5080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5081 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput5081 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node839⟩

theorem canonicalSound5081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5081.moment H = canonicalOutput5081.moment H :=
  canonical_of_padded canonicalInput5081 canonicalOutput5081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5082 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput5082 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1798⟩

theorem canonicalSound5082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5082.moment H = canonicalOutput5082.moment H :=
  canonical_of_padded canonicalInput5082 canonicalOutput5082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5083 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, -3, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput5083 : ExponentCode := normalNode6951

theorem canonicalSound5083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5083.moment H = canonicalOutput5083.moment H :=
  canonical_of_padded canonicalInput5083 canonicalOutput5083 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput5084 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput5084 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2044⟩

theorem canonicalSound5084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5084.moment H = canonicalOutput5084.moment H :=
  canonical_of_padded canonicalInput5084 canonicalOutput5084 (by decide) (by decide)
    ⟨false, false, canonicalPermutation26, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput5085 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput5085 : ExponentCode := normalNode5135

theorem canonicalSound5085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5085.moment H = canonicalOutput5085.moment H :=
  canonical_of_padded canonicalInput5085 canonicalOutput5085 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5086 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput5086 : ExponentCode := normalNode2761

theorem canonicalSound5086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5086.moment H = canonicalOutput5086.moment H :=
  canonical_of_padded canonicalInput5086 canonicalOutput5086 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5087 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput5087 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1793⟩

theorem canonicalSound5087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5087.moment H = canonicalOutput5087.moment H :=
  canonical_of_padded canonicalInput5087 canonicalOutput5087 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput5088 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput5088 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1804⟩

theorem canonicalSound5088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5088.moment H = canonicalOutput5088.moment H :=
  canonical_of_padded canonicalInput5088 canonicalOutput5088 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5089 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput5089 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound5089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5089.moment H = canonicalOutput5089.moment H :=
  canonical_of_padded canonicalInput5089 canonicalOutput5089 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5090 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 2, 1, -3], ![2, -1, -3, 2]]⟩

def canonicalOutput5090 : ExponentCode := normalNode6220

theorem canonicalSound5090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5090.moment H = canonicalOutput5090.moment H :=
  canonical_of_padded canonicalInput5090 canonicalOutput5090 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5091 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 3, -3, 0], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput5091 : ExponentCode := normalNode5867

theorem canonicalSound5091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5091.moment H = canonicalOutput5091.moment H :=
  canonical_of_padded canonicalInput5091 canonicalOutput5091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput5092 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput5092 : ExponentCode := normalNode5840

theorem canonicalSound5092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5092.moment H = canonicalOutput5092.moment H :=
  canonical_of_padded canonicalInput5092 canonicalOutput5092 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput5093 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput5093 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩

theorem canonicalSound5093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5093.moment H = canonicalOutput5093.moment H :=
  canonical_of_padded canonicalInput5093 canonicalOutput5093 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput5094 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 3, -2, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput5094 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩

theorem canonicalSound5094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5094.moment H = canonicalOutput5094.moment H :=
  canonical_of_padded canonicalInput5094 canonicalOutput5094 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5095 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput5095 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2212⟩

theorem canonicalSound5095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5095.moment H = canonicalOutput5095.moment H :=
  canonical_of_padded canonicalInput5095 canonicalOutput5095 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput5096 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![0, 3, -1, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput5096 : ExponentCode := normalNode7052

theorem canonicalSound5096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5096.moment H = canonicalOutput5096.moment H :=
  canonical_of_padded canonicalInput5096 canonicalOutput5096 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput5097 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput5097 : ExponentCode := normalNode9481

theorem canonicalSound5097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5097.moment H = canonicalOutput5097.moment H :=
  canonical_of_padded canonicalInput5097 canonicalOutput5097 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5098 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput5098 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1248⟩

theorem canonicalSound5098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5098.moment H = canonicalOutput5098.moment H :=
  canonical_of_padded canonicalInput5098 canonicalOutput5098 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5099 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput5099 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node947⟩

theorem canonicalSound5099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5099.moment H = canonicalOutput5099.moment H :=
  canonical_of_padded canonicalInput5099 canonicalOutput5099 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5100 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput5100 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩

theorem canonicalSound5100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5100.moment H = canonicalOutput5100.moment H :=
  canonical_of_padded canonicalInput5100 canonicalOutput5100 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput5101 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput5101 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound5101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5101.moment H = canonicalOutput5101.moment H :=
  canonical_of_padded canonicalInput5101 canonicalOutput5101 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput5102 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput5102 : ExponentCode := normalNode7030

theorem canonicalSound5102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5102.moment H = canonicalOutput5102.moment H :=
  canonical_of_padded canonicalInput5102 canonicalOutput5102 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5103 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput5103 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound5103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5103.moment H = canonicalOutput5103.moment H :=
  canonical_of_padded canonicalInput5103 canonicalOutput5103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5104 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput5104 : ExponentCode := normalNode7037

theorem canonicalSound5104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5104.moment H = canonicalOutput5104.moment H :=
  canonical_of_padded canonicalInput5104 canonicalOutput5104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5105 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, 1, -4, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput5105 : ExponentCode := normalNode7038

theorem canonicalSound5105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5105.moment H = canonicalOutput5105.moment H :=
  canonical_of_padded canonicalInput5105 canonicalOutput5105 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5106 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput5106 : ExponentCode := normalNode7037

theorem canonicalSound5106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5106.moment H = canonicalOutput5106.moment H :=
  canonical_of_padded canonicalInput5106 canonicalOutput5106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5107 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput5107 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound5107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5107.moment H = canonicalOutput5107.moment H :=
  canonical_of_padded canonicalInput5107 canonicalOutput5107 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput5108 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput5108 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound5108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5108.moment H = canonicalOutput5108.moment H :=
  canonical_of_padded canonicalInput5108 canonicalOutput5108 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput5109 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput5109 : ExponentCode := normalNode6966

theorem canonicalSound5109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5109.moment H = canonicalOutput5109.moment H :=
  canonical_of_padded canonicalInput5109 canonicalOutput5109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5110 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput5110 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node853⟩

theorem canonicalSound5110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5110.moment H = canonicalOutput5110.moment H :=
  canonical_of_padded canonicalInput5110 canonicalOutput5110 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5111 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 1, -3, 2], ![2, 0, 0, -2]]⟩

def canonicalOutput5111 : ExponentCode := normalNode7051

theorem canonicalSound5111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5111.moment H = canonicalOutput5111.moment H :=
  canonical_of_padded canonicalInput5111 canonicalOutput5111 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5112 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![2, -2, 0, 0]]⟩

def canonicalOutput5112 : ExponentCode := normalNode4072

theorem canonicalSound5112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5112.moment H = canonicalOutput5112.moment H :=
  canonical_of_padded canonicalInput5112 canonicalOutput5112 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput5113 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput5113 : ExponentCode := normalNode2755

theorem canonicalSound5113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5113.moment H = canonicalOutput5113.moment H :=
  canonical_of_padded canonicalInput5113 canonicalOutput5113 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput5114 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput5114 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2453⟩

theorem canonicalSound5114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5114.moment H = canonicalOutput5114.moment H :=
  canonical_of_padded canonicalInput5114 canonicalOutput5114 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5115 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, 0, -2, 0]]⟩

def canonicalOutput5115 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node854⟩

theorem canonicalSound5115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5115.moment H = canonicalOutput5115.moment H :=
  canonical_of_padded canonicalInput5115 canonicalOutput5115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput5116 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput5116 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2451⟩

theorem canonicalSound5116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5116.moment H = canonicalOutput5116.moment H :=
  canonical_of_padded canonicalInput5116 canonicalOutput5116 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5117 : ExponentCode := ⟨4, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 1, 1, -2], ![2, 0, -4, 2]]⟩

def canonicalOutput5117 : ExponentCode := normalNode7050

theorem canonicalSound5117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5117.moment H = canonicalOutput5117.moment H :=
  canonical_of_padded canonicalInput5117 canonicalOutput5117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput5118 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![0, 1, 0, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput5118 : ExponentCode := normalNode2777

theorem canonicalSound5118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5118.moment H = canonicalOutput5118.moment H :=
  canonical_of_padded canonicalInput5118 canonicalOutput5118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput5119 : ExponentCode := ⟨5, 4, ![![-2, -1, 1, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput5119 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1816⟩

theorem canonicalSound5119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput5119.moment H = canonicalOutput5119.moment H :=
  canonical_of_padded canonicalInput5119 canonicalOutput5119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
