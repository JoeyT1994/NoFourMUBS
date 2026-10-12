import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput8576 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput8576 : ExponentCode := normalNode10569

theorem canonicalSound8576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8576.moment H = canonicalOutput8576.moment H :=
  canonical_of_padded canonicalInput8576 canonicalOutput8576 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8577 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput8577 : ExponentCode := normalNode10636

theorem canonicalSound8577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8577.moment H = canonicalOutput8577.moment H :=
  canonical_of_padded canonicalInput8577 canonicalOutput8577 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8578 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput8578 : ExponentCode := normalNode10653

theorem canonicalSound8578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8578.moment H = canonicalOutput8578.moment H :=
  canonical_of_padded canonicalInput8578 canonicalOutput8578 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8579 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput8579 : ExponentCode := normalNode10636

theorem canonicalSound8579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8579.moment H = canonicalOutput8579.moment H :=
  canonical_of_padded canonicalInput8579 canonicalOutput8579 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8580 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput8580 : ExponentCode := normalNode10257

theorem canonicalSound8580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8580.moment H = canonicalOutput8580.moment H :=
  canonical_of_padded canonicalInput8580 canonicalOutput8580 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8581 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput8581 : ExponentCode := normalNode8992

theorem canonicalSound8581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8581.moment H = canonicalOutput8581.moment H :=
  canonical_of_padded canonicalInput8581 canonicalOutput8581 (by decide) (by decide)
    ⟨false, true, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8582 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput8582 : ExponentCode := normalNode10299

theorem canonicalSound8582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8582.moment H = canonicalOutput8582.moment H :=
  canonical_of_padded canonicalInput8582 canonicalOutput8582 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8583 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput8583 : ExponentCode := normalNode10288

theorem canonicalSound8583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8583.moment H = canonicalOutput8583.moment H :=
  canonical_of_padded canonicalInput8583 canonicalOutput8583 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8584 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput8584 : ExponentCode := normalNode9898

theorem canonicalSound8584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8584.moment H = canonicalOutput8584.moment H :=
  canonical_of_padded canonicalInput8584 canonicalOutput8584 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8585 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8585 : ExponentCode := normalNode9919

theorem canonicalSound8585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8585.moment H = canonicalOutput8585.moment H :=
  canonical_of_padded canonicalInput8585 canonicalOutput8585 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8586 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput8586 : ExponentCode := normalNode9919

theorem canonicalSound8586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8586.moment H = canonicalOutput8586.moment H :=
  canonical_of_padded canonicalInput8586 canonicalOutput8586 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8587 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput8587 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1223⟩

theorem canonicalSound8587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8587.moment H = canonicalOutput8587.moment H :=
  canonical_of_padded canonicalInput8587 canonicalOutput8587 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8588 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 2, 0, -2], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput8588 : ExponentCode := normalNode3939

theorem canonicalSound8588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8588.moment H = canonicalOutput8588.moment H :=
  canonical_of_padded canonicalInput8588 canonicalOutput8588 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8589 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 2, 0, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput8589 : ExponentCode := normalNode3968

theorem canonicalSound8589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8589.moment H = canonicalOutput8589.moment H :=
  canonical_of_padded canonicalInput8589 canonicalOutput8589 (by decide) (by decide)
    ⟨false, false, canonicalPermutation40, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput8590 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput8590 : ExponentCode := normalNode3476

theorem canonicalSound8590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8590.moment H = canonicalOutput8590.moment H :=
  canonical_of_padded canonicalInput8590 canonicalOutput8590 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8591 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput8591 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1657⟩

theorem canonicalSound8591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8591.moment H = canonicalOutput8591.moment H :=
  canonical_of_padded canonicalInput8591 canonicalOutput8591 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8592 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 2, 1, -3], ![2, -2, 0, 0]]⟩

def canonicalOutput8592 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node474⟩

