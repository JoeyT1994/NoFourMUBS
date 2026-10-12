import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17088 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -1, 2], ![1, 0, 1, -2], ![0, 2, 0, -2]]⟩

def canonicalOutput17088 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1033⟩

theorem canonicalSound17088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17088.moment H = canonicalOutput17088.moment H :=
  canonical_of_padded canonicalInput17088 canonicalOutput17088 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17089 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -1, 2], ![1, 0, 2, -3], ![0, 2, -1, -1]]⟩

def canonicalOutput17089 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node815⟩

theorem canonicalSound17089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17089.moment H = canonicalOutput17089.moment H :=
  canonical_of_padded canonicalInput17089 canonicalOutput17089 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17090 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, -1, 2], ![1, 1, 0, -2], ![0, 1, 1, -2]]⟩

def canonicalOutput17090 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1237⟩

theorem canonicalSound17090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17090.moment H = canonicalOutput17090.moment H :=
  canonical_of_padded canonicalInput17090 canonicalOutput17090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17091 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![3, 1, -3, -1]]⟩

def canonicalOutput17091 : ExponentCode := normalNode84

theorem canonicalSound17091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17091.moment H = canonicalOutput17091.moment H :=
  canonical_of_padded canonicalInput17091 canonicalOutput17091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17092 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, 1, -1], ![-1, 1, 1, -1], ![3, 1, -3, -1]]⟩

def canonicalOutput17092 : ExponentCode := normalNode93

theorem canonicalSound17092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17092.moment H = canonicalOutput17092.moment H :=
  canonical_of_padded canonicalInput17092 canonicalOutput17092 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17093 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 2, -2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput17093 : ExponentCode := normalNode394

theorem canonicalSound17093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17093.moment H = canonicalOutput17093.moment H :=
  canonical_of_padded canonicalInput17093 canonicalOutput17093 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17094 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput17094 : ExponentCode := normalNode6415

theorem canonicalSound17094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17094.moment H = canonicalOutput17094.moment H :=
  canonical_of_padded canonicalInput17094 canonicalOutput17094 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17095 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 1, -2, 0], ![2, 0, -1, -1], ![-2, 2, 2, -2]]⟩

def canonicalOutput17095 : ExponentCode := normalNode737

theorem canonicalSound17095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17095.moment H = canonicalOutput17095.moment H :=
  canonical_of_padded canonicalInput17095 canonicalOutput17095 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput17096 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 0, 3, -2], ![2, 2, -1, -3]]⟩

def canonicalOutput17096 : ExponentCode := normalNode625

theorem canonicalSound17096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17096.moment H = canonicalOutput17096.moment H :=
  canonical_of_padded canonicalInput17096 canonicalOutput17096 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17097 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, -1, 0], ![2, 0, 3, -5]]⟩

def canonicalOutput17097 : ExponentCode := normalNode3081

theorem canonicalSound17097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17097.moment H = canonicalOutput17097.moment H :=
  canonical_of_padded canonicalInput17097 canonicalOutput17097 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17098 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![2, 0, 3, -5]]⟩

def canonicalOutput17098 : ExponentCode := normalNode3055

theorem canonicalSound17098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17098.moment H = canonicalOutput17098.moment H :=
  canonical_of_padded canonicalInput17098 canonicalOutput17098 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17099 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput17099 : ExponentCode := normalNode7155

theorem canonicalSound17099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17099.moment H = canonicalOutput17099.moment H :=
  canonical_of_padded canonicalInput17099 canonicalOutput17099 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17100 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput17100 : ExponentCode := normalNode7297

theorem canonicalSound17100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17100.moment H = canonicalOutput17100.moment H :=
  canonical_of_padded canonicalInput17100 canonicalOutput17100 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17101 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput17101 : ExponentCode := normalNode3046

theorem canonicalSound17101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17101.moment H = canonicalOutput17101.moment H :=
  canonical_of_padded canonicalInput17101 canonicalOutput17101 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17102 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput17102 : ExponentCode := normalNode3414

