import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2624 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 1, 0, -1], ![2, 2, -2, -2]]⟩

def canonicalOutput2624 : ExponentCode := normalNode7471

theorem canonicalSound2624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2624.moment H = canonicalOutput2624.moment H :=
  canonical_of_padded canonicalInput2624 canonicalOutput2624 (by decide) (by decide)
    ⟨true, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2625 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 2, -2, 0], ![0, 1, 0, -1], ![2, 0, 0, -2]]⟩

def canonicalOutput2625 : ExponentCode := normalNode1162

theorem canonicalSound2625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2625.moment H = canonicalOutput2625.moment H :=
  canonical_of_padded canonicalInput2625 canonicalOutput2625 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2626 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2626 : ExponentCode := normalNode1174

theorem canonicalSound2626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2626.moment H = canonicalOutput2626.moment H :=
  canonical_of_padded canonicalInput2626 canonicalOutput2626 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2627 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![0, 2, -1, -1], ![0, 1, 0, -1], ![2, 0, -1, -1]]⟩

def canonicalOutput2627 : ExponentCode := normalNode1188

theorem canonicalSound2627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2627.moment H = canonicalOutput2627.moment H :=
  canonical_of_padded canonicalInput2627 canonicalOutput2627 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2628 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput2628 : ExponentCode := normalNode10360

theorem canonicalSound2628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2628.moment H = canonicalOutput2628.moment H :=
  canonical_of_padded canonicalInput2628 canonicalOutput2628 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2629 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![1, 0, 0, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput2629 : ExponentCode := normalNode7371

theorem canonicalSound2629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2629.moment H = canonicalOutput2629.moment H :=
  canonical_of_padded canonicalInput2629 canonicalOutput2629 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2630 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![1, 2, -2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput2630 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code281

theorem canonicalSound2630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2630.moment H = canonicalOutput2630.moment H :=
  canonical_of_padded canonicalInput2630 canonicalOutput2630 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2631 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![1, 2, -1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2631 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code280

theorem canonicalSound2631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2631.moment H = canonicalOutput2631.moment H :=
  canonical_of_padded canonicalInput2631 canonicalOutput2631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2632 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![1, 2, 0, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput2632 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code279

theorem canonicalSound2632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2632.moment H = canonicalOutput2632.moment H :=
  canonical_of_padded canonicalInput2632 canonicalOutput2632 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2633 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -2, 3, -1], ![1, 3, -2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2633 : ExponentCode := normalNode7371

theorem canonicalSound2633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2633.moment H = canonicalOutput2633.moment H :=
  canonical_of_padded canonicalInput2633 canonicalOutput2633 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2634 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 0, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput2634 : ExponentCode := normalNode411

theorem canonicalSound2634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2634.moment H = canonicalOutput2634.moment H :=
  canonical_of_padded canonicalInput2634 canonicalOutput2634 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2635 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput2635 : ExponentCode := normalNode11119

theorem canonicalSound2635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2635.moment H = canonicalOutput2635.moment H :=
  canonical_of_padded canonicalInput2635 canonicalOutput2635 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput2636 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 1, 1, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput2636 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1113⟩

theorem canonicalSound2636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2636.moment H = canonicalOutput2636.moment H :=
  canonical_of_padded canonicalInput2636 canonicalOutput2636 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2637 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![0, 2, -1, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput2637 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1348⟩

theorem canonicalSound2637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2637.moment H = canonicalOutput2637.moment H :=
  canonical_of_padded canonicalInput2637 canonicalOutput2637 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2638 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput2638 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1272⟩

theorem canonicalSound2638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2638.moment H = canonicalOutput2638.moment H :=
  canonical_of_padded canonicalInput2638 canonicalOutput2638 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput2639 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput2639 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1100⟩

theorem canonicalSound2639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2639.moment H = canonicalOutput2639.moment H :=
  canonical_of_padded canonicalInput2639 canonicalOutput2639 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2640 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput2640 : ExponentCode := normalNode1436

theorem canonicalSound2640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2640.moment H = canonicalOutput2640.moment H :=
  canonical_of_padded canonicalInput2640 canonicalOutput2640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2641 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 1, 0, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2641 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1553⟩

theorem canonicalSound2641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2641.moment H = canonicalOutput2641.moment H :=
  canonical_of_padded canonicalInput2641 canonicalOutput2641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2642 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput2642 : ExponentCode := normalNode11119

theorem canonicalSound2642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2642.moment H = canonicalOutput2642.moment H :=
  canonical_of_padded canonicalInput2642 canonicalOutput2642 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation188⟩ (by decide +kernel) hH

def canonicalInput2643 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 0, 2, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput2643 : ExponentCode := normalNode1264

theorem canonicalSound2643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2643.moment H = canonicalOutput2643.moment H :=
  canonical_of_padded canonicalInput2643 canonicalOutput2643 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2644 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput2644 : ExponentCode := normalNode1254

theorem canonicalSound2644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2644.moment H = canonicalOutput2644.moment H :=
  canonical_of_padded canonicalInput2644 canonicalOutput2644 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2645 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput2645 : ExponentCode := normalNode512

theorem canonicalSound2645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2645.moment H = canonicalOutput2645.moment H :=
  canonical_of_padded canonicalInput2645 canonicalOutput2645 (by decide) (by decide)
    ⟨false, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2646 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput2646 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1555⟩

theorem canonicalSound2646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2646.moment H = canonicalOutput2646.moment H :=
  canonical_of_padded canonicalInput2646 canonicalOutput2646 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2647 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput2647 : ExponentCode := normalNode11119

theorem canonicalSound2647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2647.moment H = canonicalOutput2647.moment H :=
  canonical_of_padded canonicalInput2647 canonicalOutput2647 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2648 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 0, 2, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput2648 : ExponentCode := normalNode1265

theorem canonicalSound2648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2648.moment H = canonicalOutput2648.moment H :=
  canonical_of_padded canonicalInput2648 canonicalOutput2648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2649 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 1, 1, -2], ![2, 1, -1, -2]]⟩

def canonicalOutput2649 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1113⟩

theorem canonicalSound2649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2649.moment H = canonicalOutput2649.moment H :=
  canonical_of_padded canonicalInput2649 canonicalOutput2649 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2650 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 2, -1, -1], ![2, 0, 1, -3]]⟩

def canonicalOutput2650 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1348⟩

theorem canonicalSound2650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2650.moment H = canonicalOutput2650.moment H :=
  canonical_of_padded canonicalInput2650 canonicalOutput2650 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2651 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 2, 1, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput2651 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1306⟩

theorem canonicalSound2651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2651.moment H = canonicalOutput2651.moment H :=
  canonical_of_padded canonicalInput2651 canonicalOutput2651 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2652 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 3, 1, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2652 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1617⟩

theorem canonicalSound2652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2652.moment H = canonicalOutput2652.moment H :=
  canonical_of_padded canonicalInput2652 canonicalOutput2652 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2653 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput2653 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1617⟩

theorem canonicalSound2653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2653.moment H = canonicalOutput2653.moment H :=
  canonical_of_padded canonicalInput2653 canonicalOutput2653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2654 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput2654 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1272⟩

theorem canonicalSound2654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2654.moment H = canonicalOutput2654.moment H :=
  canonical_of_padded canonicalInput2654 canonicalOutput2654 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2655 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput2655 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1100⟩

theorem canonicalSound2655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2655.moment H = canonicalOutput2655.moment H :=
  canonical_of_padded canonicalInput2655 canonicalOutput2655 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2656 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 1, 0], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput2656 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1341⟩

