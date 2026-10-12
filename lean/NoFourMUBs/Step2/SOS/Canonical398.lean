import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound21
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput25472 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 2, 3, -5], ![1, -1, -2, 2]]⟩

def canonicalOutput25472 : ExponentCode := normalNode6334

theorem canonicalSound25472 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25472.moment H = canonicalOutput25472.moment H :=
  canonical_of_padded canonicalInput25472 canonicalOutput25472 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25473 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput25473 : ExponentCode := normalNode3063

theorem canonicalSound25473 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25473.moment H = canonicalOutput25473.moment H :=
  canonical_of_padded canonicalInput25473 canonicalOutput25473 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25474 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput25474 : ExponentCode := normalNode5065

theorem canonicalSound25474 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25474.moment H = canonicalOutput25474.moment H :=
  canonical_of_padded canonicalInput25474 canonicalOutput25474 (by decide) (by decide)
    ⟨false, true, canonicalPermutation88, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25475 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput25475 : ExponentCode := normalNode9632

theorem canonicalSound25475 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25475.moment H = canonicalOutput25475.moment H :=
  canonical_of_padded canonicalInput25475 canonicalOutput25475 (by decide) (by decide)
    ⟨false, true, canonicalPermutation91, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25476 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput25476 : ExponentCode := normalNode3478

theorem canonicalSound25476 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25476.moment H = canonicalOutput25476.moment H :=
  canonical_of_padded canonicalInput25476 canonicalOutput25476 (by decide) (by decide)
    ⟨false, true, canonicalPermutation131, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25477 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput25477 : ExponentCode := normalNode7094

theorem canonicalSound25477 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25477.moment H = canonicalOutput25477.moment H :=
  canonical_of_padded canonicalInput25477 canonicalOutput25477 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25478 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, 0, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput25478 : ExponentCode := normalNode10605

theorem canonicalSound25478 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25478.moment H = canonicalOutput25478.moment H :=
  canonical_of_padded canonicalInput25478 canonicalOutput25478 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25479 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, 0, 1], ![0, 2, 2, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput25479 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node914⟩

theorem canonicalSound25479 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25479.moment H = canonicalOutput25479.moment H :=
  canonical_of_padded canonicalInput25479 canonicalOutput25479 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25480 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 2, -4, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput25480 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2768⟩

theorem canonicalSound25480 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25480.moment H = canonicalOutput25480.moment H :=
  canonical_of_padded canonicalInput25480 canonicalOutput25480 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25481 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput25481 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2815⟩

theorem canonicalSound25481 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25481.moment H = canonicalOutput25481.moment H :=
  canonical_of_padded canonicalInput25481 canonicalOutput25481 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25482 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 1, -3, 2], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput25482 : ExponentCode := normalNode10647

theorem canonicalSound25482 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25482.moment H = canonicalOutput25482.moment H :=
  canonical_of_padded canonicalInput25482 canonicalOutput25482 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25483 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 1, -3, 2], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput25483 : ExponentCode := normalNode10644

theorem canonicalSound25483 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25483.moment H = canonicalOutput25483.moment H :=
  canonical_of_padded canonicalInput25483 canonicalOutput25483 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25484 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput25484 : ExponentCode := normalNode4823

theorem canonicalSound25484 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25484.moment H = canonicalOutput25484.moment H :=
  canonical_of_padded canonicalInput25484 canonicalOutput25484 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25485 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput25485 : ExponentCode := normalNode7303

theorem canonicalSound25485 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25485.moment H = canonicalOutput25485.moment H :=
  canonical_of_padded canonicalInput25485 canonicalOutput25485 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25486 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25486 : ExponentCode := normalNode9805

theorem canonicalSound25486 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25486.moment H = canonicalOutput25486.moment H :=
  canonical_of_padded canonicalInput25486 canonicalOutput25486 (by decide) (by decide)
    ⟨false, true, canonicalPermutation311, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25487 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 3, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput25487 : ExponentCode := normalNode3182

theorem canonicalSound25487 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25487.moment H = canonicalOutput25487.moment H :=
  canonical_of_padded canonicalInput25487 canonicalOutput25487 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25488 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, -3, 3]]⟩

def canonicalOutput25488 : ExponentCode := normalNode10847

theorem canonicalSound25488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25488.moment H = canonicalOutput25488.moment H :=
  canonical_of_padded canonicalInput25488 canonicalOutput25488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25489 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 2, -4, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput25489 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1174⟩

