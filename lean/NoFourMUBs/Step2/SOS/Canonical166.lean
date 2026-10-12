import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10624 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![0, 2, 1, -3], ![1, -2, 1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput10624 : ExponentCode := normalNode3777

theorem canonicalSound10624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10624.moment H = canonicalOutput10624.moment H :=
  canonical_of_padded canonicalInput10624 canonicalOutput10624 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10625 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![1, -3, 1, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput10625 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node456⟩

theorem canonicalSound10625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10625.moment H = canonicalOutput10625.moment H :=
  canonical_of_padded canonicalInput10625 canonicalOutput10625 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10626 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![1, -2, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput10626 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code249

theorem canonicalSound10626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10626.moment H = canonicalOutput10626.moment H :=
  canonical_of_padded canonicalInput10626 canonicalOutput10626 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10627 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![1, -2, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput10627 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node520⟩

theorem canonicalSound10627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10627.moment H = canonicalOutput10627.moment H :=
  canonical_of_padded canonicalInput10627 canonicalOutput10627 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10628 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10628 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound10628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10628.moment H = canonicalOutput10628.moment H :=
  canonical_of_padded canonicalInput10628 canonicalOutput10628 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10629 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10629 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1316⟩

theorem canonicalSound10629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10629.moment H = canonicalOutput10629.moment H :=
  canonical_of_padded canonicalInput10629 canonicalOutput10629 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10630 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -2, 2], ![1, 1, 1, -3], ![1, -2, 1, 0]]⟩

def canonicalOutput10630 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node473⟩

theorem canonicalSound10630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10630.moment H = canonicalOutput10630.moment H :=
  canonical_of_padded canonicalInput10630 canonicalOutput10630 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10631 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput10631 : ExponentCode := normalNode5293

theorem canonicalSound10631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10631.moment H = canonicalOutput10631.moment H :=
  canonical_of_padded canonicalInput10631 canonicalOutput10631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10632 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, -1, 0, 1], ![0, 1, 2, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput10632 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound10632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10632.moment H = canonicalOutput10632.moment H :=
  canonical_of_padded canonicalInput10632 canonicalOutput10632 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10633 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 1, 2, -3], ![2, -1, -2, 1]]⟩

def canonicalOutput10633 : ExponentCode := normalNode5143

theorem canonicalSound10633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10633.moment H = canonicalOutput10633.moment H :=
  canonical_of_padded canonicalInput10633 canonicalOutput10633 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10634 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput10634 : ExponentCode := normalNode5127

theorem canonicalSound10634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10634.moment H = canonicalOutput10634.moment H :=
  canonical_of_padded canonicalInput10634 canonicalOutput10634 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10635 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, 0, -2, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10635 : ExponentCode := normalNode10342

theorem canonicalSound10635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10635.moment H = canonicalOutput10635.moment H :=
  canonical_of_padded canonicalInput10635 canonicalOutput10635 (by decide) (by decide)
    ⟨false, false, canonicalPermutation49, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10636 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, -1, 3, -2], ![0, 1, -1, 0], ![2, -1, -1, 0]]⟩

def canonicalOutput10636 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1653⟩

theorem canonicalSound10636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10636.moment H = canonicalOutput10636.moment H :=
  canonical_of_padded canonicalInput10636 canonicalOutput10636 (by decide) (by decide)
    ⟨false, false, canonicalPermutation22, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10637 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput10637 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1641⟩

theorem canonicalSound10637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10637.moment H = canonicalOutput10637.moment H :=
  canonical_of_padded canonicalInput10637 canonicalOutput10637 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10638 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, -1, 3, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10638 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2420⟩

theorem canonicalSound10638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10638.moment H = canonicalOutput10638.moment H :=
  canonical_of_padded canonicalInput10638 canonicalOutput10638 (by decide) (by decide)
    ⟨false, false, canonicalPermutation19, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10639 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput10639 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2307⟩

