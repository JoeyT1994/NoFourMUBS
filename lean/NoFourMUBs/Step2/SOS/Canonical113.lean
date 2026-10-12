import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical104
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput7232 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, -1, 3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput7232 : ExponentCode := normalNode1207

theorem canonicalSound7232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7232.moment H = canonicalOutput7232.moment H :=
  canonical_of_padded canonicalInput7232 canonicalOutput7232 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7233 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput7233 : ExponentCode := normalNode10521

theorem canonicalSound7233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7233.moment H = canonicalOutput7233.moment H :=
  canonical_of_padded canonicalInput7233 canonicalOutput7233 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7234 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput7234 : ExponentCode := normalNode10521

theorem canonicalSound7234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7234.moment H = canonicalOutput7234.moment H :=
  canonical_of_padded canonicalInput7234 canonicalOutput7234 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7235 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 1, -2, -1]]⟩

def canonicalOutput7235 : ExponentCode := normalNode2928

theorem canonicalSound7235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7235.moment H = canonicalOutput7235.moment H :=
  canonical_of_padded canonicalInput7235 canonicalOutput7235 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7236 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 0, 2, -2], ![0, 2, 0, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput7236 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code837

theorem canonicalSound7236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7236.moment H = canonicalOutput7236.moment H :=
  canonical_of_padded canonicalInput7236 canonicalOutput7236 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7237 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput7237 : ExponentCode := normalNode2928

theorem canonicalSound7237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7237.moment H = canonicalOutput7237.moment H :=
  canonical_of_padded canonicalInput7237 canonicalOutput7237 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7238 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 0, 2, -2], ![1, 1, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput7238 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code839

theorem canonicalSound7238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7238.moment H = canonicalOutput7238.moment H :=
  canonical_of_padded canonicalInput7238 canonicalOutput7238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7239 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 1, -2, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput7239 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node391⟩

theorem canonicalSound7239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7239.moment H = canonicalOutput7239.moment H :=
  canonical_of_padded canonicalInput7239 canonicalOutput7239 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7240 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput7240 : ExponentCode := normalNode3738

theorem canonicalSound7240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7240.moment H = canonicalOutput7240.moment H :=
  canonical_of_padded canonicalInput7240 canonicalOutput7240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7241 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput7241 : ExponentCode := normalNode8950

theorem canonicalSound7241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7241.moment H = canonicalOutput7241.moment H :=
  canonical_of_padded canonicalInput7241 canonicalOutput7241 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7242 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 1, 0, -1], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput7242 : ExponentCode := normalNode1720

theorem canonicalSound7242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7242.moment H = canonicalOutput7242.moment H :=
  canonical_of_padded canonicalInput7242 canonicalOutput7242 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation192, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7243 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput7243 : ExponentCode := normalNode9080

theorem canonicalSound7243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7243.moment H = canonicalOutput7243.moment H :=
  canonical_of_padded canonicalInput7243 canonicalOutput7243 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7244 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput7244 : ExponentCode := normalNode1964

theorem canonicalSound7244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7244.moment H = canonicalOutput7244.moment H :=
  canonical_of_padded canonicalInput7244 canonicalOutput7244 (by decide) (by decide)
    ⟨false, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7245 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput7245 : ExponentCode := normalNode9080

theorem canonicalSound7245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7245.moment H = canonicalOutput7245.moment H :=
  canonical_of_padded canonicalInput7245 canonicalOutput7245 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7246 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 1, 2, -3], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput7246 : ExponentCode := normalNode1720

theorem canonicalSound7246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7246.moment H = canonicalOutput7246.moment H :=
  canonical_of_padded canonicalInput7246 canonicalOutput7246 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7247 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput7247 : ExponentCode := normalNode1964

theorem canonicalSound7247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7247.moment H = canonicalOutput7247.moment H :=
  canonical_of_padded canonicalInput7247 canonicalOutput7247 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation178, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7248 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput7248 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code115

