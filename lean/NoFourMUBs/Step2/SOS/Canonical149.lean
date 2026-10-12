import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9536 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, 0, 2], ![1, 0, -3, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput9536 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code436

theorem canonicalSound9536 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9536.moment H = canonicalOutput9536.moment H :=
  canonical_of_padded canonicalInput9536 canonicalOutput9536 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9537 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, 0, 2], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput9537 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code555

theorem canonicalSound9537 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9537.moment H = canonicalOutput9537.moment H :=
  canonical_of_padded canonicalInput9537 canonicalOutput9537 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9538 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput9538 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code761

theorem canonicalSound9538 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9538.moment H = canonicalOutput9538.moment H :=
  canonical_of_padded canonicalInput9538 canonicalOutput9538 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9539 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, -3, 4], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput9539 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node781⟩

theorem canonicalSound9539 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9539.moment H = canonicalOutput9539.moment H :=
  canonical_of_padded canonicalInput9539 canonicalOutput9539 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput9540 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -2, 3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9540 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1948⟩

theorem canonicalSound9540 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9540.moment H = canonicalOutput9540.moment H :=
  canonical_of_padded canonicalInput9540 canonicalOutput9540 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9541 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput9541 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1946⟩

theorem canonicalSound9541 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9541.moment H = canonicalOutput9541.moment H :=
  canonical_of_padded canonicalInput9541 canonicalOutput9541 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9542 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, -2, 3], ![1, -2, 0, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput9542 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code402

theorem canonicalSound9542 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9542.moment H = canonicalOutput9542.moment H :=
  canonical_of_padded canonicalInput9542 canonicalOutput9542 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9543 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput9543 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound9543 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9543.moment H = canonicalOutput9543.moment H :=
  canonical_of_padded canonicalInput9543 canonicalOutput9543 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9544 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, -2, 3], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9544 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node950⟩

theorem canonicalSound9544 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9544.moment H = canonicalOutput9544.moment H :=
  canonical_of_padded canonicalInput9544 canonicalOutput9544 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput9545 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, -2, 0, 2], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput9545 : ExponentCode := normalNode4681

theorem canonicalSound9545 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9545.moment H = canonicalOutput9545.moment H :=
  canonical_of_padded canonicalInput9545 canonicalOutput9545 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9546 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, -2, 0, 2], ![1, 1, -2, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput9546 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1072

theorem canonicalSound9546 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9546.moment H = canonicalOutput9546.moment H :=
  canonical_of_padded canonicalInput9546 canonicalOutput9546 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9547 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput9547 : ExponentCode := normalNode1813

theorem canonicalSound9547 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9547.moment H = canonicalOutput9547.moment H :=
  canonical_of_padded canonicalInput9547 canonicalOutput9547 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9548 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, -1, -1, 2], ![2, 2, -1, -3]]⟩

def canonicalOutput9548 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code163

theorem canonicalSound9548 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9548.moment H = canonicalOutput9548.moment H :=
  canonical_of_padded canonicalInput9548 canonicalOutput9548 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9549 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput9549 : ExponentCode := normalNode1866

theorem canonicalSound9549 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9549.moment H = canonicalOutput9549.moment H :=
  canonical_of_padded canonicalInput9549 canonicalOutput9549 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9550 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput9550 : ExponentCode := normalNode2518

theorem canonicalSound9550 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9550.moment H = canonicalOutput9550.moment H :=
  canonical_of_padded canonicalInput9550 canonicalOutput9550 (by decide) (by decide)
    ⟨false, true, canonicalPermutation51, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9551 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 1, -2, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9551 : ExponentCode := normalNode3456

theorem canonicalSound9551 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9551.moment H = canonicalOutput9551.moment H :=
  canonical_of_padded canonicalInput9551 canonicalOutput9551 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9552 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 1, -1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9552 : ExponentCode := normalNode3457

theorem canonicalSound9552 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9552.moment H = canonicalOutput9552.moment H :=
  canonical_of_padded canonicalInput9552 canonicalOutput9552 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9553 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput9553 : ExponentCode := normalNode2052