theorem canonicalSound2656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2656.moment H = canonicalOutput2656.moment H :=
  canonical_of_padded canonicalInput2656 canonicalOutput2656 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2657 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 2, 0, -3]]⟩

def canonicalOutput2657 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1278⟩

theorem canonicalSound2657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2657.moment H = canonicalOutput2657.moment H :=
  canonical_of_padded canonicalInput2657 canonicalOutput2657 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput2658 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput2658 : ExponentCode := normalNode1284

theorem canonicalSound2658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2658.moment H = canonicalOutput2658.moment H :=
  canonical_of_padded canonicalInput2658 canonicalOutput2658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2659 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2659 : ExponentCode := normalNode1302

theorem canonicalSound2659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2659.moment H = canonicalOutput2659.moment H :=
  canonical_of_padded canonicalInput2659 canonicalOutput2659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2660 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![0, 1, 2, -3], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2660 : ExponentCode := normalNode1305

theorem canonicalSound2660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2660.moment H = canonicalOutput2660.moment H :=
  canonical_of_padded canonicalInput2660 canonicalOutput2660 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2661 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput2661 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node954⟩

theorem canonicalSound2661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2661.moment H = canonicalOutput2661.moment H :=
  canonical_of_padded canonicalInput2661 canonicalOutput2661 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2662 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, -1, 1, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput2662 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code564

theorem canonicalSound2662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2662.moment H = canonicalOutput2662.moment H :=
  canonical_of_padded canonicalInput2662 canonicalOutput2662 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2663 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, 2, -3, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2663 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code292