theorem canonicalSound7248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7248.moment H = canonicalOutput7248.moment H :=
  canonical_of_padded canonicalInput7248 canonicalOutput7248 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7249 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 0, 2], ![1, 1, -2, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput7249 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node396⟩

theorem canonicalSound7249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7249.moment H = canonicalOutput7249.moment H :=
  canonical_of_padded canonicalInput7249 canonicalOutput7249 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7250 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 0, 1, -1], ![0, 3, -2, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput7250 : ExponentCode := normalNode3376

theorem canonicalSound7250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7250.moment H = canonicalOutput7250.moment H :=
  canonical_of_padded canonicalInput7250 canonicalOutput7250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7251 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput7251 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2043⟩

theorem canonicalSound7251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7251.moment H = canonicalOutput7251.moment H :=
  canonical_of_padded canonicalInput7251 canonicalOutput7251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7252 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, 1, -2, -1]]⟩

def canonicalOutput7252 : ExponentCode := normalNode2385

theorem canonicalSound7252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7252.moment H = canonicalOutput7252.moment H :=
  canonical_of_padded canonicalInput7252 canonicalOutput7252 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7253 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput7253 : ExponentCode := normalNode1788

theorem canonicalSound7253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7253.moment H = canonicalOutput7253.moment H :=
  canonical_of_padded canonicalInput7253 canonicalOutput7253 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7254 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![1, 2, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7254 : ExponentCode := normalNode2383

theorem canonicalSound7254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7254.moment H = canonicalOutput7254.moment H :=
  canonical_of_padded canonicalInput7254 canonicalOutput7254 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7255 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![2, 2, -3, -1]]⟩

def canonicalOutput7255 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node482⟩

theorem canonicalSound7255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7255.moment H = canonicalOutput7255.moment H :=
  canonical_of_padded canonicalInput7255 canonicalOutput7255 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7256 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput7256 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code851

theorem canonicalSound7256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7256.moment H = canonicalOutput7256.moment H :=
  canonical_of_padded canonicalInput7256 canonicalOutput7256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7257 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 1, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput7257 : ExponentCode := normalNode3768

theorem canonicalSound7257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7257.moment H = canonicalOutput7257.moment H :=
  canonical_of_padded canonicalInput7257 canonicalOutput7257 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7258 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput7258 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1646⟩

theorem canonicalSound7258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7258.moment H = canonicalOutput7258.moment H :=
  canonical_of_padded canonicalInput7258 canonicalOutput7258 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7259 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput7259 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2805⟩

