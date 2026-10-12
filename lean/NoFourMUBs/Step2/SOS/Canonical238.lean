import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15232 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput15232 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2521⟩

theorem canonicalSound15232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15232.moment H = canonicalOutput15232.moment H :=
  canonical_of_padded canonicalInput15232 canonicalOutput15232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15233 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput15233 : ExponentCode := normalNode7803

theorem canonicalSound15233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15233.moment H = canonicalOutput15233.moment H :=
  canonical_of_padded canonicalInput15233 canonicalOutput15233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15234 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, 3, -3], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput15234 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1357

theorem canonicalSound15234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15234.moment H = canonicalOutput15234.moment H :=
  canonical_of_padded canonicalInput15234 canonicalOutput15234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15235 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 1, 4, -4], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15235 : ExponentCode := normalNode7804

theorem canonicalSound15235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15235.moment H = canonicalOutput15235.moment H :=
  canonical_of_padded canonicalInput15235 canonicalOutput15235 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15236 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, 4, -4], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput15236 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code331

theorem canonicalSound15236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15236.moment H = canonicalOutput15236.moment H :=
  canonical_of_padded canonicalInput15236 canonicalOutput15236 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput15237 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 1, 4, -4], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput15237 : ExponentCode := normalNode9361

theorem canonicalSound15237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15237.moment H = canonicalOutput15237.moment H :=
  canonical_of_padded canonicalInput15237 canonicalOutput15237 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15238 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 2, -2, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15238 : ExponentCode := normalNode5067

theorem canonicalSound15238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15238.moment H = canonicalOutput15238.moment H :=
  canonical_of_padded canonicalInput15238 canonicalOutput15238 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15239 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 2, -2, 1], ![1, -1, 2, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput15239 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1242

theorem canonicalSound15239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15239.moment H = canonicalOutput15239.moment H :=
  canonical_of_padded canonicalInput15239 canonicalOutput15239 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15240 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 2, -2, 1], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput15240 : ExponentCode := normalNode6526

theorem canonicalSound15240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15240.moment H = canonicalOutput15240.moment H :=
  canonical_of_padded canonicalInput15240 canonicalOutput15240 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput15241 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 2, -1, 0], ![1, -1, -1, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput15241 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node712⟩

theorem canonicalSound15241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15241.moment H = canonicalOutput15241.moment H :=
  canonical_of_padded canonicalInput15241 canonicalOutput15241 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15242 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![-1, 2, -1, 0], ![1, -1, 4, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput15242 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code334

theorem canonicalSound15242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15242.moment H = canonicalOutput15242.moment H :=
  canonical_of_padded canonicalInput15242 canonicalOutput15242 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput15243 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 2, 0, -1], ![0, -2, 2, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15243 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2022⟩

theorem canonicalSound15243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15243.moment H = canonicalOutput15243.moment H :=
  canonical_of_padded canonicalInput15243 canonicalOutput15243 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15244 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 2, 0, -1], ![0, -2, 2, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput15244 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2019⟩

theorem canonicalSound15244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15244.moment H = canonicalOutput15244.moment H :=
  canonical_of_padded canonicalInput15244 canonicalOutput15244 (by decide) (by decide)
    ⟨false, true, canonicalPermutation35, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15245 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![-1, 3, -1, -1], ![0, -1, 3, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput15245 : ExponentCode := normalNode7691

theorem canonicalSound15245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15245.moment H = canonicalOutput15245.moment H :=
  canonical_of_padded canonicalInput15245 canonicalOutput15245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15246 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -2, 1, 1], ![0, 0, 2, -2], ![1, 3, -2, -2]]⟩

def canonicalOutput15246 : ExponentCode := normalNode6220

theorem canonicalSound15246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15246.moment H = canonicalOutput15246.moment H :=
  canonical_of_padded canonicalInput15246 canonicalOutput15246 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15247 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -2, 2, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput15247 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2552⟩

theorem canonicalSound15247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15247.moment H = canonicalOutput15247.moment H :=
  canonical_of_padded canonicalInput15247 canonicalOutput15247 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15248 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput15248 : ExponentCode := normalNode6951

theorem canonicalSound15248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15248.moment H = canonicalOutput15248.moment H :=
  canonical_of_padded canonicalInput15248 canonicalOutput15248 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15249 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -2, 2, 0], ![0, 2, -1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput15249 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound15249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15249.moment H = canonicalOutput15249.moment H :=
  canonical_of_padded canonicalInput15249 canonicalOutput15249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15250 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -2, 2, 0], ![0, 2, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput15250 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node975⟩

theorem canonicalSound15250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15250.moment H = canonicalOutput15250.moment H :=
  canonical_of_padded canonicalInput15250 canonicalOutput15250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15251 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -2, 2, 0], ![0, 3, -1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput15251 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node951⟩

theorem canonicalSound15251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15251.moment H = canonicalOutput15251.moment H :=
  canonical_of_padded canonicalInput15251 canonicalOutput15251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15252 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -2, 2, 0], ![0, 3, 0, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput15252 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node979⟩

theorem canonicalSound15252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15252.moment H = canonicalOutput15252.moment H :=
  canonical_of_padded canonicalInput15252 canonicalOutput15252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15253 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -2, 2, 0], ![1, 1, 0, -2], ![0, 2, -1, -1]]⟩

