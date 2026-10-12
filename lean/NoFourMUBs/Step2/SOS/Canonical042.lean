import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes004
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput2688 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput2688 : ExponentCode := normalNode10316

theorem canonicalSound2688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2688.moment H = canonicalOutput2688.moment H :=
  canonical_of_padded canonicalInput2688 canonicalOutput2688 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput2689 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput2689 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩

theorem canonicalSound2689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2689.moment H = canonicalOutput2689.moment H :=
  canonical_of_padded canonicalInput2689 canonicalOutput2689 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2690 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 0, 0], ![1, 0, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput2690 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node762⟩

theorem canonicalSound2690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2690.moment H = canonicalOutput2690.moment H :=
  canonical_of_padded canonicalInput2690 canonicalOutput2690 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2691 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![2, 1, 1, -4]]⟩

def canonicalOutput2691 : ExponentCode := normalNode10938

theorem canonicalSound2691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2691.moment H = canonicalOutput2691.moment H :=
  canonical_of_padded canonicalInput2691 canonicalOutput2691 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation193⟩ (by decide +kernel) hH

def canonicalInput2692 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput2692 : ExponentCode := normalNode6475

theorem canonicalSound2692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2692.moment H = canonicalOutput2692.moment H :=
  canonical_of_padded canonicalInput2692 canonicalOutput2692 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2693 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 2, 1, -4]]⟩

def canonicalOutput2693 : ExponentCode := normalNode1213

theorem canonicalSound2693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2693.moment H = canonicalOutput2693.moment H :=
  canonical_of_padded canonicalInput2693 canonicalOutput2693 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2694 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput2694 : ExponentCode := normalNode6471

theorem canonicalSound2694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2694.moment H = canonicalOutput2694.moment H :=
  canonical_of_padded canonicalInput2694 canonicalOutput2694 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2695 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput2695 : ExponentCode := normalNode6472

theorem canonicalSound2695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2695.moment H = canonicalOutput2695.moment H :=
  canonical_of_padded canonicalInput2695 canonicalOutput2695 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2696 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput2696 : ExponentCode := normalNode6473

theorem canonicalSound2696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2696.moment H = canonicalOutput2696.moment H :=
  canonical_of_padded canonicalInput2696 canonicalOutput2696 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2697 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 1, -1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput2697 : ExponentCode := normalNode6473

theorem canonicalSound2697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2697.moment H = canonicalOutput2697.moment H :=
  canonical_of_padded canonicalInput2697 canonicalOutput2697 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2698 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 0, 2, -2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput2698 : ExponentCode := normalNode6476

theorem canonicalSound2698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2698.moment H = canonicalOutput2698.moment H :=
  canonical_of_padded canonicalInput2698 canonicalOutput2698 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2699 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![2, 0, 2, -4]]⟩

def canonicalOutput2699 : ExponentCode := normalNode6475

theorem canonicalSound2699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2699.moment H = canonicalOutput2699.moment H :=
  canonical_of_padded canonicalInput2699 canonicalOutput2699 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2700 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 2, -3]]⟩

def canonicalOutput2700 : ExponentCode := normalNode6484

theorem canonicalSound2700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2700.moment H = canonicalOutput2700.moment H :=
  canonical_of_padded canonicalInput2700 canonicalOutput2700 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2701 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput2701 : ExponentCode := normalNode6484

theorem canonicalSound2701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2701.moment H = canonicalOutput2701.moment H :=
  canonical_of_padded canonicalInput2701 canonicalOutput2701 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2702 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput2702 : ExponentCode := normalNode1203

theorem canonicalSound2702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2702.moment H = canonicalOutput2702.moment H :=
  canonical_of_padded canonicalInput2702 canonicalOutput2702 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2703 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, 0, -2]]⟩

def canonicalOutput2703 : ExponentCode := normalNode1204

