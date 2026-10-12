import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput14080 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![0, -1, 3, -2], ![1, 3, -5, 1]]⟩

def canonicalOutput14080 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node72⟩

theorem canonicalSound14080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14080.moment H = canonicalOutput14080.moment H :=
  canonical_of_padded canonicalInput14080 canonicalOutput14080 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14081 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![0, 0, -3, 3], ![0, 1, 1, -2], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput14081 : ExponentCode := normalNode7117

theorem canonicalSound14081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14081.moment H = canonicalOutput14081.moment H :=
  canonical_of_padded canonicalInput14081 canonicalOutput14081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14082 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![0, 0, -3, 3], ![1, 2, 1, -4]]⟩

def canonicalOutput14082 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node81⟩

theorem canonicalSound14082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14082.moment H = canonicalOutput14082.moment H :=
  canonical_of_padded canonicalInput14082 canonicalOutput14082 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14083 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 0, -2, 2], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput14083 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node843⟩

theorem canonicalSound14083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14083.moment H = canonicalOutput14083.moment H :=
  canonical_of_padded canonicalInput14083 canonicalOutput14083 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14084 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 3, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput14084 : ExponentCode := normalNode7110

theorem canonicalSound14084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14084.moment H = canonicalOutput14084.moment H :=
  canonical_of_padded canonicalInput14084 canonicalOutput14084 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14085 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 2, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput14085 : ExponentCode := normalNode7123

theorem canonicalSound14085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14085.moment H = canonicalOutput14085.moment H :=
  canonical_of_padded canonicalInput14085 canonicalOutput14085 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14086 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 0, -1, 1], ![0, 3, 0, -3], ![1, -1, -1, 1]]⟩

def canonicalOutput14086 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node937⟩

theorem canonicalSound14086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14086.moment H = canonicalOutput14086.moment H :=
  canonical_of_padded canonicalInput14086 canonicalOutput14086 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14087 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput14087 : ExponentCode := normalNode6443

theorem canonicalSound14087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14087.moment H = canonicalOutput14087.moment H :=
  canonical_of_padded canonicalInput14087 canonicalOutput14087 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14088 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput14088 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2433⟩

theorem canonicalSound14088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14088.moment H = canonicalOutput14088.moment H :=
  canonical_of_padded canonicalInput14088 canonicalOutput14088 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14089 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, -4, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput14089 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2437⟩

theorem canonicalSound14089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14089.moment H = canonicalOutput14089.moment H :=
  canonical_of_padded canonicalInput14089 canonicalOutput14089 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14090 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput14090 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2443⟩

theorem canonicalSound14090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14090.moment H = canonicalOutput14090.moment H :=
  canonical_of_padded canonicalInput14090 canonicalOutput14090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14091 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput14091 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound14091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14091.moment H = canonicalOutput14091.moment H :=
  canonical_of_padded canonicalInput14091 canonicalOutput14091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14092 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput14092 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2442⟩

theorem canonicalSound14092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14092.moment H = canonicalOutput14092.moment H :=
  canonical_of_padded canonicalInput14092 canonicalOutput14092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14093 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -3, 2]]⟩

def canonicalOutput14093 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2441⟩

theorem canonicalSound14093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14093.moment H = canonicalOutput14093.moment H :=
  canonical_of_padded canonicalInput14093 canonicalOutput14093 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14094 : ExponentCode := ⟨5, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 2, -3, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput14094 : ExponentCode := normalNode10663

theorem canonicalSound14094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14094.moment H = canonicalOutput14094.moment H :=
  canonical_of_padded canonicalInput14094 canonicalOutput14094 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14095 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput14095 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1116⟩

theorem canonicalSound14095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14095.moment H = canonicalOutput14095.moment H :=
  canonical_of_padded canonicalInput14095 canonicalOutput14095 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14096 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput14096 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node834⟩

theorem canonicalSound14096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14096.moment H = canonicalOutput14096.moment H :=
  canonical_of_padded canonicalInput14096 canonicalOutput14096 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14097 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 2, -4, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput14097 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node826⟩

theorem canonicalSound14097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14097.moment H = canonicalOutput14097.moment H :=
  canonical_of_padded canonicalInput14097 canonicalOutput14097 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput14098 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput14098 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound14098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14098.moment H = canonicalOutput14098.moment H :=
  canonical_of_padded canonicalInput14098 canonicalOutput14098 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14099 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput14099 : ExponentCode := normalNode7011