theorem canonicalSound9553 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9553.moment H = canonicalOutput9553.moment H :=
  canonical_of_padded canonicalInput9553 canonicalOutput9553 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9554 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput9554 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1797⟩

theorem canonicalSound9554 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9554.moment H = canonicalOutput9554.moment H :=
  canonical_of_padded canonicalInput9554 canonicalOutput9554 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9555 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9555 : ExponentCode := normalNode3520

theorem canonicalSound9555 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9555.moment H = canonicalOutput9555.moment H :=
  canonical_of_padded canonicalInput9555 canonicalOutput9555 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9556 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput9556 : ExponentCode := normalNode2038

theorem canonicalSound9556 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9556.moment H = canonicalOutput9556.moment H :=
  canonical_of_padded canonicalInput9556 canonicalOutput9556 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9557 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput9557 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1942⟩

theorem canonicalSound9557 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9557.moment H = canonicalOutput9557.moment H :=
  canonical_of_padded canonicalInput9557 canonicalOutput9557 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9558 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![1, -2, -1, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput9558 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code151

theorem canonicalSound9558 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9558.moment H = canonicalOutput9558.moment H :=
  canonical_of_padded canonicalInput9558 canonicalOutput9558 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9559 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![1, -2, 0, 1], ![1, 3, -2, -2]]⟩

def canonicalOutput9559 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code444

theorem canonicalSound9559 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9559.moment H = canonicalOutput9559.moment H :=
  canonical_of_padded canonicalInput9559 canonicalOutput9559 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9560 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![1, -1, -2, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput9560 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code503

theorem canonicalSound9560 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9560.moment H = canonicalOutput9560.moment H :=
  canonical_of_padded canonicalInput9560 canonicalOutput9560 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9561 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput9561 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node505⟩

theorem canonicalSound9561 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9561.moment H = canonicalOutput9561.moment H :=
  canonical_of_padded canonicalInput9561 canonicalOutput9561 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9562 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, -2, 0, 2], ![1, 0, -2, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput9562 : ExponentCode := normalNode4682

theorem canonicalSound9562 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9562.moment H = canonicalOutput9562.moment H :=
  canonical_of_padded canonicalInput9562 canonicalOutput9562 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9563 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput9563 : ExponentCode := normalNode4683

theorem canonicalSound9563 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9563.moment H = canonicalOutput9563.moment H :=
  canonical_of_padded canonicalInput9563 canonicalOutput9563 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9564 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput9564 : ExponentCode := normalNode4689

theorem canonicalSound9564 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9564.moment H = canonicalOutput9564.moment H :=
  canonical_of_padded canonicalInput9564 canonicalOutput9564 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9565 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 3, -1, -3]]⟩

def canonicalOutput9565 : ExponentCode := normalNode4698

theorem canonicalSound9565 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9565.moment H = canonicalOutput9565.moment H :=
  canonical_of_padded canonicalInput9565 canonicalOutput9565 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9566 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -3, 2], ![1, 2, 0, -3]]⟩

def canonicalOutput9566 : ExponentCode := normalNode1896

theorem canonicalSound9566 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9566.moment H = canonicalOutput9566.moment H :=
  canonical_of_padded canonicalInput9566 canonicalOutput9566 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9567 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -2, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput9567 : ExponentCode := normalNode2574

theorem canonicalSound9567 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9567.moment H = canonicalOutput9567.moment H :=
  canonical_of_padded canonicalInput9567 canonicalOutput9567 (by decide) (by decide)
    ⟨false, true, canonicalPermutation59, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9568 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput9568 : ExponentCode := normalNode3446

theorem canonicalSound9568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9568.moment H = canonicalOutput9568.moment H :=
  canonical_of_padded canonicalInput9568 canonicalOutput9568 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9569 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 0, -3, 3], ![1, -1, 0, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput9569 : ExponentCode := normalNode2069

theorem canonicalSound9569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9569.moment H = canonicalOutput9569.moment H :=
  canonical_of_padded canonicalInput9569 canonicalOutput9569 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9570 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 0, -2, 2], ![1, -1, -1, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput9570 : ExponentCode := normalNode2053

theorem canonicalSound9570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9570.moment H = canonicalOutput9570.moment H :=
  canonical_of_padded canonicalInput9570 canonicalOutput9570 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9571 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 2, -1, -2]]⟩