theorem canonicalSound2703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2703.moment H = canonicalOutput2703.moment H :=
  canonical_of_padded canonicalInput2703 canonicalOutput2703 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2704 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput2704 : ExponentCode := normalNode6479

theorem canonicalSound2704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2704.moment H = canonicalOutput2704.moment H :=
  canonical_of_padded canonicalInput2704 canonicalOutput2704 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2705 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput2705 : ExponentCode := normalNode6481

theorem canonicalSound2705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2705.moment H = canonicalOutput2705.moment H :=
  canonical_of_padded canonicalInput2705 canonicalOutput2705 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2706 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput2706 : ExponentCode := normalNode1214

theorem canonicalSound2706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2706.moment H = canonicalOutput2706.moment H :=
  canonical_of_padded canonicalInput2706 canonicalOutput2706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2707 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2707 : ExponentCode := normalNode6478

theorem canonicalSound2707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2707.moment H = canonicalOutput2707.moment H :=
  canonical_of_padded canonicalInput2707 canonicalOutput2707 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2708 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput2708 : ExponentCode := normalNode1216

theorem canonicalSound2708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2708.moment H = canonicalOutput2708.moment H :=
  canonical_of_padded canonicalInput2708 canonicalOutput2708 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2709 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 1, 2, -3], ![2, 0, 0, -2]]⟩

def canonicalOutput2709 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node763⟩

theorem canonicalSound2709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2709.moment H = canonicalOutput2709.moment H :=
  canonical_of_padded canonicalInput2709 canonicalOutput2709 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2710 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![0, 2, 2, -4], ![2, -1, 0, -1]]⟩

def canonicalOutput2710 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1238⟩

theorem canonicalSound2710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2710.moment H = canonicalOutput2710.moment H :=
  canonical_of_padded canonicalInput2710 canonicalOutput2710 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2711 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput2711 : ExponentCode := normalNode7960

theorem canonicalSound2711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2711.moment H = canonicalOutput2711.moment H :=
  canonical_of_padded canonicalInput2711 canonicalOutput2711 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2712 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 1, 1, -3]]⟩

def canonicalOutput2712 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node761⟩

theorem canonicalSound2712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2712.moment H = canonicalOutput2712.moment H :=
  canonical_of_padded canonicalInput2712 canonicalOutput2712 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2713 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 1, 0, -2]]⟩

def canonicalOutput2713 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node762⟩

theorem canonicalSound2713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2713.moment H = canonicalOutput2713.moment H :=
  canonical_of_padded canonicalInput2713 canonicalOutput2713 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2714 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput2714 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1108⟩

theorem canonicalSound2714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2714.moment H = canonicalOutput2714.moment H :=
  canonical_of_padded canonicalInput2714 canonicalOutput2714 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput2715 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput2715 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1272⟩

theorem canonicalSound2715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2715.moment H = canonicalOutput2715.moment H :=
  canonical_of_padded canonicalInput2715 canonicalOutput2715 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput2716 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput2716 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1341⟩

theorem canonicalSound2716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2716.moment H = canonicalOutput2716.moment H :=
  canonical_of_padded canonicalInput2716 canonicalOutput2716 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput2717 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput2717 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1170⟩

theorem canonicalSound2717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2717.moment H = canonicalOutput2717.moment H :=
  canonical_of_padded canonicalInput2717 canonicalOutput2717 (by decide) (by decide)
    ⟨true, false, canonicalPermutation9, canonicalPermutation40⟩ (by decide +kernel) hH

def canonicalInput2718 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 0, 2, -4]]⟩

def canonicalOutput2718 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node281⟩

theorem canonicalSound2718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2718.moment H = canonicalOutput2718.moment H :=
  canonical_of_padded canonicalInput2718 canonicalOutput2718 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2719 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 0, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput2719 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node464⟩

theorem canonicalSound2719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2719.moment H = canonicalOutput2719.moment H :=
  canonical_of_padded canonicalInput2719 canonicalOutput2719 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2720 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput2720 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1042⟩

