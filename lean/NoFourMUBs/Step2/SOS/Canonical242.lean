import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15488 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -2, 4], ![0, 0, 0, 2, -2], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15488 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1548⟩

theorem canonicalSound15488 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15488.moment H = canonicalOutput15488.moment H :=
  canonical_of_padded canonicalInput15488 canonicalOutput15488 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15489 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -2, 4], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15489 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node915⟩

theorem canonicalSound15489 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15489.moment H = canonicalOutput15489.moment H :=
  canonical_of_padded canonicalInput15489 canonicalOutput15489 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15490 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -2, 4], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15490 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2401⟩

theorem canonicalSound15490 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15490.moment H = canonicalOutput15490.moment H :=
  canonical_of_padded canonicalInput15490 canonicalOutput15490 (by decide) (by decide)
    ⟨true, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput15491 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -2, 4], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15491 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2400⟩

theorem canonicalSound15491 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15491.moment H = canonicalOutput15491.moment H :=
  canonical_of_padded canonicalInput15491 canonicalOutput15491 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15492 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -2, 4], ![0, 0, 1, 2, -3], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15492 : ExponentCode := normalNode9695

theorem canonicalSound15492 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15492.moment H = canonicalOutput15492.moment H :=
  canonical_of_padded canonicalInput15492 canonicalOutput15492 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15493 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, -1, 2, 0], ![0, 1, 1, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15493 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1652⟩

theorem canonicalSound15493 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15493.moment H = canonicalOutput15493.moment H :=
  canonical_of_padded canonicalInput15493 canonicalOutput15493 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15494 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, -1, 2, 0], ![0, 2, 0, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15494 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound15494 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15494.moment H = canonicalOutput15494.moment H :=
  canonical_of_padded canonicalInput15494 canonicalOutput15494 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15495 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 0, 2, -2, 0], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput15495 : ExponentCode := normalNode1743

theorem canonicalSound15495 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15495.moment H = canonicalOutput15495.moment H :=
  canonical_of_padded canonicalInput15495 canonicalOutput15495 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15496 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15496 : ExponentCode := normalNode3392

theorem canonicalSound15496 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15496.moment H = canonicalOutput15496.moment H :=
  canonical_of_padded canonicalInput15496 canonicalOutput15496 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15497 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15497 : ExponentCode := normalNode7685

theorem canonicalSound15497 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15497.moment H = canonicalOutput15497.moment H :=
  canonical_of_padded canonicalInput15497 canonicalOutput15497 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15498 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 1, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15498 : ExponentCode := normalNode3398

theorem canonicalSound15498 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15498.moment H = canonicalOutput15498.moment H :=
  canonical_of_padded canonicalInput15498 canonicalOutput15498 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15499 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 2, -2, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15499 : ExponentCode := normalNode7669

theorem canonicalSound15499 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15499.moment H = canonicalOutput15499.moment H :=
  canonical_of_padded canonicalInput15499 canonicalOutput15499 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15500 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, -1, 3, -1], ![0, 1, 2, -1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15500 : ExponentCode := normalNode7747

theorem canonicalSound15500 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15500.moment H = canonicalOutput15500.moment H :=
  canonical_of_padded canonicalInput15500 canonicalOutput15500 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation194, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput15501 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, -1, 3, -1], ![1, 1, 0, -2, 0], ![0, 1, 1, 0, -2]]⟩

def canonicalOutput15501 : ExponentCode := normalNode3398

theorem canonicalSound15501 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15501.moment H = canonicalOutput15501.moment H :=
  canonical_of_padded canonicalInput15501 canonicalOutput15501 (by decide) (by decide)
    ⟨true, false, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15502 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, -1, 0, 2, -1], ![0, 0, 1, 0, -1], ![0, 2, 0, -1, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput15502 : ExponentCode := normalNode10013

theorem canonicalSound15502 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15502.moment H = canonicalOutput15502.moment H :=
  canonical_of_padded canonicalInput15502 canonicalOutput15502 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15503 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, 0, 2, -1], ![0, 1, 1, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15503 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1690⟩

theorem canonicalSound15503 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15503.moment H = canonicalOutput15503.moment H :=
  canonical_of_padded canonicalInput15503 canonicalOutput15503 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15504 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, 0, 2, -1], ![0, 2, -1, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15504 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound15504 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15504.moment H = canonicalOutput15504.moment H :=
  canonical_of_padded canonicalInput15504 canonicalOutput15504 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15505 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, 0, 3, -2], ![0, 1, 1, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15505 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩

theorem canonicalSound15505 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15505.moment H = canonicalOutput15505.moment H :=
  canonical_of_padded canonicalInput15505 canonicalOutput15505 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15506 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, 1, 2, -2], ![0, 2, 1, -1, -2], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput15506 : ExponentCode := normalNode4258