theorem canonicalSound14099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14099.moment H = canonicalOutput14099.moment H :=
  canonical_of_padded canonicalInput14099 canonicalOutput14099 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14100 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 1, -4, 2]]⟩

def canonicalOutput14100 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node826⟩

theorem canonicalSound14100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14100.moment H = canonicalOutput14100.moment H :=
  canonical_of_padded canonicalInput14100 canonicalOutput14100 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14101 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 0, 2, -2], ![0, 2, -4, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput14101 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node833⟩

theorem canonicalSound14101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14101.moment H = canonicalOutput14101.moment H :=
  canonical_of_padded canonicalInput14101 canonicalOutput14101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14102 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![0, 0, 3, -3], ![1, 2, -5, 2]]⟩

def canonicalOutput14102 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node70⟩

theorem canonicalSound14102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14102.moment H = canonicalOutput14102.moment H :=
  canonical_of_padded canonicalInput14102 canonicalOutput14102 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14103 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput14103 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node850⟩

theorem canonicalSound14103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14103.moment H = canonicalOutput14103.moment H :=
  canonical_of_padded canonicalInput14103 canonicalOutput14103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14104 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 1, -3, 2], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput14104 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node847⟩

theorem canonicalSound14104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14104.moment H = canonicalOutput14104.moment H :=
  canonical_of_padded canonicalInput14104 canonicalOutput14104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14105 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![0, 1, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput14105 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node109⟩

theorem canonicalSound14105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14105.moment H = canonicalOutput14105.moment H :=
  canonical_of_padded canonicalInput14105 canonicalOutput14105 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput14106 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput14106 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound14106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14106.moment H = canonicalOutput14106.moment H :=
  canonical_of_padded canonicalInput14106 canonicalOutput14106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14107 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 1, -2, 1], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput14107 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound14107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14107.moment H = canonicalOutput14107.moment H :=
  canonical_of_padded canonicalInput14107 canonicalOutput14107 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14108 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput14108 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node845⟩

theorem canonicalSound14108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14108.moment H = canonicalOutput14108.moment H :=
  canonical_of_padded canonicalInput14108 canonicalOutput14108 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14109 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 0, -3, 2]]⟩

def canonicalOutput14109 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node836⟩

theorem canonicalSound14109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14109.moment H = canonicalOutput14109.moment H :=
  canonical_of_padded canonicalInput14109 canonicalOutput14109 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput14110 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 1, 0, -1], ![0, 2, -3, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput14110 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩

theorem canonicalSound14110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14110.moment H = canonicalOutput14110.moment H :=
  canonical_of_padded canonicalInput14110 canonicalOutput14110 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput14111 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 1, 1, -2], ![0, 2, -3, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput14111 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1283⟩

theorem canonicalSound14111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14111.moment H = canonicalOutput14111.moment H :=
  canonical_of_padded canonicalInput14111 canonicalOutput14111 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput14112 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![0, 1, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput14112 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound14112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14112.moment H = canonicalOutput14112.moment H :=
  canonical_of_padded canonicalInput14112 canonicalOutput14112 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14113 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![0, 2, -4, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput14113 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node102⟩

theorem canonicalSound14113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14113.moment H = canonicalOutput14113.moment H :=
  canonical_of_padded canonicalInput14113 canonicalOutput14113 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14114 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput14114 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound14114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14114.moment H = canonicalOutput14114.moment H :=
  canonical_of_padded canonicalInput14114 canonicalOutput14114 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14115 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 3, -1, -2], ![0, -1, -2, 3], ![1, 0, 1, -2]]⟩

def canonicalOutput14115 : ExponentCode := normalNode7108

theorem canonicalSound14115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14115.moment H = canonicalOutput14115.moment H :=
  canonical_of_padded canonicalInput14115 canonicalOutput14115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14116 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 3, 0, -3], ![0, -1, -2, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput14116 : ExponentCode := normalNode10682

theorem canonicalSound14116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14116.moment H = canonicalOutput14116.moment H :=
  canonical_of_padded canonicalInput14116 canonicalOutput14116 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14117 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 3, 1, -4], ![0, -1, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput14117 : ExponentCode := normalNode7111

theorem canonicalSound14117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14117.moment H = canonicalOutput14117.moment H :=
  canonical_of_padded canonicalInput14117 canonicalOutput14117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14118 : ExponentCode := ⟨4, 4, ![![-1, -2, 2, 1], ![0, 3, 1, -4], ![0, 0, -2, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput14118 : ExponentCode := normalNode7125

theorem canonicalSound14118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14118.moment H = canonicalOutput14118.moment H :=
  canonical_of_padded canonicalInput14118 canonicalOutput14118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14119 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![0, 4, -4, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput14119 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node131⟩

theorem canonicalSound14119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14119.moment H = canonicalOutput14119.moment H :=
  canonical_of_padded canonicalInput14119 canonicalOutput14119 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14120 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![1, -2, 2, -1], ![0, 4, -4, 0]]⟩

def canonicalOutput14120 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node131⟩

theorem canonicalSound14120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14120.moment H = canonicalOutput14120.moment H :=
  canonical_of_padded canonicalInput14120 canonicalOutput14120 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14121 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![1, -1, -3, 3], ![0, 3, 1, -4]]⟩

def canonicalOutput14121 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node158⟩

theorem canonicalSound14121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14121.moment H = canonicalOutput14121.moment H :=
  canonical_of_padded canonicalInput14121 canonicalOutput14121 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14122 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![1, 0, -3, 2], ![0, 2, 1, -3]]⟩

def canonicalOutput14122 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound14122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14122.moment H = canonicalOutput14122.moment H :=
  canonical_of_padded canonicalInput14122 canonicalOutput14122 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput14123 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![2, -2, 2, -2], ![-1, 4, -4, 1]]⟩

