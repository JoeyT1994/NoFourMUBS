import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes51
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput32064 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -1, -1, 4], ![0, -1, 4, -3]]⟩

def canonicalOutput32064 : ExponentCode := normalNode1334

theorem canonicalSound32064 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32064.moment H = canonicalOutput32064.moment H :=
  canonical_of_padded canonicalInput32064 canonicalOutput32064 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32065 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput32065 : ExponentCode := normalNode1885

theorem canonicalSound32065 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32065.moment H = canonicalOutput32065.moment H :=
  canonical_of_padded canonicalInput32065 canonicalOutput32065 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32066 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![0, -2, 4, -2]]⟩

def canonicalOutput32066 : ExponentCode := normalNode3145

theorem canonicalSound32066 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32066.moment H = canonicalOutput32066.moment H :=
  canonical_of_padded canonicalInput32066 canonicalOutput32066 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation405, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32067 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 3, -1]]⟩

def canonicalOutput32067 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3002⟩

theorem canonicalSound32067 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32067.moment H = canonicalOutput32067.moment H :=
  canonical_of_padded canonicalInput32067 canonicalOutput32067 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput32068 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 1, 2, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32068 : ExponentCode := normalNode2474

theorem canonicalSound32068 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32068.moment H = canonicalOutput32068.moment H :=
  canonical_of_padded canonicalInput32068 canonicalOutput32068 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32069 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, -1, 4], ![-1, 0, 4, -3]]⟩

def canonicalOutput32069 : ExponentCode := normalNode1333

theorem canonicalSound32069 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32069.moment H = canonicalOutput32069.moment H :=
  canonical_of_padded canonicalInput32069 canonicalOutput32069 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32070 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput32070 : ExponentCode := normalNode1882

theorem canonicalSound32070 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32070.moment H = canonicalOutput32070.moment H :=
  canonical_of_padded canonicalInput32070 canonicalOutput32070 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32071 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, -1, 4, -2]]⟩

def canonicalOutput32071 : ExponentCode := normalNode7271

theorem canonicalSound32071 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32071.moment H = canonicalOutput32071.moment H :=
  canonical_of_padded canonicalInput32071 canonicalOutput32071 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32072 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 3, -1]]⟩

def canonicalOutput32072 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3301⟩

theorem canonicalSound32072 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32072.moment H = canonicalOutput32072.moment H :=
  canonical_of_padded canonicalInput32072 canonicalOutput32072 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput32073 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, -2, 1, 2]]⟩

def canonicalOutput32073 : ExponentCode := normalNode2918

theorem canonicalSound32073 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32073.moment H = canonicalOutput32073.moment H :=
  canonical_of_padded canonicalInput32073 canonicalOutput32073 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation405, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32074 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -2, -1, 3], ![-2, 0, 4, -2]]⟩

def canonicalOutput32074 : ExponentCode := normalNode3141

theorem canonicalSound32074 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32074.moment H = canonicalOutput32074.moment H :=
  canonical_of_padded canonicalInput32074 canonicalOutput32074 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32075 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, -2, 0, 2], ![-2, 0, 3, -1]]⟩

def canonicalOutput32075 : ExponentCode := normalNode1776

theorem canonicalSound32075 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32075.moment H = canonicalOutput32075.moment H :=
  canonical_of_padded canonicalInput32075 canonicalOutput32075 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32076 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, 0, 3, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput32076 : ExponentCode := normalNode463

theorem canonicalSound32076 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32076.moment H = canonicalOutput32076.moment H :=
  canonical_of_padded canonicalInput32076 canonicalOutput32076 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32077 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, -1, 3], ![0, -2, 3, -1]]⟩

def canonicalOutput32077 : ExponentCode := normalNode3389

theorem canonicalSound32077 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32077.moment H = canonicalOutput32077.moment H :=
  canonical_of_padded canonicalInput32077 canonicalOutput32077 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32078 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 3, -1], ![0, -2, -1, 3]]⟩

def canonicalOutput32078 : ExponentCode := normalNode3389

theorem canonicalSound32078 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32078.moment H = canonicalOutput32078.moment H :=
  canonical_of_padded canonicalInput32078 canonicalOutput32078 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation299, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32079 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, -1, 4], ![-1, 0, 3, -2]]⟩

def canonicalOutput32079 : ExponentCode := normalNode1315