theorem canonicalSound15506 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15506.moment H = canonicalOutput15506.moment H :=
  canonical_of_padded canonicalInput15506 canonicalOutput15506 (by decide) (by decide)
    ⟨true, false, canonicalPermutation32, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput15507 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, 2, -1, 0], ![0, 0, -2, 3, -1], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput15507 : ExponentCode := normalNode3713

theorem canonicalSound15507 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15507.moment H = canonicalOutput15507.moment H :=
  canonical_of_padded canonicalInput15507 canonicalOutput15507 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15508 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, 2, -1, 0], ![0, 1, -2, 2, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15508 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1944⟩

theorem canonicalSound15508 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15508.moment H = canonicalOutput15508.moment H :=
  canonical_of_padded canonicalInput15508 canonicalOutput15508 (by decide) (by decide)
    ⟨true, false, canonicalPermutation56, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15509 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, 2, 0, -1], ![0, 0, -2, 3, -1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput15509 : ExponentCode := normalNode3969

theorem canonicalSound15509 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15509.moment H = canonicalOutput15509.moment H :=
  canonical_of_padded canonicalInput15509 canonicalOutput15509 (by decide) (by decide)
    ⟨true, true, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15510 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, -1, 2, 0, -1], ![0, 1, -2, 3, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15510 : ExponentCode := normalNode3542

theorem canonicalSound15510 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15510.moment H = canonicalOutput15510.moment H :=
  canonical_of_padded canonicalInput15510 canonicalOutput15510 (by decide) (by decide)
    ⟨true, false, canonicalPermutation52, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput15511 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 2, 0], ![0, 0, 1, 1, -2], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput15511 : ExponentCode := normalNode2735

theorem canonicalSound15511 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15511.moment H = canonicalOutput15511.moment H :=
  canonical_of_padded canonicalInput15511 canonicalOutput15511 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15512 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 2, 0], ![0, 0, 2, -1, -1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15512 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1654⟩

theorem canonicalSound15512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15512.moment H = canonicalOutput15512.moment H :=
  canonical_of_padded canonicalInput15512 canonicalOutput15512 (by decide) (by decide)
    ⟨true, false, canonicalPermutation46, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15513 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 2, 0], ![0, 0, 2, 0, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15513 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1650⟩

theorem canonicalSound15513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15513.moment H = canonicalOutput15513.moment H :=
  canonical_of_padded canonicalInput15513 canonicalOutput15513 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15514 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 2, 0], ![0, 1, 0, -1, 0], ![1, 0, 2, 0, -3]]⟩

def canonicalOutput15514 : ExponentCode := normalNode10701

theorem canonicalSound15514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15514.moment H = canonicalOutput15514.moment H :=
  canonical_of_padded canonicalInput15514 canonicalOutput15514 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15515 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -2, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput15515 : ExponentCode := normalNode5496