theorem canonicalSound17102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17102.moment H = canonicalOutput17102.moment H :=
  canonical_of_padded canonicalInput17102 canonicalOutput17102 (by decide) (by decide)
    ⟨false, true, canonicalPermutation127, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17103 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 2, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput17103 : ExponentCode := normalNode6004

theorem canonicalSound17103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17103.moment H = canonicalOutput17103.moment H :=
  canonical_of_padded canonicalInput17103 canonicalOutput17103 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17104 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput17104 : ExponentCode := normalNode7153

theorem canonicalSound17104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17104.moment H = canonicalOutput17104.moment H :=
  canonical_of_padded canonicalInput17104 canonicalOutput17104 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17105 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 2, -1, -1], ![-2, -1, 3, 0], ![3, 0, -2, -1]]⟩

def canonicalOutput17105 : ExponentCode := normalNode145

theorem canonicalSound17105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17105.moment H = canonicalOutput17105.moment H :=
  canonical_of_padded canonicalInput17105 canonicalOutput17105 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17106 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput17106 : ExponentCode := normalNode8805

theorem canonicalSound17106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17106.moment H = canonicalOutput17106.moment H :=
  canonical_of_padded canonicalInput17106 canonicalOutput17106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17107 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput17107 : ExponentCode := normalNode7700

theorem canonicalSound17107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17107.moment H = canonicalOutput17107.moment H :=
  canonical_of_padded canonicalInput17107 canonicalOutput17107 (by decide) (by decide)
    ⟨false, true, canonicalPermutation128, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17108 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput17108 : ExponentCode := normalNode8802

theorem canonicalSound17108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17108.moment H = canonicalOutput17108.moment H :=
  canonical_of_padded canonicalInput17108 canonicalOutput17108 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17109 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 1, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput17109 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound17109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17109.moment H = canonicalOutput17109.moment H :=
  canonical_of_padded canonicalInput17109 canonicalOutput17109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17110 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 1, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput17110 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node805⟩

theorem canonicalSound17110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17110.moment H = canonicalOutput17110.moment H :=
  canonical_of_padded canonicalInput17110 canonicalOutput17110 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17111 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 2, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput17111 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound17111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17111.moment H = canonicalOutput17111.moment H :=
  canonical_of_padded canonicalInput17111 canonicalOutput17111 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17112 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![0, 2, 3, -5], ![1, 0, -3, 2]]⟩

def canonicalOutput17112 : ExponentCode := normalNode6327

theorem canonicalSound17112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17112.moment H = canonicalOutput17112.moment H :=
  canonical_of_padded canonicalInput17112 canonicalOutput17112 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17113 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![-1, 1, 1, -1], ![2, 2, -2, -2]]⟩

def canonicalOutput17113 : ExponentCode := normalNode726

theorem canonicalSound17113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17113.moment H = canonicalOutput17113.moment H :=
  canonical_of_padded canonicalInput17113 canonicalOutput17113 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput17114 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![2, 0, -2, 0], ![-1, 3, 1, -3]]⟩

def canonicalOutput17114 : ExponentCode := normalNode83

theorem canonicalSound17114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17114.moment H = canonicalOutput17114.moment H :=
  canonical_of_padded canonicalInput17114 canonicalOutput17114 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation388, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput17115 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput17115 : ExponentCode := normalNode3047

theorem canonicalSound17115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17115.moment H = canonicalOutput17115.moment H :=
  canonical_of_padded canonicalInput17115 canonicalOutput17115 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17116 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput17116 : ExponentCode := normalNode5030

theorem canonicalSound17116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17116.moment H = canonicalOutput17116.moment H :=
  canonical_of_padded canonicalInput17116 canonicalOutput17116 (by decide) (by decide)
    ⟨false, true, canonicalPermutation129, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17117 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput17117 : ExponentCode := normalNode8803

theorem canonicalSound17117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17117.moment H = canonicalOutput17117.moment H :=
  canonical_of_padded canonicalInput17117 canonicalOutput17117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17118 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput17118 : ExponentCode := normalNode3415