theorem canonicalSound2663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2663.moment H = canonicalOutput2663.moment H :=
  canonical_of_padded canonicalInput2663 canonicalOutput2663 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2664 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 2, -1], ![1, 2, 0, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput2664 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1278⟩

theorem canonicalSound2664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2664.moment H = canonicalOutput2664.moment H :=
  canonical_of_padded canonicalInput2664 canonicalOutput2664 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2665 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, 1, 0, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2665 : ExponentCode := normalNode1311

theorem canonicalSound2665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2665.moment H = canonicalOutput2665.moment H :=
  canonical_of_padded canonicalInput2665 canonicalOutput2665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2666 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2666 : ExponentCode := normalNode1320

theorem canonicalSound2666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2666.moment H = canonicalOutput2666.moment H :=
  canonical_of_padded canonicalInput2666 canonicalOutput2666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2667 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 1, -1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2667 : ExponentCode := normalNode1319

theorem canonicalSound2667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2667.moment H = canonicalOutput2667.moment H :=
  canonical_of_padded canonicalInput2667 canonicalOutput2667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2668 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2668 : ExponentCode := normalNode1326

theorem canonicalSound2668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2668.moment H = canonicalOutput2668.moment H :=
  canonical_of_padded canonicalInput2668 canonicalOutput2668 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2669 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 1, -1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2669 : ExponentCode := normalNode1325

theorem canonicalSound2669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2669.moment H = canonicalOutput2669.moment H :=
  canonical_of_padded canonicalInput2669 canonicalOutput2669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2670 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2670 : ExponentCode := normalNode1327

theorem canonicalSound2670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2670.moment H = canonicalOutput2670.moment H :=
  canonical_of_padded canonicalInput2670 canonicalOutput2670 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2671 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![0, 2, -1, -1], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2671 : ExponentCode := normalNode1330

theorem canonicalSound2671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2671.moment H = canonicalOutput2671.moment H :=
  canonical_of_padded canonicalInput2671 canonicalOutput2671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2672 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput2672 : ExponentCode := normalNode7844

theorem canonicalSound2672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2672.moment H = canonicalOutput2672.moment H :=
  canonical_of_padded canonicalInput2672 canonicalOutput2672 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput2673 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![1, 1, 0, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput2673 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node458⟩

theorem canonicalSound2673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2673.moment H = canonicalOutput2673.moment H :=
  canonical_of_padded canonicalInput2673 canonicalOutput2673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2674 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![1, 2, -3, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput2674 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code301

theorem canonicalSound2674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2674.moment H = canonicalOutput2674.moment H :=
  canonical_of_padded canonicalInput2674 canonicalOutput2674 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2675 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![1, 2, -2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput2675 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node759⟩

theorem canonicalSound2675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2675.moment H = canonicalOutput2675.moment H :=
  canonical_of_padded canonicalInput2675 canonicalOutput2675 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput2676 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![1, 2, -1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput2676 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node988⟩

theorem canonicalSound2676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2676.moment H = canonicalOutput2676.moment H :=
  canonical_of_padded canonicalInput2676 canonicalOutput2676 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2677 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 3, -2], ![1, 2, 0, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput2677 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code300

theorem canonicalSound2677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2677.moment H = canonicalOutput2677.moment H :=
  canonical_of_padded canonicalInput2677 canonicalOutput2677 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2678 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, 1, -2, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2678 : ExponentCode := normalNode1336

theorem canonicalSound2678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2678.moment H = canonicalOutput2678.moment H :=
  canonical_of_padded canonicalInput2678 canonicalOutput2678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2679 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, 1, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2679 : ExponentCode := normalNode1337

theorem canonicalSound2679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2679.moment H = canonicalOutput2679.moment H :=
  canonical_of_padded canonicalInput2679 canonicalOutput2679 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2680 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 4, -3], ![1, 0, -1, 0], ![1, 2, -2, -1]]⟩

def canonicalOutput2680 : ExponentCode := normalNode6465

theorem canonicalSound2680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2680.moment H = canonicalOutput2680.moment H :=
  canonical_of_padded canonicalInput2680 canonicalOutput2680 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput2681 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 4, -3], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput2681 : ExponentCode := normalNode8899

theorem canonicalSound2681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2681.moment H = canonicalOutput2681.moment H :=
  canonical_of_padded canonicalInput2681 canonicalOutput2681 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput2682 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 4, -3], ![1, 1, -1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput2682 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code306

theorem canonicalSound2682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2682.moment H = canonicalOutput2682.moment H :=
  canonical_of_padded canonicalInput2682 canonicalOutput2682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2683 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 4, -3], ![1, 2, -3, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2683 : ExponentCode := normalNode8899

theorem canonicalSound2683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2683.moment H = canonicalOutput2683.moment H :=
  canonical_of_padded canonicalInput2683 canonicalOutput2683 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput2684 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, -1, 4, -3], ![1, 2, -2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput2684 : ExponentCode := normalNode6465

theorem canonicalSound2684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2684.moment H = canonicalOutput2684.moment H :=
  canonical_of_padded canonicalInput2684 canonicalOutput2684 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput2685 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 1, -1, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput2685 : ExponentCode := normalNode1249

theorem canonicalSound2685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2685.moment H = canonicalOutput2685.moment H :=
  canonical_of_padded canonicalInput2685 canonicalOutput2685 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2686 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, 0, -1, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput2686 : ExponentCode := normalNode1261

theorem canonicalSound2686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2686.moment H = canonicalOutput2686.moment H :=
  canonical_of_padded canonicalInput2686 canonicalOutput2686 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2687 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, 1, -1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput2687 : ExponentCode := normalNode1287

theorem canonicalSound2687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2687.moment H = canonicalOutput2687.moment H :=
  canonical_of_padded canonicalInput2687 canonicalOutput2687 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