theorem canonicalSound15515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15515.moment H = canonicalOutput15515.moment H :=
  canonical_of_padded canonicalInput15515 canonicalOutput15515 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15516 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15516 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound15516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15516.moment H = canonicalOutput15516.moment H :=
  canonical_of_padded canonicalInput15516 canonicalOutput15516 (by decide) (by decide)
    ⟨true, false, canonicalPermutation74, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput15517 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15517 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound15517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15517.moment H = canonicalOutput15517.moment H :=
  canonical_of_padded canonicalInput15517 canonicalOutput15517 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15518 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 2, 0], ![0, 1, 2, -2, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15518 : ExponentCode := normalNode2475

theorem canonicalSound15518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15518.moment H = canonicalOutput15518.moment H :=
  canonical_of_padded canonicalInput15518 canonicalOutput15518 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15519 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 0, 1, -1, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput15519 : ExponentCode := normalNode7830

theorem canonicalSound15519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15519.moment H = canonicalOutput15519.moment H :=
  canonical_of_padded canonicalInput15519 canonicalOutput15519 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15520 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 0, 1, 0, -1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput15520 : ExponentCode := normalNode7835

theorem canonicalSound15520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15520.moment H = canonicalOutput15520.moment H :=
  canonical_of_padded canonicalInput15520 canonicalOutput15520 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15521 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 0, 2, -2, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15521 : ExponentCode := normalNode3388

theorem canonicalSound15521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15521.moment H = canonicalOutput15521.moment H :=
  canonical_of_padded canonicalInput15521 canonicalOutput15521 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15522 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 0, 2, -1, -1], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15522 : ExponentCode := normalNode3912

theorem canonicalSound15522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15522.moment H = canonicalOutput15522.moment H :=
  canonical_of_padded canonicalInput15522 canonicalOutput15522 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15523 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 0, 2, 0, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15523 : ExponentCode := normalNode3395

theorem canonicalSound15523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15523.moment H = canonicalOutput15523.moment H :=
  canonical_of_padded canonicalInput15523 canonicalOutput15523 (by decide) (by decide)
    ⟨true, false, canonicalPermutation59, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15524 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, 2, 0, -2]]⟩

def canonicalOutput15524 : ExponentCode := normalNode7525

theorem canonicalSound15524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15524.moment H = canonicalOutput15524.moment H :=
  canonical_of_padded canonicalInput15524 canonicalOutput15524 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput15525 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput15525 : ExponentCode := normalNode8747

theorem canonicalSound15525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15525.moment H = canonicalOutput15525.moment H :=
  canonical_of_padded canonicalInput15525 canonicalOutput15525 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput15526 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15526 : ExponentCode := normalNode8000

theorem canonicalSound15526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15526.moment H = canonicalOutput15526.moment H :=
  canonical_of_padded canonicalInput15526 canonicalOutput15526 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation180⟩ (by decide +kernel) hH

def canonicalInput15527 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput15527 : ExponentCode := normalNode7834

theorem canonicalSound15527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15527.moment H = canonicalOutput15527.moment H :=
  canonical_of_padded canonicalInput15527 canonicalOutput15527 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15528 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 2, -2, 0]]⟩

def canonicalOutput15528 : ExponentCode := normalNode7520

theorem canonicalSound15528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15528.moment H = canonicalOutput15528.moment H :=
  canonical_of_padded canonicalInput15528 canonicalOutput15528 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput15529 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15529 : ExponentCode := normalNode8001

theorem canonicalSound15529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15529.moment H = canonicalOutput15529.moment H :=
  canonical_of_padded canonicalInput15529 canonicalOutput15529 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation19⟩ (by decide +kernel) hH

def canonicalInput15530 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, 0, -1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput15530 : ExponentCode := normalNode7817

theorem canonicalSound15530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15530.moment H = canonicalOutput15530.moment H :=
  canonical_of_padded canonicalInput15530 canonicalOutput15530 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15531 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, -2, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15531 : ExponentCode := normalNode8039

theorem canonicalSound15531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15531.moment H = canonicalOutput15531.moment H :=
  canonical_of_padded canonicalInput15531 canonicalOutput15531 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15532 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15532 : ExponentCode := normalNode3391

theorem canonicalSound15532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15532.moment H = canonicalOutput15532.moment H :=
  canonical_of_padded canonicalInput15532 canonicalOutput15532 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15533 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, -1, -1], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15533 : ExponentCode := normalNode8000

theorem canonicalSound15533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15533.moment H = canonicalOutput15533.moment H :=
  canonical_of_padded canonicalInput15533 canonicalOutput15533 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation194⟩ (by decide +kernel) hH

def canonicalInput15534 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, -1, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15534 : ExponentCode := normalNode8001

theorem canonicalSound15534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15534.moment H = canonicalOutput15534.moment H :=
  canonical_of_padded canonicalInput15534 canonicalOutput15534 (by decide) (by decide)
    ⟨true, false, canonicalPermutation51, canonicalPermutation23⟩ (by decide +kernel) hH

