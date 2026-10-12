import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput512 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, 0, 0, 0], ![1, -2, 0, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput512 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound512 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput512.moment H = canonicalOutput512.moment H :=
  canonical_of_padded canonicalInput512 canonicalOutput512 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation169, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput513 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput513 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2075⟩

theorem canonicalSound513 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput513.moment H = canonicalOutput513.moment H :=
  canonical_of_padded canonicalInput513 canonicalOutput513 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput514 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput514 : ExponentCode := normalNode4526

theorem canonicalSound514 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput514.moment H = canonicalOutput514.moment H :=
  canonical_of_padded canonicalInput514 canonicalOutput514 (by decide) (by decide)
    ⟨false, false, canonicalPermutation55, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput515 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![0, 1, 0, -1], ![1, -2, 1, 0], ![1, 0, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput515 : ExponentCode := normalNode4217

theorem canonicalSound515 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput515.moment H = canonicalOutput515.moment H :=
  canonical_of_padded canonicalInput515 canonicalOutput515 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput516 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![0, 1, 0, -1], ![1, 1, -3, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput516 : ExponentCode := normalNode9033

theorem canonicalSound516 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput516.moment H = canonicalOutput516.moment H :=
  canonical_of_padded canonicalInput516 canonicalOutput516 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput517 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![0, 2, -3, 1], ![3, -2, 2, -3]]⟩

def canonicalOutput517 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node96⟩

theorem canonicalSound517 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput517.moment H = canonicalOutput517.moment H :=
  canonical_of_padded canonicalInput517 canonicalOutput517 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput518 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![0, 2, 1, -3], ![3, -2, -2, 1]]⟩

def canonicalOutput518 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound518 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput518.moment H = canonicalOutput518.moment H :=
  canonical_of_padded canonicalInput518 canonicalOutput518 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput519 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![0, 3, -3, 0], ![3, -3, 2, -2]]⟩

def canonicalOutput519 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node91⟩

theorem canonicalSound519 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput519.moment H = canonicalOutput519.moment H :=
  canonical_of_padded canonicalInput519 canonicalOutput519 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput520 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![0, 3, 1, -4], ![3, -3, -2, 2]]⟩

def canonicalOutput520 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code59

theorem canonicalSound520 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput520.moment H = canonicalOutput520.moment H :=
  canonical_of_padded canonicalInput520 canonicalOutput520 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput521 : ExponentCode := ⟨5, 4, ![![-3, 0, 1, 2], ![1, -3, 1, 1], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput521 : ExponentCode := normalNode153

theorem canonicalSound521 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput521.moment H = canonicalOutput521.moment H :=
  canonical_of_padded canonicalInput521 canonicalOutput521 (by decide) (by decide)
    ⟨false, false, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput522 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![1, -3, 1, 1], ![1, 1, -2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput522 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code934

theorem canonicalSound522 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput522.moment H = canonicalOutput522.moment H :=
  canonical_of_padded canonicalInput522 canonicalOutput522 (by decide) (by decide)
    ⟨false, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput523 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![1, -3, 1, 1], ![1, 2, -3, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput523 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code50

theorem canonicalSound523 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput523.moment H = canonicalOutput523.moment H :=
  canonical_of_padded canonicalInput523 canonicalOutput523 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput524 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![1, -3, 1, 1], ![2, 3, -2, -3]]⟩

def canonicalOutput524 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node100⟩

theorem canonicalSound524 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput524.moment H = canonicalOutput524.moment H :=
  canonical_of_padded canonicalInput524 canonicalOutput524 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput525 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![1, -3, 2, 0], ![2, 3, -3, -2]]⟩

def canonicalOutput525 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node96⟩

theorem canonicalSound525 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput525.moment H = canonicalOutput525.moment H :=
  canonical_of_padded canonicalInput525 canonicalOutput525 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput526 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![1, -3, 3, -1], ![2, 3, -4, -1]]⟩

def canonicalOutput526 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code70