theorem canonicalSound8592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8592.moment H = canonicalOutput8592.moment H :=
  canonical_of_padded canonicalInput8592 canonicalOutput8592 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8593 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 3, -1, -2], ![2, -3, 2, -1]]⟩

def canonicalOutput8593 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code670

theorem canonicalSound8593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8593.moment H = canonicalOutput8593.moment H :=
  canonical_of_padded canonicalInput8593 canonicalOutput8593 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8594 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![0, 3, 0, -3], ![1, -2, 1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput8594 : ExponentCode := normalNode4106

theorem canonicalSound8594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8594.moment H = canonicalOutput8594.moment H :=
  canonical_of_padded canonicalInput8594 canonicalOutput8594 (by decide) (by decide)
    ⟨false, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput8595 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![1, -3, 1, 1], ![1, 3, 0, -4]]⟩

def canonicalOutput8595 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node462⟩

theorem canonicalSound8595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8595.moment H = canonicalOutput8595.moment H :=
  canonical_of_padded canonicalInput8595 canonicalOutput8595 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8596 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![1, -3, 2, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput8596 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code468

theorem canonicalSound8596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8596.moment H = canonicalOutput8596.moment H :=
  canonical_of_padded canonicalInput8596 canonicalOutput8596 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8597 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![1, -2, 1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput8597 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node481⟩

theorem canonicalSound8597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8597.moment H = canonicalOutput8597.moment H :=
  canonical_of_padded canonicalInput8597 canonicalOutput8597 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8598 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![1, -1, 3, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput8598 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1035⟩

theorem canonicalSound8598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8598.moment H = canonicalOutput8598.moment H :=
  canonical_of_padded canonicalInput8598 canonicalOutput8598 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8599 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![1, 1, -1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput8599 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound8599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8599.moment H = canonicalOutput8599.moment H :=
  canonical_of_padded canonicalInput8599 canonicalOutput8599 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8600 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -2, 2], ![1, 2, -1, -2], ![1, -2, 2, -1]]⟩

def canonicalOutput8600 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node507⟩

theorem canonicalSound8600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8600.moment H = canonicalOutput8600.moment H :=
  canonical_of_padded canonicalInput8600 canonicalOutput8600 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8601 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 2, -1, -1], ![2, -1, 0, -1]]⟩

def canonicalOutput8601 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2065⟩

theorem canonicalSound8601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8601.moment H = canonicalOutput8601.moment H :=
  canonical_of_padded canonicalInput8601 canonicalOutput8601 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8602 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, -1, 1, 0], ![1, -2, 1, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput8602 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2193⟩

theorem canonicalSound8602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8602.moment H = canonicalOutput8602.moment H :=
  canonical_of_padded canonicalInput8602 canonicalOutput8602 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8603 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 2, -1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput8603 : ExponentCode := normalNode4269

theorem canonicalSound8603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8603.moment H = canonicalOutput8603.moment H :=
  canonical_of_padded canonicalInput8603 canonicalOutput8603 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8604 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8604 : ExponentCode := normalNode8998

theorem canonicalSound8604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8604.moment H = canonicalOutput8604.moment H :=
  canonical_of_padded canonicalInput8604 canonicalOutput8604 (by decide) (by decide)
    ⟨false, true, canonicalPermutation74, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8605 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput8605 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2709⟩

theorem canonicalSound8605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8605.moment H = canonicalOutput8605.moment H :=
  canonical_of_padded canonicalInput8605 canonicalOutput8605 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8606 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput8606 : ExponentCode := normalNode2737

theorem canonicalSound8606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8606.moment H = canonicalOutput8606.moment H :=
  canonical_of_padded canonicalInput8606 canonicalOutput8606 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8607 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput8607 : ExponentCode := normalNode9088

theorem canonicalSound8607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8607.moment H = canonicalOutput8607.moment H :=
  canonical_of_padded canonicalInput8607 canonicalOutput8607 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8608 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput8608 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1000⟩

theorem canonicalSound8608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8608.moment H = canonicalOutput8608.moment H :=
  canonical_of_padded canonicalInput8608 canonicalOutput8608 (by decide) (by decide)
    ⟨false, false, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput8609 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 2, -1, -1], ![2, -2, 1, -1]]⟩