theorem canonicalSound17118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17118.moment H = canonicalOutput17118.moment H :=
  canonical_of_padded canonicalInput17118 canonicalOutput17118 (by decide) (by decide)
    ⟨false, true, canonicalPermutation129, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17119 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![2, 0, -1, -1], ![-2, -1, 3, 0], ![0, 3, -1, -2]]⟩

def canonicalOutput17119 : ExponentCode := normalNode146

theorem canonicalSound17119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17119.moment H = canonicalOutput17119.moment H :=
  canonical_of_padded canonicalInput17119 canonicalOutput17119 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17120 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![2, 0, -1, -1], ![-1, -1, 3, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput17120 : ExponentCode := normalNode176

theorem canonicalSound17120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17120.moment H = canonicalOutput17120.moment H :=
  canonical_of_padded canonicalInput17120 canonicalOutput17120 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17121 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 0, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput17121 : ExponentCode := normalNode8807

theorem canonicalSound17121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17121.moment H = canonicalOutput17121.moment H :=
  canonical_of_padded canonicalInput17121 canonicalOutput17121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17122 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![-1, 1, 1, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput17122 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound17122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17122.moment H = canonicalOutput17122.moment H :=
  canonical_of_padded canonicalInput17122 canonicalOutput17122 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput17123 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![-1, 3, 2, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput17123 : ExponentCode := normalNode8891

theorem canonicalSound17123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17123.moment H = canonicalOutput17123.moment H :=
  canonical_of_padded canonicalInput17123 canonicalOutput17123 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17124 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 1, -2, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput17124 : ExponentCode := normalNode1227

theorem canonicalSound17124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17124.moment H = canonicalOutput17124.moment H :=
  canonical_of_padded canonicalInput17124 canonicalOutput17124 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17125 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput17125 : ExponentCode := normalNode6396

theorem canonicalSound17125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17125.moment H = canonicalOutput17125.moment H :=
  canonical_of_padded canonicalInput17125 canonicalOutput17125 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17126 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput17126 : ExponentCode := normalNode1070

theorem canonicalSound17126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17126.moment H = canonicalOutput17126.moment H :=
  canonical_of_padded canonicalInput17126 canonicalOutput17126 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17127 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput17127 : ExponentCode := normalNode1018

theorem canonicalSound17127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17127.moment H = canonicalOutput17127.moment H :=
  canonical_of_padded canonicalInput17127 canonicalOutput17127 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17128 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, -2, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput17128 : ExponentCode := normalNode3171

theorem canonicalSound17128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17128.moment H = canonicalOutput17128.moment H :=
  canonical_of_padded canonicalInput17128 canonicalOutput17128 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17129 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput17129 : ExponentCode := normalNode1021

theorem canonicalSound17129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17129.moment H = canonicalOutput17129.moment H :=
  canonical_of_padded canonicalInput17129 canonicalOutput17129 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation388, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17130 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, -2, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput17130 : ExponentCode := normalNode1242

theorem canonicalSound17130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17130.moment H = canonicalOutput17130.moment H :=
  canonical_of_padded canonicalInput17130 canonicalOutput17130 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17131 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 1, -3], ![-1, 2, -3, 2]]⟩

def canonicalOutput17131 : ExponentCode := normalNode6135

theorem canonicalSound17131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17131.moment H = canonicalOutput17131.moment H :=
  canonical_of_padded canonicalInput17131 canonicalOutput17131 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17132 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -2, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput17132 : ExponentCode := normalNode3165

theorem canonicalSound17132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17132.moment H = canonicalOutput17132.moment H :=
  canonical_of_padded canonicalInput17132 canonicalOutput17132 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17133 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput17133 : ExponentCode := normalNode6390

theorem canonicalSound17133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17133.moment H = canonicalOutput17133.moment H :=
  canonical_of_padded canonicalInput17133 canonicalOutput17133 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17134 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput17134 : ExponentCode := normalNode8823

theorem canonicalSound17134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17134.moment H = canonicalOutput17134.moment H :=
  canonical_of_padded canonicalInput17134 canonicalOutput17134 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17135 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, 0, -4, 2]]⟩