theorem canonicalSound7259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7259.moment H = canonicalOutput7259.moment H :=
  canonical_of_padded canonicalInput7259 canonicalOutput7259 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7260 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![0, 2, 1, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput7260 : ExponentCode := normalNode3945

theorem canonicalSound7260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7260.moment H = canonicalOutput7260.moment H :=
  canonical_of_padded canonicalInput7260 canonicalOutput7260 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7261 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput7261 : ExponentCode := normalNode3946

theorem canonicalSound7261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7261.moment H = canonicalOutput7261.moment H :=
  canonical_of_padded canonicalInput7261 canonicalOutput7261 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7262 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput7262 : ExponentCode := normalNode3777

theorem canonicalSound7262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7262.moment H = canonicalOutput7262.moment H :=
  canonical_of_padded canonicalInput7262 canonicalOutput7262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7263 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput7263 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1994⟩

theorem canonicalSound7263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7263.moment H = canonicalOutput7263.moment H :=
  canonical_of_padded canonicalInput7263 canonicalOutput7263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7264 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput7264 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2805⟩

theorem canonicalSound7264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7264.moment H = canonicalOutput7264.moment H :=
  canonical_of_padded canonicalInput7264 canonicalOutput7264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput7265 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput7265 : ExponentCode := normalNode10900

theorem canonicalSound7265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7265.moment H = canonicalOutput7265.moment H :=
  canonical_of_padded canonicalInput7265 canonicalOutput7265 (by decide) (by decide)
    ⟨false, false, canonicalPermutation14, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7266 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput7266 : ExponentCode := normalNode4084

theorem canonicalSound7266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7266.moment H = canonicalOutput7266.moment H :=
  canonical_of_padded canonicalInput7266 canonicalOutput7266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7267 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput7267 : ExponentCode := normalNode10855

theorem canonicalSound7267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7267.moment H = canonicalOutput7267.moment H :=
  canonical_of_padded canonicalInput7267 canonicalOutput7267 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7268 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput7268 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1995⟩

theorem canonicalSound7268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7268.moment H = canonicalOutput7268.moment H :=
  canonical_of_padded canonicalInput7268 canonicalOutput7268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7269 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput7269 : ExponentCode := normalNode3773

theorem canonicalSound7269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7269.moment H = canonicalOutput7269.moment H :=
  canonical_of_padded canonicalInput7269 canonicalOutput7269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7270 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput7270 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2044⟩

theorem canonicalSound7270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7270.moment H = canonicalOutput7270.moment H :=
  canonical_of_padded canonicalInput7270 canonicalOutput7270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput7271 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7271 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound7271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7271.moment H = canonicalOutput7271.moment H :=
  canonical_of_padded canonicalInput7271 canonicalOutput7271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7272 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7272 : ExponentCode := normalNode3784

theorem canonicalSound7272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7272.moment H = canonicalOutput7272.moment H :=
  canonical_of_padded canonicalInput7272 canonicalOutput7272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7273 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 1, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput7273 : ExponentCode := normalNode3787

theorem canonicalSound7273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7273.moment H = canonicalOutput7273.moment H :=
  canonical_of_padded canonicalInput7273 canonicalOutput7273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7274 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7274 : ExponentCode := normalNode3786

theorem canonicalSound7274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7274.moment H = canonicalOutput7274.moment H :=
  canonical_of_padded canonicalInput7274 canonicalOutput7274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7275 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 1, 2, -3], ![2, 1, -3, 0]]⟩

def canonicalOutput7275 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code438

theorem canonicalSound7275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7275.moment H = canonicalOutput7275.moment H :=
  canonical_of_padded canonicalInput7275 canonicalOutput7275 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7276 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 2, -3, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput7276 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node455⟩

theorem canonicalSound7276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7276.moment H = canonicalOutput7276.moment H :=
  canonical_of_padded canonicalInput7276 canonicalOutput7276 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7277 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3329step0⟩

def canonicalOutput7277 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound7277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7277.moment H = canonicalOutput7277.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3329step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3329step0 = OAI.MUB6.Certificate.PairSemantics.raw3329.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3329).trans (OAI.MUB6.Certificate.PairSemantics.canonical3329 hH)

def canonicalInput7278 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 2, 0, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput7278 : ExponentCode := normalNode10852

theorem canonicalSound7278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7278.moment H = canonicalOutput7278.moment H :=
  canonical_of_padded canonicalInput7278 canonicalOutput7278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation186, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7279 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 2, 0, -2], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7279 : ExponentCode := normalNode10852

theorem canonicalSound7279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7279.moment H = canonicalOutput7279.moment H :=
  canonical_of_padded canonicalInput7279 canonicalOutput7279 (by decide) (by decide)
    ⟨false, false, canonicalPermutation21, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput7280 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.raw3336step0⟩

def canonicalOutput7280 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1314⟩

theorem canonicalSound7280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7280.moment H = canonicalOutput7280.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw3336step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw3336step0 = OAI.MUB6.Certificate.PairSemantics.raw3336.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw3336).trans (OAI.MUB6.Certificate.PairSemantics.canonical3336 hH)

def canonicalInput7281 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 2, 1, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput7281 : ExponentCode := normalNode1962