theorem canonicalSound32079 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32079.moment H = canonicalOutput32079.moment H :=
  canonical_of_padded canonicalInput32079 canonicalOutput32079 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32080 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 0, 3], ![-1, 0, 2, -1]]⟩

def canonicalOutput32080 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2977⟩

theorem canonicalSound32080 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32080.moment H = canonicalOutput32080.moment H :=
  canonical_of_padded canonicalInput32080 canonicalOutput32080 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation302, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32081 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, -2, 4], ![-1, -1, 4, -2]]⟩

def canonicalOutput32081 : ExponentCode := normalNode7278

theorem canonicalSound32081 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32081.moment H = canonicalOutput32081.moment H :=
  canonical_of_padded canonicalInput32081 canonicalOutput32081 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32082 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput32082 : ExponentCode := normalNode7681

theorem canonicalSound32082 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32082.moment H = canonicalOutput32082.moment H :=
  canonical_of_padded canonicalInput32082 canonicalOutput32082 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32083 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0]]⟩

def canonicalOutput32083 : ExponentCode := normalNode4213

theorem canonicalSound32083 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32083.moment H = canonicalOutput32083.moment H :=
  canonical_of_padded canonicalInput32083 canonicalOutput32083 (by decide) (by decide)
    ⟨false, true, canonicalPermutation91, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput32084 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -2, 3], ![-1, -2, 4, -1]]⟩

def canonicalOutput32084 : ExponentCode := normalNode1315

theorem canonicalSound32084 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32084.moment H = canonicalOutput32084.moment H :=
  canonical_of_padded canonicalInput32084 canonicalOutput32084 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation409, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32085 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, -1, 2], ![-1, -2, 3, 0]]⟩

def canonicalOutput32085 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2977⟩

theorem canonicalSound32085 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32085.moment H = canonicalOutput32085.moment H :=
  canonical_of_padded canonicalInput32085 canonicalOutput32085 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation409, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32086 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![-1, -2, -1, 4]]⟩

def canonicalOutput32086 : ExponentCode := normalNode1315

theorem canonicalSound32086 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32086.moment H = canonicalOutput32086.moment H :=
  canonical_of_padded canonicalInput32086 canonicalOutput32086 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32087 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, -1, 3], ![-2, 0, 3, -1]]⟩

def canonicalOutput32087 : ExponentCode := normalNode3389

theorem canonicalSound32087 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32087.moment H = canonicalOutput32087.moment H :=
  canonical_of_padded canonicalInput32087 canonicalOutput32087 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32088 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 0, 2], ![-2, 0, 2, 0]]⟩

def canonicalOutput32088 : ExponentCode := normalNode3810

theorem canonicalSound32088 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32088.moment H = canonicalOutput32088.moment H :=
  canonical_of_padded canonicalInput32088 canonicalOutput32088 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32089 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![-2, -1, 4, -1]]⟩

def canonicalOutput32089 : ExponentCode := normalNode1315

theorem canonicalSound32089 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32089.moment H = canonicalOutput32089.moment H :=
  canonical_of_padded canonicalInput32089 canonicalOutput32089 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32090 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, -1, 2], ![-2, -1, 3, 0]]⟩

def canonicalOutput32090 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2977⟩

theorem canonicalSound32090 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32090.moment H = canonicalOutput32090.moment H :=
  canonical_of_padded canonicalInput32090 canonicalOutput32090 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32091 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -1, 3, -2], ![-2, -1, -1, 4]]⟩

def canonicalOutput32091 : ExponentCode := normalNode1315

theorem canonicalSound32091 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32091.moment H = canonicalOutput32091.moment H :=
  canonical_of_padded canonicalInput32091 canonicalOutput32091 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32092 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 0, 2, -2], ![-2, -2, 0, 4]]⟩

def canonicalOutput32092 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2881⟩

theorem canonicalSound32092 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32092.moment H = canonicalOutput32092.moment H :=
  canonical_of_padded canonicalInput32092 canonicalOutput32092 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32093 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 0, 3, -3], ![-2, -2, -1, 5]]⟩

def canonicalOutput32093 : ExponentCode := normalNode382

theorem canonicalSound32093 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32093.moment H = canonicalOutput32093.moment H :=
  canonical_of_padded canonicalInput32093 canonicalOutput32093 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32094 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput32094 : ExponentCode := normalNode4362