theorem canonicalSound526 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput526.moment H = canonicalOutput526.moment H :=
  canonical_of_padded canonicalInput526 canonicalOutput526 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput527 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![1, -2, 0, 1], ![1, 0, 2, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput527 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code441

theorem canonicalSound527 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput527.moment H = canonicalOutput527.moment H :=
  canonical_of_padded canonicalInput527 canonicalOutput527 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput528 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![1, -2, 0, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput528 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound528 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput528.moment H = canonicalOutput528.moment H :=
  canonical_of_padded canonicalInput528 canonicalOutput528 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput529 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![1, -2, 0, 1], ![1, 1, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput529 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound529 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput529.moment H = canonicalOutput529.moment H :=
  canonical_of_padded canonicalInput529 canonicalOutput529 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput530 : ExponentCode := ⟨4, 4, ![![-3, 0, 1, 2], ![1, -1, 1, -1], ![1, -1, 1, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput530 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code768

theorem canonicalSound530 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput530.moment H = canonicalOutput530.moment H :=
  canonical_of_padded canonicalInput530 canonicalOutput530 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput531 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![1, 2, -4, 1], ![2, -2, 3, -3]]⟩

def canonicalOutput531 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code78

theorem canonicalSound531 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput531.moment H = canonicalOutput531.moment H :=
  canonical_of_padded canonicalInput531 canonicalOutput531 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput532 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![1, 2, 1, -4], ![2, -2, -2, 2]]⟩

def canonicalOutput532 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound532 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput532.moment H = canonicalOutput532.moment H :=
  canonical_of_padded canonicalInput532 canonicalOutput532 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput533 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![1, 3, -4, 0], ![2, -3, 3, -2]]⟩

def canonicalOutput533 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code83

theorem canonicalSound533 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput533.moment H = canonicalOutput533.moment H :=
  canonical_of_padded canonicalInput533 canonicalOutput533 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput534 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![1, 3, -3, -1], ![2, -3, 2, -1]]⟩

def canonicalOutput534 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound534 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput534.moment H = canonicalOutput534.moment H :=
  canonical_of_padded canonicalInput534 canonicalOutput534 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput535 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![2, -4, 1, 1], ![1, 4, -2, -3]]⟩

def canonicalOutput535 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code92