theorem canonicalSound10639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10639.moment H = canonicalOutput10639.moment H :=
  canonical_of_padded canonicalInput10639 canonicalOutput10639 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10640 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -2, 2], ![0, 1, 2, -3], ![2, -2, 1, -1]]⟩

def canonicalOutput10640 : ExponentCode := normalNode5465

theorem canonicalSound10640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10640.moment H = canonicalOutput10640.moment H :=
  canonical_of_padded canonicalInput10640 canonicalOutput10640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10641 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -2, 0, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput10641 : ExponentCode := normalNode5466

theorem canonicalSound10641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10641.moment H = canonicalOutput10641.moment H :=
  canonical_of_padded canonicalInput10641 canonicalOutput10641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10642 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -2, 2, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput10642 : ExponentCode := normalNode5467

theorem canonicalSound10642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10642.moment H = canonicalOutput10642.moment H :=
  canonical_of_padded canonicalInput10642 canonicalOutput10642 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10643 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput10643 : ExponentCode := normalNode11159

theorem canonicalSound10643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10643.moment H = canonicalOutput10643.moment H :=
  canonical_of_padded canonicalInput10643 canonicalOutput10643 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10644 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 3, -3], ![2, -1, -1, 0]]⟩

def canonicalOutput10644 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2861⟩

theorem canonicalSound10644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10644.moment H = canonicalOutput10644.moment H :=
  canonical_of_padded canonicalInput10644 canonicalOutput10644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10645 : ExponentCode := ⟨6, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![2, -2, -1, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput10645 : ExponentCode := normalNode5483

theorem canonicalSound10645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10645.moment H = canonicalOutput10645.moment H :=
  canonical_of_padded canonicalInput10645 canonicalOutput10645 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10646 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput10646 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1835⟩

theorem canonicalSound10646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10646.moment H = canonicalOutput10646.moment H :=
  canonical_of_padded canonicalInput10646 canonicalOutput10646 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10647 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, -1, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput10647 : ExponentCode := normalNode5192

theorem canonicalSound10647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10647.moment H = canonicalOutput10647.moment H :=
  canonical_of_padded canonicalInput10647 canonicalOutput10647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10648 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput10648 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1837⟩

theorem canonicalSound10648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10648.moment H = canonicalOutput10648.moment H :=
  canonical_of_padded canonicalInput10648 canonicalOutput10648 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation195, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10649 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10649 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2812⟩

theorem canonicalSound10649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10649.moment H = canonicalOutput10649.moment H :=
  canonical_of_padded canonicalInput10649 canonicalOutput10649 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10650 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10650 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2831⟩

theorem canonicalSound10650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10650.moment H = canonicalOutput10650.moment H :=
  canonical_of_padded canonicalInput10650 canonicalOutput10650 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10651 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 2, -3], ![2, -2, -1, 1]]⟩

def canonicalOutput10651 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node944⟩

theorem canonicalSound10651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10651.moment H = canonicalOutput10651.moment H :=
  canonical_of_padded canonicalInput10651 canonicalOutput10651 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput10652 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput10652 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound10652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10652.moment H = canonicalOutput10652.moment H :=
  canonical_of_padded canonicalInput10652 canonicalOutput10652 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput10653 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput10653 : ExponentCode := normalNode11209

theorem canonicalSound10653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10653.moment H = canonicalOutput10653.moment H :=
  canonical_of_padded canonicalInput10653 canonicalOutput10653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10654 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput10654 : ExponentCode := normalNode2932

theorem canonicalSound10654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10654.moment H = canonicalOutput10654.moment H :=
  canonical_of_padded canonicalInput10654 canonicalOutput10654 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10655 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput10655 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2072⟩

theorem canonicalSound10655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10655.moment H = canonicalOutput10655.moment H :=
  canonical_of_padded canonicalInput10655 canonicalOutput10655 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10656 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10656 : ExponentCode := normalNode9425

