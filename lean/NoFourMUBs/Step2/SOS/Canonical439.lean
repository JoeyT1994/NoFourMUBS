import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28096 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput28096 : ExponentCode := normalNode2897

theorem canonicalSound28096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28096.moment H = canonicalOutput28096.moment H :=
  canonical_of_padded canonicalInput28096 canonicalOutput28096 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28097 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput28097 : ExponentCode := normalNode1833

theorem canonicalSound28097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28097.moment H = canonicalOutput28097.moment H :=
  canonical_of_padded canonicalInput28097 canonicalOutput28097 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28098 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![-1, 2, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput28098 : ExponentCode := normalNode6022

theorem canonicalSound28098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28098.moment H = canonicalOutput28098.moment H :=
  canonical_of_padded canonicalInput28098 canonicalOutput28098 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28099 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![-1, 2, 2, -3]]⟩

def canonicalOutput28099 : ExponentCode := normalNode9293

theorem canonicalSound28099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28099.moment H = canonicalOutput28099.moment H :=
  canonical_of_padded canonicalInput28099 canonicalOutput28099 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28100 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, -1, 2, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput28100 : ExponentCode := normalNode2906

theorem canonicalSound28100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28100.moment H = canonicalOutput28100.moment H :=
  canonical_of_padded canonicalInput28100 canonicalOutput28100 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28101 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput28101 : ExponentCode := normalNode5424

theorem canonicalSound28101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28101.moment H = canonicalOutput28101.moment H :=
  canonical_of_padded canonicalInput28101 canonicalOutput28101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28102 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 3, -1], ![-1, 3, 0, -2]]⟩

def canonicalOutput28102 : ExponentCode := normalNode6649

theorem canonicalSound28102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28102.moment H = canonicalOutput28102.moment H :=
  canonical_of_padded canonicalInput28102 canonicalOutput28102 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28103 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![0, -1, 3, -2]]⟩

def canonicalOutput28103 : ExponentCode := normalNode1742

theorem canonicalSound28103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28103.moment H = canonicalOutput28103.moment H :=
  canonical_of_padded canonicalInput28103 canonicalOutput28103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation263, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28104 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput28104 : ExponentCode := normalNode7682

theorem canonicalSound28104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28104.moment H = canonicalOutput28104.moment H :=
  canonical_of_padded canonicalInput28104 canonicalOutput28104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28105 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, -1, 1], ![-1, 1, 3, -3]]⟩

def canonicalOutput28105 : ExponentCode := normalNode10189

theorem canonicalSound28105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28105.moment H = canonicalOutput28105.moment H :=
  canonical_of_padded canonicalInput28105 canonicalOutput28105 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28106 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![0, -2, 1, 1], ![-2, 2, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput28106 : ExponentCode := normalNode5675

theorem canonicalSound28106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28106.moment H = canonicalOutput28106.moment H :=
  canonical_of_padded canonicalInput28106 canonicalOutput28106 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28107 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![0, -2, 1, 1], ![-2, 3, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput28107 : ExponentCode := normalNode4697

theorem canonicalSound28107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28107.moment H = canonicalOutput28107.moment H :=
  canonical_of_padded canonicalInput28107 canonicalOutput28107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28108 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, -1, 2, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput28108 : ExponentCode := normalNode2905

theorem canonicalSound28108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28108.moment H = canonicalOutput28108.moment H :=
  canonical_of_padded canonicalInput28108 canonicalOutput28108 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28109 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 3, 1, -3]]⟩

def canonicalOutput28109 : ExponentCode := normalNode7099

theorem canonicalSound28109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28109.moment H = canonicalOutput28109.moment H :=
  canonical_of_padded canonicalInput28109 canonicalOutput28109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28110 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 3, 0], ![-1, 3, 0, -2]]⟩

def canonicalOutput28110 : ExponentCode := normalNode6670

theorem canonicalSound28110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28110.moment H = canonicalOutput28110.moment H :=
  canonical_of_padded canonicalInput28110 canonicalOutput28110 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation396, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28111 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![-1, 2, 2, -3]]⟩

def canonicalOutput28111 : ExponentCode := normalNode4820