def canonicalOutput15253 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound15253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15253.moment H = canonicalOutput15253.moment H :=
  canonical_of_padded canonicalInput15253 canonicalOutput15253 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15254 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -2, 3, -1], ![0, 1, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput15254 : ExponentCode := normalNode6940

theorem canonicalSound15254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15254.moment H = canonicalOutput15254.moment H :=
  canonical_of_padded canonicalInput15254 canonicalOutput15254 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15255 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput15255 : ExponentCode := normalNode7832

theorem canonicalSound15255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15255.moment H = canonicalOutput15255.moment H :=
  canonical_of_padded canonicalInput15255 canonicalOutput15255 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15256 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput15256 : ExponentCode := normalNode6941

theorem canonicalSound15256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15256.moment H = canonicalOutput15256.moment H :=
  canonical_of_padded canonicalInput15256 canonicalOutput15256 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15257 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -2, 3, -1], ![0, 2, -2, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput15257 : ExponentCode := normalNode7817

theorem canonicalSound15257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15257.moment H = canonicalOutput15257.moment H :=
  canonical_of_padded canonicalInput15257 canonicalOutput15257 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15258 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -2, 3, -1], ![0, 2, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15258 : ExponentCode := normalNode7824

theorem canonicalSound15258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15258.moment H = canonicalOutput15258.moment H :=
  canonical_of_padded canonicalInput15258 canonicalOutput15258 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15259 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -2, 3, -1], ![0, 2, -1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15259 : ExponentCode := normalNode7836

theorem canonicalSound15259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15259.moment H = canonicalOutput15259.moment H :=
  canonical_of_padded canonicalInput15259 canonicalOutput15259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15260 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![0, -2, 3, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput15260 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node108⟩

theorem canonicalSound15260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15260.moment H = canonicalOutput15260.moment H :=
  canonical_of_padded canonicalInput15260 canonicalOutput15260 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15261 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 2, -1, -2]]⟩

def canonicalOutput15261 : ExponentCode := normalNode6958

theorem canonicalSound15261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15261.moment H = canonicalOutput15261.moment H :=
  canonical_of_padded canonicalInput15261 canonicalOutput15261 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15262 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput15262 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩

theorem canonicalSound15262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15262.moment H = canonicalOutput15262.moment H :=
  canonical_of_padded canonicalInput15262 canonicalOutput15262 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15263 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput15263 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node790⟩

