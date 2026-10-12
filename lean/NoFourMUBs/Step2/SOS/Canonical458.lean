import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes45
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput29312 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![1, -2, 1, 0], ![-1, 3, -2, 0]]⟩

def canonicalOutput29312 : ExponentCode := normalNode9818

theorem canonicalSound29312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29312.moment H = canonicalOutput29312.moment H :=
  canonical_of_padded canonicalInput29312 canonicalOutput29312 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29313 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 1, 0, 0], ![-1, 2, -1, 0], ![1, -3, 1, 1]]⟩

def canonicalOutput29313 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3353⟩

theorem canonicalSound29313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29313.moment H = canonicalOutput29313.moment H :=
  canonical_of_padded canonicalInput29313 canonicalOutput29313 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29314 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 1, 1, -1], ![-1, 2, -2, 1], ![1, -3, 1, 1]]⟩

def canonicalOutput29314 : ExponentCode := normalNode6862

theorem canonicalSound29314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29314.moment H = canonicalOutput29314.moment H :=
  canonical_of_padded canonicalInput29314 canonicalOutput29314 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation288, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29315 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 1, 1, -1], ![-1, 2, -1, 0], ![1, -3, 0, 2]]⟩

def canonicalOutput29315 : ExponentCode := normalNode8822

theorem canonicalSound29315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29315.moment H = canonicalOutput29315.moment H :=
  canonical_of_padded canonicalInput29315 canonicalOutput29315 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation269, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput29316 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, -2, -1, 3], ![1, 1, -1, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29316 : ExponentCode := normalNode3568

theorem canonicalSound29316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29316.moment H = canonicalOutput29316.moment H :=
  canonical_of_padded canonicalInput29316 canonicalOutput29316 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29317 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, -2, 0, 2], ![1, -1, 1, -1], ![-2, 3, -1, 0]]⟩

def canonicalOutput29317 : ExponentCode := normalNode1786

theorem canonicalSound29317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29317.moment H = canonicalOutput29317.moment H :=
  canonical_of_padded canonicalInput29317 canonicalOutput29317 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29318 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, -2, 1, 1], ![1, -1, 0, 0], ![-2, 3, -1, 0]]⟩

def canonicalOutput29318 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2973⟩

theorem canonicalSound29318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29318.moment H = canonicalOutput29318.moment H :=
  canonical_of_padded canonicalInput29318 canonicalOutput29318 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29319 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, -2, 1, 1], ![1, -1, 1, -1], ![-2, 3, -2, 1]]⟩

def canonicalOutput29319 : ExponentCode := normalNode515

theorem canonicalSound29319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29319.moment H = canonicalOutput29319.moment H :=
  canonical_of_padded canonicalInput29319 canonicalOutput29319 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29320 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, -1, -1, 2], ![1, 0, -1, 0], ![-2, 1, 2, -1]]⟩

def canonicalOutput29320 : ExponentCode := normalNode10324

theorem canonicalSound29320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29320.moment H = canonicalOutput29320.moment H :=
  canonical_of_padded canonicalInput29320 canonicalOutput29320 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29321 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, -1, -1, 2], ![1, 1, -1, -1], ![-2, 0, 2, 0]]⟩

def canonicalOutput29321 : ExponentCode := normalNode9406

theorem canonicalSound29321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29321.moment H = canonicalOutput29321.moment H :=
  canonical_of_padded canonicalInput29321 canonicalOutput29321 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29322 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, 0, 0, 0], ![0, -2, 3, -1], ![-1, 2, -3, 2]]⟩

def canonicalOutput29322 : ExponentCode := normalNode10860

theorem canonicalSound29322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29322.moment H = canonicalOutput29322.moment H :=
  canonical_of_padded canonicalInput29322 canonicalOutput29322 (by decide) (by decide)
    ⟨false, true, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29323 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, -1, 0, 0], ![0, 3, -2, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput29323 : ExponentCode := normalNode854

theorem canonicalSound29323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29323.moment H = canonicalOutput29323.moment H :=
  canonical_of_padded canonicalInput29323 canonicalOutput29323 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29324 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, -2, 3, 0], ![-1, 2, -3, 2]]⟩

def canonicalOutput29324 : ExponentCode := normalNode1949

theorem canonicalSound29324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29324.moment H = canonicalOutput29324.moment H :=
  canonical_of_padded canonicalInput29324 canonicalOutput29324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29325 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, -2, 3, -1], ![-2, 2, -3, 3]]⟩