def canonicalOutput9571 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1814⟩

theorem canonicalSound9571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9571.moment H = canonicalOutput9571.moment H :=
  canonical_of_padded canonicalInput9571 canonicalOutput9571 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9572 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput9572 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1798⟩

theorem canonicalSound9572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9572.moment H = canonicalOutput9572.moment H :=
  canonical_of_padded canonicalInput9572 canonicalOutput9572 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9573 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput9573 : ExponentCode := normalNode3486

theorem canonicalSound9573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9573.moment H = canonicalOutput9573.moment H :=
  canonical_of_padded canonicalInput9573 canonicalOutput9573 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9574 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 1, -3, 2], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput9574 : ExponentCode := normalNode9911

theorem canonicalSound9574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9574.moment H = canonicalOutput9574.moment H :=
  canonical_of_padded canonicalInput9574 canonicalOutput9574 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput9575 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 1, -2, 1], ![1, -1, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput9575 : ExponentCode := normalNode3485

theorem canonicalSound9575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9575.moment H = canonicalOutput9575.moment H :=
  canonical_of_padded canonicalInput9575 canonicalOutput9575 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9576 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![0, 1, 0, -1], ![1, 0, -3, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput9576 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2746⟩

theorem canonicalSound9576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9576.moment H = canonicalOutput9576.moment H :=
  canonical_of_padded canonicalInput9576 canonicalOutput9576 (by decide) (by decide)
    ⟨false, false, canonicalPermutation78, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9577 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![1, -2, -2, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput9577 : ExponentCode := normalNode9853

theorem canonicalSound9577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9577.moment H = canonicalOutput9577.moment H :=
  canonical_of_padded canonicalInput9577 canonicalOutput9577 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9578 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![1, -1, -2, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput9578 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node823⟩

theorem canonicalSound9578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9578.moment H = canonicalOutput9578.moment H :=
  canonical_of_padded canonicalInput9578 canonicalOutput9578 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9579 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, -1, 0, 1], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput9579 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1015⟩

theorem canonicalSound9579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9579.moment H = canonicalOutput9579.moment H :=
  canonical_of_padded canonicalInput9579 canonicalOutput9579 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9580 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 0, -3, 3], ![1, -2, 0, 1], ![1, 2, 0, -3]]⟩

def canonicalOutput9580 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code466

theorem canonicalSound9580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9580.moment H = canonicalOutput9580.moment H :=
  canonical_of_padded canonicalInput9580 canonicalOutput9580 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9581 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 0, -2, 2], ![1, -3, 0, 2], ![1, 3, -1, -3]]⟩

def canonicalOutput9581 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code150

theorem canonicalSound9581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9581.moment H = canonicalOutput9581.moment H :=
  canonical_of_padded canonicalInput9581 canonicalOutput9581 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9582 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 0, -2, 2], ![1, -2, 0, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput9582 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node504⟩

theorem canonicalSound9582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9582.moment H = canonicalOutput9582.moment H :=
  canonical_of_padded canonicalInput9582 canonicalOutput9582 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9583 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput9583 : ExponentCode := normalNode2029

theorem canonicalSound9583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9583.moment H = canonicalOutput9583.moment H :=
  canonical_of_padded canonicalInput9583 canonicalOutput9583 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9584 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput9584 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1956⟩

theorem canonicalSound9584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9584.moment H = canonicalOutput9584.moment H :=
  canonical_of_padded canonicalInput9584 canonicalOutput9584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9585 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 0, -1, 1], ![1, -3, -1, 3], ![1, 3, -1, -3]]⟩

def canonicalOutput9585 : ExponentCode := normalNode11007

