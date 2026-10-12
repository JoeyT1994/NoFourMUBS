import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20224 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 4, -3], ![0, 2, -3, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput20224 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1307⟩

theorem canonicalSound20224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20224.moment H = canonicalOutput20224.moment H :=
  canonical_of_padded canonicalInput20224 canonicalOutput20224 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20225 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -1, 4, -3], ![0, 2, -2, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput20225 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1306⟩

theorem canonicalSound20225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20225.moment H = canonicalOutput20225.moment H :=
  canonical_of_padded canonicalInput20225 canonicalOutput20225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20226 : ExponentCode := ⟨3, 4, ![![-1, 0, -1, 2], ![0, 0, -3, 3], ![1, 0, 4, -5]]⟩

def canonicalOutput20226 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node49⟩

theorem canonicalSound20226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20226.moment H = canonicalOutput20226.moment H :=
  canonical_of_padded canonicalInput20226 canonicalOutput20226 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20227 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput20227 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1222⟩

theorem canonicalSound20227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20227.moment H = canonicalOutput20227.moment H :=
  canonical_of_padded canonicalInput20227 canonicalOutput20227 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20228 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput20228 : ExponentCode := normalNode5534

theorem canonicalSound20228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20228.moment H = canonicalOutput20228.moment H :=
  canonical_of_padded canonicalInput20228 canonicalOutput20228 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20229 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, -1, -1, 2], ![0, 2, 3, -5], ![1, -1, 0, 0]]⟩

def canonicalOutput20229 : ExponentCode := normalNode10254

theorem canonicalSound20229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20229.moment H = canonicalOutput20229.moment H :=
  canonical_of_padded canonicalInput20229 canonicalOutput20229 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20230 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -2, 3, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput20230 : ExponentCode := normalNode1248

theorem canonicalSound20230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20230.moment H = canonicalOutput20230.moment H :=
  canonical_of_padded canonicalInput20230 canonicalOutput20230 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20231 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput20231 : ExponentCode := normalNode5800

theorem canonicalSound20231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20231.moment H = canonicalOutput20231.moment H :=
  canonical_of_padded canonicalInput20231 canonicalOutput20231 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20232 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -2, 1, -1], ![-1, 1, 3, -3]]⟩

def canonicalOutput20232 : ExponentCode := normalNode5879

theorem canonicalSound20232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20232.moment H = canonicalOutput20232.moment H :=
  canonical_of_padded canonicalInput20232 canonicalOutput20232 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation291, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20233 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, 2, 2, -5]]⟩

def canonicalOutput20233 : ExponentCode := normalNode1073

theorem canonicalSound20233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20233.moment H = canonicalOutput20233.moment H :=
  canonical_of_padded canonicalInput20233 canonicalOutput20233 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20234 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, -2, 3, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput20234 : ExponentCode := normalNode1246

theorem canonicalSound20234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20234.moment H = canonicalOutput20234.moment H :=
  canonical_of_padded canonicalInput20234 canonicalOutput20234 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20235 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![1, -2, 3, -2]]⟩

def canonicalOutput20235 : ExponentCode := normalNode4900

theorem canonicalSound20235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20235.moment H = canonicalOutput20235.moment H :=
  canonical_of_padded canonicalInput20235 canonicalOutput20235 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20236 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, -2, -1, 2], ![-1, 2, 2, -3]]⟩

def canonicalOutput20236 : ExponentCode := normalNode4831

theorem canonicalSound20236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20236.moment H = canonicalOutput20236.moment H :=
  canonical_of_padded canonicalInput20236 canonicalOutput20236 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20237 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput20237 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node963⟩

theorem canonicalSound20237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20237.moment H = canonicalOutput20237.moment H :=
  canonical_of_padded canonicalInput20237 canonicalOutput20237 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput20238 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput20238 : ExponentCode := normalNode2548

