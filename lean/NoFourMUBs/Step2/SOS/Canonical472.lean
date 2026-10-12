import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput30208 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput30208 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2057⟩

theorem canonicalSound30208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30208.moment H = canonicalOutput30208.moment H :=
  canonical_of_padded canonicalInput30208 canonicalOutput30208 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput30209 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![1, 1, 0, -2], ![-1, -1, -1, 3]]⟩

def canonicalOutput30209 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2315⟩

theorem canonicalSound30209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30209.moment H = canonicalOutput30209.moment H :=
  canonical_of_padded canonicalInput30209 canonicalOutput30209 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30210 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 1, 0, -2], ![-1, -2, 2, 1]]⟩

def canonicalOutput30210 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound30210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30210.moment H = canonicalOutput30210.moment H :=
  canonical_of_padded canonicalInput30210 canonicalOutput30210 (by decide) (by decide)
    ⟨false, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30211 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![-1, 2, -1, 0], ![1, -3, 0, 2]]⟩

def canonicalOutput30211 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1641⟩

theorem canonicalSound30211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30211.moment H = canonicalOutput30211.moment H :=
  canonical_of_padded canonicalInput30211 canonicalOutput30211 (by decide) (by decide)
    ⟨false, true, canonicalPermutation71, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput30212 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![-1, -2, 0, 3]]⟩

def canonicalOutput30212 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound30212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30212.moment H = canonicalOutput30212.moment H :=
  canonical_of_padded canonicalInput30212 canonicalOutput30212 (by decide) (by decide)
    ⟨false, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30213 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput30213 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2512⟩

theorem canonicalSound30213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30213.moment H = canonicalOutput30213.moment H :=
  canonical_of_padded canonicalInput30213 canonicalOutput30213 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput30214 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![1, 0, 1, -2], ![-2, 1, -1, 2]]⟩

def canonicalOutput30214 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1784⟩

theorem canonicalSound30214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30214.moment H = canonicalOutput30214.moment H :=
  canonical_of_padded canonicalInput30214 canonicalOutput30214 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30215 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, -1, 2], ![1, -2, 1, 0], ![-2, 2, 1, -1]]⟩

def canonicalOutput30215 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1741⟩

theorem canonicalSound30215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30215.moment H = canonicalOutput30215.moment H :=
  canonical_of_padded canonicalInput30215 canonicalOutput30215 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput30216 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, -2, 0, 1], ![-2, 2, -1, 1]]⟩

def canonicalOutput30216 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1773⟩

theorem canonicalSound30216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30216.moment H = canonicalOutput30216.moment H :=
  canonical_of_padded canonicalInput30216 canonicalOutput30216 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput30217 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, -1, 0, 3]]⟩

def canonicalOutput30217 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound30217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30217.moment H = canonicalOutput30217.moment H :=
  canonical_of_padded canonicalInput30217 canonicalOutput30217 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30218 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, -1, 1, 2]]⟩

def canonicalOutput30218 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1834⟩

theorem canonicalSound30218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30218.moment H = canonicalOutput30218.moment H :=
  canonical_of_padded canonicalInput30218 canonicalOutput30218 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput30219 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput30219 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1716⟩

theorem canonicalSound30219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30219.moment H = canonicalOutput30219.moment H :=
  canonical_of_padded canonicalInput30219 canonicalOutput30219 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput30220 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![0, -2, -1, 3]]⟩

def canonicalOutput30220 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound30220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30220.moment H = canonicalOutput30220.moment H :=
  canonical_of_padded canonicalInput30220 canonicalOutput30220 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput30221 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, -2, -1, 4]]⟩

def canonicalOutput30221 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1552⟩

theorem canonicalSound30221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30221.moment H = canonicalOutput30221.moment H :=
  canonical_of_padded canonicalInput30221 canonicalOutput30221 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput30222 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 3, -1], ![-2, 1, -2, 3]]⟩

def canonicalOutput30222 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1980⟩

