import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput6080 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 2, 0], ![1, 0, 0, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput6080 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1164⟩

theorem canonicalSound6080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6080.moment H = canonicalOutput6080.moment H :=
  canonical_of_padded canonicalInput6080 canonicalOutput6080 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6081 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 2, 0], ![1, 0, 2, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput6081 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code567

theorem canonicalSound6081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6081.moment H = canonicalOutput6081.moment H :=
  canonical_of_padded canonicalInput6081 canonicalOutput6081 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6082 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 2, 0], ![1, 1, 2, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput6082 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code719

theorem canonicalSound6082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6082.moment H = canonicalOutput6082.moment H :=
  canonical_of_padded canonicalInput6082 canonicalOutput6082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6083 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 2, 0], ![1, 2, 0, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6083 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1164⟩

theorem canonicalSound6083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6083.moment H = canonicalOutput6083.moment H :=
  canonical_of_padded canonicalInput6083 canonicalOutput6083 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6084 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 2, 0], ![1, 2, 1, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput6084 : ExponentCode := normalNode10353

theorem canonicalSound6084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6084.moment H = canonicalOutput6084.moment H :=
  canonical_of_padded canonicalInput6084 canonicalOutput6084 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput6085 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput6085 : ExponentCode := normalNode3144

theorem canonicalSound6085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6085.moment H = canonicalOutput6085.moment H :=
  canonical_of_padded canonicalInput6085 canonicalOutput6085 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6086 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![0, 1, -1, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput6086 : ExponentCode := normalNode9546

theorem canonicalSound6086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6086.moment H = canonicalOutput6086.moment H :=
  canonical_of_padded canonicalInput6086 canonicalOutput6086 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6087 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6087 : ExponentCode := normalNode3150

theorem canonicalSound6087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6087.moment H = canonicalOutput6087.moment H :=
  canonical_of_padded canonicalInput6087 canonicalOutput6087 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6088 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![0, 1, 0, -1], ![2, 1, -1, -2]]⟩

def canonicalOutput6088 : ExponentCode := normalNode6461

theorem canonicalSound6088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6088.moment H = canonicalOutput6088.moment H :=
  canonical_of_padded canonicalInput6088 canonicalOutput6088 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6089 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![0, 1, 1, -2], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput6089 : ExponentCode := normalNode3148

theorem canonicalSound6089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6089.moment H = canonicalOutput6089.moment H :=
  canonical_of_padded canonicalInput6089 canonicalOutput6089 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6090 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![0, 1, 1, -2], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6090 : ExponentCode := normalNode3151

theorem canonicalSound6090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6090.moment H = canonicalOutput6090.moment H :=
  canonical_of_padded canonicalInput6090 canonicalOutput6090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6091 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![0, 1, 1, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput6091 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code560

theorem canonicalSound6091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6091.moment H = canonicalOutput6091.moment H :=
  canonical_of_padded canonicalInput6091 canonicalOutput6091 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput6092 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput6092 : ExponentCode := normalNode8905

theorem canonicalSound6092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6092.moment H = canonicalOutput6092.moment H :=
  canonical_of_padded canonicalInput6092 canonicalOutput6092 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6093 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput6093 : ExponentCode := normalNode6459

theorem canonicalSound6093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6093.moment H = canonicalOutput6093.moment H :=
  canonical_of_padded canonicalInput6093 canonicalOutput6093 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6094 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput6094 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code554

theorem canonicalSound6094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6094.moment H = canonicalOutput6094.moment H :=
  canonical_of_padded canonicalInput6094 canonicalOutput6094 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6095 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput6095 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node458⟩

theorem canonicalSound6095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6095.moment H = canonicalOutput6095.moment H :=
  canonical_of_padded canonicalInput6095 canonicalOutput6095 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6096 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![1, 2, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput6096 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code554

theorem canonicalSound6096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6096.moment H = canonicalOutput6096.moment H :=
  canonical_of_padded canonicalInput6096 canonicalOutput6096 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6097 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![1, 2, -1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput6097 : ExponentCode := normalNode6459

theorem canonicalSound6097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6097.moment H = canonicalOutput6097.moment H :=
  canonical_of_padded canonicalInput6097 canonicalOutput6097 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6098 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 3, -1], ![1, 2, 0, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput6098 : ExponentCode := normalNode8905

theorem canonicalSound6098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6098.moment H = canonicalOutput6098.moment H :=
  canonical_of_padded canonicalInput6098 canonicalOutput6098 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput6099 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -2, 4, -2], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6099 : ExponentCode := normalNode3158

theorem canonicalSound6099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6099.moment H = canonicalOutput6099.moment H :=
  canonical_of_padded canonicalInput6099 canonicalOutput6099 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6100 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 4, -2], ![0, 1, -1, 0], ![2, 1, -1, -2]]⟩

def canonicalOutput6100 : ExponentCode := normalNode7372

theorem canonicalSound6100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6100.moment H = canonicalOutput6100.moment H :=
  canonical_of_padded canonicalInput6100 canonicalOutput6100 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6101 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -2, 4, -2], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput6101 : ExponentCode := normalNode3161