theorem canonicalSound20238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20238.moment H = canonicalOutput20238.moment H :=
  canonical_of_padded canonicalInput20238 canonicalOutput20238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20239 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -2, 1, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput20239 : ExponentCode := normalNode2291

theorem canonicalSound20239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20239.moment H = canonicalOutput20239.moment H :=
  canonical_of_padded canonicalInput20239 canonicalOutput20239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20240 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, 3, -4]]⟩

def canonicalOutput20240 : ExponentCode := normalNode4719

theorem canonicalSound20240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20240.moment H = canonicalOutput20240.moment H :=
  canonical_of_padded canonicalInput20240 canonicalOutput20240 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20241 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput20241 : ExponentCode := normalNode5845

theorem canonicalSound20241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20241.moment H = canonicalOutput20241.moment H :=
  canonical_of_padded canonicalInput20241 canonicalOutput20241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20242 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput20242 : ExponentCode := normalNode7156

theorem canonicalSound20242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20242.moment H = canonicalOutput20242.moment H :=
  canonical_of_padded canonicalInput20242 canonicalOutput20242 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20243 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput20243 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node963⟩

theorem canonicalSound20243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20243.moment H = canonicalOutput20243.moment H :=
  canonical_of_padded canonicalInput20243 canonicalOutput20243 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20244 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput20244 : ExponentCode := normalNode2547

theorem canonicalSound20244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20244.moment H = canonicalOutput20244.moment H :=
  canonical_of_padded canonicalInput20244 canonicalOutput20244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20245 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput20245 : ExponentCode := normalNode10320

theorem canonicalSound20245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20245.moment H = canonicalOutput20245.moment H :=
  canonical_of_padded canonicalInput20245 canonicalOutput20245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20246 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -2, 3, -2]]⟩

def canonicalOutput20246 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2731⟩

theorem canonicalSound20246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20246.moment H = canonicalOutput20246.moment H :=
  canonical_of_padded canonicalInput20246 canonicalOutput20246 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20247 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -2, 3, -3]]⟩

def canonicalOutput20247 : ExponentCode := normalNode5746

theorem canonicalSound20247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20247.moment H = canonicalOutput20247.moment H :=
  canonical_of_padded canonicalInput20247 canonicalOutput20247 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20248 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput20248 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2454⟩

theorem canonicalSound20248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20248.moment H = canonicalOutput20248.moment H :=
  canonical_of_padded canonicalInput20248 canonicalOutput20248 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20249 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-1, -1, 4, -2]]⟩

def canonicalOutput20249 : ExponentCode := normalNode5073

theorem canonicalSound20249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20249.moment H = canonicalOutput20249.moment H :=
  canonical_of_padded canonicalInput20249 canonicalOutput20249 (by decide) (by decide)
    ⟨false, true, canonicalPermutation170, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20250 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![0, 0, 3, -3]]⟩

def canonicalOutput20250 : ExponentCode := normalNode10333

theorem canonicalSound20250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20250.moment H = canonicalOutput20250.moment H :=
  canonical_of_padded canonicalInput20250 canonicalOutput20250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20251 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, -2, 1, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput20251 : ExponentCode := normalNode2290

theorem canonicalSound20251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20251.moment H = canonicalOutput20251.moment H :=
  canonical_of_padded canonicalInput20251 canonicalOutput20251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20252 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -2, -1, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput20252 : ExponentCode := normalNode5016

theorem canonicalSound20252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20252.moment H = canonicalOutput20252.moment H :=
  canonical_of_padded canonicalInput20252 canonicalOutput20252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation261, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20253 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 2, 0, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput20253 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node853⟩

theorem canonicalSound20253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20253.moment H = canonicalOutput20253.moment H :=
  canonical_of_padded canonicalInput20253 canonicalOutput20253 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20254 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 2, 1, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput20254 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node805⟩

theorem canonicalSound20254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20254.moment H = canonicalOutput20254.moment H :=
  canonical_of_padded canonicalInput20254 canonicalOutput20254 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20255 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, -2, -1, 2]]⟩

