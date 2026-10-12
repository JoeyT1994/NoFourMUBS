import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30144 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -1, -1], ![-2, -2, 1, 3]]⟩

def canonicalOutput30144 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1506⟩

theorem canonicalSound30144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30144.moment H = canonicalOutput30144.moment H :=
  canonical_of_padded canonicalInput30144 canonicalOutput30144 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30145 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -2, 0], ![-2, -2, 1, 3]]⟩

def canonicalOutput30145 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1508⟩

theorem canonicalSound30145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30145.moment H = canonicalOutput30145.moment H :=
  canonical_of_padded canonicalInput30145 canonicalOutput30145 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30146 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput30146 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound30146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30146.moment H = canonicalOutput30146.moment H :=
  canonical_of_padded canonicalInput30146 canonicalOutput30146 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30147 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput30147 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound30147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30147.moment H = canonicalOutput30147.moment H :=
  canonical_of_padded canonicalInput30147 canonicalOutput30147 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30148 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput30148 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound30148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30148.moment H = canonicalOutput30148.moment H :=
  canonical_of_padded canonicalInput30148 canonicalOutput30148 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30149 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput30149 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2055⟩

theorem canonicalSound30149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30149.moment H = canonicalOutput30149.moment H :=
  canonical_of_padded canonicalInput30149 canonicalOutput30149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30150 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput30150 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1766⟩

theorem canonicalSound30150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30150.moment H = canonicalOutput30150.moment H :=
  canonical_of_padded canonicalInput30150 canonicalOutput30150 (by decide) (by decide)
    ⟨false, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30151 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput30151 : ExponentCode := normalNode4550

theorem canonicalSound30151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30151.moment H = canonicalOutput30151.moment H :=
  canonical_of_padded canonicalInput30151 canonicalOutput30151 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30152 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput30152 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1781⟩

theorem canonicalSound30152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30152.moment H = canonicalOutput30152.moment H :=
  canonical_of_padded canonicalInput30152 canonicalOutput30152 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation198, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30153 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, 0, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput30153 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound30153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30153.moment H = canonicalOutput30153.moment H :=
  canonical_of_padded canonicalInput30153 canonicalOutput30153 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput30154 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput30154 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound30154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30154.moment H = canonicalOutput30154.moment H :=
  canonical_of_padded canonicalInput30154 canonicalOutput30154 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput30155 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput30155 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound30155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30155.moment H = canonicalOutput30155.moment H :=
  canonical_of_padded canonicalInput30155 canonicalOutput30155 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30156 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![2, 0, -1, -1]]⟩

def canonicalOutput30156 : ExponentCode := normalNode4348

theorem canonicalSound30156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30156.moment H = canonicalOutput30156.moment H :=
  canonical_of_padded canonicalInput30156 canonicalOutput30156 (by decide) (by decide)
    ⟨false, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30157 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput30157 : ExponentCode := normalNode2699

theorem canonicalSound30157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30157.moment H = canonicalOutput30157.moment H :=
  canonical_of_padded canonicalInput30157 canonicalOutput30157 (by decide) (by decide)
    ⟨false, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30158 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput30158 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1792⟩

theorem canonicalSound30158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30158.moment H = canonicalOutput30158.moment H :=
  canonical_of_padded canonicalInput30158 canonicalOutput30158 (by decide) (by decide)
    ⟨false, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30159 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 0, 2, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput30159 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2023⟩

theorem canonicalSound30159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30159.moment H = canonicalOutput30159.moment H :=
  canonical_of_padded canonicalInput30159 canonicalOutput30159 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput30160 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -3, 1, 0]]⟩

def canonicalOutput30160 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1685⟩

theorem canonicalSound30160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30160.moment H = canonicalOutput30160.moment H :=
  canonical_of_padded canonicalInput30160 canonicalOutput30160 (by decide) (by decide)
    ⟨false, true, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30161 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, 0, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput30161 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound30161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30161.moment H = canonicalOutput30161.moment H :=
  canonical_of_padded canonicalInput30161 canonicalOutput30161 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30162 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![2, -1, 0, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput30162 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound30162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30162.moment H = canonicalOutput30162.moment H :=
  canonical_of_padded canonicalInput30162 canonicalOutput30162 (by decide) (by decide)
    ⟨false, true, canonicalPermutation32, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30163 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 2, -1], ![2, 0, -1, -1], ![-1, -2, 0, 3]]⟩

def canonicalOutput30163 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound30163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30163.moment H = canonicalOutput30163.moment H :=
  canonical_of_padded canonicalInput30163 canonicalOutput30163 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30164 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, -2, 0, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput30164 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1839⟩

theorem canonicalSound30164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30164.moment H = canonicalOutput30164.moment H :=
  canonical_of_padded canonicalInput30164 canonicalOutput30164 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30165 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, -1, 2], ![2, 0, 0, -2], ![-2, -1, 2, 1]]⟩

def canonicalOutput30165 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1833⟩