theorem canonicalSound30222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30222.moment H = canonicalOutput30222.moment H :=
  canonical_of_padded canonicalInput30222 canonicalOutput30222 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput30223 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 3, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput30223 : ExponentCode := normalNode7665

theorem canonicalSound30223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30223.moment H = canonicalOutput30223.moment H :=
  canonical_of_padded canonicalInput30223 canonicalOutput30223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput30224 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 3, -2, -1]]⟩

def canonicalOutput30224 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1672⟩

theorem canonicalSound30224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30224.moment H = canonicalOutput30224.moment H :=
  canonical_of_padded canonicalInput30224 canonicalOutput30224 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput30225 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![0, 2, -2, 0]]⟩

def canonicalOutput30225 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound30225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30225.moment H = canonicalOutput30225.moment H :=
  canonical_of_padded canonicalInput30225 canonicalOutput30225 (by decide) (by decide)
    ⟨false, false, canonicalPermutation80, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput30226 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, -1, 3, -2], ![0, 1, -3, 2]]⟩

def canonicalOutput30226 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2262⟩

theorem canonicalSound30226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30226.moment H = canonicalOutput30226.moment H :=
  canonical_of_padded canonicalInput30226 canonicalOutput30226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30227 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![0, 3, -2, -1]]⟩

def canonicalOutput30227 : ExponentCode := normalNode1778

theorem canonicalSound30227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30227.moment H = canonicalOutput30227.moment H :=
  canonical_of_padded canonicalInput30227 canonicalOutput30227 (by decide) (by decide)
    ⟨false, false, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput30228 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![0, -1, 2, -1], ![-1, 3, -2, 0]]⟩

def canonicalOutput30228 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound30228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30228.moment H = canonicalOutput30228.moment H :=
  canonical_of_padded canonicalInput30228 canonicalOutput30228 (by decide) (by decide)
    ⟨false, false, canonicalPermutation80, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput30229 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 2, 0], ![0, -1, -1, 2], ![-1, 3, -1, -1]]⟩

def canonicalOutput30229 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2069⟩

theorem canonicalSound30229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30229.moment H = canonicalOutput30229.moment H :=
  canonical_of_padded canonicalInput30229 canonicalOutput30229 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput30230 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, 0, -1], ![0, -1, 2, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput30230 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1647⟩

theorem canonicalSound30230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30230.moment H = canonicalOutput30230.moment H :=
  canonical_of_padded canonicalInput30230 canonicalOutput30230 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput30231 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput30231 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound30231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30231.moment H = canonicalOutput30231.moment H :=
  canonical_of_padded canonicalInput30231 canonicalOutput30231 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput30232 : ExponentCode := ⟨6, 4, ![![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput30232 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1648⟩

theorem canonicalSound30232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30232.moment H = canonicalOutput30232.moment H :=
  canonical_of_padded canonicalInput30232 canonicalOutput30232 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput30233 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 0, 0], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![-1, -1, 0, 1, 1], ![-1, 2, -1, -1, 1], ![2, -1, -1, 1, -1]]⟩

def canonicalOutput30233 : ExponentCode := normalNode8764

theorem canonicalSound30233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30233.moment H = canonicalOutput30233.moment H :=
  canonical_of_padded canonicalInput30233 canonicalOutput30233 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30234 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 0, 0], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![-1, 2, 0, 0, -1], ![-1, -1, -1, 2, 1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput30234 : ExponentCode := normalNode8616

theorem canonicalSound30234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30234.moment H = canonicalOutput30234.moment H :=
  canonical_of_padded canonicalInput30234 canonicalOutput30234 (by decide) (by decide)
    ⟨true, true, canonicalPermutation50, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput30235 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 0, 0], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1], ![-2, 1, -1, 0, 2], ![1, -2, -1, 2, 0]]⟩

def canonicalOutput30235 : ExponentCode := normalNode8641

theorem canonicalSound30235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30235.moment H = canonicalOutput30235.moment H :=
  canonical_of_padded canonicalInput30235 canonicalOutput30235 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30236 : ExponentCode := ⟨6, 5, ![![0, 0, 0, 0, 0], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![1, 1, 0, -1, -1], ![-2, 1, -1, 1, 1], ![1, -2, -1, 1, 1]]⟩