def canonicalOutput29325 : ExponentCode := normalNode3567

theorem canonicalSound29325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29325.moment H = canonicalOutput29325.moment H :=
  canonical_of_padded canonicalInput29325 canonicalOutput29325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation277, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29326 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 2, -2, 0], ![-2, -2, 2, 2]]⟩

def canonicalOutput29326 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node2892⟩

theorem canonicalSound29326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29326.moment H = canonicalOutput29326.moment H :=
  canonical_of_padded canonicalInput29326 canonicalOutput29326 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29327 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 3, -2, -1], ![-2, -3, 2, 3]]⟩

def canonicalOutput29327 : ExponentCode := normalNode264

theorem canonicalSound29327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29327.moment H = canonicalOutput29327.moment H :=
  canonical_of_padded canonicalInput29327 canonicalOutput29327 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29328 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 3, -3], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput29328 : ExponentCode := normalNode11162

theorem canonicalSound29328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29328.moment H = canonicalOutput29328.moment H :=
  canonical_of_padded canonicalInput29328 canonicalOutput29328 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29329 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 0, 3, -3], ![-1, 2, -2, 1], ![1, -2, 0, 1]]⟩

def canonicalOutput29329 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node938⟩

theorem canonicalSound29329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29329.moment H = canonicalOutput29329.moment H :=
  canonical_of_padded canonicalInput29329 canonicalOutput29329 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29330 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 0, 3, -3], ![-1, 2, 0, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput29330 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1320⟩

theorem canonicalSound29330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29330.moment H = canonicalOutput29330.moment H :=
  canonical_of_padded canonicalInput29330 canonicalOutput29330 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29331 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![-1, 1, 0, 0], ![1, -2, -2, 3]]⟩

def canonicalOutput29331 : ExponentCode := normalNode11162

theorem canonicalSound29331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29331.moment H = canonicalOutput29331.moment H :=
  canonical_of_padded canonicalInput29331 canonicalOutput29331 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29332 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput29332 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node269⟩

theorem canonicalSound29332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29332.moment H = canonicalOutput29332.moment H :=
  canonical_of_padded canonicalInput29332 canonicalOutput29332 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29333 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -2, -2, 4]]⟩

def canonicalOutput29333 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node435⟩

theorem canonicalSound29333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29333.moment H = canonicalOutput29333.moment H :=
  canonical_of_padded canonicalInput29333 canonicalOutput29333 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29334 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 2, -2, 0], ![0, -2, 0, 2]]⟩

def canonicalOutput29334 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node204⟩

theorem canonicalSound29334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29334.moment H = canonicalOutput29334.moment H :=
  canonical_of_padded canonicalInput29334 canonicalOutput29334 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29335 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 4, -4], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -2, -1, 2]]⟩

def canonicalOutput29335 : ExponentCode := normalNode11124

theorem canonicalSound29335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29335.moment H = canonicalOutput29335.moment H :=
  canonical_of_padded canonicalInput29335 canonicalOutput29335 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29336 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![1, -2, -1, 2]]⟩

def canonicalOutput29336 : ExponentCode := normalNode11124

theorem canonicalSound29336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29336.moment H = canonicalOutput29336.moment H :=
  canonical_of_padded canonicalInput29336 canonicalOutput29336 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29337 : ExponentCode := ⟨5, 4, ![![0, 0, -1, 1], ![0, 0, 4, -4], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, -2, -1, 3]]⟩

def canonicalOutput29337 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node565⟩

theorem canonicalSound29337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29337.moment H = canonicalOutput29337.moment H :=
  canonical_of_padded canonicalInput29337 canonicalOutput29337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29338 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, -3, 2], ![-1, 1, 1, -1], ![1, -2, 3, -2]]⟩

def canonicalOutput29338 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1326⟩

theorem canonicalSound29338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29338.moment H = canonicalOutput29338.moment H :=
  canonical_of_padded canonicalInput29338 canonicalOutput29338 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29339 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, -3, 2], ![0, 1, 1, -2], ![0, -2, 3, -1]]⟩

def canonicalOutput29339 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node180⟩

theorem canonicalSound29339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29339.moment H = canonicalOutput29339.moment H :=
  canonical_of_padded canonicalInput29339 canonicalOutput29339 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29340 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![-1, 1, 0, 0], ![1, -2, 3, -2]]⟩

def canonicalOutput29340 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1198⟩