theorem canonicalSound30165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30165.moment H = canonicalOutput30165.moment H :=
  canonical_of_padded canonicalInput30165 canonicalOutput30165 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30166 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, -1, 0, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput30166 : ExponentCode := normalNode1778

theorem canonicalSound30166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30166.moment H = canonicalOutput30166.moment H :=
  canonical_of_padded canonicalInput30166 canonicalOutput30166 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30167 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -1, 2, -1], ![2, 0, -1, -1], ![-2, -1, 0, 3]]⟩

def canonicalOutput30167 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound30167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30167.moment H = canonicalOutput30167.moment H :=
  canonical_of_padded canonicalInput30167 canonicalOutput30167 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30168 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 2, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput30168 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1551⟩

theorem canonicalSound30168 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30168.moment H = canonicalOutput30168.moment H :=
  canonical_of_padded canonicalInput30168 canonicalOutput30168 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30169 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 0, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput30169 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1718⟩

theorem canonicalSound30169 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30169.moment H = canonicalOutput30169.moment H :=
  canonical_of_padded canonicalInput30169 canonicalOutput30169 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30170 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput30170 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1486⟩

theorem canonicalSound30170 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30170.moment H = canonicalOutput30170.moment H :=
  canonical_of_padded canonicalInput30170 canonicalOutput30170 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30171 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 0, -1], ![-1, -1, 3, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput30171 : ExponentCode := normalNode5322

theorem canonicalSound30171 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30171.moment H = canonicalOutput30171.moment H :=
  canonical_of_padded canonicalInput30171 canonicalOutput30171 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30172 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput30172 : ExponentCode := normalNode4347

theorem canonicalSound30172 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30172.moment H = canonicalOutput30172.moment H :=
  canonical_of_padded canonicalInput30172 canonicalOutput30172 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30173 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput30173 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1563⟩

theorem canonicalSound30173 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30173.moment H = canonicalOutput30173.moment H :=
  canonical_of_padded canonicalInput30173 canonicalOutput30173 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30174 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 3, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput30174 : ExponentCode := normalNode3378

theorem canonicalSound30174 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30174.moment H = canonicalOutput30174.moment H :=
  canonical_of_padded canonicalInput30174 canonicalOutput30174 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput30175 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1], ![2, 0, -3, 1]]⟩

def canonicalOutput30175 : ExponentCode := normalNode3446

theorem canonicalSound30175 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30175.moment H = canonicalOutput30175.moment H :=
  canonical_of_padded canonicalInput30175 canonicalOutput30175 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30176 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, -2, 2, -1]]⟩

def canonicalOutput30176 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩

theorem canonicalSound30176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30176.moment H = canonicalOutput30176.moment H :=
  canonical_of_padded canonicalInput30176 canonicalOutput30176 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30177 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 3, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput30177 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1977⟩

theorem canonicalSound30177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30177.moment H = canonicalOutput30177.moment H :=
  canonical_of_padded canonicalInput30177 canonicalOutput30177 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30178 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-2, -2, 3, 1]]⟩

def canonicalOutput30178 : ExponentCode := normalNode710

theorem canonicalSound30178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30178.moment H = canonicalOutput30178.moment H :=
  canonical_of_padded canonicalInput30178 canonicalOutput30178 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30179 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, 0, -1, 3], ![0, -2, 3, -1]]⟩

def canonicalOutput30179 : ExponentCode := normalNode3395

theorem canonicalSound30179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30179.moment H = canonicalOutput30179.moment H :=
  canonical_of_padded canonicalInput30179 canonicalOutput30179 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30180 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput30180 : ExponentCode := normalNode3912

theorem canonicalSound30180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30180.moment H = canonicalOutput30180.moment H :=
  canonical_of_padded canonicalInput30180 canonicalOutput30180 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30181 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput30181 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2021⟩

theorem canonicalSound30181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30181.moment H = canonicalOutput30181.moment H :=
  canonical_of_padded canonicalInput30181 canonicalOutput30181 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30182 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput30182 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound30182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30182.moment H = canonicalOutput30182.moment H :=
  canonical_of_padded canonicalInput30182 canonicalOutput30182 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput30183 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput30183 : ExponentCode := normalNode8964

theorem canonicalSound30183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30183.moment H = canonicalOutput30183.moment H :=
  canonical_of_padded canonicalInput30183 canonicalOutput30183 (by decide) (by decide)
    ⟨false, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput30184 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 2, -1, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput30184 : ExponentCode := normalNode2380

theorem canonicalSound30184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30184.moment H = canonicalOutput30184.moment H :=
  canonical_of_padded canonicalInput30184 canonicalOutput30184 (by decide) (by decide)
    ⟨false, true, canonicalPermutation54, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput30185 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput30185 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2070⟩

theorem canonicalSound30185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30185.moment H = canonicalOutput30185.moment H :=
  canonical_of_padded canonicalInput30185 canonicalOutput30185 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30186 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![1, -2, 1, 0], ![-1, 1, -2, 2]]⟩