def canonicalOutput8609 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1112⟩

theorem canonicalSound8609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8609.moment H = canonicalOutput8609.moment H :=
  canonical_of_padded canonicalInput8609 canonicalOutput8609 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput8610 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -2, 2, -1], ![1, 2, -2, -1]]⟩

def canonicalOutput8610 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩

theorem canonicalSound8610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8610.moment H = canonicalOutput8610.moment H :=
  canonical_of_padded canonicalInput8610 canonicalOutput8610 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput8611 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput8611 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node942⟩

theorem canonicalSound8611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8611.moment H = canonicalOutput8611.moment H :=
  canonical_of_padded canonicalInput8611 canonicalOutput8611 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8612 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput8612 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1119⟩

theorem canonicalSound8612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8612.moment H = canonicalOutput8612.moment H :=
  canonical_of_padded canonicalInput8612 canonicalOutput8612 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8613 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput8613 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node845⟩

theorem canonicalSound8613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8613.moment H = canonicalOutput8613.moment H :=
  canonical_of_padded canonicalInput8613 canonicalOutput8613 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8614 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, -1, 0, -1]]⟩

def canonicalOutput8614 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound8614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8614.moment H = canonicalOutput8614.moment H :=
  canonical_of_padded canonicalInput8614 canonicalOutput8614 (by decide) (by decide)
    ⟨false, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput8615 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, -2, 0], ![2, -2, 1, -1]]⟩

def canonicalOutput8615 : ExponentCode := normalNode2931

theorem canonicalSound8615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8615.moment H = canonicalOutput8615.moment H :=
  canonical_of_padded canonicalInput8615 canonicalOutput8615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8616 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, -1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput8616 : ExponentCode := normalNode3949

theorem canonicalSound8616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8616.moment H = canonicalOutput8616.moment H :=
  canonical_of_padded canonicalInput8616 canonicalOutput8616 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput8617 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput8617 : ExponentCode := normalNode2649

theorem canonicalSound8617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8617.moment H = canonicalOutput8617.moment H :=
  canonical_of_padded canonicalInput8617 canonicalOutput8617 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8618 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput8618 : ExponentCode := normalNode9076

theorem canonicalSound8618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8618.moment H = canonicalOutput8618.moment H :=
  canonical_of_padded canonicalInput8618 canonicalOutput8618 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8619 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput8619 : ExponentCode := normalNode9460

theorem canonicalSound8619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8619.moment H = canonicalOutput8619.moment H :=
  canonical_of_padded canonicalInput8619 canonicalOutput8619 (by decide) (by decide)
    ⟨false, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput8620 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput8620 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2752⟩

theorem canonicalSound8620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8620.moment H = canonicalOutput8620.moment H :=
  canonical_of_padded canonicalInput8620 canonicalOutput8620 (by decide) (by decide)
    ⟨false, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8621 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 2, -1, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput8621 : ExponentCode := normalNode4428

theorem canonicalSound8621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8621.moment H = canonicalOutput8621.moment H :=
  canonical_of_padded canonicalInput8621 canonicalOutput8621 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput8622 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput8622 : ExponentCode := normalNode9079

theorem canonicalSound8622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8622.moment H = canonicalOutput8622.moment H :=
  canonical_of_padded canonicalInput8622 canonicalOutput8622 (by decide) (by decide)
    ⟨false, true, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8623 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput8623 : ExponentCode := normalNode9943

theorem canonicalSound8623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8623.moment H = canonicalOutput8623.moment H :=
  canonical_of_padded canonicalInput8623 canonicalOutput8623 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8624 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput8624 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2728⟩

