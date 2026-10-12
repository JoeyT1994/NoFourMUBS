import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes46
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes52
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput31488 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![-2, 0, 3, -1], ![1, -2, -2, 3]]⟩

def canonicalOutput31488 : ExponentCode := normalNode3574

theorem canonicalSound31488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31488.moment H = canonicalOutput31488.moment H :=
  canonical_of_padded canonicalInput31488 canonicalOutput31488 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31489 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, -2, 4], ![1, -2, 2, -1]]⟩

def canonicalOutput31489 : ExponentCode := normalNode3295

theorem canonicalSound31489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31489.moment H = canonicalOutput31489.moment H :=
  canonical_of_padded canonicalInput31489 canonicalOutput31489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31490 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, -1, 3], ![1, -2, 1, 0]]⟩

def canonicalOutput31490 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3001⟩

theorem canonicalSound31490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31490.moment H = canonicalOutput31490.moment H :=
  canonical_of_padded canonicalInput31490 canonicalOutput31490 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31491 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 3, -1], ![1, -2, -3, 4]]⟩

def canonicalOutput31491 : ExponentCode := normalNode3575

theorem canonicalSound31491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31491.moment H = canonicalOutput31491.moment H :=
  canonical_of_padded canonicalInput31491 canonicalOutput31491 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31492 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -3, 2], ![-2, -2, 3, 1]]⟩

def canonicalOutput31492 : ExponentCode := normalNode615

theorem canonicalSound31492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31492.moment H = canonicalOutput31492.moment H :=
  canonical_of_padded canonicalInput31492 canonicalOutput31492 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31493 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -4, 3], ![-2, -2, 3, 1]]⟩

def canonicalOutput31493 : ExponentCode := normalNode614

theorem canonicalSound31493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31493.moment H = canonicalOutput31493.moment H :=
  canonical_of_padded canonicalInput31493 canonicalOutput31493 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31494 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-2, -2, 2, 2]]⟩

def canonicalOutput31494 : ExponentCode := normalNode908

theorem canonicalSound31494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31494.moment H = canonicalOutput31494.moment H :=
  canonical_of_padded canonicalInput31494 canonicalOutput31494 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31495 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -3, 1], ![-2, 0, -1, 3], ![0, -2, 3, -1]]⟩

def canonicalOutput31495 : ExponentCode := normalNode3383

theorem canonicalSound31495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31495.moment H = canonicalOutput31495.moment H :=
  canonical_of_padded canonicalInput31495 canonicalOutput31495 (by decide) (by decide)
    ⟨false, false, canonicalPermutation300, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31496 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -3, 1], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]⟩

def canonicalOutput31496 : ExponentCode := normalNode3437

theorem canonicalSound31496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31496.moment H = canonicalOutput31496.moment H :=
  canonical_of_padded canonicalInput31496 canonicalOutput31496 (by decide) (by decide)
    ⟨false, true, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31497 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, 0, -2, 4], ![0, -2, 3, -1]]⟩

def canonicalOutput31497 : ExponentCode := normalNode3138

theorem canonicalSound31497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31497.moment H = canonicalOutput31497.moment H :=
  canonical_of_padded canonicalInput31497 canonicalOutput31497 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31498 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-2, 0, -1, 3], ![0, -2, 2, 0]]⟩

def canonicalOutput31498 : ExponentCode := normalNode3350

theorem canonicalSound31498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31498.moment H = canonicalOutput31498.moment H :=
  canonical_of_padded canonicalInput31498 canonicalOutput31498 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31499 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-1, -1, -2, 4], ![-1, -1, 3, -1]]⟩

def canonicalOutput31499 : ExponentCode := normalNode3906

theorem canonicalSound31499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31499.moment H = canonicalOutput31499.moment H :=
  canonical_of_padded canonicalInput31499 canonicalOutput31499 (by decide) (by decide)
    ⟨false, true, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31500 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, -2, 0], ![-1, -1, -1, 3], ![-1, -1, 2, 0]]⟩

def canonicalOutput31500 : ExponentCode := normalNode3907

theorem canonicalSound31500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31500.moment H = canonicalOutput31500.moment H :=
  canonical_of_padded canonicalInput31500 canonicalOutput31500 (by decide) (by decide)
    ⟨false, true, canonicalPermutation169, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31501 : ExponentCode := ⟨4, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![0, -2, -2, 4]]⟩

def canonicalOutput31501 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node150⟩

