import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9600 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![0, 3, -2, -1], ![2, -3, -1, 2]]⟩

def canonicalOutput9600 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node97⟩

theorem canonicalSound9600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9600.moment H = canonicalOutput9600.moment H :=
  canonical_of_padded canonicalInput9600 canonicalOutput9600 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9601 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![0, 4, -4, 0], ![2, -4, 1, 1]]⟩

def canonicalOutput9601 : ExponentCode := normalNode141

theorem canonicalSound9601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9601.moment H = canonicalOutput9601.moment H :=
  canonical_of_padded canonicalInput9601 canonicalOutput9601 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9602 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![0, 4, -3, -1], ![2, -4, 0, 2]]⟩

def canonicalOutput9602 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node99⟩

theorem canonicalSound9602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9602.moment H = canonicalOutput9602.moment H :=
  canonical_of_padded canonicalInput9602 canonicalOutput9602 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9603 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![1, -3, -2, 4], ![0, 2, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput9603 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code295

theorem canonicalSound9603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9603.moment H = canonicalOutput9603.moment H :=
  canonical_of_padded canonicalInput9603 canonicalOutput9603 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9604 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![1, -3, -1, 3], ![0, 1, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput9604 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1076

theorem canonicalSound9604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9604.moment H = canonicalOutput9604.moment H :=
  canonical_of_padded canonicalInput9604 canonicalOutput9604 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9605 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![1, -3, -1, 3], ![0, 2, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9605 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code428

theorem canonicalSound9605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9605.moment H = canonicalOutput9605.moment H :=
  canonical_of_padded canonicalInput9605 canonicalOutput9605 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9606 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![1, -3, -1, 3], ![0, 2, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9606 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code432

theorem canonicalSound9606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9606.moment H = canonicalOutput9606.moment H :=
  canonical_of_padded canonicalInput9606 canonicalOutput9606 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9607 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![1, -3, -1, 3], ![1, 3, -2, -2]]⟩

def canonicalOutput9607 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code84

theorem canonicalSound9607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9607.moment H = canonicalOutput9607.moment H :=
  canonical_of_padded canonicalInput9607 canonicalOutput9607 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9608 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![1, -3, 0, 2], ![0, 0, -2, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput9608 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code150

theorem canonicalSound9608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9608.moment H = canonicalOutput9608.moment H :=
  canonical_of_padded canonicalInput9608 canonicalOutput9608 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9609 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![1, -3, 0, 2], ![0, 1, -3, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput9609 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1075

theorem canonicalSound9609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9609.moment H = canonicalOutput9609.moment H :=
  canonical_of_padded canonicalInput9609 canonicalOutput9609 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9610 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![1, -3, 0, 2], ![1, 3, -3, -1]]⟩

def canonicalOutput9610 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound9610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9610.moment H = canonicalOutput9610.moment H :=
  canonical_of_padded canonicalInput9610 canonicalOutput9610 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9611 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![1, -3, 2, 0], ![1, 3, -5, 1]]⟩

def canonicalOutput9611 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node76⟩

theorem canonicalSound9611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9611.moment H = canonicalOutput9611.moment H :=
  canonical_of_padded canonicalInput9611 canonicalOutput9611 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9612 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![1, -2, -1, 2], ![0, -1, -1, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput9612 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code151

theorem canonicalSound9612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9612.moment H = canonicalOutput9612.moment H :=
  canonical_of_padded canonicalInput9612 canonicalOutput9612 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9613 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![1, -2, -1, 2], ![1, 2, -2, -1]]⟩

def canonicalOutput9613 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound9613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9613.moment H = canonicalOutput9613.moment H :=
  canonical_of_padded canonicalInput9613 canonicalOutput9613 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9614 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![1, -2, 1, 0], ![1, 2, -4, 1]]⟩

def canonicalOutput9614 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node206⟩

theorem canonicalSound9614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9614.moment H = canonicalOutput9614.moment H :=
  canonical_of_padded canonicalInput9614 canonicalOutput9614 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9615 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![1, -2, 2, -1], ![1, 2, -5, 2]]⟩

def canonicalOutput9615 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node74⟩

theorem canonicalSound9615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9615.moment H = canonicalOutput9615.moment H :=
  canonical_of_padded canonicalInput9615 canonicalOutput9615 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9616 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![1, 2, -2, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput9616 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound9616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9616.moment H = canonicalOutput9616.moment H :=
  canonical_of_padded canonicalInput9616 canonicalOutput9616 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9617 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![1, 2, -1, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput9617 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node103⟩

theorem canonicalSound9617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9617.moment H = canonicalOutput9617.moment H :=
  canonical_of_padded canonicalInput9617 canonicalOutput9617 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9618 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![1, 2, 0, -3], ![1, -2, -3, 4]]⟩

def canonicalOutput9618 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node86⟩

theorem canonicalSound9618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9618.moment H = canonicalOutput9618.moment H :=
  canonical_of_padded canonicalInput9618 canonicalOutput9618 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9619 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![2, -3, 0, 1], ![0, 3, -3, 0]]⟩

def canonicalOutput9619 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node93⟩

theorem canonicalSound9619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9619.moment H = canonicalOutput9619.moment H :=
  canonical_of_padded canonicalInput9619 canonicalOutput9619 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput9620 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![3, -3, 0, 0], ![-1, 3, -3, 1]]⟩