theorem canonicalSound8624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8624.moment H = canonicalOutput8624.moment H :=
  canonical_of_padded canonicalInput8624 canonicalOutput8624 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8625 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput8625 : ExponentCode := normalNode10285

theorem canonicalSound8625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8625.moment H = canonicalOutput8625.moment H :=
  canonical_of_padded canonicalInput8625 canonicalOutput8625 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8626 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput8626 : ExponentCode := normalNode10268

theorem canonicalSound8626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8626.moment H = canonicalOutput8626.moment H :=
  canonical_of_padded canonicalInput8626 canonicalOutput8626 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput8627 : ExponentCode := ⟨4, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -2, 1], ![2, -1, 2, -3]]⟩

def canonicalOutput8627 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node827⟩

theorem canonicalSound8627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8627.moment H = canonicalOutput8627.moment H :=
  canonical_of_padded canonicalInput8627 canonicalOutput8627 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput8628 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, -1, -1, 0]]⟩

def canonicalOutput8628 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2752⟩

theorem canonicalSound8628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8628.moment H = canonicalOutput8628.moment H :=
  canonical_of_padded canonicalInput8628 canonicalOutput8628 (by decide) (by decide)
    ⟨false, true, canonicalPermutation50, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8629 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput8629 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound8629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8629.moment H = canonicalOutput8629.moment H :=
  canonical_of_padded canonicalInput8629 canonicalOutput8629 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput8630 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput8630 : ExponentCode := normalNode5321

theorem canonicalSound8630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8630.moment H = canonicalOutput8630.moment H :=
  canonical_of_padded canonicalInput8630 canonicalOutput8630 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8631 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput8631 : ExponentCode := normalNode5322

theorem canonicalSound8631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8631.moment H = canonicalOutput8631.moment H :=
  canonical_of_padded canonicalInput8631 canonicalOutput8631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput8632 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 2, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput8632 : ExponentCode := normalNode5226

theorem canonicalSound8632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8632.moment H = canonicalOutput8632.moment H :=
  canonical_of_padded canonicalInput8632 canonicalOutput8632 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput8633 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput8633 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound8633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8633.moment H = canonicalOutput8633.moment H :=
  canonical_of_padded canonicalInput8633 canonicalOutput8633 (by decide) (by decide)
    ⟨false, false, canonicalPermutation20, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput8634 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput8634 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1819⟩

theorem canonicalSound8634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8634.moment H = canonicalOutput8634.moment H :=
  canonical_of_padded canonicalInput8634 canonicalOutput8634 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8635 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput8635 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2447⟩

theorem canonicalSound8635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8635.moment H = canonicalOutput8635.moment H :=
  canonical_of_padded canonicalInput8635 canonicalOutput8635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput8636 : ExponentCode := ⟨6, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, -3, 1, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput8636 : ExponentCode := normalNode4142

theorem canonicalSound8636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8636.moment H = canonicalOutput8636.moment H :=
  canonical_of_padded canonicalInput8636 canonicalOutput8636 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8637 : ExponentCode := ⟨6, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -3, 0, 2], ![0, 2, 2, -4]]⟩

def canonicalOutput8637 : ExponentCode := normalNode4479

theorem canonicalSound8637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8637.moment H = canonicalOutput8637.moment H :=
  canonical_of_padded canonicalInput8637 canonicalOutput8637 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput8638 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput8638 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2586⟩

theorem canonicalSound8638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8638.moment H = canonicalOutput8638.moment H :=
  canonical_of_padded canonicalInput8638 canonicalOutput8638 (by decide) (by decide)
    ⟨false, false, canonicalPermutation71, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput8639 : ExponentCode := ⟨5, 4, ![![-2, 0, 1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput8639 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2613⟩

theorem canonicalSound8639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput8639.moment H = canonicalOutput8639.moment H :=
  canonical_of_padded canonicalInput8639 canonicalOutput8639 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