theorem canonicalSound29340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29340.moment H = canonicalOutput29340.moment H :=
  canonical_of_padded canonicalInput29340 canonicalOutput29340 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29341 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![-1, 1, 1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput29341 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound29341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29341.moment H = canonicalOutput29341.moment H :=
  canonical_of_padded canonicalInput29341 canonicalOutput29341 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29342 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![-1, 1, 2, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput29342 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node838⟩

theorem canonicalSound29342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29342.moment H = canonicalOutput29342.moment H :=
  canonical_of_padded canonicalInput29342 canonicalOutput29342 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29343 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput29343 : ExponentCode := normalNode2668

theorem canonicalSound29343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29343.moment H = canonicalOutput29343.moment H :=
  canonical_of_padded canonicalInput29343 canonicalOutput29343 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29344 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput29344 : ExponentCode := normalNode3972

theorem canonicalSound29344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29344.moment H = canonicalOutput29344.moment H :=
  canonical_of_padded canonicalInput29344 canonicalOutput29344 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29345 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput29345 : ExponentCode := normalNode3998

theorem canonicalSound29345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29345.moment H = canonicalOutput29345.moment H :=
  canonical_of_padded canonicalInput29345 canonicalOutput29345 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29346 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput29346 : ExponentCode := normalNode3417

theorem canonicalSound29346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29346.moment H = canonicalOutput29346.moment H :=
  canonical_of_padded canonicalInput29346 canonicalOutput29346 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29347 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, -1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput29347 : ExponentCode := normalNode4143

theorem canonicalSound29347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29347.moment H = canonicalOutput29347.moment H :=
  canonical_of_padded canonicalInput29347 canonicalOutput29347 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29348 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, 0, 0, -2], ![0, -3, 3, 0]]⟩

def canonicalOutput29348 : ExponentCode := normalNode3726

theorem canonicalSound29348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29348.moment H = canonicalOutput29348.moment H :=
  canonical_of_padded canonicalInput29348 canonicalOutput29348 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29349 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput29349 : ExponentCode := normalNode5047

theorem canonicalSound29349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29349.moment H = canonicalOutput29349.moment H :=
  canonical_of_padded canonicalInput29349 canonicalOutput29349 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29350 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, 0, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput29350 : ExponentCode := normalNode5325

theorem canonicalSound29350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29350.moment H = canonicalOutput29350.moment H :=
  canonical_of_padded canonicalInput29350 canonicalOutput29350 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29351 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, 0, -1, -1], ![-1, -1, 4, -2]]⟩

def canonicalOutput29351 : ExponentCode := normalNode4240

theorem canonicalSound29351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29351.moment H = canonicalOutput29351.moment H :=
  canonical_of_padded canonicalInput29351 canonicalOutput29351 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29352 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput29352 : ExponentCode := normalNode3418

theorem canonicalSound29352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29352.moment H = canonicalOutput29352.moment H :=
  canonical_of_padded canonicalInput29352 canonicalOutput29352 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29353 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![0, -2, 1, 1], ![2, -1, 0, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29353 : ExponentCode := normalNode2490

theorem canonicalSound29353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29353.moment H = canonicalOutput29353.moment H :=
  canonical_of_padded canonicalInput29353 canonicalOutput29353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29354 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput29354 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node181⟩

theorem canonicalSound29354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29354.moment H = canonicalOutput29354.moment H :=
  canonical_of_padded canonicalInput29354 canonicalOutput29354 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29355 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput29355 : ExponentCode := normalNode1965

theorem canonicalSound29355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29355.moment H = canonicalOutput29355.moment H :=
  canonical_of_padded canonicalInput29355 canonicalOutput29355 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29356 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput29356 : ExponentCode := normalNode2670

theorem canonicalSound29356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29356.moment H = canonicalOutput29356.moment H :=
  canonical_of_padded canonicalInput29356 canonicalOutput29356 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29357 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput29357 : ExponentCode := normalNode4047

theorem canonicalSound29357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29357.moment H = canonicalOutput29357.moment H :=
  canonical_of_padded canonicalInput29357 canonicalOutput29357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29358 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput29358 : ExponentCode := normalNode4458

theorem canonicalSound29358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29358.moment H = canonicalOutput29358.moment H :=
  canonical_of_padded canonicalInput29358 canonicalOutput29358 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29359 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput29359 : ExponentCode := normalNode2672

theorem canonicalSound29359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29359.moment H = canonicalOutput29359.moment H :=
  canonical_of_padded canonicalInput29359 canonicalOutput29359 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29360 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput29360 : ExponentCode := normalNode860

theorem canonicalSound29360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29360.moment H = canonicalOutput29360.moment H :=
  canonical_of_padded canonicalInput29360 canonicalOutput29360 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29361 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29361 : ExponentCode := normalNode2505

theorem canonicalSound29361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29361.moment H = canonicalOutput29361.moment H :=
  canonical_of_padded canonicalInput29361 canonicalOutput29361 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29362 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 1, -2], ![0, -2, 2, 0]]⟩