theorem canonicalSound31501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31501.moment H = canonicalOutput31501.moment H :=
  canonical_of_padded canonicalInput31501 canonicalOutput31501 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31502 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 0, 1], ![1, -1, 0, 0], ![-1, 1, 2, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput31502 : ExponentCode := normalNode6083

theorem canonicalSound31502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31502.moment H = canonicalOutput31502.moment H :=
  canonical_of_padded canonicalInput31502 canonicalOutput31502 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31503 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput31503 : ExponentCode := normalNode3979

theorem canonicalSound31503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31503.moment H = canonicalOutput31503.moment H :=
  canonical_of_padded canonicalInput31503 canonicalOutput31503 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31504 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput31504 : ExponentCode := normalNode8813

theorem canonicalSound31504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31504.moment H = canonicalOutput31504.moment H :=
  canonical_of_padded canonicalInput31504 canonicalOutput31504 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31505 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-1, -1, 0, 2], ![-1, 1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput31505 : ExponentCode := normalNode8800

theorem canonicalSound31505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31505.moment H = canonicalOutput31505.moment H :=
  canonical_of_padded canonicalInput31505 canonicalOutput31505 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput31506 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-1, 0, -1, 2], ![-1, 2, -1, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput31506 : ExponentCode := normalNode6861

theorem canonicalSound31506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31506.moment H = canonicalOutput31506.moment H :=
  canonical_of_padded canonicalInput31506 canonicalOutput31506 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31507 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput31507 : ExponentCode := normalNode7740

theorem canonicalSound31507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31507.moment H = canonicalOutput31507.moment H :=
  canonical_of_padded canonicalInput31507 canonicalOutput31507 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31508 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![-1, 1, 1, -1], ![1, -2, 1, 0], ![-1, 1, -2, 2]]⟩

def canonicalOutput31508 : ExponentCode := normalNode6879

theorem canonicalSound31508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31508.moment H = canonicalOutput31508.moment H :=
  canonical_of_padded canonicalInput31508 canonicalOutput31508 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31509 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput31509 : ExponentCode := normalNode3505

theorem canonicalSound31509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31509.moment H = canonicalOutput31509.moment H :=
  canonical_of_padded canonicalInput31509 canonicalOutput31509 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31510 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput31510 : ExponentCode := normalNode9826

theorem canonicalSound31510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31510.moment H = canonicalOutput31510.moment H :=
  canonical_of_padded canonicalInput31510 canonicalOutput31510 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31511 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![-1, 0, 3, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput31511 : ExponentCode := normalNode9832

theorem canonicalSound31511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31511.moment H = canonicalOutput31511.moment H :=
  canonical_of_padded canonicalInput31511 canonicalOutput31511 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31512 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0], ![0, 0, -3, 3], ![-2, 1, 3, -2]]⟩

def canonicalOutput31512 : ExponentCode := normalNode4945

theorem canonicalSound31512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31512.moment H = canonicalOutput31512.moment H :=
  canonical_of_padded canonicalInput31512 canonicalOutput31512 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation327, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31513 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![-1, -1, -1, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput31513 : ExponentCode := normalNode7779

theorem canonicalSound31513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31513.moment H = canonicalOutput31513.moment H :=
  canonical_of_padded canonicalInput31513 canonicalOutput31513 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31514 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![0, -1, -2, 3], ![-2, 1, 3, -2]]⟩

def canonicalOutput31514 : ExponentCode := normalNode4910

theorem canonicalSound31514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31514.moment H = canonicalOutput31514.moment H :=
  canonical_of_padded canonicalInput31514 canonicalOutput31514 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31515 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![0, -1, 3, -2], ![-2, 1, -2, 3]]⟩

def canonicalOutput31515 : ExponentCode := normalNode4912

theorem canonicalSound31515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31515.moment H = canonicalOutput31515.moment H :=
  canonical_of_padded canonicalInput31515 canonicalOutput31515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation395, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31516 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, -1, 0], ![0, 1, 2, -3], ![-2, -1, -1, 4]]⟩

def canonicalOutput31516 : ExponentCode := normalNode1386

theorem canonicalSound31516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31516.moment H = canonicalOutput31516.moment H :=
  canonical_of_padded canonicalInput31516 canonicalOutput31516 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31517 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31517 : ExponentCode := normalNode5667

theorem canonicalSound31517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31517.moment H = canonicalOutput31517.moment H :=
  canonical_of_padded canonicalInput31517 canonicalOutput31517 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31518 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 2, -2, 1]]⟩

def canonicalOutput31518 : ExponentCode := normalNode6904

theorem canonicalSound31518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31518.moment H = canonicalOutput31518.moment H :=
  canonical_of_padded canonicalInput31518 canonicalOutput31518 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31519 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, -1, 3, -1], ![-1, 1, -3, 3]]⟩

def canonicalOutput31519 : ExponentCode := normalNode7809

theorem canonicalSound31519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31519.moment H = canonicalOutput31519.moment H :=
  canonical_of_padded canonicalInput31519 canonicalOutput31519 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation285, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31520 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1], ![-1, 1, 2, -2], ![-1, -1, -2, 4]]⟩