theorem canonicalSound535 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput535.moment H = canonicalOutput535.moment H :=
  canonical_of_padded canonicalInput535 canonicalOutput535 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput536 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![2, -3, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput536 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput536.moment H = canonicalOutput536.moment H :=
  canonical_of_padded canonicalInput536 canonicalOutput536 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput537 : ExponentCode := ⟨3, 4, ![![-3, 0, 1, 2], ![2, -2, 2, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput537 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput537.moment H = canonicalOutput537.moment H :=
  canonical_of_padded canonicalInput537 canonicalOutput537 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput538 : ExponentCode := ⟨3, 5, ![![-3, 0, 1, 2, 0], ![0, 2, -2, -1, 1], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput538 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node345⟩

theorem canonicalSound538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput538.moment H = canonicalOutput538.moment H :=
  canonical_of_padded canonicalInput538 canonicalOutput538 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput539 : ExponentCode := ⟨3, 5, ![![-3, 0, 1, 2, 0], ![1, -2, 1, -1, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput539 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node356⟩

theorem canonicalSound539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput539.moment H = canonicalOutput539.moment H :=
  canonical_of_padded canonicalInput539 canonicalOutput539 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput540 : ExponentCode := ⟨3, 5, ![![-3, 0, 1, 2, 0], ![1, 2, -2, 0, -1], ![2, -2, 1, -2, 1]]⟩

def canonicalOutput540 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node367⟩

theorem canonicalSound540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput540.moment H = canonicalOutput540.moment H :=
  canonical_of_padded canonicalInput540 canonicalOutput540 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput541 : ExponentCode := ⟨3, 5, ![![-3, 0, 1, 2, 0], ![2, -2, 1, 0, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput541 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node379⟩

theorem canonicalSound541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput541.moment H = canonicalOutput541.moment H :=
  canonical_of_padded canonicalInput541 canonicalOutput541 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput542 : ExponentCode := ⟨6, 6, ![![-3, 0, 1, 2, 0, 0], ![0, 0, 1, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput542 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput542.moment H = canonicalOutput542.moment H :=
  canonical_of_padded canonicalInput542 canonicalOutput542 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation305, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput543 : ExponentCode := ⟨6, 6, ![![-3, 0, 1, 2, 0, 0], ![0, 0, 1, -1, 0, 0], ![3, 0, -2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput543 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput543.moment H = canonicalOutput543.moment H :=
  canonical_of_padded canonicalInput543 canonicalOutput543 (by decide) (by decide)
    ⟨true, false, canonicalPermutation57, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput544 : ExponentCode := ⟨6, 6, ![![-3, 0, 1, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 3, -2, -1, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput544 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code431

theorem canonicalSound544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput544.moment H = canonicalOutput544.moment H :=
  canonical_of_padded canonicalInput544 canonicalOutput544 (by decide) (by decide)
    ⟨false, false, canonicalPermutation5, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput545 : ExponentCode := ⟨6, 6, ![![-3, 0, 1, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, 0, -1, 0, 0], ![2, -1, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput545 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput545.moment H = canonicalOutput545.moment H :=
  canonical_of_padded canonicalInput545 canonicalOutput545 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation308, canonicalPermutation11⟩ (by decide +kernel) hH

def canonicalInput546 : ExponentCode := ⟨6, 6, ![![-3, 0, 1, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![2, -1, 0, -1, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput546 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput546.moment H = canonicalOutput546.moment H :=
  canonical_of_padded canonicalInput546 canonicalOutput546 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation309, canonicalPermutation11⟩ (by decide +kernel) hH

def canonicalInput547 : ExponentCode := ⟨6, 6, ![![-3, 0, 1, 2, 0, 0], ![1, -2, 1, 0, 0, 0], ![3, 0, -2, -1, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput547 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput547.moment H = canonicalOutput547.moment H :=
  canonical_of_padded canonicalInput547 canonicalOutput547 (by decide) (by decide)
    ⟨false, false, canonicalPermutation5, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput548 : ExponentCode := ⟨6, 6, ![![-3, 0, 1, 2, 0, 0], ![3, -3, 1, -1, 0, 0], ![0, 3, -2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput548 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput548.moment H = canonicalOutput548.moment H :=
  canonical_of_padded canonicalInput548 canonicalOutput548 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation294, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput549 : ExponentCode := ⟨6, 6, ![![-3, 0, 1, 2, 0, 0], ![3, -3, 1, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 2, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput549 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput549.moment H = canonicalOutput549.moment H :=
  canonical_of_padded canonicalInput549 canonicalOutput549 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation296, canonicalPermutation11⟩ (by decide +kernel) hH

def canonicalInput550 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![-2, 2, -2, 2], ![5, -2, 0, -3]]⟩

def canonicalOutput550 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code24

theorem canonicalSound550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput550.moment H = canonicalOutput550.moment H :=
  canonical_of_padded canonicalInput550 canonicalOutput550 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput551 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![-2, 2, 1, -1], ![5, -2, -3, 0]]⟩

def canonicalOutput551 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node73⟩

theorem canonicalSound551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput551.moment H = canonicalOutput551.moment H :=
  canonical_of_padded canonicalInput551 canonicalOutput551 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput552 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![-2, 3, -2, 1], ![5, -3, 0, -2]]⟩

def canonicalOutput552 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code25

theorem canonicalSound552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput552.moment H = canonicalOutput552.moment H :=
  canonical_of_padded canonicalInput552 canonicalOutput552 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput553 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![-1, -2, 2, 1], ![4, 2, -4, -2]]⟩

def canonicalOutput553 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code33

theorem canonicalSound553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput553.moment H = canonicalOutput553.moment H :=
  canonical_of_padded canonicalInput553 canonicalOutput553 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput554 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![-1, 2, -3, 2], ![4, -2, 1, -3]]⟩

def canonicalOutput554 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code39

theorem canonicalSound554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput554.moment H = canonicalOutput554.moment H :=
  canonical_of_padded canonicalInput554 canonicalOutput554 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput555 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![-1, 3, -3, 1], ![4, -3, 1, -2]]⟩

def canonicalOutput555 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code41

theorem canonicalSound555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput555.moment H = canonicalOutput555.moment H :=
  canonical_of_padded canonicalInput555 canonicalOutput555 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput556 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![-1, 3, -2, 0], ![4, -3, 0, -1]]⟩

def canonicalOutput556 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node88⟩

theorem canonicalSound556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput556.moment H = canonicalOutput556.moment H :=
  canonical_of_padded canonicalInput556 canonicalOutput556 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput557 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![-1, 3, -1, -1], ![4, -3, -1, 0]]⟩

def canonicalOutput557 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput557.moment H = canonicalOutput557.moment H :=
  canonical_of_padded canonicalInput557 canonicalOutput557 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput558 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![-1, 4, -2, -1], ![4, -4, 0, 0]]⟩

def canonicalOutput558 : ExponentCode := normalNode141

theorem canonicalSound558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput558.moment H = canonicalOutput558.moment H :=
  canonical_of_padded canonicalInput558 canonicalOutput558 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput559 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![-1, 4, -1, -2], ![4, -4, -1, 1]]⟩

def canonicalOutput559 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code43

theorem canonicalSound559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput559.moment H = canonicalOutput559.moment H :=
  canonical_of_padded canonicalInput559 canonicalOutput559 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput560 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![0, -2, -1, 3], ![3, 2, -1, -4]]⟩

def canonicalOutput560 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node86⟩

theorem canonicalSound560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput560.moment H = canonicalOutput560.moment H :=
  canonical_of_padded canonicalInput560 canonicalOutput560 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput561 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![0, 2, -3, 1], ![3, -2, 1, -2]]⟩

def canonicalOutput561 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput561.moment H = canonicalOutput561.moment H :=
  canonical_of_padded canonicalInput561 canonicalOutput561 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput562 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![0, 2, -1, -1], ![3, -2, -1, 0]]⟩

def canonicalOutput562 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node215⟩

theorem canonicalSound562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput562.moment H = canonicalOutput562.moment H :=
  canonical_of_padded canonicalInput562 canonicalOutput562 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput563 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![0, 3, -4, 1], ![3, -3, 2, -2]]⟩

def canonicalOutput563 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code59

theorem canonicalSound563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput563.moment H = canonicalOutput563.moment H :=
  canonical_of_padded canonicalInput563 canonicalOutput563 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput564 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![0, 3, -2, -1], ![3, -3, 0, 0]]⟩

def canonicalOutput564 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node93⟩

theorem canonicalSound564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput564.moment H = canonicalOutput564.moment H :=
  canonical_of_padded canonicalInput564 canonicalOutput564 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput565 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![0, 3, 0, -3], ![3, -3, -2, 2]]⟩

def canonicalOutput565 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node91⟩

theorem canonicalSound565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput565.moment H = canonicalOutput565.moment H :=
  canonical_of_padded canonicalInput565 canonicalOutput565 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput566 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![1, -3, 1, 1], ![2, 3, -3, -2]]⟩

def canonicalOutput566 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node100⟩

theorem canonicalSound566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput566.moment H = canonicalOutput566.moment H :=
  canonical_of_padded canonicalInput566 canonicalOutput566 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput567 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![1, -2, -2, 3], ![2, 2, 0, -4]]⟩

def canonicalOutput567 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node104⟩

theorem canonicalSound567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput567.moment H = canonicalOutput567.moment H :=
  canonical_of_padded canonicalInput567 canonicalOutput567 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput568 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![1, -2, -1, 2], ![2, 2, -1, -3]]⟩

def canonicalOutput568 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput568.moment H = canonicalOutput568.moment H :=
  canonical_of_padded canonicalInput568 canonicalOutput568 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput569 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![1, -2, 1, 0], ![2, 2, -3, -1]]⟩

def canonicalOutput569 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node209⟩

theorem canonicalSound569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput569.moment H = canonicalOutput569.moment H :=
  canonical_of_padded canonicalInput569 canonicalOutput569 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput570 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![1, -2, 2, -1], ![2, 2, -4, 0]]⟩

def canonicalOutput570 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node102⟩

theorem canonicalSound570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput570.moment H = canonicalOutput570.moment H :=
  canonical_of_padded canonicalInput570 canonicalOutput570 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput571 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![1, -2, 3, -2], ![2, 2, -5, 1]]⟩

def canonicalOutput571 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code75

theorem canonicalSound571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput571.moment H = canonicalOutput571.moment H :=
  canonical_of_padded canonicalInput571 canonicalOutput571 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput572 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![1, 2, -4, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput572 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node112⟩

theorem canonicalSound572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput572.moment H = canonicalOutput572.moment H :=
  canonical_of_padded canonicalInput572 canonicalOutput572 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput573 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![1, 2, -3, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput573 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node107⟩

theorem canonicalSound573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput573.moment H = canonicalOutput573.moment H :=
  canonical_of_padded canonicalInput573 canonicalOutput573 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput574 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![1, 2, 0, -3], ![2, -2, -2, 2]]⟩

def canonicalOutput574 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node110⟩

theorem canonicalSound574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput574.moment H = canonicalOutput574.moment H :=
  canonical_of_padded canonicalInput574 canonicalOutput574 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput575 : ExponentCode := ⟨3, 4, ![![-3, 0, 2, 1], ![1, 3, -1, -3], ![2, -3, -1, 2]]⟩

def canonicalOutput575 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput575.moment H = canonicalOutput575.moment H :=
  canonical_of_padded canonicalInput575 canonicalOutput575 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