theorem canonicalSound10656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10656.moment H = canonicalOutput10656.moment H :=
  canonical_of_padded canonicalInput10656 canonicalOutput10656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10657 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 0, 1, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput10657 : ExponentCode := normalNode11209

theorem canonicalSound10657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10657.moment H = canonicalOutput10657.moment H :=
  canonical_of_padded canonicalInput10657 canonicalOutput10657 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10658 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, -2, -1, 1]]⟩

def canonicalOutput10658 : ExponentCode := normalNode2934

theorem canonicalSound10658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10658.moment H = canonicalOutput10658.moment H :=
  canonical_of_padded canonicalInput10658 canonicalOutput10658 (by decide) (by decide)
    ⟨false, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10659 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput10659 : ExponentCode := normalNode11115

theorem canonicalSound10659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10659.moment H = canonicalOutput10659.moment H :=
  canonical_of_padded canonicalInput10659 canonicalOutput10659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10660 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 0, -1, 1], ![2, -1, -1, 0]]⟩

def canonicalOutput10660 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2861⟩

theorem canonicalSound10660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10660.moment H = canonicalOutput10660.moment H :=
  canonical_of_padded canonicalInput10660 canonicalOutput10660 (by decide) (by decide)
    ⟨false, false, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10661 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput10661 : ExponentCode := normalNode11152

theorem canonicalSound10661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10661.moment H = canonicalOutput10661.moment H :=
  canonical_of_padded canonicalInput10661 canonicalOutput10661 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10662 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput10662 : ExponentCode := normalNode11146

theorem canonicalSound10662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10662.moment H = canonicalOutput10662.moment H :=
  canonical_of_padded canonicalInput10662 canonicalOutput10662 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10663 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput10663 : ExponentCode := normalNode4980

theorem canonicalSound10663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10663.moment H = canonicalOutput10663.moment H :=
  canonical_of_padded canonicalInput10663 canonicalOutput10663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10664 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, -2, 1], ![1, -1, 2, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput10664 : ExponentCode := normalNode5505

theorem canonicalSound10664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10664.moment H = canonicalOutput10664.moment H :=
  canonical_of_padded canonicalInput10664 canonicalOutput10664 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10665 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10665 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2056⟩

theorem canonicalSound10665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10665.moment H = canonicalOutput10665.moment H :=
  canonical_of_padded canonicalInput10665 canonicalOutput10665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput10666 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput10666 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1774⟩

theorem canonicalSound10666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10666.moment H = canonicalOutput10666.moment H :=
  canonical_of_padded canonicalInput10666 canonicalOutput10666 (by decide) (by decide)
    ⟨false, true, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10667 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10667 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound10667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10667.moment H = canonicalOutput10667.moment H :=
  canonical_of_padded canonicalInput10667 canonicalOutput10667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10668 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput10668 : ExponentCode := normalNode4396

theorem canonicalSound10668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10668.moment H = canonicalOutput10668.moment H :=
  canonical_of_padded canonicalInput10668 canonicalOutput10668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10669 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10669 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1655⟩

theorem canonicalSound10669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10669.moment H = canonicalOutput10669.moment H :=
  canonical_of_padded canonicalInput10669 canonicalOutput10669 (by decide) (by decide)
    ⟨false, true, canonicalPermutation25, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10670 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput10670 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1649⟩

theorem canonicalSound10670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10670.moment H = canonicalOutput10670.moment H :=
  canonical_of_padded canonicalInput10670 canonicalOutput10670 (by decide) (by decide)
    ⟨false, true, canonicalPermutation42, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput10671 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput10671 : ExponentCode := normalNode5509

theorem canonicalSound10671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10671.moment H = canonicalOutput10671.moment H :=
  canonical_of_padded canonicalInput10671 canonicalOutput10671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10672 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, -2, 0, 1], ![1, 0, -2, 1]]⟩

def canonicalOutput10672 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2283⟩

theorem canonicalSound10672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10672.moment H = canonicalOutput10672.moment H :=
  canonical_of_padded canonicalInput10672 canonicalOutput10672 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10673 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput10673 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2286⟩

