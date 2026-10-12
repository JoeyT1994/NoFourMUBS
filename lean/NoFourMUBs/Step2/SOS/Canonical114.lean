import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7296 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput7296 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node808⟩

theorem canonicalSound7296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7296.moment H = canonicalOutput7296.moment H :=
  canonical_of_padded canonicalInput7296 canonicalOutput7296 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation179⟩ (by decide +kernel) hH

def canonicalInput7297 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -3, -1]]⟩

def canonicalOutput7297 : ExponentCode := normalNode5953

theorem canonicalSound7297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7297.moment H = canonicalOutput7297.moment H :=
  canonical_of_padded canonicalInput7297 canonicalOutput7297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7298 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 0, 1, -1], ![1, 1, -4, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput7298 : ExponentCode := normalNode3804

theorem canonicalSound7298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7298.moment H = canonicalOutput7298.moment H :=
  canonical_of_padded canonicalInput7298 canonicalOutput7298 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7299 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 0, 1, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput7299 : ExponentCode := normalNode3805

theorem canonicalSound7299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7299.moment H = canonicalOutput7299.moment H :=
  canonical_of_padded canonicalInput7299 canonicalOutput7299 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7300 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, -3, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput7300 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node455⟩

theorem canonicalSound7300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7300.moment H = canonicalOutput7300.moment H :=
  canonical_of_padded canonicalInput7300 canonicalOutput7300 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7301 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, -2, 1], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput7301 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code855

theorem canonicalSound7301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7301.moment H = canonicalOutput7301.moment H :=
  canonical_of_padded canonicalInput7301 canonicalOutput7301 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7302 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput7302 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1997⟩

theorem canonicalSound7302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7302.moment H = canonicalOutput7302.moment H :=
  canonical_of_padded canonicalInput7302 canonicalOutput7302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7303 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, -2, 1], ![2, 1, 0, -3]]⟩

def canonicalOutput7303 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node472⟩

theorem canonicalSound7303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7303.moment H = canonicalOutput7303.moment H :=
  canonical_of_padded canonicalInput7303 canonicalOutput7303 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7304 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 2, 0, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput7304 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2004⟩

theorem canonicalSound7304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7304.moment H = canonicalOutput7304.moment H :=
  canonical_of_padded canonicalInput7304 canonicalOutput7304 (by decide) (by decide)
    ⟨false, true, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput7305 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![0, 2, 1, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput7305 : ExponentCode := normalNode2666

theorem canonicalSound7305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7305.moment H = canonicalOutput7305.moment H :=
  canonical_of_padded canonicalInput7305 canonicalOutput7305 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7306 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7306 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound7306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7306.moment H = canonicalOutput7306.moment H :=
  canonical_of_padded canonicalInput7306 canonicalOutput7306 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput7307 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput7307 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1997⟩

theorem canonicalSound7307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7307.moment H = canonicalOutput7307.moment H :=
  canonical_of_padded canonicalInput7307 canonicalOutput7307 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7308 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput7308 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound7308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7308.moment H = canonicalOutput7308.moment H :=
  canonical_of_padded canonicalInput7308 canonicalOutput7308 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7309 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput7309 : ExponentCode := normalNode2371

theorem canonicalSound7309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7309.moment H = canonicalOutput7309.moment H :=
  canonical_of_padded canonicalInput7309 canonicalOutput7309 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput7310 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput7310 : ExponentCode := normalNode5934

theorem canonicalSound7310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7310.moment H = canonicalOutput7310.moment H :=
  canonical_of_padded canonicalInput7310 canonicalOutput7310 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput7311 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 2, -3, 0]]⟩

def canonicalOutput7311 : ExponentCode := normalNode4433

theorem canonicalSound7311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7311.moment H = canonicalOutput7311.moment H :=
  canonical_of_padded canonicalInput7311 canonicalOutput7311 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput7312 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput7312 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2002⟩

theorem canonicalSound7312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7312.moment H = canonicalOutput7312.moment H :=
  canonical_of_padded canonicalInput7312 canonicalOutput7312 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7313 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput7313 : ExponentCode := normalNode3751

theorem canonicalSound7313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7313.moment H = canonicalOutput7313.moment H :=
  canonical_of_padded canonicalInput7313 canonicalOutput7313 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7314 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 2, -1, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput7314 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code859

theorem canonicalSound7314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7314.moment H = canonicalOutput7314.moment H :=
  canonical_of_padded canonicalInput7314 canonicalOutput7314 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7315 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7315 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound7315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7315.moment H = canonicalOutput7315.moment H :=
  canonical_of_padded canonicalInput7315 canonicalOutput7315 (by decide) (by decide)
    ⟨false, false, canonicalPermutation39, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7316 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7316 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1999⟩

theorem canonicalSound7316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7316.moment H = canonicalOutput7316.moment H :=
  canonical_of_padded canonicalInput7316 canonicalOutput7316 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7317 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 2, 1, -3], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput7317 : ExponentCode := normalNode3454