def canonicalOutput29362 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node210⟩

theorem canonicalSound29362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29362.moment H = canonicalOutput29362.moment H :=
  canonical_of_padded canonicalInput29362 canonicalOutput29362 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29363 : ExponentCode := ⟨4, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![0, 1, 2, -3], ![0, -2, 1, 1]]⟩

def canonicalOutput29363 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node229⟩

theorem canonicalSound29363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29363.moment H = canonicalOutput29363.moment H :=
  canonical_of_padded canonicalInput29363 canonicalOutput29363 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29364 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 1, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput29364 : ExponentCode := normalNode4049

theorem canonicalSound29364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29364.moment H = canonicalOutput29364.moment H :=
  canonical_of_padded canonicalInput29364 canonicalOutput29364 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29365 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput29365 : ExponentCode := normalNode4267

theorem canonicalSound29365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29365.moment H = canonicalOutput29365.moment H :=
  canonical_of_padded canonicalInput29365 canonicalOutput29365 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29366 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput29366 : ExponentCode := normalNode4460

theorem canonicalSound29366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29366.moment H = canonicalOutput29366.moment H :=
  canonical_of_padded canonicalInput29366 canonicalOutput29366 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29367 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -2, 1, 0], ![0, 2, 1, -3]]⟩

def canonicalOutput29367 : ExponentCode := normalNode4464

theorem canonicalSound29367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29367.moment H = canonicalOutput29367.moment H :=
  canonical_of_padded canonicalInput29367 canonicalOutput29367 (by decide) (by decide)
    ⟨false, false, canonicalPermutation320, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29368 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![0, -2, 1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput29368 : ExponentCode := normalNode3750

theorem canonicalSound29368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29368.moment H = canonicalOutput29368.moment H :=
  canonical_of_padded canonicalInput29368 canonicalOutput29368 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29369 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 0, 2, 0], ![1, -2, 0, 1], ![0, 2, 1, -3]]⟩

def canonicalOutput29369 : ExponentCode := normalNode3714

theorem canonicalSound29369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29369.moment H = canonicalOutput29369.moment H :=
  canonical_of_padded canonicalInput29369 canonicalOutput29369 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29370 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput29370 : ExponentCode := normalNode5420

theorem canonicalSound29370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29370.moment H = canonicalOutput29370.moment H :=
  canonical_of_padded canonicalInput29370 canonicalOutput29370 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29371 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![0, 1, 1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput29371 : ExponentCode := normalNode4187

theorem canonicalSound29371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29371.moment H = canonicalOutput29371.moment H :=
  canonical_of_padded canonicalInput29371 canonicalOutput29371 (by decide) (by decide)
    ⟨false, false, canonicalPermutation298, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29372 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, -2, 1, 0], ![0, 1, 2, -3]]⟩

def canonicalOutput29372 : ExponentCode := normalNode4188

theorem canonicalSound29372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29372.moment H = canonicalOutput29372.moment H :=
  canonical_of_padded canonicalInput29372 canonicalOutput29372 (by decide) (by decide)
    ⟨false, false, canonicalPermutation323, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29373 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 1, 0, 1], ![1, 1, 0, -2], ![0, -2, 3, -1]]⟩

def canonicalOutput29373 : ExponentCode := normalNode4189

theorem canonicalSound29373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29373.moment H = canonicalOutput29373.moment H :=
  canonical_of_padded canonicalInput29373 canonicalOutput29373 (by decide) (by decide)
    ⟨false, false, canonicalPermutation323, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29374 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput29374 : ExponentCode := normalNode4527

theorem canonicalSound29374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29374.moment H = canonicalOutput29374.moment H :=
  canonical_of_padded canonicalInput29374 canonicalOutput29374 (by decide) (by decide)
    ⟨false, false, canonicalPermutation315, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29375 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![1, -2, 0, 1], ![0, 1, 2, -3]]⟩

def canonicalOutput29375 : ExponentCode := normalNode4159

theorem canonicalSound29375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29375.moment H = canonicalOutput29375.moment H :=
  canonical_of_padded canonicalInput29375 canonicalOutput29375 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
