import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound18
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25408 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![1, 0, -1, 0], ![2, 0, -1, -1], ![-2, -1, 3, 0], ![0, 3, -1, -2]]⟩

def canonicalOutput25408 : ExponentCode := normalNode146

theorem canonicalSound25408 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25408.moment H = canonicalOutput25408.moment H :=
  canonical_of_padded canonicalInput25408 canonicalOutput25408 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25409 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![1, 0, -1, 0], ![2, 0, -1, -1], ![-1, -1, 3, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput25409 : ExponentCode := normalNode176

theorem canonicalSound25409 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25409.moment H = canonicalOutput25409.moment H :=
  canonical_of_padded canonicalInput25409 canonicalOutput25409 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25410 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 0, 2], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25410 : ExponentCode := normalNode8807

theorem canonicalSound25410 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25410.moment H = canonicalOutput25410.moment H :=
  canonical_of_padded canonicalInput25410 canonicalOutput25410 (by decide) (by decide)
    ⟨false, false, canonicalPermutation201, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25411 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 1, -1, 0], ![-1, 1, -2, 2], ![2, 1, 1, -4]]⟩

def canonicalOutput25411 : ExponentCode := normalNode1251

theorem canonicalSound25411 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25411.moment H = canonicalOutput25411.moment H :=
  canonical_of_padded canonicalInput25411 canonicalOutput25411 (by decide) (by decide)
    ⟨false, true, canonicalPermutation105, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25412 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, -1, 1, 0], ![0, 3, 1, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput25412 : ExponentCode := normalNode9403

theorem canonicalSound25412 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25412.moment H = canonicalOutput25412.moment H :=
  canonical_of_padded canonicalInput25412 canonicalOutput25412 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25413 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, -1, 1, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput25413 : ExponentCode := normalNode6397

theorem canonicalSound25413 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25413.moment H = canonicalOutput25413.moment H :=
  canonical_of_padded canonicalInput25413 canonicalOutput25413 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25414 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, -2, 2], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput25414 : ExponentCode := normalNode9405

theorem canonicalSound25414 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25414.moment H = canonicalOutput25414.moment H :=
  canonical_of_padded canonicalInput25414 canonicalOutput25414 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25415 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, -1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput25415 : ExponentCode := normalNode1072

theorem canonicalSound25415 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25415.moment H = canonicalOutput25415.moment H :=
  canonical_of_padded canonicalInput25415 canonicalOutput25415 (by decide) (by decide)
    ⟨false, true, canonicalPermutation103, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25416 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 0, -1, 2], ![2, 1, 2, -5]]⟩

def canonicalOutput25416 : ExponentCode := normalNode1020

theorem canonicalSound25416 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25416.moment H = canonicalOutput25416.moment H :=
  canonical_of_padded canonicalInput25416 canonicalOutput25416 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25417 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![-1, 1, -2, 2], ![2, 0, 2, -4]]⟩

def canonicalOutput25417 : ExponentCode := normalNode3172

theorem canonicalSound25417 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25417.moment H = canonicalOutput25417.moment H :=
  canonical_of_padded canonicalInput25417 canonicalOutput25417 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25418 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, 2, 2, -5]]⟩

def canonicalOutput25418 : ExponentCode := normalNode1022

theorem canonicalSound25418 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25418.moment H = canonicalOutput25418.moment H :=
  canonical_of_padded canonicalInput25418 canonicalOutput25418 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25419 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![-1, 0, -2, 3], ![2, 1, 1, -4]]⟩

def canonicalOutput25419 : ExponentCode := normalNode1244

theorem canonicalSound25419 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25419.moment H = canonicalOutput25419.moment H :=
  canonical_of_padded canonicalInput25419 canonicalOutput25419 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25420 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput25420 : ExponentCode := normalNode9415

theorem canonicalSound25420 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25420.moment H = canonicalOutput25420.moment H :=
  canonical_of_padded canonicalInput25420 canonicalOutput25420 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25421 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 1, -3], ![-1, 2, -3, 2]]⟩

def canonicalOutput25421 : ExponentCode := normalNode6149

theorem canonicalSound25421 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25421.moment H = canonicalOutput25421.moment H :=
  canonical_of_padded canonicalInput25421 canonicalOutput25421 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25422 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -2, 3], ![2, 0, 2, -4]]⟩

def canonicalOutput25422 : ExponentCode := normalNode3167

theorem canonicalSound25422 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25422.moment H = canonicalOutput25422.moment H :=
  canonical_of_padded canonicalInput25422 canonicalOutput25422 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25423 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput25423 : ExponentCode := normalNode6393