theorem canonicalSound7317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7317.moment H = canonicalOutput7317.moment H :=
  canonical_of_padded canonicalInput7317 canonicalOutput7317 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7318 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 3, 0, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput7318 : ExponentCode := normalNode4108

theorem canonicalSound7318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7318.moment H = canonicalOutput7318.moment H :=
  canonical_of_padded canonicalInput7318 canonicalOutput7318 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7319 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![0, 3, 1, -4], ![2, -1, -3, 2]]⟩

def canonicalOutput7319 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code722

theorem canonicalSound7319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7319.moment H = canonicalOutput7319.moment H :=
  canonical_of_padded canonicalInput7319 canonicalOutput7319 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7320 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput7320 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node485⟩

theorem canonicalSound7320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7320.moment H = canonicalOutput7320.moment H :=
  canonical_of_padded canonicalInput7320 canonicalOutput7320 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7321 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput7321 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node808⟩

theorem canonicalSound7321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7321.moment H = canonicalOutput7321.moment H :=
  canonical_of_padded canonicalInput7321 canonicalOutput7321 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7322 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, -1, 1, -1], ![1, 3, -3, -1]]⟩

def canonicalOutput7322 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node471⟩

theorem canonicalSound7322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7322.moment H = canonicalOutput7322.moment H :=
  canonical_of_padded canonicalInput7322 canonicalOutput7322 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7323 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput7323 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node472⟩

theorem canonicalSound7323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7323.moment H = canonicalOutput7323.moment H :=
  canonical_of_padded canonicalInput7323 canonicalOutput7323 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7324 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, 1, -4, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput7324 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code725

theorem canonicalSound7324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7324.moment H = canonicalOutput7324.moment H :=
  canonical_of_padded canonicalInput7324 canonicalOutput7324 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7325 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput7325 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code763

theorem canonicalSound7325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7325.moment H = canonicalOutput7325.moment H :=
  canonical_of_padded canonicalInput7325 canonicalOutput7325 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7326 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 0, -2, 2], ![0, 2, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput7326 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code844

theorem canonicalSound7326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7326.moment H = canonicalOutput7326.moment H :=
  canonical_of_padded canonicalInput7326 canonicalOutput7326 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7327 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 0, -2, 2], ![1, 0, 0, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput7327 : ExponentCode := normalNode2386

theorem canonicalSound7327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7327.moment H = canonicalOutput7327.moment H :=
  canonical_of_padded canonicalInput7327 canonicalOutput7327 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7328 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 0, -2, 2], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput7328 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code870