theorem canonicalSound32094 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32094.moment H = canonicalOutput32094.moment H :=
  canonical_of_padded canonicalInput32094 canonicalOutput32094 (by decide) (by decide)
    ⟨false, false, canonicalPermutation151, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput32095 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, 1, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput32095 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3067⟩

theorem canonicalSound32095 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32095.moment H = canonicalOutput32095.moment H :=
  canonical_of_padded canonicalInput32095 canonicalOutput32095 (by decide) (by decide)
    ⟨false, true, canonicalPermutation293, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput32096 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 1, 0], ![0, -1, 2, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput32096 : ExponentCode := normalNode4242

theorem canonicalSound32096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32096.moment H = canonicalOutput32096.moment H :=
  canonical_of_padded canonicalInput32096 canonicalOutput32096 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput32097 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, -2, 4, 0]]⟩

def canonicalOutput32097 : ExponentCode := normalNode463

theorem canonicalSound32097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32097.moment H = canonicalOutput32097.moment H :=
  canonical_of_padded canonicalInput32097 canonicalOutput32097 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation405, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32098 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32098 : ExponentCode := normalNode4287

theorem canonicalSound32098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32098.moment H = canonicalOutput32098.moment H :=
  canonical_of_padded canonicalInput32098 canonicalOutput32098 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32099 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput32099 : ExponentCode := normalNode5300

theorem canonicalSound32099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32099.moment H = canonicalOutput32099.moment H :=
  canonical_of_padded canonicalInput32099 canonicalOutput32099 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32100 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32100 : ExponentCode := normalNode9276

theorem canonicalSound32100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32100.moment H = canonicalOutput32100.moment H :=
  canonical_of_padded canonicalInput32100 canonicalOutput32100 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32101 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, 1, 1, -1], ![-1, 0, 3, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput32101 : ExponentCode := normalNode9796

theorem canonicalSound32101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32101.moment H = canonicalOutput32101.moment H :=
  canonical_of_padded canonicalInput32101 canonicalOutput32101 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32102 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32102 : ExponentCode := normalNode4288

theorem canonicalSound32102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32102.moment H = canonicalOutput32102.moment H :=
  canonical_of_padded canonicalInput32102 canonicalOutput32102 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32103 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput32103 : ExponentCode := normalNode5301

theorem canonicalSound32103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32103.moment H = canonicalOutput32103.moment H :=
  canonical_of_padded canonicalInput32103 canonicalOutput32103 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32104 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32104 : ExponentCode := normalNode9277

theorem canonicalSound32104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32104.moment H = canonicalOutput32104.moment H :=
  canonical_of_padded canonicalInput32104 canonicalOutput32104 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32105 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![-1, 0, 3, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput32105 : ExponentCode := normalNode9795

theorem canonicalSound32105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32105.moment H = canonicalOutput32105.moment H :=
  canonical_of_padded canonicalInput32105 canonicalOutput32105 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32106 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, -1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32106 : ExponentCode := normalNode1960

theorem canonicalSound32106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32106.moment H = canonicalOutput32106.moment H :=
  canonical_of_padded canonicalInput32106 canonicalOutput32106 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput32107 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, -1, -2, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput32107 : ExponentCode := normalNode4228

theorem canonicalSound32107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32107.moment H = canonicalOutput32107.moment H :=
  canonical_of_padded canonicalInput32107 canonicalOutput32107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32108 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput32108 : ExponentCode := normalNode4285

theorem canonicalSound32108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32108.moment H = canonicalOutput32108.moment H :=
  canonical_of_padded canonicalInput32108 canonicalOutput32108 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32109 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, -1, 2], ![0, -1, -1, 2], ![0, 0, 3, -3]]⟩

def canonicalOutput32109 : ExponentCode := normalNode5023

theorem canonicalSound32109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32109.moment H = canonicalOutput32109.moment H :=
  canonical_of_padded canonicalInput32109 canonicalOutput32109 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32110 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -1, -2, 3], ![0, 0, 3, -3]]⟩

def canonicalOutput32110 : ExponentCode := normalNode5270

theorem canonicalSound32110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32110.moment H = canonicalOutput32110.moment H :=
  canonical_of_padded canonicalInput32110 canonicalOutput32110 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32111 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 2, -2]]⟩

def canonicalOutput32111 : ExponentCode := normalNode3865

theorem canonicalSound32111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32111.moment H = canonicalOutput32111.moment H :=
  canonical_of_padded canonicalInput32111 canonicalOutput32111 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32112 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 0, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32112 : ExponentCode := normalNode1975