def canonicalOutput30236 : ExponentCode := normalNode8642

theorem canonicalSound30236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30236.moment H = canonicalOutput30236.moment H :=
  canonical_of_padded canonicalInput30236 canonicalOutput30236 (by decide) (by decide)
    ⟨true, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput30237 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![3, 0, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30237 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound30237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30237.moment H = canonicalOutput30237.moment H :=
  canonical_of_padded canonicalInput30237 canonicalOutput30237 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput30238 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30238 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30238.moment H = canonicalOutput30238.moment H :=
  canonical_of_padded canonicalInput30238 canonicalOutput30238 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput30239 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30239 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30239.moment H = canonicalOutput30239.moment H :=
  canonical_of_padded canonicalInput30239 canonicalOutput30239 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput30240 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30240 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node3⟩

theorem canonicalSound30240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30240.moment H = canonicalOutput30240.moment H :=
  canonical_of_padded canonicalInput30240 canonicalOutput30240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput30241 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30241 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30241.moment H = canonicalOutput30241.moment H :=
  canonical_of_padded canonicalInput30241 canonicalOutput30241 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput30242 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30242 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound30242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30242.moment H = canonicalOutput30242.moment H :=
  canonical_of_padded canonicalInput30242 canonicalOutput30242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation213⟩ (by decide +kernel) hH

def canonicalInput30243 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30243 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30243.moment H = canonicalOutput30243.moment H :=
  canonical_of_padded canonicalInput30243 canonicalOutput30243 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput30244 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30244 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node4⟩

theorem canonicalSound30244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30244.moment H = canonicalOutput30244.moment H :=
  canonical_of_padded canonicalInput30244 canonicalOutput30244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput30245 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30245 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30245.moment H = canonicalOutput30245.moment H :=
  canonical_of_padded canonicalInput30245 canonicalOutput30245 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput30246 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30246 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound30246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30246.moment H = canonicalOutput30246.moment H :=
  canonical_of_padded canonicalInput30246 canonicalOutput30246 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput30247 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30247 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound30247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30247.moment H = canonicalOutput30247.moment H :=
  canonical_of_padded canonicalInput30247 canonicalOutput30247 (by decide) (by decide)
    ⟨true, false, canonicalPermutation60, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput30248 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput30248 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound30248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30248.moment H = canonicalOutput30248.moment H :=
  canonical_of_padded canonicalInput30248 canonicalOutput30248 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation222⟩ (by decide +kernel) hH

def canonicalInput30249 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput30249 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound30249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30249.moment H = canonicalOutput30249.moment H :=
  canonical_of_padded canonicalInput30249 canonicalOutput30249 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation223⟩ (by decide +kernel) hH

def canonicalInput30250 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput30250 : ExponentCode := normalNode9917

theorem canonicalSound30250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30250.moment H = canonicalOutput30250.moment H :=
  canonical_of_padded canonicalInput30250 canonicalOutput30250 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, canonicalPermutation225⟩ (by decide +kernel) hH

def canonicalInput30251 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30251 : ExponentCode := normalNode11165

theorem canonicalSound30251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30251.moment H = canonicalOutput30251.moment H :=
  canonical_of_padded canonicalInput30251 canonicalOutput30251 (by decide) (by decide)
    ⟨false, true, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput30252 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30252 : ExponentCode := normalNode8361

theorem canonicalSound30252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30252.moment H = canonicalOutput30252.moment H :=
  canonical_of_padded canonicalInput30252 canonicalOutput30252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput30253 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30253 : ExponentCode := normalNode8361

theorem canonicalSound30253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30253.moment H = canonicalOutput30253.moment H :=
  canonical_of_padded canonicalInput30253 canonicalOutput30253 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput30254 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput30254 : ExponentCode := normalNode11165

theorem canonicalSound30254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30254.moment H = canonicalOutput30254.moment H :=
  canonical_of_padded canonicalInput30254 canonicalOutput30254 (by decide) (by decide)
    ⟨false, true, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput30255 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30255 : ExponentCode := normalNode8361

theorem canonicalSound30255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30255.moment H = canonicalOutput30255.moment H :=
  canonical_of_padded canonicalInput30255 canonicalOutput30255 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput30256 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30256 : ExponentCode := normalNode10645

theorem canonicalSound30256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30256.moment H = canonicalOutput30256.moment H :=
  canonical_of_padded canonicalInput30256 canonicalOutput30256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput30257 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30257 : ExponentCode := normalNode10453

theorem canonicalSound30257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30257.moment H = canonicalOutput30257.moment H :=
  canonical_of_padded canonicalInput30257 canonicalOutput30257 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput30258 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput30258 : ExponentCode := normalNode10453

theorem canonicalSound30258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30258.moment H = canonicalOutput30258.moment H :=
  canonical_of_padded canonicalInput30258 canonicalOutput30258 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput30259 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30259 : ExponentCode := normalNode10645

theorem canonicalSound30259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30259.moment H = canonicalOutput30259.moment H :=
  canonical_of_padded canonicalInput30259 canonicalOutput30259 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput30260 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput30260 : ExponentCode := normalNode8361

theorem canonicalSound30260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30260.moment H = canonicalOutput30260.moment H :=
  canonical_of_padded canonicalInput30260 canonicalOutput30260 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput30261 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30261 : ExponentCode := normalNode8361

theorem canonicalSound30261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30261.moment H = canonicalOutput30261.moment H :=
  canonical_of_padded canonicalInput30261 canonicalOutput30261 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput30262 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30262 : ExponentCode := normalNode10453

theorem canonicalSound30262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30262.moment H = canonicalOutput30262.moment H :=
  canonical_of_padded canonicalInput30262 canonicalOutput30262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput30263 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30263 : ExponentCode := normalNode10645

theorem canonicalSound30263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30263.moment H = canonicalOutput30263.moment H :=
  canonical_of_padded canonicalInput30263 canonicalOutput30263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput30264 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput30264 : ExponentCode := normalNode10645

theorem canonicalSound30264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30264.moment H = canonicalOutput30264.moment H :=
  canonical_of_padded canonicalInput30264 canonicalOutput30264 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput30265 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30265 : ExponentCode := normalNode10453

theorem canonicalSound30265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30265.moment H = canonicalOutput30265.moment H :=
  canonical_of_padded canonicalInput30265 canonicalOutput30265 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput30266 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput30266 : ExponentCode := normalNode8361

theorem canonicalSound30266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30266.moment H = canonicalOutput30266.moment H :=
  canonical_of_padded canonicalInput30266 canonicalOutput30266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput30267 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput30267 : ExponentCode := normalNode11165

theorem canonicalSound30267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30267.moment H = canonicalOutput30267.moment H :=
  canonical_of_padded canonicalInput30267 canonicalOutput30267 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput30268 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput30268 : ExponentCode := normalNode8361

theorem canonicalSound30268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30268.moment H = canonicalOutput30268.moment H :=
  canonical_of_padded canonicalInput30268 canonicalOutput30268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput30269 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput30269 : ExponentCode := normalNode8361

theorem canonicalSound30269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30269.moment H = canonicalOutput30269.moment H :=
  canonical_of_padded canonicalInput30269 canonicalOutput30269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput30270 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput30270 : ExponentCode := normalNode11165

theorem canonicalSound30270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30270.moment H = canonicalOutput30270.moment H :=
  canonical_of_padded canonicalInput30270 canonicalOutput30270 (by decide) (by decide)
    ⟨false, true, canonicalPermutation40, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput30271 : ExponentCode := ⟨6, 6, ![![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput30271 : ExponentCode := normalNode10453

theorem canonicalSound30271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput30271.moment H = canonicalOutput30271.moment H :=
  canonical_of_padded canonicalInput30271 canonicalOutput30271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation229⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