def canonicalOutput9620 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node92⟩

theorem canonicalSound9620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9620.moment H = canonicalOutput9620.moment H :=
  canonical_of_padded canonicalInput9620 canonicalOutput9620 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9621 : ExponentCode := ⟨6, 6, ![![-2, 0, 3, -1, 0, 0], ![1, -3, 0, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9621 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code431

theorem canonicalSound9621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9621.moment H = canonicalOutput9621.moment H :=
  canonical_of_padded canonicalInput9621 canonicalOutput9621 (by decide) (by decide)
    ⟨false, false, canonicalPermutation12, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput9622 : ExponentCode := ⟨6, 6, ![![-2, 0, 3, -1, 0, 0], ![1, -3, 0, 2, 0, 0], ![1, 3, -3, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9622 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound9622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9622.moment H = canonicalOutput9622.moment H :=
  canonical_of_padded canonicalInput9622 canonicalOutput9622 (by decide) (by decide)
    ⟨true, false, canonicalPermutation70, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput9623 : ExponentCode := ⟨6, 6, ![![-2, 0, 3, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -3, 2, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9623 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound9623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9623.moment H = canonicalOutput9623.moment H :=
  canonical_of_padded canonicalInput9623 canonicalOutput9623 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput9624 : ExponentCode := ⟨6, 6, ![![-2, 0, 3, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9624 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound9624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9624.moment H = canonicalOutput9624.moment H :=
  canonical_of_padded canonicalInput9624 canonicalOutput9624 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput9625 : ExponentCode := ⟨6, 6, ![![-2, 0, 3, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 2, -1, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9625 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound9625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9625.moment H = canonicalOutput9625.moment H :=
  canonical_of_padded canonicalInput9625 canonicalOutput9625 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation324, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput9626 : ExponentCode := ⟨6, 6, ![![-2, 0, 3, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 3, -3, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9626 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound9626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9626.moment H = canonicalOutput9626.moment H :=
  canonical_of_padded canonicalInput9626 canonicalOutput9626 (by decide) (by decide)
    ⟨false, false, canonicalPermutation12, canonicalPermutation83⟩ (by decide +kernel) hH

def canonicalInput9627 : ExponentCode := ⟨6, 6, ![![-2, 0, 3, -1, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, -3, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9627 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound9627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9627.moment H = canonicalOutput9627.moment H :=
  canonical_of_padded canonicalInput9627 canonicalOutput9627 (by decide) (by decide)
    ⟨true, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput9628 : ExponentCode := ⟨6, 6, ![![-2, 0, 3, -1, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9628 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound9628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9628.moment H = canonicalOutput9628.moment H :=
  canonical_of_padded canonicalInput9628 canonicalOutput9628 (by decide) (by decide)
    ⟨false, true, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation299⟩ (by decide +kernel) hH

def canonicalInput9629 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput9629 : ExponentCode := normalNode4503

theorem canonicalSound9629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9629.moment H = canonicalOutput9629.moment H :=
  canonical_of_padded canonicalInput9629 canonicalOutput9629 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9630 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput9630 : ExponentCode := normalNode4563

theorem canonicalSound9630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9630.moment H = canonicalOutput9630.moment H :=
  canonical_of_padded canonicalInput9630 canonicalOutput9630 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9631 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput9631 : ExponentCode := normalNode4569

theorem canonicalSound9631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9631.moment H = canonicalOutput9631.moment H :=
  canonical_of_padded canonicalInput9631 canonicalOutput9631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9632 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 1, 1], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput9632 : ExponentCode := normalNode10940

theorem canonicalSound9632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9632.moment H = canonicalOutput9632.moment H :=
  canonical_of_padded canonicalInput9632 canonicalOutput9632 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9633 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 1, 1], ![0, 1, 2, -3], ![2, 0, 0, -2]]⟩

def canonicalOutput9633 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code872

theorem canonicalSound9633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9633.moment H = canonicalOutput9633.moment H :=
  canonical_of_padded canonicalInput9633 canonicalOutput9633 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9634 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 1, 1], ![1, 0, 0, -1], ![1, 1, 2, -4]]⟩

def canonicalOutput9634 : ExponentCode := normalNode10244

theorem canonicalSound9634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9634.moment H = canonicalOutput9634.moment H :=
  canonical_of_padded canonicalInput9634 canonicalOutput9634 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9635 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 1, 1], ![1, 0, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput9635 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1021

theorem canonicalSound9635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9635.moment H = canonicalOutput9635.moment H :=
  canonical_of_padded canonicalInput9635 canonicalOutput9635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9636 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 2, 0], ![0, 1, -1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput9636 : ExponentCode := normalNode11219

theorem canonicalSound9636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9636.moment H = canonicalOutput9636.moment H :=
  canonical_of_padded canonicalInput9636 canonicalOutput9636 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9637 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 2, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput9637 : ExponentCode := normalNode9746

theorem canonicalSound9637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9637.moment H = canonicalOutput9637.moment H :=
  canonical_of_padded canonicalInput9637 canonicalOutput9637 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9638 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9638 : ExponentCode := normalNode4657

theorem canonicalSound9638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9638.moment H = canonicalOutput9638.moment H :=
  canonical_of_padded canonicalInput9638 canonicalOutput9638 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9639 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -2, 2, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9639 : ExponentCode := normalNode4127

theorem canonicalSound9639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9639.moment H = canonicalOutput9639.moment H :=
  canonical_of_padded canonicalInput9639 canonicalOutput9639 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9640 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 2, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput9640 : ExponentCode := normalNode9643

theorem canonicalSound9640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9640.moment H = canonicalOutput9640.moment H :=
  canonical_of_padded canonicalInput9640 canonicalOutput9640 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput9641 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 2, 0], ![1, 0, 1, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput9641 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node403⟩

theorem canonicalSound9641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9641.moment H = canonicalOutput9641.moment H :=
  canonical_of_padded canonicalInput9641 canonicalOutput9641 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9642 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 2, 0], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput9642 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1081

theorem canonicalSound9642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9642.moment H = canonicalOutput9642.moment H :=
  canonical_of_padded canonicalInput9642 canonicalOutput9642 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9643 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -2, 3, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput9643 : ExponentCode := normalNode3622

theorem canonicalSound9643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9643.moment H = canonicalOutput9643.moment H :=
  canonical_of_padded canonicalInput9643 canonicalOutput9643 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9644 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 3, -1], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput9644 : ExponentCode := normalNode10883

theorem canonicalSound9644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9644.moment H = canonicalOutput9644.moment H :=
  canonical_of_padded canonicalInput9644 canonicalOutput9644 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9645 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9645 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2147⟩

theorem canonicalSound9645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9645.moment H = canonicalOutput9645.moment H :=
  canonical_of_padded canonicalInput9645 canonicalOutput9645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9646 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 3, -1], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput9646 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node783⟩

theorem canonicalSound9646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9646.moment H = canonicalOutput9646.moment H :=
  canonical_of_padded canonicalInput9646 canonicalOutput9646 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9647 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 3, -1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput9647 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node778⟩

theorem canonicalSound9647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9647.moment H = canonicalOutput9647.moment H :=
  canonical_of_padded canonicalInput9647 canonicalOutput9647 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9648 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 3, -1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput9648 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code322

theorem canonicalSound9648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9648.moment H = canonicalOutput9648.moment H :=
  canonical_of_padded canonicalInput9648 canonicalOutput9648 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9649 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -2, 4, -2], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9649 : ExponentCode := normalNode3315

theorem canonicalSound9649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9649.moment H = canonicalOutput9649.moment H :=
  canonical_of_padded canonicalInput9649 canonicalOutput9649 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9650 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 4, -2], ![0, 1, -1, 0], ![2, 0, 0, -2]]⟩

def canonicalOutput9650 : ExponentCode := normalNode10882

theorem canonicalSound9650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9650.moment H = canonicalOutput9650.moment H :=
  canonical_of_padded canonicalInput9650 canonicalOutput9650 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9651 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -2, 4, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9651 : ExponentCode := normalNode7430

theorem canonicalSound9651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9651.moment H = canonicalOutput9651.moment H :=
  canonical_of_padded canonicalInput9651 canonicalOutput9651 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput9652 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput9652 : ExponentCode := normalNode10725

theorem canonicalSound9652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9652.moment H = canonicalOutput9652.moment H :=
  canonical_of_padded canonicalInput9652 canonicalOutput9652 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9653 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput9653 : ExponentCode := normalNode9675

theorem canonicalSound9653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9653.moment H = canonicalOutput9653.moment H :=
  canonical_of_padded canonicalInput9653 canonicalOutput9653 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput9654 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput9654 : ExponentCode := normalNode7854

theorem canonicalSound9654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9654.moment H = canonicalOutput9654.moment H :=
  canonical_of_padded canonicalInput9654 canonicalOutput9654 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput9655 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput9655 : ExponentCode := normalNode10864

theorem canonicalSound9655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9655.moment H = canonicalOutput9655.moment H :=
  canonical_of_padded canonicalInput9655 canonicalOutput9655 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9656 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9656 : ExponentCode := normalNode10865

theorem canonicalSound9656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9656.moment H = canonicalOutput9656.moment H :=
  canonical_of_padded canonicalInput9656 canonicalOutput9656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9657 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput9657 : ExponentCode := normalNode10677

theorem canonicalSound9657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9657.moment H = canonicalOutput9657.moment H :=
  canonical_of_padded canonicalInput9657 canonicalOutput9657 (by decide) (by decide)
    ⟨false, false, canonicalPermutation47, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9658 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput9658 : ExponentCode := normalNode4745

theorem canonicalSound9658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9658.moment H = canonicalOutput9658.moment H :=
  canonical_of_padded canonicalInput9658 canonicalOutput9658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9659 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput9659 : ExponentCode := normalNode4744

theorem canonicalSound9659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9659.moment H = canonicalOutput9659.moment H :=
  canonical_of_padded canonicalInput9659 canonicalOutput9659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9660 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 1, 1, -2], ![1, 0, 0, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput9660 : ExponentCode := normalNode4747

theorem canonicalSound9660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9660.moment H = canonicalOutput9660.moment H :=
  canonical_of_padded canonicalInput9660 canonicalOutput9660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9661 : ExponentCode := ⟨5, 4, ![![-2, 1, -3, 4], ![0, -1, 1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput9661 : ExponentCode := normalNode4749

theorem canonicalSound9661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9661.moment H = canonicalOutput9661.moment H :=
  canonical_of_padded canonicalInput9661 canonicalOutput9661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9662 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 1, 0], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput9662 : ExponentCode := normalNode9872

theorem canonicalSound9662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9662.moment H = canonicalOutput9662.moment H :=
  canonical_of_padded canonicalInput9662 canonicalOutput9662 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput9663 : ExponentCode := ⟨4, 4, ![![-2, 1, -3, 4], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput9663 : ExponentCode := normalNode7854

theorem canonicalSound9663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9663.moment H = canonicalOutput9663.moment H :=
  canonical_of_padded canonicalInput9663 canonicalOutput9663 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