theorem canonicalSound2720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2720.moment H = canonicalOutput2720.moment H :=
  canonical_of_padded canonicalInput2720 canonicalOutput2720 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput2721 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 0, 0], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2721 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1070⟩

theorem canonicalSound2721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2721.moment H = canonicalOutput2721.moment H :=
  canonical_of_padded canonicalInput2721 canonicalOutput2721 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation29⟩ (by decide +kernel) hH

def canonicalInput2722 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 0, 0], ![1, -1, 2, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput2722 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node134⟩

theorem canonicalSound2722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2722.moment H = canonicalOutput2722.moment H :=
  canonical_of_padded canonicalInput2722 canonicalOutput2722 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2723 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 0, 0], ![1, 0, 0, -1], ![1, 1, 1, -3]]⟩

def canonicalOutput2723 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node253⟩

theorem canonicalSound2723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2723.moment H = canonicalOutput2723.moment H :=
  canonical_of_padded canonicalInput2723 canonicalOutput2723 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2724 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 0, 0], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput2724 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node190⟩

theorem canonicalSound2724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2724.moment H = canonicalOutput2724.moment H :=
  canonical_of_padded canonicalInput2724 canonicalOutput2724 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput2725 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, 1, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput2725 : ExponentCode := normalNode1291

theorem canonicalSound2725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2725.moment H = canonicalOutput2725.moment H :=
  canonical_of_padded canonicalInput2725 canonicalOutput2725 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2726 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 3, -2, -2]]⟩

def canonicalOutput2726 : ExponentCode := normalNode1293

theorem canonicalSound2726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2726.moment H = canonicalOutput2726.moment H :=
  canonical_of_padded canonicalInput2726 canonicalOutput2726 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2727 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput2727 : ExponentCode := normalNode1295

theorem canonicalSound2727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2727.moment H = canonicalOutput2727.moment H :=
  canonical_of_padded canonicalInput2727 canonicalOutput2727 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput2728 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, -1, 1], ![2, 1, 1, -4]]⟩

def canonicalOutput2728 : ExponentCode := normalNode10938

theorem canonicalSound2728 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2728.moment H = canonicalOutput2728.moment H :=
  canonical_of_padded canonicalInput2728 canonicalOutput2728 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2729 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput2729 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1177⟩

theorem canonicalSound2729 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2729.moment H = canonicalOutput2729.moment H :=
  canonical_of_padded canonicalInput2729 canonicalOutput2729 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2730 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput2730 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node894⟩

theorem canonicalSound2730 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2730.moment H = canonicalOutput2730.moment H :=
  canonical_of_padded canonicalInput2730 canonicalOutput2730 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2731 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput2731 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1176⟩

theorem canonicalSound2731 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2731.moment H = canonicalOutput2731.moment H :=
  canonical_of_padded canonicalInput2731 canonicalOutput2731 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput2732 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput2732 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node766⟩

theorem canonicalSound2732 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2732.moment H = canonicalOutput2732.moment H :=
  canonical_of_padded canonicalInput2732 canonicalOutput2732 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2733 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 0, 0], ![2, 1, 0, -3]]⟩

def canonicalOutput2733 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node254⟩

theorem canonicalSound2733 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2733.moment H = canonicalOutput2733.moment H :=
  canonical_of_padded canonicalInput2733 canonicalOutput2733 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput2734 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, 1, -3, 0]]⟩

def canonicalOutput2734 : ExponentCode := normalNode6488

theorem canonicalSound2734 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2734.moment H = canonicalOutput2734.moment H :=
  canonical_of_padded canonicalInput2734 canonicalOutput2734 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2735 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, 1, -2, -1]]⟩

def canonicalOutput2735 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node765⟩

theorem canonicalSound2735 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2735.moment H = canonicalOutput2735.moment H :=
  canonical_of_padded canonicalInput2735 canonicalOutput2735 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2736 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -2, 1], ![2, 0, 2, -4]]⟩