theorem canonicalSound15263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15263.moment H = canonicalOutput15263.moment H :=
  canonical_of_padded canonicalInput15263 canonicalOutput15263 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15264 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, -1, 2], ![0, 2, 1, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput15264 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound15264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15264.moment H = canonicalOutput15264.moment H :=
  canonical_of_padded canonicalInput15264 canonicalOutput15264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15265 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![0, -1, -1, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput15265 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node124⟩

theorem canonicalSound15265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15265.moment H = canonicalOutput15265.moment H :=
  canonical_of_padded canonicalInput15265 canonicalOutput15265 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15266 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 0, 1], ![-1, 3, -1, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput15266 : ExponentCode := normalNode7674

theorem canonicalSound15266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15266.moment H = canonicalOutput15266.moment H :=
  canonical_of_padded canonicalInput15266 canonicalOutput15266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15267 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput15267 : ExponentCode := normalNode6745

theorem canonicalSound15267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15267.moment H = canonicalOutput15267.moment H :=
  canonical_of_padded canonicalInput15267 canonicalOutput15267 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15268 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 0, 1], ![0, 2, 1, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput15268 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node963⟩

theorem canonicalSound15268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15268.moment H = canonicalOutput15268.moment H :=
  canonical_of_padded canonicalInput15268 canonicalOutput15268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15269 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 0, 1], ![0, 3, -2, -1], ![0, -1, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput15269 : ExponentCode := normalNode7826

theorem canonicalSound15269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15269.moment H = canonicalOutput15269.moment H :=
  canonical_of_padded canonicalInput15269 canonicalOutput15269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15270 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 0, 1], ![0, 3, -2, -1], ![1, -1, 1, -1], ![0, 0, 2, -2]]⟩

def canonicalOutput15270 : ExponentCode := normalNode7827

theorem canonicalSound15270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15270.moment H = canonicalOutput15270.moment H :=
  canonical_of_padded canonicalInput15270 canonicalOutput15270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15271 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![-1, 0, 2, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15271 : ExponentCode := normalNode7718

theorem canonicalSound15271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15271.moment H = canonicalOutput15271.moment H :=
  canonical_of_padded canonicalInput15271 canonicalOutput15271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15272 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![-1, 1, -1, 1], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput15272 : ExponentCode := normalNode7733

theorem canonicalSound15272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15272.moment H = canonicalOutput15272.moment H :=
  canonical_of_padded canonicalInput15272 canonicalOutput15272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15273 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15273 : ExponentCode := normalNode7729

theorem canonicalSound15273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15273.moment H = canonicalOutput15273.moment H :=
  canonical_of_padded canonicalInput15273 canonicalOutput15273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15274 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![-1, 1, 0, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput15274 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2511⟩

theorem canonicalSound15274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15274.moment H = canonicalOutput15274.moment H :=
  canonical_of_padded canonicalInput15274 canonicalOutput15274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15275 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![-1, 2, -1, 0], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput15275 : ExponentCode := normalNode7666

theorem canonicalSound15275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15275.moment H = canonicalOutput15275.moment H :=
  canonical_of_padded canonicalInput15275 canonicalOutput15275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15276 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput15276 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2545⟩

theorem canonicalSound15276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15276.moment H = canonicalOutput15276.moment H :=
  canonical_of_padded canonicalInput15276 canonicalOutput15276 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15277 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, -2, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput15277 : ExponentCode := normalNode7885

theorem canonicalSound15277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15277.moment H = canonicalOutput15277.moment H :=
  canonical_of_padded canonicalInput15277 canonicalOutput15277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15278 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 2, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput15278 : ExponentCode := normalNode7889

theorem canonicalSound15278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15278.moment H = canonicalOutput15278.moment H :=
  canonical_of_padded canonicalInput15278 canonicalOutput15278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15279 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput15279 : ExponentCode := normalNode8952

theorem canonicalSound15279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15279.moment H = canonicalOutput15279.moment H :=
  canonical_of_padded canonicalInput15279 canonicalOutput15279 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15280 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![0, 1, 0, -1]]⟩

def canonicalOutput15280 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2530⟩

theorem canonicalSound15280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15280.moment H = canonicalOutput15280.moment H :=
  canonical_of_padded canonicalInput15280 canonicalOutput15280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15281 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 0, 3, -4], ![0, 1, -2, 1]]⟩