def canonicalOutput20255 : ExponentCode := normalNode6321

theorem canonicalSound20255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20255.moment H = canonicalOutput20255.moment H :=
  canonical_of_padded canonicalInput20255 canonicalOutput20255 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20256 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput20256 : ExponentCode := normalNode3092

theorem canonicalSound20256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20256.moment H = canonicalOutput20256.moment H :=
  canonical_of_padded canonicalInput20256 canonicalOutput20256 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20257 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput20257 : ExponentCode := normalNode3056

theorem canonicalSound20257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20257.moment H = canonicalOutput20257.moment H :=
  canonical_of_padded canonicalInput20257 canonicalOutput20257 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20258 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![0, -1, 4, -3]]⟩

def canonicalOutput20258 : ExponentCode := normalNode5087

theorem canonicalSound20258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20258.moment H = canonicalOutput20258.moment H :=
  canonical_of_padded canonicalInput20258 canonicalOutput20258 (by decide) (by decide)
    ⟨false, true, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20259 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -1, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput20259 : ExponentCode := normalNode4725

theorem canonicalSound20259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20259.moment H = canonicalOutput20259.moment H :=
  canonical_of_padded canonicalInput20259 canonicalOutput20259 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20260 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![0, 2, 2, -4]]⟩

def canonicalOutput20260 : ExponentCode := normalNode2546

theorem canonicalSound20260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20260.moment H = canonicalOutput20260.moment H :=
  canonical_of_padded canonicalInput20260 canonicalOutput20260 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20261 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![-1, -2, 1, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput20261 : ExponentCode := normalNode2289

theorem canonicalSound20261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20261.moment H = canonicalOutput20261.moment H :=
  canonical_of_padded canonicalInput20261 canonicalOutput20261 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20262 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 0, 2], ![-1, 2, 3, -4]]⟩

def canonicalOutput20262 : ExponentCode := normalNode3835

theorem canonicalSound20262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20262.moment H = canonicalOutput20262.moment H :=
  canonical_of_padded canonicalInput20262 canonicalOutput20262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20263 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 2, -2, 1], ![0, -2, 4, -2]]⟩

def canonicalOutput20263 : ExponentCode := normalNode3231

theorem canonicalSound20263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20263.moment H = canonicalOutput20263.moment H :=
  canonical_of_padded canonicalInput20263 canonicalOutput20263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20264 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput20264 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound20264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20264.moment H = canonicalOutput20264.moment H :=
  canonical_of_padded canonicalInput20264 canonicalOutput20264 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput20265 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput20265 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node284⟩

theorem canonicalSound20265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20265.moment H = canonicalOutput20265.moment H :=
  canonical_of_padded canonicalInput20265 canonicalOutput20265 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20266 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput20266 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node287⟩

theorem canonicalSound20266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20266.moment H = canonicalOutput20266.moment H :=
  canonical_of_padded canonicalInput20266 canonicalOutput20266 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput20267 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput20267 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node294⟩

theorem canonicalSound20267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20267.moment H = canonicalOutput20267.moment H :=
  canonical_of_padded canonicalInput20267 canonicalOutput20267 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput20268 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 0, 0], ![0, 2, 2, -4], ![1, -2, -1, 2]]⟩

def canonicalOutput20268 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound20268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20268.moment H = canonicalOutput20268.moment H :=
  canonical_of_padded canonicalInput20268 canonicalOutput20268 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20269 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, -2, 2], ![2, -2, 2, -2]]⟩

def canonicalOutput20269 : ExponentCode := normalNode5797

theorem canonicalSound20269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20269.moment H = canonicalOutput20269.moment H :=
  canonical_of_padded canonicalInput20269 canonicalOutput20269 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20270 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput20270 : ExponentCode := normalNode5766

theorem canonicalSound20270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20270.moment H = canonicalOutput20270.moment H :=
  canonical_of_padded canonicalInput20270 canonicalOutput20270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation309, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20271 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 0, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput20271 : ExponentCode := normalNode1686