theorem canonicalSound25489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25489.moment H = canonicalOutput25489.moment H :=
  canonical_of_padded canonicalInput25489 canonicalOutput25489 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25490 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 2, 1, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput25490 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩

theorem canonicalSound25490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25490.moment H = canonicalOutput25490.moment H :=
  canonical_of_padded canonicalInput25490 canonicalOutput25490 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25491 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![0, 2, 2, -4], ![1, -1, -3, 3]]⟩

def canonicalOutput25491 : ExponentCode := normalNode9720

theorem canonicalSound25491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25491.moment H = canonicalOutput25491.moment H :=
  canonical_of_padded canonicalInput25491 canonicalOutput25491 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25492 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![0, 2, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput25492 : ExponentCode := normalNode7724

theorem canonicalSound25492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25492.moment H = canonicalOutput25492.moment H :=
  canonical_of_padded canonicalInput25492 canonicalOutput25492 (by decide) (by decide)
    ⟨false, true, canonicalPermutation106, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25493 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput25493 : ExponentCode := normalNode3215

theorem canonicalSound25493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25493.moment H = canonicalOutput25493.moment H :=
  canonical_of_padded canonicalInput25493 canonicalOutput25493 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25494 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput25494 : ExponentCode := normalNode9831

theorem canonicalSound25494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25494.moment H = canonicalOutput25494.moment H :=
  canonical_of_padded canonicalInput25494 canonicalOutput25494 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation306, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25495 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![0, 2, -4, 2]]⟩

def canonicalOutput25495 : ExponentCode := normalNode3222

theorem canonicalSound25495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25495.moment H = canonicalOutput25495.moment H :=
  canonical_of_padded canonicalInput25495 canonicalOutput25495 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25496 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput25496 : ExponentCode := normalNode4850

theorem canonicalSound25496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25496.moment H = canonicalOutput25496.moment H :=
  canonical_of_padded canonicalInput25496 canonicalOutput25496 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation392, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25497 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 0, 1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-1, 1, -3, 3]]⟩

def canonicalOutput25497 : ExponentCode := normalNode9830

theorem canonicalSound25497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25497.moment H = canonicalOutput25497.moment H :=
  canonical_of_padded canonicalInput25497 canonicalOutput25497 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation306, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25498 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, 2, -1], ![0, 2, -4, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput25498 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1243⟩

theorem canonicalSound25498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25498.moment H = canonicalOutput25498.moment H :=
  canonical_of_padded canonicalInput25498 canonicalOutput25498 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25499 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, 3, -2], ![0, 1, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput25499 : ExponentCode := normalNode9926

theorem canonicalSound25499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25499.moment H = canonicalOutput25499.moment H :=
  canonical_of_padded canonicalInput25499 canonicalOutput25499 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25500 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput25500 : ExponentCode := normalNode9921

theorem canonicalSound25500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25500.moment H = canonicalOutput25500.moment H :=
  canonical_of_padded canonicalInput25500 canonicalOutput25500 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25501 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput25501 : ExponentCode := normalNode10921

theorem canonicalSound25501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25501.moment H = canonicalOutput25501.moment H :=
  canonical_of_padded canonicalInput25501 canonicalOutput25501 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25502 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, 3, -2], ![0, 2, -4, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput25502 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1082⟩

theorem canonicalSound25502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25502.moment H = canonicalOutput25502.moment H :=
  canonical_of_padded canonicalInput25502 canonicalOutput25502 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25503 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, 4, -3], ![0, 1, -3, 2], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput25503 : ExponentCode := normalNode9703

theorem canonicalSound25503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25503.moment H = canonicalOutput25503.moment H :=
  canonical_of_padded canonicalInput25503 canonicalOutput25503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25504 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput25504 : ExponentCode := normalNode9702

theorem canonicalSound25504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25504.moment H = canonicalOutput25504.moment H :=
  canonical_of_padded canonicalInput25504 canonicalOutput25504 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25505 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, 4, -3], ![0, 2, -4, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput25505 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1069⟩

theorem canonicalSound25505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25505.moment H = canonicalOutput25505.moment H :=
  canonical_of_padded canonicalInput25505 canonicalOutput25505 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput25506 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 0, 4, -3], ![0, 2, -3, 1], ![1, -1, -1, 1]]⟩

def canonicalOutput25506 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node934⟩