def canonicalOutput30186 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1847⟩

theorem canonicalSound30186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30186.moment H = canonicalOutput30186.moment H :=
  canonical_of_padded canonicalInput30186 canonicalOutput30186 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput30187 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput30187 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound30187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30187.moment H = canonicalOutput30187.moment H :=
  canonical_of_padded canonicalInput30187 canonicalOutput30187 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30188 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput30188 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1680⟩

theorem canonicalSound30188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30188.moment H = canonicalOutput30188.moment H :=
  canonical_of_padded canonicalInput30188 canonicalOutput30188 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput30189 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, 3, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput30189 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2695⟩

theorem canonicalSound30189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30189.moment H = canonicalOutput30189.moment H :=
  canonical_of_padded canonicalInput30189 canonicalOutput30189 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30190 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-2, 1, 3, -2]]⟩

def canonicalOutput30190 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2200⟩

theorem canonicalSound30190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30190.moment H = canonicalOutput30190.moment H :=
  canonical_of_padded canonicalInput30190 canonicalOutput30190 (by decide) (by decide)
    ⟨false, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30191 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput30191 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1739⟩

theorem canonicalSound30191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30191.moment H = canonicalOutput30191.moment H :=
  canonical_of_padded canonicalInput30191 canonicalOutput30191 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30192 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, -2, 3], ![-2, 1, 3, -2]]⟩

def canonicalOutput30192 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2175⟩

theorem canonicalSound30192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30192.moment H = canonicalOutput30192.moment H :=
  canonical_of_padded canonicalInput30192 canonicalOutput30192 (by decide) (by decide)
    ⟨false, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30193 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, -1, 3, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput30193 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2177⟩

theorem canonicalSound30193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30193.moment H = canonicalOutput30193.moment H :=
  canonical_of_padded canonicalInput30193 canonicalOutput30193 (by decide) (by decide)
    ⟨false, false, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30194 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, 2, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput30194 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1605⟩

theorem canonicalSound30194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30194.moment H = canonicalOutput30194.moment H :=
  canonical_of_padded canonicalInput30194 canonicalOutput30194 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30195 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput30195 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1631⟩

theorem canonicalSound30195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30195.moment H = canonicalOutput30195.moment H :=
  canonical_of_padded canonicalInput30195 canonicalOutput30195 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30196 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 2, -2, 1]]⟩

def canonicalOutput30196 : ExponentCode := normalNode2687

theorem canonicalSound30196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30196.moment H = canonicalOutput30196.moment H :=
  canonical_of_padded canonicalInput30196 canonicalOutput30196 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput30197 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput30197 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2525⟩

theorem canonicalSound30197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30197.moment H = canonicalOutput30197.moment H :=
  canonical_of_padded canonicalInput30197 canonicalOutput30197 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput30198 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, -1, -2, 4]]⟩

def canonicalOutput30198 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1548⟩

theorem canonicalSound30198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30198.moment H = canonicalOutput30198.moment H :=
  canonical_of_padded canonicalInput30198 canonicalOutput30198 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30199 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-2, 0, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput30199 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩

theorem canonicalSound30199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30199.moment H = canonicalOutput30199.moment H :=
  canonical_of_padded canonicalInput30199 canonicalOutput30199 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30200 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput30200 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2519⟩

theorem canonicalSound30200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30200.moment H = canonicalOutput30200.moment H :=
  canonical_of_padded canonicalInput30200 canonicalOutput30200 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30201 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-2, 0, 3, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput30201 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩

theorem canonicalSound30201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30201.moment H = canonicalOutput30201.moment H :=
  canonical_of_padded canonicalInput30201 canonicalOutput30201 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30202 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1], ![-1, -1, 3, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput30202 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2517⟩

theorem canonicalSound30202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30202.moment H = canonicalOutput30202.moment H :=
  canonical_of_padded canonicalInput30202 canonicalOutput30202 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30203 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput30203 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2003⟩

theorem canonicalSound30203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30203.moment H = canonicalOutput30203.moment H :=
  canonical_of_padded canonicalInput30203 canonicalOutput30203 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30204 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput30204 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound30204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30204.moment H = canonicalOutput30204.moment H :=
  canonical_of_padded canonicalInput30204 canonicalOutput30204 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30205 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput30205 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2315⟩

theorem canonicalSound30205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30205.moment H = canonicalOutput30205.moment H :=
  canonical_of_padded canonicalInput30205 canonicalOutput30205 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30206 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 2, 0], ![0, -2, 0, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput30206 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2000⟩

theorem canonicalSound30206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30206.moment H = canonicalOutput30206.moment H :=
  canonical_of_padded canonicalInput30206 canonicalOutput30206 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30207 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput30207 : ExponentCode := normalNode10835

theorem canonicalSound30207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30207.moment H = canonicalOutput30207.moment H :=
  canonical_of_padded canonicalInput30207 canonicalOutput30207 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation170, canonicalPermutation6⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