theorem canonicalSound28111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28111.moment H = canonicalOutput28111.moment H :=
  canonical_of_padded canonicalInput28111 canonicalOutput28111 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28112 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-2, 3, -1, 0], ![0, -2, 3, -1]]⟩

def canonicalOutput28112 : ExponentCode := normalNode1744

theorem canonicalSound28112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28112.moment H = canonicalOutput28112.moment H :=
  canonical_of_padded canonicalInput28112 canonicalOutput28112 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28113 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, -1, 2], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, -2, 3, 0], ![-1, 3, -1, -1]]⟩

def canonicalOutput28113 : ExponentCode := normalNode6685

theorem canonicalSound28113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28113.moment H = canonicalOutput28113.moment H :=
  canonical_of_padded canonicalInput28113 canonicalOutput28113 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28114 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput28114 : ExponentCode := normalNode3895

theorem canonicalSound28114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28114.moment H = canonicalOutput28114.moment H :=
  canonical_of_padded canonicalInput28114 canonicalOutput28114 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28115 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput28115 : ExponentCode := normalNode4350

theorem canonicalSound28115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28115.moment H = canonicalOutput28115.moment H :=
  canonical_of_padded canonicalInput28115 canonicalOutput28115 (by decide) (by decide)
    ⟨false, false, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28116 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, 0, -2], ![-2, 2, -2, 2]]⟩

def canonicalOutput28116 : ExponentCode := normalNode778

theorem canonicalSound28116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28116.moment H = canonicalOutput28116.moment H :=
  canonical_of_padded canonicalInput28116 canonicalOutput28116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28117 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 3, -2, -2]]⟩

def canonicalOutput28117 : ExponentCode := normalNode2432

theorem canonicalSound28117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28117.moment H = canonicalOutput28117.moment H :=
  canonical_of_padded canonicalInput28117 canonicalOutput28117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28118 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 3, 1, -2]]⟩

def canonicalOutput28118 : ExponentCode := normalNode496

theorem canonicalSound28118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28118.moment H = canonicalOutput28118.moment H :=
  canonical_of_padded canonicalInput28118 canonicalOutput28118 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28119 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, 1, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput28119 : ExponentCode := normalNode3921

theorem canonicalSound28119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28119.moment H = canonicalOutput28119.moment H :=
  canonical_of_padded canonicalInput28119 canonicalOutput28119 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28120 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput28120 : ExponentCode := normalNode767

theorem canonicalSound28120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28120.moment H = canonicalOutput28120.moment H :=
  canonical_of_padded canonicalInput28120 canonicalOutput28120 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28121 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput28121 : ExponentCode := normalNode3898

theorem canonicalSound28121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28121.moment H = canonicalOutput28121.moment H :=
  canonical_of_padded canonicalInput28121 canonicalOutput28121 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28122 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput28122 : ExponentCode := normalNode6168

theorem canonicalSound28122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28122.moment H = canonicalOutput28122.moment H :=
  canonical_of_padded canonicalInput28122 canonicalOutput28122 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28123 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, -1, -1, 1], ![-1, 2, 2, -3]]⟩

def canonicalOutput28123 : ExponentCode := normalNode6150

theorem canonicalSound28123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28123.moment H = canonicalOutput28123.moment H :=
  canonical_of_padded canonicalInput28123 canonicalOutput28123 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28124 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![0, -1, 2, -1], ![-2, 1, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput28124 : ExponentCode := normalNode2400

theorem canonicalSound28124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28124.moment H = canonicalOutput28124.moment H :=
  canonical_of_padded canonicalInput28124 canonicalOutput28124 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28125 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput28125 : ExponentCode := normalNode6176

theorem canonicalSound28125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28125.moment H = canonicalOutput28125.moment H :=
  canonical_of_padded canonicalInput28125 canonicalOutput28125 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28126 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 1, 2, -3], ![-2, 2, -2, 2]]⟩

def canonicalOutput28126 : ExponentCode := normalNode781

