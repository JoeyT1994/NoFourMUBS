import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20608 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 1, 0], ![0, 0, 1, 1, -2], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput20608 : ExponentCode := normalNode10523

theorem canonicalSound20608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20608.moment H = canonicalOutput20608.moment H :=
  canonical_of_padded canonicalInput20608 canonicalOutput20608 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20609 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20609 : ExponentCode := normalNode11165

theorem canonicalSound20609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20609.moment H = canonicalOutput20609.moment H :=
  canonical_of_padded canonicalInput20609 canonicalOutput20609 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput20610 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 1, 0], ![0, 1, -2, 1, 0], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput20610 : ExponentCode := normalNode10529

theorem canonicalSound20610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20610.moment H = canonicalOutput20610.moment H :=
  canonical_of_padded canonicalInput20610 canonicalOutput20610 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20611 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 1, 0], ![0, 1, -2, 2, -1], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput20611 : ExponentCode := normalNode10530

theorem canonicalSound20611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20611.moment H = canonicalOutput20611.moment H :=
  canonical_of_padded canonicalInput20611 canonicalOutput20611 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20612 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 1, 0], ![0, 2, -2, 1, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput20612 : ExponentCode := normalNode10569

theorem canonicalSound20612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20612.moment H = canonicalOutput20612.moment H :=
  canonical_of_padded canonicalInput20612 canonicalOutput20612 (by decide) (by decide)
    ⟨true, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20613 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 1, 0], ![1, 1, -2, 1, -1], ![0, 1, 1, -2, 0]]⟩

def canonicalOutput20613 : ExponentCode := normalNode10529

theorem canonicalSound20613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20613.moment H = canonicalOutput20613.moment H :=
  canonical_of_padded canonicalInput20613 canonicalOutput20613 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20614 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 2, -1], ![0, 1, -2, 1, 0], ![1, 1, 1, -3, 0]]⟩

def canonicalOutput20614 : ExponentCode := normalNode10530

theorem canonicalSound20614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20614.moment H = canonicalOutput20614.moment H :=
  canonical_of_padded canonicalInput20614 canonicalOutput20614 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20615 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -2, 1, 2, -1], ![1, 1, -2, 1, -1], ![0, 1, 1, -3, 1]]⟩

def canonicalOutput20615 : ExponentCode := normalNode9374

theorem canonicalSound20615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20615.moment H = canonicalOutput20615.moment H :=
  canonical_of_padded canonicalInput20615 canonicalOutput20615 (by decide) (by decide)
    ⟨true, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20616 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 0, 2], ![-1, -1, 2, 1, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20616 : ExponentCode := normalNode2163

theorem canonicalSound20616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20616.moment H = canonicalOutput20616.moment H :=
  canonical_of_padded canonicalInput20616 canonicalOutput20616 (by decide) (by decide)
    ⟨false, true, canonicalPermutation178, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput20617 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![-1, 2, -1, 1, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20617 : ExponentCode := normalNode2163

theorem canonicalSound20617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20617.moment H = canonicalOutput20617.moment H :=
  canonical_of_padded canonicalInput20617 canonicalOutput20617 (by decide) (by decide)
    ⟨false, true, canonicalPermutation179, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput20618 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![0, 0, 0, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20618 : ExponentCode := normalNode8236

theorem canonicalSound20618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20618.moment H = canonicalOutput20618.moment H :=
  canonical_of_padded canonicalInput20618 canonicalOutput20618 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20619 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 0, 2], ![0, -1, 2, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![0, 0, 0, 2, -2]]⟩

def canonicalOutput20619 : ExponentCode := normalNode10446

theorem canonicalSound20619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20619.moment H = canonicalOutput20619.moment H :=
  canonical_of_padded canonicalInput20619 canonicalOutput20619 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20620 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 1, 1], ![-1, -1, 2, 0, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20620 : ExponentCode := normalNode3680

theorem canonicalSound20620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20620.moment H = canonicalOutput20620.moment H :=
  canonical_of_padded canonicalInput20620 canonicalOutput20620 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation257, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20621 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 1, 1], ![0, -1, 2, -1, 0], ![-1, 2, -1, 1, -1], ![1, 0, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20621 : ExponentCode := normalNode4139

theorem canonicalSound20621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20621.moment H = canonicalOutput20621.moment H :=
  canonical_of_padded canonicalInput20621 canonicalOutput20621 (by decide) (by decide)
    ⟨false, true, canonicalPermutation180, OAI.MUB6.Certificate.PairSemantics.permutation177⟩ (by decide +kernel) hH

def canonicalInput20622 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 1, 1], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![0, 0, 0, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20622 : ExponentCode := normalNode8185

theorem canonicalSound20622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20622.moment H = canonicalOutput20622.moment H :=
  canonical_of_padded canonicalInput20622 canonicalOutput20622 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20623 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 1, 1], ![0, -1, 2, -1, 0], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1], ![0, 0, 0, 2, -2]]⟩