theorem canonicalSound25423 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25423.moment H = canonicalOutput25423.moment H :=
  canonical_of_padded canonicalInput25423 canonicalOutput25423 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation375, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25424 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25424 : ExponentCode := normalNode9288

theorem canonicalSound25424 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25424.moment H = canonicalOutput25424.moment H :=
  canonical_of_padded canonicalInput25424 canonicalOutput25424 (by decide) (by decide)
    ⟨false, false, canonicalPermutation229, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25425 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, 0, -4, 2]]⟩

def canonicalOutput25425 : ExponentCode := normalNode3183

theorem canonicalSound25425 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25425.moment H = canonicalOutput25425.moment H :=
  canonical_of_padded canonicalInput25425 canonicalOutput25425 (by decide) (by decide)
    ⟨false, true, canonicalPermutation103, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25426 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput25426 : ExponentCode := normalNode9426

theorem canonicalSound25426 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25426.moment H = canonicalOutput25426.moment H :=
  canonical_of_padded canonicalInput25426 canonicalOutput25426 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25427 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput25427 : ExponentCode := normalNode7286

theorem canonicalSound25427 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25427.moment H = canonicalOutput25427.moment H :=
  canonical_of_padded canonicalInput25427 canonicalOutput25427 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25428 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25428 : ExponentCode := normalNode9283

theorem canonicalSound25428 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25428.moment H = canonicalOutput25428.moment H :=
  canonical_of_padded canonicalInput25428 canonicalOutput25428 (by decide) (by decide)
    ⟨false, false, canonicalPermutation234, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25429 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![1, 1, -4, 2]]⟩

def canonicalOutput25429 : ExponentCode := normalNode7291

theorem canonicalSound25429 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25429.moment H = canonicalOutput25429.moment H :=
  canonical_of_padded canonicalInput25429 canonicalOutput25429 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25430 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 2, -3], ![-1, 1, -3, 3]]⟩

def canonicalOutput25430 : ExponentCode := normalNode9291

theorem canonicalSound25430 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25430.moment H = canonicalOutput25430.moment H :=
  canonical_of_padded canonicalInput25430 canonicalOutput25430 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation205, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25431 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25431 : ExponentCode := normalNode9287

theorem canonicalSound25431 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25431.moment H = canonicalOutput25431.moment H :=
  canonical_of_padded canonicalInput25431 canonicalOutput25431 (by decide) (by decide)
    ⟨false, false, canonicalPermutation201, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25432 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![0, 2, -4, 2]]⟩

def canonicalOutput25432 : ExponentCode := normalNode3186

theorem canonicalSound25432 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25432.moment H = canonicalOutput25432.moment H :=
  canonical_of_padded canonicalInput25432 canonicalOutput25432 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25433 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput25433 : ExponentCode := normalNode4815

theorem canonicalSound25433 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25433.moment H = canonicalOutput25433.moment H :=
  canonical_of_padded canonicalInput25433 canonicalOutput25433 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation366, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25434 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, -3, 4], ![0, 2, 2, -4], ![1, -1, 1, -1]]⟩

def canonicalOutput25434 : ExponentCode := normalNode9678

theorem canonicalSound25434 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25434.moment H = canonicalOutput25434.moment H :=
  canonical_of_padded canonicalInput25434 canonicalOutput25434 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25435 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, -3, 4], ![0, 2, 3, -5], ![1, -1, 0, 0]]⟩

def canonicalOutput25435 : ExponentCode := normalNode9049

theorem canonicalSound25435 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25435.moment H = canonicalOutput25435.moment H :=
  canonical_of_padded canonicalInput25435 canonicalOutput25435 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25436 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput25436 : ExponentCode := normalNode9906

theorem canonicalSound25436 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25436.moment H = canonicalOutput25436.moment H :=
  canonical_of_padded canonicalInput25436 canonicalOutput25436 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25437 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput25437 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2407⟩

theorem canonicalSound25437 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25437.moment H = canonicalOutput25437.moment H :=
  canonical_of_padded canonicalInput25437 canonicalOutput25437 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25438 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput25438 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2409⟩

theorem canonicalSound25438 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25438.moment H = canonicalOutput25438.moment H :=
  canonical_of_padded canonicalInput25438 canonicalOutput25438 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25439 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.pivotMatrix1200⟩

def canonicalOutput25439 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1200⟩

theorem canonicalSound25439 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25439.moment H = canonicalOutput25439.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.pivotMatrix1200 = injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1200
  have heq : OAI.MUB6.Certificate.PairSemantics.pivotMatrix1200 = (fun u v => OAI.MUB6.Certificate.PairSemantics.node1200 (OAI.MUB6.Certificate.PairSemantics.pivotPermutation1200 u) v) := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_row_permutation H OAI.MUB6.Certificate.PairSemantics.node1200 OAI.MUB6.Certificate.PairSemantics.pivotPermutation1200)