def canonicalOutput15281 : ExponentCode := normalNode7892

theorem canonicalSound15281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15281.moment H = canonicalOutput15281.moment H :=
  canonical_of_padded canonicalInput15281 canonicalOutput15281 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15282 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15282 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1350⟩

theorem canonicalSound15282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15282.moment H = canonicalOutput15282.moment H :=
  canonical_of_padded canonicalInput15282 canonicalOutput15282 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15283 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput15283 : ExponentCode := normalNode7862

theorem canonicalSound15283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15283.moment H = canonicalOutput15283.moment H :=
  canonical_of_padded canonicalInput15283 canonicalOutput15283 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15284 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput15284 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2536⟩

theorem canonicalSound15284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15284.moment H = canonicalOutput15284.moment H :=
  canonical_of_padded canonicalInput15284 canonicalOutput15284 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15285 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![0, 1, -1, 0]]⟩

def canonicalOutput15285 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2530⟩

theorem canonicalSound15285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15285.moment H = canonicalOutput15285.moment H :=
  canonical_of_padded canonicalInput15285 canonicalOutput15285 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15286 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![0, 0, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput15286 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node936⟩

theorem canonicalSound15286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15286.moment H = canonicalOutput15286.moment H :=
  canonical_of_padded canonicalInput15286 canonicalOutput15286 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15287 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![0, 1, -1, 0]]⟩

def canonicalOutput15287 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2534⟩

theorem canonicalSound15287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15287.moment H = canonicalOutput15287.moment H :=
  canonical_of_padded canonicalInput15287 canonicalOutput15287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15288 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 2, -2, 0], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput15288 : ExponentCode := normalNode7820

theorem canonicalSound15288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15288.moment H = canonicalOutput15288.moment H :=
  canonical_of_padded canonicalInput15288 canonicalOutput15288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15289 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 2, -2, 0], ![1, -1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput15289 : ExponentCode := normalNode7819

theorem canonicalSound15289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15289.moment H = canonicalOutput15289.moment H :=
  canonical_of_padded canonicalInput15289 canonicalOutput15289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15290 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 1, 0], ![0, 3, -1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput15290 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node949⟩

theorem canonicalSound15290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15290.moment H = canonicalOutput15290.moment H :=
  canonical_of_padded canonicalInput15290 canonicalOutput15290 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15291 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15291 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2063⟩

theorem canonicalSound15291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15291.moment H = canonicalOutput15291.moment H :=
  canonical_of_padded canonicalInput15291 canonicalOutput15291 (by decide) (by decide)
    ⟨false, true, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15292 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![-1, 1, 1, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput15292 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2513⟩

theorem canonicalSound15292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15292.moment H = canonicalOutput15292.moment H :=
  canonical_of_padded canonicalInput15292 canonicalOutput15292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15293 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![-1, 1, 1, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput15293 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2514⟩

theorem canonicalSound15293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15293.moment H = canonicalOutput15293.moment H :=
  canonical_of_padded canonicalInput15293 canonicalOutput15293 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15294 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![-1, 3, 0, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15294 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2075⟩

theorem canonicalSound15294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15294.moment H = canonicalOutput15294.moment H :=
  canonical_of_padded canonicalInput15294 canonicalOutput15294 (by decide) (by decide)
    ⟨false, true, canonicalPermutation40, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15295 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15295 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound15295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15295.moment H = canonicalOutput15295.moment H :=
  canonical_of_padded canonicalInput15295 canonicalOutput15295 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation183, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