theorem canonicalSound7281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7281.moment H = canonicalOutput7281.moment H :=
  canonical_of_padded canonicalInput7281 canonicalOutput7281 (by decide) (by decide)
    ⟨false, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7282 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 2, 1, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput7282 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1695⟩

theorem canonicalSound7282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7282.moment H = canonicalOutput7282.moment H :=
  canonical_of_padded canonicalInput7282 canonicalOutput7282 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7283 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 2, 1, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput7283 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node474⟩

theorem canonicalSound7283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7283.moment H = canonicalOutput7283.moment H :=
  canonical_of_padded canonicalInput7283 canonicalOutput7283 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7284 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 2, 2, -4], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput7284 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1901⟩

theorem canonicalSound7284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7284.moment H = canonicalOutput7284.moment H :=
  canonical_of_padded canonicalInput7284 canonicalOutput7284 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput7285 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 2, 2, -4], ![2, 0, -3, 1]]⟩

def canonicalOutput7285 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node457⟩

theorem canonicalSound7285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7285.moment H = canonicalOutput7285.moment H :=
  canonical_of_padded canonicalInput7285 canonicalOutput7285 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7286 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput7286 : ExponentCode := normalNode3372

theorem canonicalSound7286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7286.moment H = canonicalOutput7286.moment H :=
  canonical_of_padded canonicalInput7286 canonicalOutput7286 (by decide) (by decide)
    ⟨false, false, canonicalPermutation42, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput7287 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![0, 3, 1, -4], ![2, -1, -2, 1]]⟩

def canonicalOutput7287 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node451⟩

theorem canonicalSound7287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7287.moment H = canonicalOutput7287.moment H :=
  canonical_of_padded canonicalInput7287 canonicalOutput7287 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7288 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![1, -1, 1, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput7288 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node488⟩

theorem canonicalSound7288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7288.moment H = canonicalOutput7288.moment H :=
  canonical_of_padded canonicalInput7288 canonicalOutput7288 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput7289 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![1, -1, 2, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput7289 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code660

theorem canonicalSound7289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7289.moment H = canonicalOutput7289.moment H :=
  canonical_of_padded canonicalInput7289 canonicalOutput7289 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7290 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![1, 0, 1, -2], ![0, 2, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput7290 : ExponentCode := normalNode3790

theorem canonicalSound7290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7290.moment H = canonicalOutput7290.moment H :=
  canonical_of_padded canonicalInput7290 canonicalOutput7290 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7291 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![1, 0, 2, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput7291 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code437

theorem canonicalSound7291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7291.moment H = canonicalOutput7291.moment H :=
  canonical_of_padded canonicalInput7291 canonicalOutput7291 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput7292 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![1, 1, -3, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput7292 : ExponentCode := normalNode3787

theorem canonicalSound7292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7292.moment H = canonicalOutput7292.moment H :=
  canonical_of_padded canonicalInput7292 canonicalOutput7292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7293 : ExponentCode := ⟨5, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![1, 1, -2, 0], ![0, 1, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput7293 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1996⟩

theorem canonicalSound7293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7293.moment H = canonicalOutput7293.moment H :=
  canonical_of_padded canonicalInput7293 canonicalOutput7293 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput7294 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![1, 1, 2, -4], ![1, 1, -3, 1]]⟩

def canonicalOutput7294 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩

theorem canonicalSound7294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7294.moment H = canonicalOutput7294.moment H :=
  canonical_of_padded canonicalInput7294 canonicalOutput7294 (by decide) (by decide)
    ⟨true, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput7295 : ExponentCode := ⟨4, 4, ![![-2, 0, 0, 2], ![0, -2, 1, 1], ![1, 2, -3, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput7295 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code437

theorem canonicalSound7295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput7295.moment H = canonicalOutput7295.moment H :=
  canonical_of_padded canonicalInput7295 canonicalOutput7295 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