def canonicalOutput20623 : ExponentCode := normalNode10389

theorem canonicalSound20623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20623.moment H = canonicalOutput20623.moment H :=
  canonical_of_padded canonicalInput20623 canonicalOutput20623 (by decide) (by decide)
    ⟨false, true, canonicalPermutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20624 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 1, 1], ![0, 1, 0, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput20624 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound20624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20624.moment H = canonicalOutput20624.moment H :=
  canonical_of_padded canonicalInput20624 canonicalOutput20624 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20625 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 1, 1], ![0, 1, 1, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20625 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2587⟩

theorem canonicalSound20625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20625.moment H = canonicalOutput20625.moment H :=
  canonical_of_padded canonicalInput20625 canonicalOutput20625 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20626 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 2, 0], ![0, 0, 2, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput20626 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound20626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20626.moment H = canonicalOutput20626.moment H :=
  canonical_of_padded canonicalInput20626 canonicalOutput20626 (by decide) (by decide)
    ⟨true, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20627 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 2, 0], ![0, 0, 2, -1, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20627 : ExponentCode := normalNode10061

theorem canonicalSound20627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20627.moment H = canonicalOutput20627.moment H :=
  canonical_of_padded canonicalInput20627 canonicalOutput20627 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput20628 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 2, 0], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput20628 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound20628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20628.moment H = canonicalOutput20628.moment H :=
  canonical_of_padded canonicalInput20628 canonicalOutput20628 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20629 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, -1, 2, 0], ![0, 1, 1, 1, -3], ![1, 0, 0, -3, 2]]⟩

def canonicalOutput20629 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2699⟩

theorem canonicalSound20629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20629.moment H = canonicalOutput20629.moment H :=
  canonical_of_padded canonicalInput20629 canonicalOutput20629 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20630 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, -1, 2], ![-1, -1, 2, 0, 0], ![0, 2, 0, -1, -1], ![1, 0, -2, 1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20630 : ExponentCode := normalNode3686

theorem canonicalSound20630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20630.moment H = canonicalOutput20630.moment H :=
  canonical_of_padded canonicalInput20630 canonicalOutput20630 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation257, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20631 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![-1, 2, 0, 0, -1], ![1, 0, -2, 1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20631 : ExponentCode := normalNode3684

theorem canonicalSound20631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20631.moment H = canonicalOutput20631.moment H :=
  canonical_of_padded canonicalInput20631 canonicalOutput20631 (by decide) (by decide)
    ⟨false, true, canonicalPermutation174, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput20632 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![0, 2, 0, -1, -1], ![0, 0, -2, 2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20632 : ExponentCode := normalNode10384

theorem canonicalSound20632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20632.moment H = canonicalOutput20632.moment H :=
  canonical_of_padded canonicalInput20632 canonicalOutput20632 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation394, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20633 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, -1, 2], ![0, -1, 2, -1, 0], ![0, 2, 0, -1, -1], ![1, 0, -2, 1, 0], ![0, 0, 0, 2, -2]]⟩

def canonicalOutput20633 : ExponentCode := normalNode10450

theorem canonicalSound20633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20633.moment H = canonicalOutput20633.moment H :=
  canonical_of_padded canonicalInput20633 canonicalOutput20633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20634 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![-1, -1, 0, 1, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput20634 : ExponentCode := normalNode1462

theorem canonicalSound20634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20634.moment H = canonicalOutput20634.moment H :=
  canonical_of_padded canonicalInput20634 canonicalOutput20634 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation402, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20635 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![-1, 1, -2, 1, 1], ![0, 1, 1, -2, 0], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput20635 : ExponentCode := normalNode1450

theorem canonicalSound20635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20635.moment H = canonicalOutput20635.moment H :=
  canonical_of_padded canonicalInput20635 canonicalOutput20635 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20636 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, 1, -2, 1, 0], ![-1, 1, 1, -2, 1], ![2, 0, 1, 0, -3]]⟩

def canonicalOutput20636 : ExponentCode := normalNode1481

theorem canonicalSound20636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20636.moment H = canonicalOutput20636.moment H :=
  canonical_of_padded canonicalInput20636 canonicalOutput20636 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20637 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -2, 0], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput20637 : ExponentCode := normalNode8108

theorem canonicalSound20637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20637.moment H = canonicalOutput20637.moment H :=
  canonical_of_padded canonicalInput20637 canonicalOutput20637 (by decide) (by decide)
    ⟨false, true, canonicalPermutation85, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20638 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 1, 0], ![-1, -1, 1, 0, 1], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput20638 : ExponentCode := normalNode3647