def canonicalOutput14123 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code227

theorem canonicalSound14123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14123.moment H = canonicalOutput14123.moment H :=
  canonical_of_padded canonicalInput14123 canonicalOutput14123 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14124 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![2, -1, 2, -3], ![-1, 3, -4, 2]]⟩

def canonicalOutput14124 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code230

theorem canonicalSound14124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14124.moment H = canonicalOutput14124.moment H :=
  canonical_of_padded canonicalInput14124 canonicalOutput14124 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14125 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![2, 0, 2, -4], ![-1, 2, -4, 3]]⟩

def canonicalOutput14125 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code232

theorem canonicalSound14125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14125.moment H = canonicalOutput14125.moment H :=
  canonical_of_padded canonicalInput14125 canonicalOutput14125 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14126 : ExponentCode := ⟨3, 4, ![![-1, -2, 2, 1], ![3, 0, 0, -3], ![-2, 2, -2, 2]]⟩

def canonicalOutput14126 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node101⟩

theorem canonicalSound14126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14126.moment H = canonicalOutput14126.moment H :=
  canonical_of_padded canonicalInput14126 canonicalOutput14126 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput14127 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![-1, -1, 2], ![-1, 4, -3], ![1, 0, -1], ![2, -1, -1]]⟩

def canonicalOutput14127 : ExponentCode := normalNode5572

theorem canonicalSound14127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14127.moment H = canonicalOutput14127.moment H :=
  canonical_of_padded canonicalInput14127 canonicalOutput14127 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14128 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![-1, -1, 2], ![-1, 4, -3], ![2, -1, -1], ![1, 0, -1]]⟩

def canonicalOutput14128 : ExponentCode := normalNode5572

theorem canonicalSound14128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14128.moment H = canonicalOutput14128.moment H :=
  canonical_of_padded canonicalInput14128 canonicalOutput14128 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14129 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![-1, -1, 2], ![0, 4, -4], ![1, 0, -1], ![1, -1, 0]]⟩

def canonicalOutput14129 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node861⟩

theorem canonicalSound14129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14129.moment H = canonicalOutput14129.moment H :=
  canonical_of_padded canonicalInput14129 canonicalOutput14129 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14130 : ExponentCode := ⟨4, 3, ![![-1, -2, 3], ![-1, -1, 2], ![0, 5, -5], ![2, -2, 0]]⟩

def canonicalOutput14130 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1062

theorem canonicalSound14130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14130.moment H = canonicalOutput14130.moment H :=
  canonical_of_padded canonicalInput14130 canonicalOutput14130 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput14131 : ExponentCode := ⟨4, 3, ![![-1, -2, 3], ![-1, -1, 2], ![1, -1, 0], ![1, 4, -5]]⟩