theorem canonicalSound25506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25506.moment H = canonicalOutput25506.moment H :=
  canonical_of_padded canonicalInput25506 canonicalOutput25506 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput25507 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 1, -3, 3], ![0, 0, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput25507 : ExponentCode := normalNode10970

theorem canonicalSound25507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25507.moment H = canonicalOutput25507.moment H :=
  canonical_of_padded canonicalInput25507 canonicalOutput25507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25508 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 1, -3, 3], ![0, 1, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput25508 : ExponentCode := normalNode11003

theorem canonicalSound25508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25508.moment H = canonicalOutput25508.moment H :=
  canonical_of_padded canonicalInput25508 canonicalOutput25508 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput25509 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 1, -2, 2], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput25509 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1217⟩

theorem canonicalSound25509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25509.moment H = canonicalOutput25509.moment H :=
  canonical_of_padded canonicalInput25509 canonicalOutput25509 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25510 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 1, -2, 2], ![0, 1, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput25510 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound25510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25510.moment H = canonicalOutput25510.moment H :=
  canonical_of_padded canonicalInput25510 canonicalOutput25510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25511 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 1, -2, 2], ![0, 1, 3, -4], ![1, -1, -1, 1]]⟩

def canonicalOutput25511 : ExponentCode := normalNode7408

theorem canonicalSound25511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25511.moment H = canonicalOutput25511.moment H :=
  canonical_of_padded canonicalInput25511 canonicalOutput25511 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25512 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, -1, 1], ![-1, -1, 2, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput25512 : ExponentCode := normalNode8881

theorem canonicalSound25512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25512.moment H = canonicalOutput25512.moment H :=
  canonical_of_padded canonicalInput25512 canonicalOutput25512 (by decide) (by decide)
    ⟨false, false, canonicalPermutation312, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25513 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, -1, 1], ![0, -1, 2, -1], ![-1, 1, 1, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput25513 : ExponentCode := normalNode9317

theorem canonicalSound25513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25513.moment H = canonicalOutput25513.moment H :=
  canonical_of_padded canonicalInput25513 canonicalOutput25513 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25514 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, -1, 1], ![0, -1, 2, -1], ![0, 1, 1, -2], ![0, -1, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput25514 : ExponentCode := normalNode9377

theorem canonicalSound25514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25514.moment H = canonicalOutput25514.moment H :=
  canonical_of_padded canonicalInput25514 canonicalOutput25514 (by decide) (by decide)
    ⟨false, false, canonicalPermutation113, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25515 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, -1, 1], ![0, -1, 2, -1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![0, 1, -1, 0]]⟩

def canonicalOutput25515 : ExponentCode := normalNode9409

theorem canonicalSound25515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25515.moment H = canonicalOutput25515.moment H :=
  canonical_of_padded canonicalInput25515 canonicalOutput25515 (by decide) (by decide)
    ⟨false, false, canonicalPermutation239, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput25516 : ExponentCode := ⟨5, 4, ![![0, -1, 0, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -2, -1, 2]]⟩

def canonicalOutput25516 : ExponentCode := normalNode9428

theorem canonicalSound25516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25516.moment H = canonicalOutput25516.moment H :=
  canonical_of_padded canonicalInput25516 canonicalOutput25516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25517 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput25517 : ExponentCode := normalNode8806

theorem canonicalSound25517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25517.moment H = canonicalOutput25517.moment H :=
  canonical_of_padded canonicalInput25517 canonicalOutput25517 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation274, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25518 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput25518 : ExponentCode := normalNode9614

theorem canonicalSound25518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25518.moment H = canonicalOutput25518.moment H :=
  canonical_of_padded canonicalInput25518 canonicalOutput25518 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25519 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 1, -1, 1], ![0, 1, 3, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput25519 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩

theorem canonicalSound25519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25519.moment H = canonicalOutput25519.moment H :=
  canonical_of_padded canonicalInput25519 canonicalOutput25519 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25520 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput25520 : ExponentCode := normalNode6840

theorem canonicalSound25520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25520.moment H = canonicalOutput25520.moment H :=
  canonical_of_padded canonicalInput25520 canonicalOutput25520 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25521 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 1, -2, 2], ![0, 0, 4, -4]]⟩

def canonicalOutput25521 : ExponentCode := normalNode10491

theorem canonicalSound25521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25521.moment H = canonicalOutput25521.moment H :=
  canonical_of_padded canonicalInput25521 canonicalOutput25521 (by decide) (by decide)
    ⟨false, false, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25522 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -3, 2], ![-1, -1, 4, -2]]⟩

def canonicalOutput25522 : ExponentCode := normalNode7308

theorem canonicalSound25522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25522.moment H = canonicalOutput25522.moment H :=
  canonical_of_padded canonicalInput25522 canonicalOutput25522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput25523 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 1, 0, 0], ![0, 1, 2, -3], ![1, -1, -2, 2]]⟩