theorem canonicalSound6101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6101.moment H = canonicalOutput6101.moment H :=
  canonical_of_padded canonicalInput6101 canonicalOutput6101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput6102 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 4, -2], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput6102 : ExponentCode := normalNode7374

theorem canonicalSound6102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6102.moment H = canonicalOutput6102.moment H :=
  canonical_of_padded canonicalInput6102 canonicalOutput6102 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6103 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -2, 4, -2], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput6103 : ExponentCode := normalNode3157

theorem canonicalSound6103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6103.moment H = canonicalOutput6103.moment H :=
  canonical_of_padded canonicalInput6103 canonicalOutput6103 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6104 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -2, 4, -2], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput6104 : ExponentCode := normalNode3160

theorem canonicalSound6104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6104.moment H = canonicalOutput6104.moment H :=
  canonical_of_padded canonicalInput6104 canonicalOutput6104 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6105 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 4, -2], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput6105 : ExponentCode := normalNode7374

theorem canonicalSound6105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6105.moment H = canonicalOutput6105.moment H :=
  canonical_of_padded canonicalInput6105 canonicalOutput6105 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput6106 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -2, 4, -2], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput6106 : ExponentCode := normalNode7372

theorem canonicalSound6106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6106.moment H = canonicalOutput6106.moment H :=
  canonical_of_padded canonicalInput6106 canonicalOutput6106 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput6107 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput6107 : ExponentCode := normalNode7393

theorem canonicalSound6107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6107.moment H = canonicalOutput6107.moment H :=
  canonical_of_padded canonicalInput6107 canonicalOutput6107 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6108 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6108 : ExponentCode := normalNode9362

theorem canonicalSound6108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6108.moment H = canonicalOutput6108.moment H :=
  canonical_of_padded canonicalInput6108 canonicalOutput6108 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6109 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput6109 : ExponentCode := normalNode9376

theorem canonicalSound6109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6109.moment H = canonicalOutput6109.moment H :=
  canonical_of_padded canonicalInput6109 canonicalOutput6109 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6110 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6110 : ExponentCode := normalNode8961

theorem canonicalSound6110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6110.moment H = canonicalOutput6110.moment H :=
  canonical_of_padded canonicalInput6110 canonicalOutput6110 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6111 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput6111 : ExponentCode := normalNode9404

theorem canonicalSound6111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6111.moment H = canonicalOutput6111.moment H :=
  canonical_of_padded canonicalInput6111 canonicalOutput6111 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6112 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6112 : ExponentCode := normalNode10504

theorem canonicalSound6112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6112.moment H = canonicalOutput6112.moment H :=
  canonical_of_padded canonicalInput6112 canonicalOutput6112 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6113 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput6113 : ExponentCode := normalNode10939

theorem canonicalSound6113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6113.moment H = canonicalOutput6113.moment H :=
  canonical_of_padded canonicalInput6113 canonicalOutput6113 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6114 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6114 : ExponentCode := normalNode424

theorem canonicalSound6114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6114.moment H = canonicalOutput6114.moment H :=
  canonical_of_padded canonicalInput6114 canonicalOutput6114 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6115 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput6115 : ExponentCode := normalNode420

theorem canonicalSound6115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6115.moment H = canonicalOutput6115.moment H :=
  canonical_of_padded canonicalInput6115 canonicalOutput6115 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput6116 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 1, 2, -3], ![2, 0, 0, -2]]⟩

def canonicalOutput6116 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node795⟩

theorem canonicalSound6116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6116.moment H = canonicalOutput6116.moment H :=
  canonical_of_padded canonicalInput6116 canonicalOutput6116 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput6117 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput6117 : ExponentCode := normalNode9663

theorem canonicalSound6117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6117.moment H = canonicalOutput6117.moment H :=
  canonical_of_padded canonicalInput6117 canonicalOutput6117 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6118 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![0, 2, 2, -4], ![2, -1, 0, -1]]⟩

def canonicalOutput6118 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1034⟩

theorem canonicalSound6118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6118.moment H = canonicalOutput6118.moment H :=
  canonical_of_padded canonicalInput6118 canonicalOutput6118 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput6119 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![1, 0, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput6119 : ExponentCode := normalNode10316

theorem canonicalSound6119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6119.moment H = canonicalOutput6119.moment H :=
  canonical_of_padded canonicalInput6119 canonicalOutput6119 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput6120 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 0, 1], ![1, 0, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput6120 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node994⟩

theorem canonicalSound6120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6120.moment H = canonicalOutput6120.moment H :=
  canonical_of_padded canonicalInput6120 canonicalOutput6120 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6121 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput6121 : ExponentCode := normalNode10503

theorem canonicalSound6121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6121.moment H = canonicalOutput6121.moment H :=
  canonical_of_padded canonicalInput6121 canonicalOutput6121 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6122 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, 0, 0, -2]]⟩