def canonicalOutput2736 : ExponentCode := normalNode6498

theorem canonicalSound2736 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2736.moment H = canonicalOutput2736.moment H :=
  canonical_of_padded canonicalInput2736 canonicalOutput2736 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2737 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput2737 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1177⟩

theorem canonicalSound2737 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2737.moment H = canonicalOutput2737.moment H :=
  canonical_of_padded canonicalInput2737 canonicalOutput2737 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation189⟩ (by decide +kernel) hH

def canonicalInput2738 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput2738 : ExponentCode := normalNode1276

theorem canonicalSound2738 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2738.moment H = canonicalOutput2738.moment H :=
  canonical_of_padded canonicalInput2738 canonicalOutput2738 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2739 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2739 : ExponentCode := normalNode6497

theorem canonicalSound2739 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2739.moment H = canonicalOutput2739.moment H :=
  canonical_of_padded canonicalInput2739 canonicalOutput2739 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2740 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput2740 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2401⟩

theorem canonicalSound2740 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2740.moment H = canonicalOutput2740.moment H :=
  canonical_of_padded canonicalInput2740 canonicalOutput2740 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2741 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 0, 1, -3]]⟩

def canonicalOutput2741 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1177⟩

theorem canonicalSound2741 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2741.moment H = canonicalOutput2741.moment H :=
  canonical_of_padded canonicalInput2741 canonicalOutput2741 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2742 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput2742 : ExponentCode := normalNode6496

theorem canonicalSound2742 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2742.moment H = canonicalOutput2742.moment H :=
  canonical_of_padded canonicalInput2742 canonicalOutput2742 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2743 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput2743 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node768⟩

theorem canonicalSound2743 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2743.moment H = canonicalOutput2743.moment H :=
  canonical_of_padded canonicalInput2743 canonicalOutput2743 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2744 : ExponentCode := ⟨5, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, -2, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput2744 : ExponentCode := normalNode1303

theorem canonicalSound2744 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2744.moment H = canonicalOutput2744.moment H :=
  canonical_of_padded canonicalInput2744 canonicalOutput2744 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput2745 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![0, 2, 2, -4], ![2, -1, -2, 1]]⟩

def canonicalOutput2745 : ExponentCode := normalNode10935

theorem canonicalSound2745 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2745.moment H = canonicalOutput2745.moment H :=
  canonical_of_padded canonicalInput2745 canonicalOutput2745 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2746 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 3, -1, -3]]⟩

def canonicalOutput2746 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1097⟩

theorem canonicalSound2746 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2746.moment H = canonicalOutput2746.moment H :=
  canonical_of_padded canonicalInput2746 canonicalOutput2746 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput2747 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, -2, 2, -1], ![1, 3, -2, -2]]⟩

def canonicalOutput2747 : ExponentCode := normalNode6952

theorem canonicalSound2747 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2747.moment H = canonicalOutput2747.moment H :=
  canonical_of_padded canonicalInput2747 canonicalOutput2747 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput2748 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, -1, 3, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput2748 : ExponentCode := normalNode9757

theorem canonicalSound2748 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2748.moment H = canonicalOutput2748.moment H :=
  canonical_of_padded canonicalInput2748 canonicalOutput2748 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput2749 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput2749 : ExponentCode := normalNode6494

theorem canonicalSound2749 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2749.moment H = canonicalOutput2749.moment H :=
  canonical_of_padded canonicalInput2749 canonicalOutput2749 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2750 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput2750 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node767⟩

theorem canonicalSound2750 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2750.moment H = canonicalOutput2750.moment H :=
  canonical_of_padded canonicalInput2750 canonicalOutput2750 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput2751 : ExponentCode := ⟨4, 4, ![![-2, -1, -1, 4], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput2751 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node767⟩

theorem canonicalSound2751 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput2751.moment H = canonicalOutput2751.moment H :=
  canonical_of_padded canonicalInput2751 canonicalOutput2751 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