theorem canonicalSound7328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7328.moment H = canonicalOutput7328.moment H :=
  canonical_of_padded canonicalInput7328 canonicalOutput7328 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7329 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 0, -2, 2], ![1, 2, -1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput7329 : ExponentCode := normalNode2386

theorem canonicalSound7329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7329.moment H = canonicalOutput7329.moment H :=
  canonical_of_padded canonicalInput7329 canonicalOutput7329 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7330 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7330 : ExponentCode := normalNode3369

theorem canonicalSound7330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7330.moment H = canonicalOutput7330.moment H :=
  canonical_of_padded canonicalInput7330 canonicalOutput7330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7331 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput7331 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1687⟩

theorem canonicalSound7331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7331.moment H = canonicalOutput7331.moment H :=
  canonical_of_padded canonicalInput7331 canonicalOutput7331 (by decide) (by decide)
    ⟨false, false, canonicalPermutation45, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7332 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput7332 : ExponentCode := normalNode3368

theorem canonicalSound7332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7332.moment H = canonicalOutput7332.moment H :=
  canonical_of_padded canonicalInput7332 canonicalOutput7332 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7333 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 2, -3, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput7333 : ExponentCode := normalNode3364

theorem canonicalSound7333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7333.moment H = canonicalOutput7333.moment H :=
  canonical_of_padded canonicalInput7333 canonicalOutput7333 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7334 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 2, -2, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7334 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1632⟩

theorem canonicalSound7334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7334.moment H = canonicalOutput7334.moment H :=
  canonical_of_padded canonicalInput7334 canonicalOutput7334 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7335 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7335 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1672⟩

theorem canonicalSound7335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7335.moment H = canonicalOutput7335.moment H :=
  canonical_of_padded canonicalInput7335 canonicalOutput7335 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput7336 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 2, 0, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput7336 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code759

theorem canonicalSound7336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7336.moment H = canonicalOutput7336.moment H :=
  canonical_of_padded canonicalInput7336 canonicalOutput7336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7337 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![0, 3, -1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput7337 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code620

theorem canonicalSound7337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7337.moment H = canonicalOutput7337.moment H :=
  canonical_of_padded canonicalInput7337 canonicalOutput7337 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7338 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![1, -1, -1, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput7338 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code594

theorem canonicalSound7338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7338.moment H = canonicalOutput7338.moment H :=
  canonical_of_padded canonicalInput7338 canonicalOutput7338 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7339 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![1, 0, -2, 1], ![0, 2, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput7339 : ExponentCode := normalNode3367

theorem canonicalSound7339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7339.moment H = canonicalOutput7339.moment H :=
  canonical_of_padded canonicalInput7339 canonicalOutput7339 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7340 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput7340 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1223⟩

theorem canonicalSound7340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7340.moment H = canonicalOutput7340.moment H :=
  canonical_of_padded canonicalInput7340 canonicalOutput7340 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7341 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput7341 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1374⟩

theorem canonicalSound7341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7341.moment H = canonicalOutput7341.moment H :=
  canonical_of_padded canonicalInput7341 canonicalOutput7341 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7342 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![1, 1, -4, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput7342 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code760

theorem canonicalSound7342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7342.moment H = canonicalOutput7342.moment H :=
  canonical_of_padded canonicalInput7342 canonicalOutput7342 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7343 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput7343 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound7343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7343.moment H = canonicalOutput7343.moment H :=
  canonical_of_padded canonicalInput7343 canonicalOutput7343 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7344 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![1, 1, -2, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput7344 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node476⟩

theorem canonicalSound7344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7344.moment H = canonicalOutput7344.moment H :=
  canonical_of_padded canonicalInput7344 canonicalOutput7344 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput7345 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![1, 1, 0, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput7345 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound7345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7345.moment H = canonicalOutput7345.moment H :=
  canonical_of_padded canonicalInput7345 canonicalOutput7345 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7346 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 3, -1], ![1, 3, -2, -2], ![1, -1, -1, 1]]⟩

def canonicalOutput7346 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code594

theorem canonicalSound7346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7346.moment H = canonicalOutput7346.moment H :=
  canonical_of_padded canonicalInput7346 canonicalOutput7346 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput7347 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 4, -2], ![1, 1, -4, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput7347 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code719

theorem canonicalSound7347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7347.moment H = canonicalOutput7347.moment H :=
  canonical_of_padded canonicalInput7347 canonicalOutput7347 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7348 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput7348 : ExponentCode := normalNode7392

theorem canonicalSound7348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7348.moment H = canonicalOutput7348.moment H :=
  canonical_of_padded canonicalInput7348 canonicalOutput7348 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7349 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput7349 : ExponentCode := normalNode1206

theorem canonicalSound7349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7349.moment H = canonicalOutput7349.moment H :=
  canonical_of_padded canonicalInput7349 canonicalOutput7349 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7350 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput7350 : ExponentCode := normalNode9844

theorem canonicalSound7350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7350.moment H = canonicalOutput7350.moment H :=
  canonical_of_padded canonicalInput7350 canonicalOutput7350 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7351 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput7351 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node795⟩

theorem canonicalSound7351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7351.moment H = canonicalOutput7351.moment H :=
  canonical_of_padded canonicalInput7351 canonicalOutput7351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7352 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7352 : ExponentCode := normalNode9661

theorem canonicalSound7352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7352.moment H = canonicalOutput7352.moment H :=
  canonical_of_padded canonicalInput7352 canonicalOutput7352 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7353 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![0, 1, 3, -4], ![2, 0, -1, -1]]⟩

def canonicalOutput7353 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1162⟩

theorem canonicalSound7353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7353.moment H = canonicalOutput7353.moment H :=
  canonical_of_padded canonicalInput7353 canonicalOutput7353 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7354 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7354 : ExponentCode := normalNode413

theorem canonicalSound7354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7354.moment H = canonicalOutput7354.moment H :=
  canonical_of_padded canonicalInput7354 canonicalOutput7354 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7355 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 2, 2, -5]]⟩

def canonicalOutput7355 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1258⟩

theorem canonicalSound7355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7355.moment H = canonicalOutput7355.moment H :=
  canonical_of_padded canonicalInput7355 canonicalOutput7355 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7356 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![1, -1, 1, -1], ![1, 2, 1, -4]]⟩

def canonicalOutput7356 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node460⟩

theorem canonicalSound7356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7356.moment H = canonicalOutput7356.moment H :=
  canonical_of_padded canonicalInput7356 canonicalOutput7356 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7357 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput7357 : ExponentCode := normalNode7188

theorem canonicalSound7357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7357.moment H = canonicalOutput7357.moment H :=
  canonical_of_padded canonicalInput7357 canonicalOutput7357 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7358 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![1, 0, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput7358 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node760⟩

theorem canonicalSound7358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7358.moment H = canonicalOutput7358.moment H :=
  canonical_of_padded canonicalInput7358 canonicalOutput7358 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7359 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -1, -2, 3], ![1, 0, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput7359 : ExponentCode := normalNode9359

theorem canonicalSound7359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7359.moment H = canonicalOutput7359.moment H :=
  canonical_of_padded canonicalInput7359 canonicalOutput7359 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