def canonicalOutput6122 : ExponentCode := normalNode9842

theorem canonicalSound6122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6122.moment H = canonicalOutput6122.moment H :=
  canonical_of_padded canonicalInput6122 canonicalOutput6122 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6123 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput6123 : ExponentCode := normalNode7382

theorem canonicalSound6123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6123.moment H = canonicalOutput6123.moment H :=
  canonical_of_padded canonicalInput6123 canonicalOutput6123 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6124 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput6124 : ExponentCode := normalNode7847

theorem canonicalSound6124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6124.moment H = canonicalOutput6124.moment H :=
  canonical_of_padded canonicalInput6124 canonicalOutput6124 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6125 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput6125 : ExponentCode := normalNode8915

theorem canonicalSound6125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6125.moment H = canonicalOutput6125.moment H :=
  canonical_of_padded canonicalInput6125 canonicalOutput6125 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6126 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput6126 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1178⟩

theorem canonicalSound6126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6126.moment H = canonicalOutput6126.moment H :=
  canonical_of_padded canonicalInput6126 canonicalOutput6126 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput6127 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput6127 : ExponentCode := normalNode10352

theorem canonicalSound6127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6127.moment H = canonicalOutput6127.moment H :=
  canonical_of_padded canonicalInput6127 canonicalOutput6127 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput6128 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput6128 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1168⟩

theorem canonicalSound6128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6128.moment H = canonicalOutput6128.moment H :=
  canonical_of_padded canonicalInput6128 canonicalOutput6128 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput6129 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput6129 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1095⟩

theorem canonicalSound6129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6129.moment H = canonicalOutput6129.moment H :=
  canonical_of_padded canonicalInput6129 canonicalOutput6129 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6130 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput6130 : ExponentCode := normalNode9854

theorem canonicalSound6130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6130.moment H = canonicalOutput6130.moment H :=
  canonical_of_padded canonicalInput6130 canonicalOutput6130 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6131 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6131 : ExponentCode := normalNode7883

theorem canonicalSound6131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6131.moment H = canonicalOutput6131.moment H :=
  canonical_of_padded canonicalInput6131 canonicalOutput6131 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6132 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput6132 : ExponentCode := normalNode9023

theorem canonicalSound6132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6132.moment H = canonicalOutput6132.moment H :=
  canonical_of_padded canonicalInput6132 canonicalOutput6132 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6133 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput6133 : ExponentCode := normalNode9023

theorem canonicalSound6133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6133.moment H = canonicalOutput6133.moment H :=
  canonical_of_padded canonicalInput6133 canonicalOutput6133 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6134 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput6134 : ExponentCode := normalNode9405

theorem canonicalSound6134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6134.moment H = canonicalOutput6134.moment H :=
  canonical_of_padded canonicalInput6134 canonicalOutput6134 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6135 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput6135 : ExponentCode := normalNode9419

theorem canonicalSound6135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6135.moment H = canonicalOutput6135.moment H :=
  canonical_of_padded canonicalInput6135 canonicalOutput6135 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6136 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 0, 3, -3], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput6136 : ExponentCode := normalNode8976

theorem canonicalSound6136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6136.moment H = canonicalOutput6136.moment H :=
  canonical_of_padded canonicalInput6136 canonicalOutput6136 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6137 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput6137 : ExponentCode := normalNode11050

theorem canonicalSound6137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6137.moment H = canonicalOutput6137.moment H :=
  canonical_of_padded canonicalInput6137 canonicalOutput6137 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation53⟩ (by decide +kernel) hH

def canonicalInput6138 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput6138 : ExponentCode := normalNode10814

theorem canonicalSound6138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6138.moment H = canonicalOutput6138.moment H :=
  canonical_of_padded canonicalInput6138 canonicalOutput6138 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6139 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput6139 : ExponentCode := normalNode10538

theorem canonicalSound6139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6139.moment H = canonicalOutput6139.moment H :=
  canonical_of_padded canonicalInput6139 canonicalOutput6139 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput6140 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput6140 : ExponentCode := normalNode10815

theorem canonicalSound6140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6140.moment H = canonicalOutput6140.moment H :=
  canonical_of_padded canonicalInput6140 canonicalOutput6140 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6141 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput6141 : ExponentCode := normalNode10815

theorem canonicalSound6141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6141.moment H = canonicalOutput6141.moment H :=
  canonical_of_padded canonicalInput6141 canonicalOutput6141 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput6142 : ExponentCode := ⟨4, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput6142 : ExponentCode := normalNode11050

theorem canonicalSound6142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6142.moment H = canonicalOutput6142.moment H :=
  canonical_of_padded canonicalInput6142 canonicalOutput6142 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput6143 : ExponentCode := ⟨5, 4, ![![-2, 0, -2, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput6143 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1469⟩

theorem canonicalSound6143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput6143.moment H = canonicalOutput6143.moment H :=
  canonical_of_padded canonicalInput6143 canonicalOutput6143 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