theorem canonicalSound28126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28126.moment H = canonicalOutput28126.moment H :=
  canonical_of_padded canonicalInput28126 canonicalOutput28126 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput28127 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![-1, -2, 1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput28127 : ExponentCode := normalNode6850

theorem canonicalSound28127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28127.moment H = canonicalOutput28127.moment H :=
  canonical_of_padded canonicalInput28127 canonicalOutput28127 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28128 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 3, -1, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput28128 : ExponentCode := normalNode773

theorem canonicalSound28128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28128.moment H = canonicalOutput28128.moment H :=
  canonical_of_padded canonicalInput28128 canonicalOutput28128 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation336, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28129 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![0, -1, -1, 2], ![1, 1, -1, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput28129 : ExponentCode := normalNode5048

theorem canonicalSound28129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28129.moment H = canonicalOutput28129.moment H :=
  canonical_of_padded canonicalInput28129 canonicalOutput28129 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28130 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 3, -2, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput28130 : ExponentCode := normalNode774

theorem canonicalSound28130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28130.moment H = canonicalOutput28130.moment H :=
  canonical_of_padded canonicalInput28130 canonicalOutput28130 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28131 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 0, -2, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput28131 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node288⟩

theorem canonicalSound28131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28131.moment H = canonicalOutput28131.moment H :=
  canonical_of_padded canonicalInput28131 canonicalOutput28131 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28132 : ExponentCode := ⟨3, 4, ![![0, 0, -1, 1], ![0, 0, -3, 3], ![0, 0, 4, -4]]⟩

def canonicalOutput28132 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node8⟩

theorem canonicalSound28132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28132.moment H = canonicalOutput28132.moment H :=
  canonical_of_padded canonicalInput28132 canonicalOutput28132 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28133 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-2, 2, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput28133 : ExponentCode := normalNode5816

theorem canonicalSound28133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28133.moment H = canonicalOutput28133.moment H :=
  canonical_of_padded canonicalInput28133 canonicalOutput28133 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28134 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![-1, 0, 2, -1], ![-1, 2, 1, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput28134 : ExponentCode := normalNode5195

theorem canonicalSound28134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28134.moment H = canonicalOutput28134.moment H :=
  canonical_of_padded canonicalInput28134 canonicalOutput28134 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28135 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 2, -1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput28135 : ExponentCode := normalNode5810

theorem canonicalSound28135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28135.moment H = canonicalOutput28135.moment H :=
  canonical_of_padded canonicalInput28135 canonicalOutput28135 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput28136 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 3, 0, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput28136 : ExponentCode := normalNode1732

theorem canonicalSound28136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28136.moment H = canonicalOutput28136.moment H :=
  canonical_of_padded canonicalInput28136 canonicalOutput28136 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation286, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28137 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 0, 2, -2], ![-2, 2, -1, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput28137 : ExponentCode := normalNode5889

theorem canonicalSound28137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28137.moment H = canonicalOutput28137.moment H :=
  canonical_of_padded canonicalInput28137 canonicalOutput28137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28138 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, 0, -3], ![-2, -2, 3, 1]]⟩

def canonicalOutput28138 : ExponentCode := normalNode592

theorem canonicalSound28138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28138.moment H = canonicalOutput28138.moment H :=
  canonical_of_padded canonicalInput28138 canonicalOutput28138 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28139 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput28139 : ExponentCode := normalNode5490

theorem canonicalSound28139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28139.moment H = canonicalOutput28139.moment H :=
  canonical_of_padded canonicalInput28139 canonicalOutput28139 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28140 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, 1, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput28140 : ExponentCode := normalNode1768

theorem canonicalSound28140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28140.moment H = canonicalOutput28140.moment H :=
  canonical_of_padded canonicalInput28140 canonicalOutput28140 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28141 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 1, 3, -2]]⟩

def canonicalOutput28141 : ExponentCode := normalNode4930

theorem canonicalSound28141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28141.moment H = canonicalOutput28141.moment H :=
  canonical_of_padded canonicalInput28141 canonicalOutput28141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28142 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput28142 : ExponentCode := normalNode1945

theorem canonicalSound28142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28142.moment H = canonicalOutput28142.moment H :=
  canonical_of_padded canonicalInput28142 canonicalOutput28142 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput28143 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 3, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput28143 : ExponentCode := normalNode1805