theorem canonicalSound32112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32112.moment H = canonicalOutput32112.moment H :=
  canonical_of_padded canonicalInput32112 canonicalOutput32112 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation359, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput32113 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput32113 : ExponentCode := normalNode9265

theorem canonicalSound32113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32113.moment H = canonicalOutput32113.moment H :=
  canonical_of_padded canonicalInput32113 canonicalOutput32113 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32114 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 1, -2]]⟩

def canonicalOutput32114 : ExponentCode := normalNode8818

theorem canonicalSound32114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32114.moment H = canonicalOutput32114.moment H :=
  canonical_of_padded canonicalInput32114 canonicalOutput32114 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput32115 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 0, 0], ![-1, 0, 3, -2], ![0, -1, -2, 3]]⟩

def canonicalOutput32115 : ExponentCode := normalNode9810

theorem canonicalSound32115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32115.moment H = canonicalOutput32115.moment H :=
  canonical_of_padded canonicalInput32115 canonicalOutput32115 (by decide) (by decide)
    ⟨false, false, canonicalPermutation139, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput32116 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 1, -1], ![-1, 0, 2, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput32116 : ExponentCode := normalNode9808

theorem canonicalSound32116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32116.moment H = canonicalOutput32116.moment H :=
  canonical_of_padded canonicalInput32116 canonicalOutput32116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation352, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32117 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 1, -1], ![-1, 0, 3, -2], ![0, -1, -3, 4]]⟩

def canonicalOutput32117 : ExponentCode := normalNode9622

theorem canonicalSound32117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32117.moment H = canonicalOutput32117.moment H :=
  canonical_of_padded canonicalInput32117 canonicalOutput32117 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation352, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32118 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput32118 : ExponentCode := normalNode3775

theorem canonicalSound32118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32118.moment H = canonicalOutput32118.moment H :=
  canonical_of_padded canonicalInput32118 canonicalOutput32118 (by decide) (by decide)
    ⟨false, false, canonicalPermutation216, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput32119 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput32119 : ExponentCode := normalNode3769

theorem canonicalSound32119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32119.moment H = canonicalOutput32119.moment H :=
  canonical_of_padded canonicalInput32119 canonicalOutput32119 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32120 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput32120 : ExponentCode := normalNode8783

theorem canonicalSound32120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32120.moment H = canonicalOutput32120.moment H :=
  canonical_of_padded canonicalInput32120 canonicalOutput32120 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput32121 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, -2, 1, 1], ![-1, 1, 3, -3]]⟩

def canonicalOutput32121 : ExponentCode := normalNode4413

theorem canonicalSound32121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32121.moment H = canonicalOutput32121.moment H :=
  canonical_of_padded canonicalInput32121 canonicalOutput32121 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation291, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput32122 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32122 : ExponentCode := normalNode3438

theorem canonicalSound32122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32122.moment H = canonicalOutput32122.moment H :=
  canonical_of_padded canonicalInput32122 canonicalOutput32122 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput32123 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 0, 2, 0], ![0, 2, -1, -1], ![0, -3, 1, 2]]⟩

def canonicalOutput32123 : ExponentCode := normalNode3470

theorem canonicalSound32123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32123.moment H = canonicalOutput32123.moment H :=
  canonical_of_padded canonicalInput32123 canonicalOutput32123 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput32124 : ExponentCode := ⟨6, 4, ![![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, -2, 3, -1]]⟩

def canonicalOutput32124 : ExponentCode := normalNode5395

theorem canonicalSound32124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32124.moment H = canonicalOutput32124.moment H :=
  canonical_of_padded canonicalInput32124 canonicalOutput32124 (by decide) (by decide)
    ⟨false, true, canonicalPermutation298, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput32125 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32125 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32125.moment H = canonicalOutput32125.moment H :=
  canonical_of_padded canonicalInput32125 canonicalOutput32125 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput32126 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32126 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound32126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32126.moment H = canonicalOutput32126.moment H :=
  canonical_of_padded canonicalInput32126 canonicalOutput32126 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput32127 : ExponentCode := ⟨6, 6, ![![0, 1, -1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput32127 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound32127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput32127.moment H = canonicalOutput32127.moment H :=
  canonical_of_padded canonicalInput32127 canonicalOutput32127 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