theorem canonicalSound9585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9585.moment H = canonicalOutput9585.moment H :=
  canonical_of_padded canonicalInput9585 canonicalOutput9585 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9586 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 0, -1, 1], ![1, -2, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput9586 : ExponentCode := normalNode6951

theorem canonicalSound9586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9586.moment H = canonicalOutput9586.moment H :=
  canonical_of_padded canonicalInput9586 canonicalOutput9586 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput9587 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 0, -1, 1], ![1, -1, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput9587 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1049⟩

theorem canonicalSound9587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9587.moment H = canonicalOutput9587.moment H :=
  canonical_of_padded canonicalInput9587 canonicalOutput9587 (by decide) (by decide)
    ⟨false, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9588 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 0, 0, 0], ![1, -1, -3, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput9588 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node187⟩

theorem canonicalSound9588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9588.moment H = canonicalOutput9588.moment H :=
  canonical_of_padded canonicalInput9588 canonicalOutput9588 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9589 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 1, -3, 2], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput9589 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound9589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9589.moment H = canonicalOutput9589.moment H :=
  canonical_of_padded canonicalInput9589 canonicalOutput9589 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9590 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 1, -2, 1], ![1, -3, 0, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput9590 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code487

theorem canonicalSound9590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9590.moment H = canonicalOutput9590.moment H :=
  canonical_of_padded canonicalInput9590 canonicalOutput9590 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9591 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 1, -1, 0], ![1, -3, -2, 4], ![1, 2, 0, -3]]⟩

def canonicalOutput9591 : ExponentCode := normalNode6704

theorem canonicalSound9591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9591.moment H = canonicalOutput9591.moment H :=
  canonical_of_padded canonicalInput9591 canonicalOutput9591 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9592 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 1, -1, 0], ![1, -3, -1, 3], ![1, 2, -1, -2]]⟩

def canonicalOutput9592 : ExponentCode := normalNode6702

theorem canonicalSound9592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9592.moment H = canonicalOutput9592.moment H :=
  canonical_of_padded canonicalInput9592 canonicalOutput9592 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9593 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 1, -1, 0], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput9593 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1011⟩

theorem canonicalSound9593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9593.moment H = canonicalOutput9593.moment H :=
  canonical_of_padded canonicalInput9593 canonicalOutput9593 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9594 : ExponentCode := ⟨5, 4, ![![-2, 0, 3, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 0, -2, 1]]⟩

def canonicalOutput9594 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1976⟩

theorem canonicalSound9594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9594.moment H = canonicalOutput9594.moment H :=
  canonical_of_padded canonicalInput9594 canonicalOutput9594 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9595 : ExponentCode := ⟨4, 4, ![![-2, 0, 3, -1], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 1, -1, -1]]⟩

def canonicalOutput9595 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩

theorem canonicalSound9595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9595.moment H = canonicalOutput9595.moment H :=
  canonical_of_padded canonicalInput9595 canonicalOutput9595 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput9596 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![0, 2, -3, 1], ![2, -2, 0, 0]]⟩

def canonicalOutput9596 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node204⟩

theorem canonicalSound9596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9596.moment H = canonicalOutput9596.moment H :=
  canonical_of_padded canonicalInput9596 canonicalOutput9596 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput9597 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![0, 2, -2, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput9597 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node177⟩

theorem canonicalSound9597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9597.moment H = canonicalOutput9597.moment H :=
  canonical_of_padded canonicalInput9597 canonicalOutput9597 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput9598 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![0, 2, -1, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput9598 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node212⟩

theorem canonicalSound9598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9598.moment H = canonicalOutput9598.moment H :=
  canonical_of_padded canonicalInput9598 canonicalOutput9598 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9599 : ExponentCode := ⟨3, 4, ![![-2, 0, 3, -1], ![0, 3, -3, 0], ![2, -3, 0, 1]]⟩

def canonicalOutput9599 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node93⟩

theorem canonicalSound9599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9599.moment H = canonicalOutput9599.moment H :=
  canonical_of_padded canonicalInput9599 canonicalOutput9599 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