theorem canonicalSound20638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20638.moment H = canonicalOutput20638.moment H :=
  canonical_of_padded canonicalInput20638 canonicalOutput20638 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation407, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20639 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, -1, 1, 0, 0], ![-1, 1, -2, 1, 1], ![0, 1, 1, -3, 1], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput20639 : ExponentCode := normalNode2183

theorem canonicalSound20639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20639.moment H = canonicalOutput20639.moment H :=
  canonical_of_padded canonicalInput20639 canonicalOutput20639 (by decide) (by decide)
    ⟨false, false, canonicalPermutation155, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput20640 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, -1, 1, 0, 0], ![0, 1, -2, 1, 0], ![-1, 1, 1, -3, 2], ![2, 0, 0, 1, -3]]⟩

def canonicalOutput20640 : ExponentCode := normalNode3654

theorem canonicalSound20640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20640.moment H = canonicalOutput20640.moment H :=
  canonical_of_padded canonicalInput20640 canonicalOutput20640 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20641 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 1, 0], ![0, -1, 1, 0, 0], ![0, 1, -2, 1, 0], ![0, 1, 1, -3, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20641 : ExponentCode := normalNode10740

theorem canonicalSound20641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20641.moment H = canonicalOutput20641.moment H :=
  canonical_of_padded canonicalInput20641 canonicalOutput20641 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20642 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![0, -1, 2, -1, 0], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput20642 : ExponentCode := normalNode10569

theorem canonicalSound20642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20642.moment H = canonicalOutput20642.moment H :=
  canonical_of_padded canonicalInput20642 canonicalOutput20642 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20643 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![0, 1, -1, -1, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20643 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2632⟩

theorem canonicalSound20643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20643.moment H = canonicalOutput20643.moment H :=
  canonical_of_padded canonicalInput20643 canonicalOutput20643 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput20644 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput20644 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2759⟩

theorem canonicalSound20644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20644.moment H = canonicalOutput20644.moment H :=
  canonical_of_padded canonicalInput20644 canonicalOutput20644 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20645 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput20645 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2784⟩

theorem canonicalSound20645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20645.moment H = canonicalOutput20645.moment H :=
  canonical_of_padded canonicalInput20645 canonicalOutput20645 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput20646 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput20646 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2645⟩

theorem canonicalSound20646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20646.moment H = canonicalOutput20646.moment H :=
  canonical_of_padded canonicalInput20646 canonicalOutput20646 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation199, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput20647 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![0, 1, 2, -2, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput20647 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2635⟩

theorem canonicalSound20647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20647.moment H = canonicalOutput20647.moment H :=
  canonical_of_padded canonicalInput20647 canonicalOutput20647 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput20648 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![1, -1, -2, 0, 2], ![0, 2, 2, -2, -2]]⟩

def canonicalOutput20648 : ExponentCode := normalNode10832

theorem canonicalSound20648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20648.moment H = canonicalOutput20648.moment H :=
  canonical_of_padded canonicalInput20648 canonicalOutput20648 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20649 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![1, -1, 2, -1, -1], ![0, 2, -2, -1, 1]]⟩

def canonicalOutput20649 : ExponentCode := normalNode10650

theorem canonicalSound20649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20649.moment H = canonicalOutput20649.moment H :=
  canonical_of_padded canonicalInput20649 canonicalOutput20649 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20650 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 0, 2, -1], ![2, -1, -2, 0, 1], ![-1, 2, 2, -2, -1]]⟩

def canonicalOutput20650 : ExponentCode := normalNode10892

theorem canonicalSound20650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20650.moment H = canonicalOutput20650.moment H :=
  canonical_of_padded canonicalInput20650 canonicalOutput20650 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20651 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 1, -1, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20651 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2724⟩

theorem canonicalSound20651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20651.moment H = canonicalOutput20651.moment H :=
  canonical_of_padded canonicalInput20651 canonicalOutput20651 (by decide) (by decide)
    ⟨true, true, canonicalPermutation13, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20652 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 1, -1, 1], ![0, 1, 1, 1, -3], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput20652 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2542⟩

theorem canonicalSound20652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20652.moment H = canonicalOutput20652.moment H :=
  canonical_of_padded canonicalInput20652 canonicalOutput20652 (by decide) (by decide)
    ⟨true, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20653 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 1, 1, -1], ![0, -1, -2, 1, 2], ![1, 2, 1, -2, -2]]⟩

def canonicalOutput20653 : ExponentCode := normalNode10582

theorem canonicalSound20653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20653.moment H = canonicalOutput20653.moment H :=
  canonical_of_padded canonicalInput20653 canonicalOutput20653 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20654 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 1, 1, -1], ![0, 0, -2, 1, 1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20654 : ExponentCode := normalNode10061

theorem canonicalSound20654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20654.moment H = canonicalOutput20654.moment H :=
  canonical_of_padded canonicalInput20654 canonicalOutput20654 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput20655 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 1, 1, -1], ![0, 1, -1, -1, 1], ![0, 1, 0, 1, -2], ![1, -1, 0, -1, 1]]⟩