def canonicalInput25440 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 2, 1, -3], ![1, -1, 1, -1]]⟩

def canonicalOutput25440 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node797⟩

theorem canonicalSound25440 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25440.moment H = canonicalOutput25440.moment H :=
  canonical_of_padded canonicalInput25440 canonicalOutput25440 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25441 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput25441 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1031⟩

theorem canonicalSound25441 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25441.moment H = canonicalOutput25441.moment H :=
  canonical_of_padded canonicalInput25441 canonicalOutput25441 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25442 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 2, 3, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput25442 : ExponentCode := normalNode7187

theorem canonicalSound25442 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25442.moment H = canonicalOutput25442.moment H :=
  canonical_of_padded canonicalInput25442 canonicalOutput25442 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25443 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 2, 0], ![2, 2, 1, -5]]⟩

def canonicalOutput25443 : ExponentCode := normalNode354

theorem canonicalSound25443 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25443.moment H = canonicalOutput25443.moment H :=
  canonical_of_padded canonicalInput25443 canonicalOutput25443 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25444 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, -1, 3, -1], ![2, 2, 0, -4]]⟩

def canonicalOutput25444 : ExponentCode := normalNode435

theorem canonicalSound25444 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25444.moment H = canonicalOutput25444.moment H :=
  canonical_of_padded canonicalInput25444 canonicalOutput25444 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25445 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput25445 : ExponentCode := normalNode4765

theorem canonicalSound25445 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25445.moment H = canonicalOutput25445.moment H :=
  canonical_of_padded canonicalInput25445 canonicalOutput25445 (by decide) (by decide)
    ⟨false, true, canonicalPermutation103, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25446 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 2, 1, -2], ![2, -1, 2, -3]]⟩

def canonicalOutput25446 : ExponentCode := normalNode4969

theorem canonicalSound25446 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25446.moment H = canonicalOutput25446.moment H :=
  canonical_of_padded canonicalInput25446 canonicalOutput25446 (by decide) (by decide)
    ⟨false, true, canonicalPermutation103, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25447 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, -1, 1, 1], ![2, 1, 2, -5]]⟩

def canonicalOutput25447 : ExponentCode := normalNode1020

theorem canonicalSound25447 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25447.moment H = canonicalOutput25447.moment H :=
  canonical_of_padded canonicalInput25447 canonicalOutput25447 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25448 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, -1, -1, 1]]⟩

def canonicalOutput25448 : ExponentCode := normalNode10269

theorem canonicalSound25448 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25448.moment H = canonicalOutput25448.moment H :=
  canonical_of_padded canonicalInput25448 canonicalOutput25448 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25449 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 3, -1], ![1, 3, -1, -3]]⟩

def canonicalOutput25449 : ExponentCode := normalNode6046

theorem canonicalSound25449 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25449.moment H = canonicalOutput25449.moment H :=
  canonical_of_padded canonicalInput25449 canonicalOutput25449 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25450 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput25450 : ExponentCode := normalNode7166

theorem canonicalSound25450 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25450.moment H = canonicalOutput25450.moment H :=
  canonical_of_padded canonicalInput25450 canonicalOutput25450 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25451 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![-1, 3, 0, -2], ![1, -2, 3, -2]]⟩

def canonicalOutput25451 : ExponentCode := normalNode6170

theorem canonicalSound25451 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25451.moment H = canonicalOutput25451.moment H :=
  canonical_of_padded canonicalInput25451 canonicalOutput25451 (by decide) (by decide)
    ⟨false, true, canonicalPermutation102, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25452 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, 1, -1], ![-1, -1, 2, 0], ![-1, 3, -1, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput25452 : ExponentCode := normalNode179

theorem canonicalSound25452 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25452.moment H = canonicalOutput25452.moment H :=
  canonical_of_padded canonicalInput25452 canonicalOutput25452 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput25453 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, -1, 2, -1], ![-2, 3, -1, 0], ![3, -1, -1, -1]]⟩

def canonicalOutput25453 : ExponentCode := normalNode147

theorem canonicalSound25453 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25453.moment H = canonicalOutput25453.moment H :=
  canonical_of_padded canonicalInput25453 canonicalOutput25453 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput25454 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput25454 : ExponentCode := normalNode10272