theorem canonicalSound20271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20271.moment H = canonicalOutput20271.moment H :=
  canonical_of_padded canonicalInput20271 canonicalOutput20271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20272 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput20272 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2831⟩

theorem canonicalSound20272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20272.moment H = canonicalOutput20272.moment H :=
  canonical_of_padded canonicalInput20272 canonicalOutput20272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20273 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![2, -1, 2, -3]]⟩

def canonicalOutput20273 : ExponentCode := normalNode4818

theorem canonicalSound20273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20273.moment H = canonicalOutput20273.moment H :=
  canonical_of_padded canonicalInput20273 canonicalOutput20273 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20274 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, -2, -2, 2]]⟩

def canonicalOutput20274 : ExponentCode := normalNode5763

theorem canonicalSound20274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20274.moment H = canonicalOutput20274.moment H :=
  canonical_of_padded canonicalInput20274 canonicalOutput20274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20275 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput20275 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2582⟩

theorem canonicalSound20275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20275.moment H = canonicalOutput20275.moment H :=
  canonical_of_padded canonicalInput20275 canonicalOutput20275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20276 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput20276 : ExponentCode := normalNode7298

theorem canonicalSound20276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20276.moment H = canonicalOutput20276.moment H :=
  canonical_of_padded canonicalInput20276 canonicalOutput20276 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20277 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput20277 : ExponentCode := normalNode10208

theorem canonicalSound20277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20277.moment H = canonicalOutput20277.moment H :=
  canonical_of_padded canonicalInput20277 canonicalOutput20277 (by decide) (by decide)
    ⟨false, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20278 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, 1, -1]]⟩

def canonicalOutput20278 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3208⟩

theorem canonicalSound20278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20278.moment H = canonicalOutput20278.moment H :=
  canonical_of_padded canonicalInput20278 canonicalOutput20278 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation172, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput20279 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput20279 : ExponentCode := normalNode1685

theorem canonicalSound20279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20279.moment H = canonicalOutput20279.moment H :=
  canonical_of_padded canonicalInput20279 canonicalOutput20279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation260, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20280 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput20280 : ExponentCode := normalNode4901

theorem canonicalSound20280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20280.moment H = canonicalOutput20280.moment H :=
  canonical_of_padded canonicalInput20280 canonicalOutput20280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20281 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 3, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput20281 : ExponentCode := normalNode4863

theorem canonicalSound20281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20281.moment H = canonicalOutput20281.moment H :=
  canonical_of_padded canonicalInput20281 canonicalOutput20281 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20282 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, -2, 3, -2]]⟩

def canonicalOutput20282 : ExponentCode := normalNode4902

theorem canonicalSound20282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20282.moment H = canonicalOutput20282.moment H :=
  canonical_of_padded canonicalInput20282 canonicalOutput20282 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20283 : ExponentCode := ⟨6, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput20283 : ExponentCode := normalNode4798

theorem canonicalSound20283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20283.moment H = canonicalOutput20283.moment H :=
  canonical_of_padded canonicalInput20283 canonicalOutput20283 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20284 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput20284 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1260⟩

theorem canonicalSound20284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20284.moment H = canonicalOutput20284.moment H :=
  canonical_of_padded canonicalInput20284 canonicalOutput20284 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20285 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput20285 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1216⟩

theorem canonicalSound20285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20285.moment H = canonicalOutput20285.moment H :=
  canonical_of_padded canonicalInput20285 canonicalOutput20285 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20286 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput20286 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1316⟩

theorem canonicalSound20286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20286.moment H = canonicalOutput20286.moment H :=
  canonical_of_padded canonicalInput20286 canonicalOutput20286 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20287 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -2, 0, 1]]⟩

def canonicalOutput20287 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1053⟩

theorem canonicalSound20287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20287.moment H = canonicalOutput20287.moment H :=
  canonical_of_padded canonicalInput20287 canonicalOutput20287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