def canonicalOutput14131 : ExponentCode := normalNode5980

theorem canonicalSound14131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14131.moment H = canonicalOutput14131.moment H :=
  canonical_of_padded canonicalInput14131 canonicalOutput14131 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14132 : ExponentCode := ⟨4, 3, ![![-1, -2, 3], ![-1, -1, 2], ![1, 4, -5], ![1, -1, 0]]⟩

def canonicalOutput14132 : ExponentCode := normalNode5980

theorem canonicalSound14132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14132.moment H = canonicalOutput14132.moment H :=
  canonical_of_padded canonicalInput14132 canonicalOutput14132 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14133 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![-1, 2, -1], ![0, -2, 2], ![1, 0, -1], ![1, 2, -3]]⟩

def canonicalOutput14133 : ExponentCode := normalNode7133

theorem canonicalSound14133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14133.moment H = canonicalOutput14133.moment H :=
  canonical_of_padded canonicalInput14133 canonicalOutput14133 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14134 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![-1, 2, -1], ![0, 0, 0], ![1, -2, 1], ![1, 2, -3]]⟩

def canonicalOutput14134 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node260⟩

theorem canonicalSound14134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14134.moment H = canonicalOutput14134.moment H :=
  canonical_of_padded canonicalInput14134 canonicalOutput14134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14135 : ExponentCode := ⟨4, 3, ![![-1, -2, 3], ![-1, 2, -1], ![1, -3, 2], ![1, 3, -4]]⟩

def canonicalOutput14135 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1293

theorem canonicalSound14135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14135.moment H = canonicalOutput14135.moment H :=
  canonical_of_padded canonicalInput14135 canonicalOutput14135 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14136 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![0, -2, 2], ![-1, 4, -3], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput14136 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node877⟩

theorem canonicalSound14136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14136.moment H = canonicalOutput14136.moment H :=
  canonical_of_padded canonicalInput14136 canonicalOutput14136 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14137 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![0, -1, 1], ![-1, 3, -2], ![1, -2, 1], ![1, 2, -3]]⟩

def canonicalOutput14137 : ExponentCode := normalNode7138

theorem canonicalSound14137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14137.moment H = canonicalOutput14137.moment H :=
  canonical_of_padded canonicalInput14137 canonicalOutput14137 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14138 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![0, -1, 1], ![0, 0, 0], ![0, 4, -4], ![1, -1, 0]]⟩

def canonicalOutput14138 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node270⟩

theorem canonicalSound14138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14138.moment H = canonicalOutput14138.moment H :=
  canonical_of_padded canonicalInput14138 canonicalOutput14138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14139 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![0, -1, 1], ![0, 2, -2], ![0, -1, 1], ![1, 2, -3]]⟩

def canonicalOutput14139 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node878⟩

theorem canonicalSound14139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14139.moment H = canonicalOutput14139.moment H :=
  canonical_of_padded canonicalInput14139 canonicalOutput14139 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14140 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![0, -1, 1], ![0, 2, -2], ![1, -2, 1], ![0, 3, -3]]⟩

def canonicalOutput14140 : ExponentCode := normalNode7145

theorem canonicalSound14140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14140.moment H = canonicalOutput14140.moment H :=
  canonical_of_padded canonicalInput14140 canonicalOutput14140 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14141 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![0, -1, 1], ![0, 4, -4], ![0, -1, 1], ![1, 0, -1]]⟩

def canonicalOutput14141 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node880⟩

theorem canonicalSound14141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14141.moment H = canonicalOutput14141.moment H :=
  canonical_of_padded canonicalInput14141 canonicalOutput14141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14142 : ExponentCode := ⟨5, 3, ![![-1, -2, 3], ![0, -1, 1], ![0, 4, -4], ![1, -1, 0], ![0, 0, 0]]⟩

def canonicalOutput14142 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node270⟩

theorem canonicalSound14142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14142.moment H = canonicalOutput14142.moment H :=
  canonical_of_padded canonicalInput14142 canonicalOutput14142 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput14143 : ExponentCode := ⟨4, 3, ![![-1, -2, 3], ![0, 0, 0], ![0, 4, -4], ![1, -2, 1]]⟩

def canonicalOutput14143 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩

theorem canonicalSound14143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput14143.moment H = canonicalOutput14143.moment H :=
  canonical_of_padded canonicalInput14143 canonicalOutput14143 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