def canonicalOutput20655 : ExponentCode := normalNode10149

theorem canonicalSound20655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20655.moment H = canonicalOutput20655.moment H :=
  canonical_of_padded canonicalInput20655 canonicalOutput20655 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput20656 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 1, 1, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput20656 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2785⟩

theorem canonicalSound20656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20656.moment H = canonicalOutput20656.moment H :=
  canonical_of_padded canonicalInput20656 canonicalOutput20656 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20657 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, -1, 1, 1, -1], ![1, -1, -2, 1, 1], ![0, 2, 1, -2, -1]]⟩

def canonicalOutput20657 : ExponentCode := normalNode10657

theorem canonicalSound20657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20657.moment H = canonicalOutput20657.moment H :=
  canonical_of_padded canonicalInput20657 canonicalOutput20657 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20658 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -2, 0, 2], ![0, 0, 1, 1, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20658 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩

theorem canonicalSound20658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20658.moment H = canonicalOutput20658.moment H :=
  canonical_of_padded canonicalInput20658 canonicalOutput20658 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, canonicalPermutation45⟩ (by decide +kernel) hH

def canonicalInput20659 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20659 : ExponentCode := normalNode10529

theorem canonicalSound20659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20659.moment H = canonicalOutput20659.moment H :=
  canonical_of_padded canonicalInput20659 canonicalOutput20659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20660 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, -2, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput20660 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node945⟩

theorem canonicalSound20660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20660.moment H = canonicalOutput20660.moment H :=
  canonical_of_padded canonicalInput20660 canonicalOutput20660 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20661 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -2, 1, 1], ![0, 0, 1, 1, -2], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput20661 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1009⟩

theorem canonicalSound20661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20661.moment H = canonicalOutput20661.moment H :=
  canonical_of_padded canonicalInput20661 canonicalOutput20661 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, canonicalPermutation41⟩ (by decide +kernel) hH

def canonicalInput20662 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -2, 1, 1], ![0, 0, 2, -2, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput20662 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1008⟩

theorem canonicalSound20662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20662.moment H = canonicalOutput20662.moment H :=
  canonical_of_padded canonicalInput20662 canonicalOutput20662 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput20663 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -2, 1, 1], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20663 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1241⟩

theorem canonicalSound20663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20663.moment H = canonicalOutput20663.moment H :=
  canonical_of_padded canonicalInput20663 canonicalOutput20663 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation173⟩ (by decide +kernel) hH

def canonicalInput20664 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -2, 1, 1], ![0, 1, 2, -2, -1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput20664 : ExponentCode := normalNode9383

theorem canonicalSound20664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20664.moment H = canonicalOutput20664.moment H :=
  canonical_of_padded canonicalInput20664 canonicalOutput20664 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20665 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -2, 2, 0], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20665 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1357⟩

theorem canonicalSound20665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20665.moment H = canonicalOutput20665.moment H :=
  canonical_of_padded canonicalInput20665 canonicalOutput20665 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation168⟩ (by decide +kernel) hH

def canonicalInput20666 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -2, 2, 0], ![0, 1, 1, -2, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput20666 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2743⟩

theorem canonicalSound20666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20666.moment H = canonicalOutput20666.moment H :=
  canonical_of_padded canonicalInput20666 canonicalOutput20666 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20667 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -2, 3, -1], ![0, 0, 2, -3, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20667 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1345⟩

theorem canonicalSound20667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20667.moment H = canonicalOutput20667.moment H :=
  canonical_of_padded canonicalInput20667 canonicalOutput20667 (by decide) (by decide)
    ⟨true, false, canonicalPermutation16, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput20668 : ExponentCode := ⟨5, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20668 : ExponentCode := normalNode10529

theorem canonicalSound20668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20668.moment H = canonicalOutput20668.moment H :=
  canonical_of_padded canonicalInput20668 canonicalOutput20668 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20669 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, -1, 2, -1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput20669 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node846⟩

theorem canonicalSound20669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20669.moment H = canonicalOutput20669.moment H :=
  canonical_of_padded canonicalInput20669 canonicalOutput20669 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput20670 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, 0, 2, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput20670 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩

theorem canonicalSound20670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20670.moment H = canonicalOutput20670.moment H :=
  canonical_of_padded canonicalInput20670 canonicalOutput20670 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput20671 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 0, 1], ![0, 0, -1, -1, 2], ![0, 0, 1, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput20671 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1039⟩

theorem canonicalSound20671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20671.moment H = canonicalOutput20671.moment H :=
  canonical_of_padded canonicalInput20671 canonicalOutput20671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