def canonicalOutput31520 : ExponentCode := normalNode7338

theorem canonicalSound31520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31520.moment H = canonicalOutput31520.moment H :=
  canonical_of_padded canonicalInput31520 canonicalOutput31520 (by decide) (by decide)
    ⟨false, false, canonicalPermutation292, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput31521 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -2, 0], ![-2, 0, -1, 3], ![0, -1, 3, -2]]⟩

def canonicalOutput31521 : ExponentCode := normalNode3531

theorem canonicalSound31521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31521.moment H = canonicalOutput31521.moment H :=
  canonical_of_padded canonicalInput31521 canonicalOutput31521 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31522 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -2, 0], ![-1, -1, -1, 3], ![-1, 0, 3, -2]]⟩

def canonicalOutput31522 : ExponentCode := normalNode7752

theorem canonicalSound31522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31522.moment H = canonicalOutput31522.moment H :=
  canonical_of_padded canonicalInput31522 canonicalOutput31522 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31523 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -1, -1], ![-2, 0, 3, -1], ![0, -1, -2, 3]]⟩

def canonicalOutput31523 : ExponentCode := normalNode3524

theorem canonicalSound31523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31523.moment H = canonicalOutput31523.moment H :=
  canonical_of_padded canonicalInput31523 canonicalOutput31523 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31524 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -1, -1], ![-1, -1, 3, -1], ![-1, 0, -2, 3]]⟩

def canonicalOutput31524 : ExponentCode := normalNode7750

theorem canonicalSound31524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31524.moment H = canonicalOutput31524.moment H :=
  canonical_of_padded canonicalInput31524 canonicalOutput31524 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31525 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, -1, 3], ![0, -1, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput31525 : ExponentCode := normalNode3506

theorem canonicalSound31525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31525.moment H = canonicalOutput31525.moment H :=
  canonical_of_padded canonicalInput31525 canonicalOutput31525 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31526 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput31526 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3174⟩

theorem canonicalSound31526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31526.moment H = canonicalOutput31526.moment H :=
  canonical_of_padded canonicalInput31526 canonicalOutput31526 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31527 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput31527 : ExponentCode := normalNode3980

theorem canonicalSound31527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31527.moment H = canonicalOutput31527.moment H :=
  canonical_of_padded canonicalInput31527 canonicalOutput31527 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31528 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 2, -3, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput31528 : ExponentCode := normalNode3704

theorem canonicalSound31528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31528.moment H = canonicalOutput31528.moment H :=
  canonical_of_padded canonicalInput31528 canonicalOutput31528 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31529 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput31529 : ExponentCode := normalNode7741

theorem canonicalSound31529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31529.moment H = canonicalOutput31529.moment H :=
  canonical_of_padded canonicalInput31529 canonicalOutput31529 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31530 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![-1, 1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput31530 : ExponentCode := normalNode7641

theorem canonicalSound31530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31530.moment H = canonicalOutput31530.moment H :=
  canonical_of_padded canonicalInput31530 canonicalOutput31530 (by decide) (by decide)
    ⟨false, false, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput31531 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput31531 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3206⟩

theorem canonicalSound31531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31531.moment H = canonicalOutput31531.moment H :=
  canonical_of_padded canonicalInput31531 canonicalOutput31531 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput31532 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput31532 : ExponentCode := normalNode7722

theorem canonicalSound31532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31532.moment H = canonicalOutput31532.moment H :=
  canonical_of_padded canonicalInput31532 canonicalOutput31532 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput31533 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput31533 : ExponentCode := normalNode2296

theorem canonicalSound31533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31533.moment H = canonicalOutput31533.moment H :=
  canonical_of_padded canonicalInput31533 canonicalOutput31533 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput31534 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput31534 : ExponentCode := normalNode9379

theorem canonicalSound31534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31534.moment H = canonicalOutput31534.moment H :=
  canonical_of_padded canonicalInput31534 canonicalOutput31534 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation291, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput31535 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 2, -1, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput31535 : ExponentCode := normalNode6638

theorem canonicalSound31535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31535.moment H = canonicalOutput31535.moment H :=
  canonical_of_padded canonicalInput31535 canonicalOutput31535 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31536 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 2, -2, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput31536 : ExponentCode := normalNode6842

theorem canonicalSound31536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31536.moment H = canonicalOutput31536.moment H :=
  canonical_of_padded canonicalInput31536 canonicalOutput31536 (by decide) (by decide)
    ⟨false, false, canonicalPermutation89, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput31537 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, -1, 2], ![-1, 2, -1, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput31537 : ExponentCode := normalNode5620

theorem canonicalSound31537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31537.moment H = canonicalOutput31537.moment H :=
  canonical_of_padded canonicalInput31537 canonicalOutput31537 (by decide) (by decide)
    ⟨false, true, canonicalPermutation209, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput31538 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 1, 0], ![1, 1, -1, -1], ![-1, -1, -1, 3]]⟩