theorem canonicalSound10673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10673.moment H = canonicalOutput10673.moment H :=
  canonical_of_padded canonicalInput10673 canonicalOutput10673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10674 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![1, -2, -2, 3], ![1, 1, 3, -5]]⟩

def canonicalOutput10674 : ExponentCode := normalNode7195

theorem canonicalSound10674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10674.moment H = canonicalOutput10674.moment H :=
  canonical_of_padded canonicalInput10674 canonicalOutput10674 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10675 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![1, -2, 4, -3], ![1, 1, -3, 1]]⟩

def canonicalOutput10675 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node932⟩

theorem canonicalSound10675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10675.moment H = canonicalOutput10675.moment H :=
  canonical_of_padded canonicalInput10675 canonicalOutput10675 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10676 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput10676 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node939⟩

theorem canonicalSound10676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10676.moment H = canonicalOutput10676.moment H :=
  canonical_of_padded canonicalInput10676 canonicalOutput10676 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10677 : ExponentCode := ⟨6, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, -2, 3], ![0, 1, 3, -4]]⟩

def canonicalOutput10677 : ExponentCode := normalNode5266

theorem canonicalSound10677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10677.moment H = canonicalOutput10677.moment H :=
  canonical_of_padded canonicalInput10677 canonicalOutput10677 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10678 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, -1, 1], ![1, -1, 4, -4], ![1, 0, -3, 2]]⟩

def canonicalOutput10678 : ExponentCode := normalNode7386

theorem canonicalSound10678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10678.moment H = canonicalOutput10678.moment H :=
  canonical_of_padded canonicalInput10678 canonicalOutput10678 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10679 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 0, 0], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput10679 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound10679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10679.moment H = canonicalOutput10679.moment H :=
  canonical_of_padded canonicalInput10679 canonicalOutput10679 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput10680 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 0, 0], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, -2, -1, 1]]⟩

def canonicalOutput10680 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩

theorem canonicalSound10680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10680.moment H = canonicalOutput10680.moment H :=
  canonical_of_padded canonicalInput10680 canonicalOutput10680 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput10681 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 0, 0], ![0, 1, -3, 2], ![2, -2, 3, -3]]⟩

def canonicalOutput10681 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node196⟩

theorem canonicalSound10681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10681.moment H = canonicalOutput10681.moment H :=
  canonical_of_padded canonicalInput10681 canonicalOutput10681 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10682 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 0, 0], ![1, -1, -2, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput10682 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node226⟩

theorem canonicalSound10682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10682.moment H = canonicalOutput10682.moment H :=
  canonical_of_padded canonicalInput10682 canonicalOutput10682 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10683 : ExponentCode := ⟨4, 4, ![![-2, 1, 0, 1], ![0, 0, 0, 0], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput10683 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound10683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10683.moment H = canonicalOutput10683.moment H :=
  canonical_of_padded canonicalInput10683 canonicalOutput10683 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10684 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, 1, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput10684 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2318⟩

theorem canonicalSound10684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10684.moment H = canonicalOutput10684.moment H :=
  canonical_of_padded canonicalInput10684 canonicalOutput10684 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10685 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, -3, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput10685 : ExponentCode := normalNode5425

theorem canonicalSound10685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10685.moment H = canonicalOutput10685.moment H :=
  canonical_of_padded canonicalInput10685 canonicalOutput10685 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10686 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, -1, -2, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput10686 : ExponentCode := normalNode5428

theorem canonicalSound10686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10686.moment H = canonicalOutput10686.moment H :=
  canonical_of_padded canonicalInput10686 canonicalOutput10686 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10687 : ExponentCode := ⟨5, 4, ![![-2, 1, 0, 1], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput10687 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2315⟩

theorem canonicalSound10687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10687.moment H = canonicalOutput10687.moment H :=
  canonical_of_padded canonicalInput10687 canonicalOutput10687 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