theorem canonicalSound28143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28143.moment H = canonicalOutput28143.moment H :=
  canonical_of_padded canonicalInput28143 canonicalOutput28143 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28144 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 3, 0, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput28144 : ExponentCode := normalNode1804

theorem canonicalSound28144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28144.moment H = canonicalOutput28144.moment H :=
  canonical_of_padded canonicalInput28144 canonicalOutput28144 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28145 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput28145 : ExponentCode := normalNode2742

theorem canonicalSound28145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28145.moment H = canonicalOutput28145.moment H :=
  canonical_of_padded canonicalInput28145 canonicalOutput28145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28146 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput28146 : ExponentCode := normalNode2743

theorem canonicalSound28146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28146.moment H = canonicalOutput28146.moment H :=
  canonical_of_padded canonicalInput28146 canonicalOutput28146 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28147 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 1, 2], ![2, -1, 2, -3]]⟩

def canonicalOutput28147 : ExponentCode := normalNode2585

theorem canonicalSound28147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28147.moment H = canonicalOutput28147.moment H :=
  canonical_of_padded canonicalInput28147 canonicalOutput28147 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28148 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, -1, 2, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput28148 : ExponentCode := normalNode2943

theorem canonicalSound28148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28148.moment H = canonicalOutput28148.moment H :=
  canonical_of_padded canonicalInput28148 canonicalOutput28148 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28149 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput28149 : ExponentCode := normalNode4424

theorem canonicalSound28149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28149.moment H = canonicalOutput28149.moment H :=
  canonical_of_padded canonicalInput28149 canonicalOutput28149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28150 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput28150 : ExponentCode := normalNode4070

theorem canonicalSound28150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28150.moment H = canonicalOutput28150.moment H :=
  canonical_of_padded canonicalInput28150 canonicalOutput28150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28151 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 1, 2, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput28151 : ExponentCode := normalNode1997

theorem canonicalSound28151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28151.moment H = canonicalOutput28151.moment H :=
  canonical_of_padded canonicalInput28151 canonicalOutput28151 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput28152 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 0, 4, -2]]⟩

def canonicalOutput28152 : ExponentCode := normalNode3284

theorem canonicalSound28152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28152.moment H = canonicalOutput28152.moment H :=
  canonical_of_padded canonicalInput28152 canonicalOutput28152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28153 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, 0, -1], ![-2, -1, 3, 0]]⟩

def canonicalOutput28153 : ExponentCode := normalNode2011

theorem canonicalSound28153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28153.moment H = canonicalOutput28153.moment H :=
  canonical_of_padded canonicalInput28153 canonicalOutput28153 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28154 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, 0, -2], ![-2, -2, 3, 1]]⟩

def canonicalOutput28154 : ExponentCode := normalNode952

theorem canonicalSound28154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28154.moment H = canonicalOutput28154.moment H :=
  canonical_of_padded canonicalInput28154 canonicalOutput28154 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28155 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 0, -2], ![-2, -1, 3, 0]]⟩

def canonicalOutput28155 : ExponentCode := normalNode2012

theorem canonicalSound28155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28155.moment H = canonicalOutput28155.moment H :=
  canonical_of_padded canonicalInput28155 canonicalOutput28155 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28156 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput28156 : ExponentCode := normalNode5462

theorem canonicalSound28156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28156.moment H = canonicalOutput28156.moment H :=
  canonical_of_padded canonicalInput28156 canonicalOutput28156 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28157 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput28157 : ExponentCode := normalNode2399

theorem canonicalSound28157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28157.moment H = canonicalOutput28157.moment H :=
  canonical_of_padded canonicalInput28157 canonicalOutput28157 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28158 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![-2, -2, 3, 1]]⟩

def canonicalOutput28158 : ExponentCode := normalNode953

theorem canonicalSound28158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28158.moment H = canonicalOutput28158.moment H :=
  canonical_of_padded canonicalInput28158 canonicalOutput28158 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28159 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 2, 0, -3]]⟩

def canonicalOutput28159 : ExponentCode := normalNode2014

theorem canonicalSound28159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28159.moment H = canonicalOutput28159.moment H :=
  canonical_of_padded canonicalInput28159 canonicalOutput28159 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