def canonicalOutput31538 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3356⟩

theorem canonicalSound31538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31538.moment H = canonicalOutput31538.moment H :=
  canonical_of_padded canonicalInput31538 canonicalOutput31538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31539 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![1, 1, -2, 0], ![-1, -1, -1, 3]]⟩

def canonicalOutput31539 : ExponentCode := normalNode7741

theorem canonicalSound31539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31539.moment H = canonicalOutput31539.moment H :=
  canonical_of_padded canonicalInput31539 canonicalOutput31539 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31540 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![1, 1, -1, -1], ![-1, -1, -2, 4]]⟩

def canonicalOutput31540 : ExponentCode := normalNode7313

theorem canonicalSound31540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31540.moment H = canonicalOutput31540.moment H :=
  canonical_of_padded canonicalInput31540 canonicalOutput31540 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31541 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, 0, 0], ![1, -2, 1, 0], ![-1, 1, -2, 2]]⟩

def canonicalOutput31541 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3093⟩

theorem canonicalSound31541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31541.moment H = canonicalOutput31541.moment H :=
  canonical_of_padded canonicalInput31541 canonicalOutput31541 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation379, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput31542 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![1, -2, 0, 1], ![-1, 1, -2, 2]]⟩

def canonicalOutput31542 : ExponentCode := normalNode2746

theorem canonicalSound31542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31542.moment H = canonicalOutput31542.moment H :=
  canonical_of_padded canonicalInput31542 canonicalOutput31542 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation352, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput31543 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, 1, -1], ![1, -2, 1, 0], ![-1, 1, -3, 3]]⟩

def canonicalOutput31543 : ExponentCode := normalNode6051

theorem canonicalSound31543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31543.moment H = canonicalOutput31543.moment H :=
  canonical_of_padded canonicalInput31543 canonicalOutput31543 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation377, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31544 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 1, 0], ![1, 1, -1, -1], ![-2, 0, -1, 3]]⟩

def canonicalOutput31544 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3013⟩

theorem canonicalSound31544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31544.moment H = canonicalOutput31544.moment H :=
  canonical_of_padded canonicalInput31544 canonicalOutput31544 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation344, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31545 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, 1, -2, 0], ![-2, 0, -1, 3]]⟩

def canonicalOutput31545 : ExponentCode := normalNode3506

theorem canonicalSound31545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31545.moment H = canonicalOutput31545.moment H :=
  canonical_of_padded canonicalInput31545 canonicalOutput31545 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31546 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, 1, -1, -1], ![-2, 0, -2, 4]]⟩

def canonicalOutput31546 : ExponentCode := normalNode3233

theorem canonicalSound31546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31546.moment H = canonicalOutput31546.moment H :=
  canonical_of_padded canonicalInput31546 canonicalOutput31546 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31547 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -2, 0, 1], ![-1, 1, 2, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput31547 : ExponentCode := normalNode6083

theorem canonicalSound31547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31547.moment H = canonicalOutput31547.moment H :=
  canonical_of_padded canonicalInput31547 canonicalOutput31547 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput31548 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-1, 0, -2, 3], ![-1, 1, 2, -2]]⟩

def canonicalOutput31548 : ExponentCode := normalNode9826

theorem canonicalSound31548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31548.moment H = canonicalOutput31548.moment H :=
  canonical_of_padded canonicalInput31548 canonicalOutput31548 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation295, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput31549 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![-1, 0, 3, -2], ![-1, 1, -3, 3]]⟩

def canonicalOutput31549 : ExponentCode := normalNode9832

theorem canonicalSound31549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31549.moment H = canonicalOutput31549.moment H :=
  canonical_of_padded canonicalInput31549 canonicalOutput31549 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31550 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -1, 1], ![0, 0, -3, 3], ![-2, 1, 3, -2]]⟩

def canonicalOutput31550 : ExponentCode := normalNode4945

theorem canonicalSound31550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31550.moment H = canonicalOutput31550.moment H :=
  canonical_of_padded canonicalInput31550 canonicalOutput31550 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput31551 : ExponentCode := ⟨6, 4, ![![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 0, -3, 4], ![-1, 1, 2, -2]]⟩

def canonicalOutput31551 : ExponentCode := normalNode9634

theorem canonicalSound31551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput31551.moment H = canonicalOutput31551.moment H :=
  canonical_of_padded canonicalInput31551 canonicalOutput31551 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