def canonicalOutput25523 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1220⟩

theorem canonicalSound25523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25523.moment H = canonicalOutput25523.moment H :=
  canonical_of_padded canonicalInput25523 canonicalOutput25523 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25524 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput25524 : ExponentCode := normalNode9619

theorem canonicalSound25524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25524.moment H = canonicalOutput25524.moment H :=
  canonical_of_padded canonicalInput25524 canonicalOutput25524 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput25525 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, 0, 0], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, -3, 2], ![-1, 0, 4, -3]]⟩

def canonicalOutput25525 : ExponentCode := normalNode9619

theorem canonicalSound25525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25525.moment H = canonicalOutput25525.moment H :=
  canonical_of_padded canonicalInput25525 canonicalOutput25525 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25526 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, 0, 0], ![1, 0, -1, 0], ![0, -2, 1, 1], ![2, 0, -2, 0], ![-2, 2, 2, -2]]⟩

def canonicalOutput25526 : ExponentCode := normalNode779

theorem canonicalSound25526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25526.moment H = canonicalOutput25526.moment H :=
  canonical_of_padded canonicalInput25526 canonicalOutput25526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation341, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput25527 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, 1, -1], ![-1, -1, -1, 3], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput25527 : ExponentCode := normalNode7807

theorem canonicalSound25527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25527.moment H = canonicalOutput25527.moment H :=
  canonical_of_padded canonicalInput25527 canonicalOutput25527 (by decide) (by decide)
    ⟨false, false, canonicalPermutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput25528 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, 1, -1], ![0, -1, -1, 2], ![-1, -1, 2, 0], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput25528 : ExponentCode := normalNode8855

theorem canonicalSound25528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25528.moment H = canonicalOutput25528.moment H :=
  canonical_of_padded canonicalInput25528 canonicalOutput25528 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput25529 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, 1, -1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput25529 : ExponentCode := normalNode9380

theorem canonicalSound25529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25529.moment H = canonicalOutput25529.moment H :=
  canonical_of_padded canonicalInput25529 canonicalOutput25529 (by decide) (by decide)
    ⟨false, false, canonicalPermutation226, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25530 : ExponentCode := ⟨6, 4, ![![0, -1, 0, 1], ![-1, 1, 1, -1], ![0, -1, -1, 2], ![0, -1, 2, -1], ![1, 1, -1, -1], ![0, 1, -1, 0]]⟩

def canonicalOutput25530 : ExponentCode := normalNode9380

theorem canonicalSound25530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25530.moment H = canonicalOutput25530.moment H :=
  canonical_of_padded canonicalInput25530 canonicalOutput25530 (by decide) (by decide)
    ⟨false, false, canonicalPermutation233, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25531 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.pivotMatrix1363⟩

def canonicalOutput25531 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1363⟩

theorem canonicalSound25531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25531.moment H = canonicalOutput25531.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.pivotMatrix1363 = injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1363
  have heq : OAI.MUB6.Certificate.PairSemantics.pivotMatrix1363 = (fun u v => OAI.MUB6.Certificate.PairSemantics.node1363 (OAI.MUB6.Certificate.PairSemantics.pivotPermutation1363 u) v) := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_row_permutation H OAI.MUB6.Certificate.PairSemantics.node1363 OAI.MUB6.Certificate.PairSemantics.pivotPermutation1363)

def canonicalInput25532 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput25532 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1367⟩

theorem canonicalSound25532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25532.moment H = canonicalOutput25532.moment H :=
  canonical_of_padded canonicalInput25532 canonicalOutput25532 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput25533 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, -3, 3]]⟩

def canonicalOutput25533 : ExponentCode := normalNode10996

theorem canonicalSound25533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25533.moment H = canonicalOutput25533.moment H :=
  canonical_of_padded canonicalInput25533 canonicalOutput25533 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput25534 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 3, -1, -1], ![0, -1, 3, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput25534 : ExponentCode := normalNode6941

theorem canonicalSound25534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25534.moment H = canonicalOutput25534.moment H :=
  canonical_of_padded canonicalInput25534 canonicalOutput25534 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput25535 : ExponentCode := ⟨4, 4, ![![0, -1, 0, 1], ![-1, 3, 2, -4], ![0, -1, -1, 2], ![1, -1, -1, 1]]⟩

def canonicalOutput25535 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩

theorem canonicalSound25535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput25535.moment H = canonicalOutput25535.moment H :=
  canonical_of_padded canonicalInput25535 canonicalOutput25535 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