def canonicalInput15535 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, -1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15535 : ExponentCode := normalNode7684

theorem canonicalSound15535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15535.moment H = canonicalOutput15535.moment H :=
  canonical_of_padded canonicalInput15535 canonicalOutput15535 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15536 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, 0, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15536 : ExponentCode := normalNode3391

theorem canonicalSound15536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15536.moment H = canonicalOutput15536.moment H :=
  canonical_of_padded canonicalInput15536 canonicalOutput15536 (by decide) (by decide)
    ⟨true, false, canonicalPermutation75, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput15537 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 2, -2, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15537 : ExponentCode := normalNode7817

theorem canonicalSound15537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15537.moment H = canonicalOutput15537.moment H :=
  canonical_of_padded canonicalInput15537 canonicalOutput15537 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15538 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 2, 1, -2, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15538 : ExponentCode := normalNode7746

theorem canonicalSound15538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15538.moment H = canonicalOutput15538.moment H :=
  canonical_of_padded canonicalInput15538 canonicalOutput15538 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15539 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 2, 1, -1, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15539 : ExponentCode := normalNode7668

theorem canonicalSound15539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15539.moment H = canonicalOutput15539.moment H :=
  canonical_of_padded canonicalInput15539 canonicalOutput15539 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation190, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput15540 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![1, -1, 2, -2, 0], ![0, 2, 0, 0, -2]]⟩

def canonicalOutput15540 : ExponentCode := normalNode1640

theorem canonicalSound15540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15540.moment H = canonicalOutput15540.moment H :=
  canonical_of_padded canonicalInput15540 canonicalOutput15540 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15541 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 1, 0], ![0, 0, 1, 1, -2], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15541 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2640⟩

theorem canonicalSound15541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15541.moment H = canonicalOutput15541.moment H :=
  canonical_of_padded canonicalInput15541 canonicalOutput15541 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15542 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 1, 0], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15542 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2627⟩

theorem canonicalSound15542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15542.moment H = canonicalOutput15542.moment H :=
  canonical_of_padded canonicalInput15542 canonicalOutput15542 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15543 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 0, 1, -1, 0], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15543 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2812⟩

theorem canonicalSound15543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15543.moment H = canonicalOutput15543.moment H :=
  canonical_of_padded canonicalInput15543 canonicalOutput15543 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15544 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 0, 1, 1, -2], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15544 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩

theorem canonicalSound15544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15544.moment H = canonicalOutput15544.moment H :=
  canonical_of_padded canonicalInput15544 canonicalOutput15544 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15545 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 0, 2, -2, 0], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput15545 : ExponentCode := normalNode5516

theorem canonicalSound15545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15545.moment H = canonicalOutput15545.moment H :=
  canonical_of_padded canonicalInput15545 canonicalOutput15545 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15546 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15546 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2064⟩

theorem canonicalSound15546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15546.moment H = canonicalOutput15546.moment H :=
  canonical_of_padded canonicalInput15546 canonicalOutput15546 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput15547 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 0, 2, 0, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15547 : ExponentCode := normalNode2004

theorem canonicalSound15547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15547.moment H = canonicalOutput15547.moment H :=
  canonical_of_padded canonicalInput15547 canonicalOutput15547 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15548 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15548 : ExponentCode := normalNode8737

theorem canonicalSound15548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15548.moment H = canonicalOutput15548.moment H :=
  canonical_of_padded canonicalInput15548 canonicalOutput15548 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15549 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15549 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2750⟩

theorem canonicalSound15549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15549.moment H = canonicalOutput15549.moment H :=
  canonical_of_padded canonicalInput15549 canonicalOutput15549 (by decide) (by decide)
    ⟨true, true, canonicalPermutation41, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput15550 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15550 : ExponentCode := normalNode7523

theorem canonicalSound15550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15550.moment H = canonicalOutput15550.moment H :=
  canonical_of_padded canonicalInput15550 canonicalOutput15550 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput15551 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15551 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2532⟩

theorem canonicalSound15551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15551.moment H = canonicalOutput15551.moment H :=
  canonical_of_padded canonicalInput15551 canonicalOutput15551 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