theorem canonicalSound25454 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25454.moment H = canonicalOutput25454.moment H :=
  canonical_of_padded canonicalInput25454 canonicalOutput25454 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25455 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, 4, -4], ![0, 2, -3, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput25455 : ExponentCode := normalNode10278

theorem canonicalSound25455 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25455.moment H = canonicalOutput25455.moment H :=
  canonical_of_padded canonicalInput25455 canonicalOutput25455 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25456 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![-1, 2, 0, -1], ![-1, -1, 3, -1], ![3, -1, -1, -1]]⟩

def canonicalOutput25456 : ExponentCode := normalNode179

theorem canonicalSound25456 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25456.moment H = canonicalOutput25456.moment H :=
  canonical_of_padded canonicalInput25456 canonicalOutput25456 (by decide) (by decide)
    ⟨false, true, canonicalPermutation130, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput25457 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![-1, 2, 0, -1], ![-1, 0, 3, -2], ![3, -2, -1, 0]]⟩

def canonicalOutput25457 : ExponentCode := normalNode148

theorem canonicalSound25457 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25457.moment H = canonicalOutput25457.moment H :=
  canonical_of_padded canonicalInput25457 canonicalOutput25457 (by decide) (by decide)
    ⟨false, true, canonicalPermutation130, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput25458 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -2, 2, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput25458 : ExponentCode := normalNode1229

theorem canonicalSound25458 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25458.moment H = canonicalOutput25458.moment H :=
  canonical_of_padded canonicalInput25458 canonicalOutput25458 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25459 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![-1, -1, 0, 2], ![2, 0, 3, -5]]⟩

def canonicalOutput25459 : ExponentCode := normalNode3046

theorem canonicalSound25459 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25459.moment H = canonicalOutput25459.moment H :=
  canonical_of_padded canonicalInput25459 canonicalOutput25459 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25460 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -1, 3, -4]]⟩

def canonicalOutput25460 : ExponentCode := normalNode4721

theorem canonicalSound25460 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25460.moment H = canonicalOutput25460.moment H :=
  canonical_of_padded canonicalInput25460 canonicalOutput25460 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25461 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, -2, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25461 : ExponentCode := normalNode5040

theorem canonicalSound25461 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25461.moment H = canonicalOutput25461.moment H :=
  canonical_of_padded canonicalInput25461 canonicalOutput25461 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation286, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25462 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -2, 1, 0], ![2, 0, -1, -1], ![-2, 2, 2, -2]]⟩

def canonicalOutput25462 : ExponentCode := normalNode739

theorem canonicalSound25462 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25462.moment H = canonicalOutput25462.moment H :=
  canonical_of_padded canonicalInput25462 canonicalOutput25462 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput25463 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput25463 : ExponentCode := normalNode7158

theorem canonicalSound25463 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25463.moment H = canonicalOutput25463.moment H :=
  canonical_of_padded canonicalInput25463 canonicalOutput25463 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25464 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![2, -1, -1, 0], ![-2, 2, 2, -2]]⟩

def canonicalOutput25464 : ExponentCode := normalNode727

theorem canonicalSound25464 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25464.moment H = canonicalOutput25464.moment H :=
  canonical_of_padded canonicalInput25464 canonicalOutput25464 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput25465 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput25465 : ExponentCode := normalNode6391

theorem canonicalSound25465 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25465.moment H = canonicalOutput25465.moment H :=
  canonical_of_padded canonicalInput25465 canonicalOutput25465 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25466 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput25466 : ExponentCode := normalNode7153

theorem canonicalSound25466 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25466.moment H = canonicalOutput25466.moment H :=
  canonical_of_padded canonicalInput25466 canonicalOutput25466 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25467 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput25467 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3341⟩

theorem canonicalSound25467 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25467.moment H = canonicalOutput25467.moment H :=
  canonical_of_padded canonicalInput25467 canonicalOutput25467 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25468 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25468 : ExponentCode := normalNode9615

theorem canonicalSound25468 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25468.moment H = canonicalOutput25468.moment H :=
  canonical_of_padded canonicalInput25468 canonicalOutput25468 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation384, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25469 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput25469 : ExponentCode := normalNode10184

theorem canonicalSound25469 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25469.moment H = canonicalOutput25469.moment H :=
  canonical_of_padded canonicalInput25469 canonicalOutput25469 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25470 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -3, 1], ![-1, -1, 4, -2]]⟩

def canonicalOutput25470 : ExponentCode := normalNode7294

theorem canonicalSound25470 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25470.moment H = canonicalOutput25470.moment H :=
  canonical_of_padded canonicalInput25470 canonicalOutput25470 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25471 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 2, -3, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput25471 : ExponentCode := normalNode6523

theorem canonicalSound25471 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25471.moment H = canonicalOutput25471.moment H :=
  canonical_of_padded canonicalInput25471 canonicalOutput25471 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