def canonicalOutput17135 : ExponentCode := normalNode3185

theorem canonicalSound17135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17135.moment H = canonicalOutput17135.moment H :=
  canonical_of_padded canonicalInput17135 canonicalOutput17135 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17136 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput17136 : ExponentCode := normalNode7285

theorem canonicalSound17136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17136.moment H = canonicalOutput17136.moment H :=
  canonical_of_padded canonicalInput17136 canonicalOutput17136 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17137 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput17137 : ExponentCode := normalNode8816

theorem canonicalSound17137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17137.moment H = canonicalOutput17137.moment H :=
  canonical_of_padded canonicalInput17137 canonicalOutput17137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17138 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput17138 : ExponentCode := normalNode7292

theorem canonicalSound17138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17138.moment H = canonicalOutput17138.moment H :=
  canonical_of_padded canonicalInput17138 canonicalOutput17138 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17139 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 2, -3], ![-1, 1, -3, 3]]⟩

def canonicalOutput17139 : ExponentCode := normalNode8824

theorem canonicalSound17139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17139.moment H = canonicalOutput17139.moment H :=
  canonical_of_padded canonicalInput17139 canonicalOutput17139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17140 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput17140 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1262⟩

theorem canonicalSound17140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17140.moment H = canonicalOutput17140.moment H :=
  canonical_of_padded canonicalInput17140 canonicalOutput17140 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17141 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![0, 0, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput17141 : ExponentCode := normalNode8964

theorem canonicalSound17141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17141.moment H = canonicalOutput17141.moment H :=
  canonical_of_padded canonicalInput17141 canonicalOutput17141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17142 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![0, 1, -1, 0]]⟩

def canonicalOutput17142 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound17142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17142.moment H = canonicalOutput17142.moment H :=
  canonical_of_padded canonicalInput17142 canonicalOutput17142 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17143 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput17143 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node950⟩

theorem canonicalSound17143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17143.moment H = canonicalOutput17143.moment H :=
  canonical_of_padded canonicalInput17143 canonicalOutput17143 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17144 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput17144 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1245⟩

theorem canonicalSound17144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17144.moment H = canonicalOutput17144.moment H :=
  canonical_of_padded canonicalInput17144 canonicalOutput17144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17145 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 2, 0, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput17145 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩

theorem canonicalSound17145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17145.moment H = canonicalOutput17145.moment H :=
  canonical_of_padded canonicalInput17145 canonicalOutput17145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17146 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 2, 2, -4], ![0, 0, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput17146 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1004⟩

theorem canonicalSound17146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17146.moment H = canonicalOutput17146.moment H :=
  canonical_of_padded canonicalInput17146 canonicalOutput17146 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17147 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 2, 2, -4], ![1, -1, 0, 0], ![0, 1, -3, 2]]⟩

def canonicalOutput17147 : ExponentCode := normalNode8977

theorem canonicalSound17147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17147.moment H = canonicalOutput17147.moment H :=
  canonical_of_padded canonicalInput17147 canonicalOutput17147 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17148 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 3, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput17148 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound17148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17148.moment H = canonicalOutput17148.moment H :=
  canonical_of_padded canonicalInput17148 canonicalOutput17148 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17149 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![0, 3, 1, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput17149 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node940⟩

theorem canonicalSound17149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17149.moment H = canonicalOutput17149.moment H :=
  canonical_of_padded canonicalInput17149 canonicalOutput17149 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17150 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput17150 : ExponentCode := normalNode8820

theorem canonicalSound17150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17150.moment H = canonicalOutput17150.moment H :=
  canonical_of_padded canonicalInput17150 canonicalOutput17150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17151 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![0, 2, -4, 2]]⟩

def canonicalOutput17151 : ExponentCode := normalNode3187

theorem canonicalSound17151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17151.moment H = canonicalOutput17151.moment H :=
  canonical_of_padded canonicalInput17151 canonicalOutput17151 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
