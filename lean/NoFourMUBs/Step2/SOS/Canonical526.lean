import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33664 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33664 : ExponentCode := normalNode10645

theorem canonicalSound33664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33664.moment H = canonicalOutput33664.moment H :=
  canonical_of_padded canonicalInput33664 canonicalOutput33664 (by decide) (by decide)
    ⟨false, false, canonicalPermutation307, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33665 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33665 : ExponentCode := normalNode10645

theorem canonicalSound33665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33665.moment H = canonicalOutput33665.moment H :=
  canonical_of_padded canonicalInput33665 canonicalOutput33665 (by decide) (by decide)
    ⟨false, false, canonicalPermutation307, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33666 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33666 : ExponentCode := normalNode10645

theorem canonicalSound33666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33666.moment H = canonicalOutput33666.moment H :=
  canonical_of_padded canonicalInput33666 canonicalOutput33666 (by decide) (by decide)
    ⟨false, false, canonicalPermutation307, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33667 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33667 : ExponentCode := normalNode8361

theorem canonicalSound33667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33667.moment H = canonicalOutput33667.moment H :=
  canonical_of_padded canonicalInput33667 canonicalOutput33667 (by decide) (by decide)
    ⟨false, false, canonicalPermutation348, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33668 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33668 : ExponentCode := normalNode10453

theorem canonicalSound33668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33668.moment H = canonicalOutput33668.moment H :=
  canonical_of_padded canonicalInput33668 canonicalOutput33668 (by decide) (by decide)
    ⟨false, false, canonicalPermutation221, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33669 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33669 : ExponentCode := normalNode10645

theorem canonicalSound33669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33669.moment H = canonicalOutput33669.moment H :=
  canonical_of_padded canonicalInput33669 canonicalOutput33669 (by decide) (by decide)
    ⟨false, false, canonicalPermutation223, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33670 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33670 : ExponentCode := normalNode10645

theorem canonicalSound33670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33670.moment H = canonicalOutput33670.moment H :=
  canonical_of_padded canonicalInput33670 canonicalOutput33670 (by decide) (by decide)
    ⟨false, false, canonicalPermutation308, canonicalPermutation235⟩ (by decide +kernel) hH

def canonicalInput33671 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33671 : ExponentCode := normalNode10453

theorem canonicalSound33671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33671.moment H = canonicalOutput33671.moment H :=
  canonical_of_padded canonicalInput33671 canonicalOutput33671 (by decide) (by decide)
    ⟨false, false, canonicalPermutation232, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33672 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33672 : ExponentCode := normalNode8361

theorem canonicalSound33672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33672.moment H = canonicalOutput33672.moment H :=
  canonical_of_padded canonicalInput33672 canonicalOutput33672 (by decide) (by decide)
    ⟨false, false, canonicalPermutation325, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33673 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33673 : ExponentCode := normalNode10453

theorem canonicalSound33673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33673.moment H = canonicalOutput33673.moment H :=
  canonical_of_padded canonicalInput33673 canonicalOutput33673 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation210, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33674 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33674 : ExponentCode := normalNode10645

theorem canonicalSound33674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33674.moment H = canonicalOutput33674.moment H :=
  canonical_of_padded canonicalInput33674 canonicalOutput33674 (by decide) (by decide)
    ⟨false, false, canonicalPermutation223, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33675 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33675 : ExponentCode := normalNode8361

theorem canonicalSound33675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33675.moment H = canonicalOutput33675.moment H :=
  canonical_of_padded canonicalInput33675 canonicalOutput33675 (by decide) (by decide)
    ⟨false, false, canonicalPermutation357, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput33676 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33676 : ExponentCode := normalNode8361

theorem canonicalSound33676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33676.moment H = canonicalOutput33676.moment H :=
  canonical_of_padded canonicalInput33676 canonicalOutput33676 (by decide) (by decide)
    ⟨false, false, canonicalPermutation347, canonicalPermutation233⟩ (by decide +kernel) hH

def canonicalInput33677 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33677 : ExponentCode := normalNode10645

theorem canonicalSound33677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33677.moment H = canonicalOutput33677.moment H :=
  canonical_of_padded canonicalInput33677 canonicalOutput33677 (by decide) (by decide)
    ⟨false, false, canonicalPermutation308, canonicalPermutation230⟩ (by decide +kernel) hH

def canonicalInput33678 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33678 : ExponentCode := normalNode10453

theorem canonicalSound33678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33678.moment H = canonicalOutput33678.moment H :=
  canonical_of_padded canonicalInput33678 canonicalOutput33678 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation211, OAI.MUB6.Certificate.PairSemantics.permutation205⟩ (by decide +kernel) hH

def canonicalInput33679 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33679 : ExponentCode := normalNode8361

theorem canonicalSound33679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33679.moment H = canonicalOutput33679.moment H :=
  canonical_of_padded canonicalInput33679 canonicalOutput33679 (by decide) (by decide)
    ⟨false, false, canonicalPermutation357, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33680 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33680 : ExponentCode := normalNode10645

theorem canonicalSound33680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33680.moment H = canonicalOutput33680.moment H :=
  canonical_of_padded canonicalInput33680 canonicalOutput33680 (by decide) (by decide)
    ⟨false, false, canonicalPermutation223, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33681 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33681 : ExponentCode := normalNode10453

theorem canonicalSound33681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33681.moment H = canonicalOutput33681.moment H :=
  canonical_of_padded canonicalInput33681 canonicalOutput33681 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation210, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33682 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33682 : ExponentCode := normalNode10453

theorem canonicalSound33682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33682.moment H = canonicalOutput33682.moment H :=
  canonical_of_padded canonicalInput33682 canonicalOutput33682 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation211, canonicalPermutation229⟩ (by decide +kernel) hH

def canonicalInput33683 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33683 : ExponentCode := normalNode10645

theorem canonicalSound33683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33683.moment H = canonicalOutput33683.moment H :=
  canonical_of_padded canonicalInput33683 canonicalOutput33683 (by decide) (by decide)
    ⟨false, false, canonicalPermutation308, canonicalPermutation110⟩ (by decide +kernel) hH

def canonicalInput33684 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33684 : ExponentCode := normalNode8361

theorem canonicalSound33684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33684.moment H = canonicalOutput33684.moment H :=
  canonical_of_padded canonicalInput33684 canonicalOutput33684 (by decide) (by decide)
    ⟨false, false, canonicalPermutation347, canonicalPermutation226⟩ (by decide +kernel) hH

def canonicalInput33685 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33685 : ExponentCode := normalNode11165

theorem canonicalSound33685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33685.moment H = canonicalOutput33685.moment H :=
  canonical_of_padded canonicalInput33685 canonicalOutput33685 (by decide) (by decide)
    ⟨false, true, canonicalPermutation229, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33686 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33686 : ExponentCode := normalNode8361

theorem canonicalSound33686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33686.moment H = canonicalOutput33686.moment H :=
  canonical_of_padded canonicalInput33686 canonicalOutput33686 (by decide) (by decide)
    ⟨false, false, canonicalPermutation286, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33687 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33687 : ExponentCode := normalNode8361

theorem canonicalSound33687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33687.moment H = canonicalOutput33687.moment H :=
  canonical_of_padded canonicalInput33687 canonicalOutput33687 (by decide) (by decide)
    ⟨false, false, canonicalPermutation351, canonicalPermutation228⟩ (by decide +kernel) hH

def canonicalInput33688 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33688 : ExponentCode := normalNode11165

theorem canonicalSound33688 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33688.moment H = canonicalOutput33688.moment H :=
  canonical_of_padded canonicalInput33688 canonicalOutput33688 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation205, OAI.MUB6.Certificate.PairSemantics.permutation202⟩ (by decide +kernel) hH

def canonicalInput33689 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput33689 : ExponentCode := normalNode10415

theorem canonicalSound33689 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33689.moment H = canonicalOutput33689.moment H :=
  canonical_of_padded canonicalInput33689 canonicalOutput33689 (by decide) (by decide)
    ⟨false, true, canonicalPermutation239, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput33690 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput33690 : ExponentCode := normalNode10371

theorem canonicalSound33690 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33690.moment H = canonicalOutput33690.moment H :=
  canonical_of_padded canonicalInput33690 canonicalOutput33690 (by decide) (by decide)
    ⟨false, false, canonicalPermutation224, canonicalPermutation231⟩ (by decide +kernel) hH

def canonicalInput33691 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput33691 : ExponentCode := normalNode10274

theorem canonicalSound33691 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33691.moment H = canonicalOutput33691.moment H :=
  canonical_of_padded canonicalInput33691 canonicalOutput33691 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, OAI.MUB6.Certificate.PairSemantics.permutation220⟩ (by decide +kernel) hH

def canonicalInput33692 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput33692 : ExponentCode := normalNode10818

theorem canonicalSound33692 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33692.moment H = canonicalOutput33692.moment H :=
  canonical_of_padded canonicalInput33692 canonicalOutput33692 (by decide) (by decide)
    ⟨false, true, canonicalPermutation235, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput33693 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput33693 : ExponentCode := normalNode10455

theorem canonicalSound33693 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33693.moment H = canonicalOutput33693.moment H :=
  canonical_of_padded canonicalInput33693 canonicalOutput33693 (by decide) (by decide)
    ⟨false, false, canonicalPermutation136, canonicalPermutation149⟩ (by decide +kernel) hH

def canonicalInput33694 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput33694 : ExponentCode := normalNode10375

theorem canonicalSound33694 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33694.moment H = canonicalOutput33694.moment H :=
  canonical_of_padded canonicalInput33694 canonicalOutput33694 (by decide) (by decide)
    ⟨false, false, canonicalPermutation391, OAI.MUB6.Certificate.PairSemantics.permutation400⟩ (by decide +kernel) hH

def canonicalInput33695 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33695 : ExponentCode := normalNode8064

theorem canonicalSound33695 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33695.moment H = canonicalOutput33695.moment H :=
  canonical_of_padded canonicalInput33695 canonicalOutput33695 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33696 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33696 : ExponentCode := normalNode8066

theorem canonicalSound33696 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33696.moment H = canonicalOutput33696.moment H :=
  canonical_of_padded canonicalInput33696 canonicalOutput33696 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33697 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33697 : ExponentCode := normalNode8066

theorem canonicalSound33697 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33697.moment H = canonicalOutput33697.moment H :=
  canonical_of_padded canonicalInput33697 canonicalOutput33697 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33698 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33698 : ExponentCode := normalNode8064

theorem canonicalSound33698 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33698.moment H = canonicalOutput33698.moment H :=
  canonical_of_padded canonicalInput33698 canonicalOutput33698 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33699 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33699 : ExponentCode := normalNode8066

theorem canonicalSound33699 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33699.moment H = canonicalOutput33699.moment H :=
  canonical_of_padded canonicalInput33699 canonicalOutput33699 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33700 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33700 : ExponentCode := normalNode8361

theorem canonicalSound33700 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33700.moment H = canonicalOutput33700.moment H :=
  canonical_of_padded canonicalInput33700 canonicalOutput33700 (by decide) (by decide)
    ⟨false, false, canonicalPermutation129, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput33701 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33701 : ExponentCode := normalNode8067

theorem canonicalSound33701 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33701.moment H = canonicalOutput33701.moment H :=
  canonical_of_padded canonicalInput33701 canonicalOutput33701 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33702 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33702 : ExponentCode := normalNode8067

theorem canonicalSound33702 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33702.moment H = canonicalOutput33702.moment H :=
  canonical_of_padded canonicalInput33702 canonicalOutput33702 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33703 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33703 : ExponentCode := normalNode8361

theorem canonicalSound33703 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33703.moment H = canonicalOutput33703.moment H :=
  canonical_of_padded canonicalInput33703 canonicalOutput33703 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput33704 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33704 : ExponentCode := normalNode8066

theorem canonicalSound33704 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33704.moment H = canonicalOutput33704.moment H :=
  canonical_of_padded canonicalInput33704 canonicalOutput33704 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33705 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33705 : ExponentCode := normalNode8066

theorem canonicalSound33705 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33705.moment H = canonicalOutput33705.moment H :=
  canonical_of_padded canonicalInput33705 canonicalOutput33705 (by decide) (by decide)
    ⟨false, false, canonicalPermutation138, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33706 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33706 : ExponentCode := normalNode8067

theorem canonicalSound33706 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33706.moment H = canonicalOutput33706.moment H :=
  canonical_of_padded canonicalInput33706 canonicalOutput33706 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33707 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33707 : ExponentCode := normalNode8361

theorem canonicalSound33707 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33707.moment H = canonicalOutput33707.moment H :=
  canonical_of_padded canonicalInput33707 canonicalOutput33707 (by decide) (by decide)
    ⟨false, false, canonicalPermutation129, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33708 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33708 : ExponentCode := normalNode8361

theorem canonicalSound33708 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33708.moment H = canonicalOutput33708.moment H :=
  canonical_of_padded canonicalInput33708 canonicalOutput33708 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33709 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33709 : ExponentCode := normalNode8067

theorem canonicalSound33709 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33709.moment H = canonicalOutput33709.moment H :=
  canonical_of_padded canonicalInput33709 canonicalOutput33709 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33710 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33710 : ExponentCode := normalNode8066

theorem canonicalSound33710 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33710.moment H = canonicalOutput33710.moment H :=
  canonical_of_padded canonicalInput33710 canonicalOutput33710 (by decide) (by decide)
    ⟨false, false, canonicalPermutation108, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput33711 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput33711 : ExponentCode := normalNode8064

theorem canonicalSound33711 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33711.moment H = canonicalOutput33711.moment H :=
  canonical_of_padded canonicalInput33711 canonicalOutput33711 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33712 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33712 : ExponentCode := normalNode8066

theorem canonicalSound33712 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33712.moment H = canonicalOutput33712.moment H :=
  canonical_of_padded canonicalInput33712 canonicalOutput33712 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33713 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33713 : ExponentCode := normalNode8066

theorem canonicalSound33713 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33713.moment H = canonicalOutput33713.moment H :=
  canonical_of_padded canonicalInput33713 canonicalOutput33713 (by decide) (by decide)
    ⟨false, false, canonicalPermutation147, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33714 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33714 : ExponentCode := normalNode8064

theorem canonicalSound33714 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33714.moment H = canonicalOutput33714.moment H :=
  canonical_of_padded canonicalInput33714 canonicalOutput33714 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput33715 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33715 : ExponentCode := normalNode8067

theorem canonicalSound33715 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33715.moment H = canonicalOutput33715.moment H :=
  canonical_of_padded canonicalInput33715 canonicalOutput33715 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33716 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33716 : ExponentCode := normalNode8066

theorem canonicalSound33716 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33716.moment H = canonicalOutput33716.moment H :=
  canonical_of_padded canonicalInput33716 canonicalOutput33716 (by decide) (by decide)
    ⟨false, false, canonicalPermutation143, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33717 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33717 : ExponentCode := normalNode8361

theorem canonicalSound33717 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33717.moment H = canonicalOutput33717.moment H :=
  canonical_of_padded canonicalInput33717 canonicalOutput33717 (by decide) (by decide)
    ⟨false, false, canonicalPermutation129, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33718 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33718 : ExponentCode := normalNode8361

theorem canonicalSound33718 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33718.moment H = canonicalOutput33718.moment H :=
  canonical_of_padded canonicalInput33718 canonicalOutput33718 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33719 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33719 : ExponentCode := normalNode8066

theorem canonicalSound33719 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33719.moment H = canonicalOutput33719.moment H :=
  canonical_of_padded canonicalInput33719 canonicalOutput33719 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33720 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33720 : ExponentCode := normalNode8067

theorem canonicalSound33720 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33720.moment H = canonicalOutput33720.moment H :=
  canonical_of_padded canonicalInput33720 canonicalOutput33720 (by decide) (by decide)
    ⟨false, false, canonicalPermutation141, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput33721 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33721 : ExponentCode := normalNode8361

theorem canonicalSound33721 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33721.moment H = canonicalOutput33721.moment H :=
  canonical_of_padded canonicalInput33721 canonicalOutput33721 (by decide) (by decide)
    ⟨false, false, canonicalPermutation133, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

def canonicalInput33722 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33722 : ExponentCode := normalNode8361

theorem canonicalSound33722 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33722.moment H = canonicalOutput33722.moment H :=
  canonical_of_padded canonicalInput33722 canonicalOutput33722 (by decide) (by decide)
    ⟨false, false, canonicalPermutation133, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33723 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33723 : ExponentCode := normalNode8361

theorem canonicalSound33723 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33723.moment H = canonicalOutput33723.moment H :=
  canonical_of_padded canonicalInput33723 canonicalOutput33723 (by decide) (by decide)
    ⟨false, false, canonicalPermutation133, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33724 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33724 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound33724 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33724.moment H = canonicalOutput33724.moment H :=
  canonical_of_padded canonicalInput33724 canonicalOutput33724 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33725 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33725 : ExponentCode := normalNode8361

theorem canonicalSound33725 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33725.moment H = canonicalOutput33725.moment H :=
  canonical_of_padded canonicalInput33725 canonicalOutput33725 (by decide) (by decide)
    ⟨false, false, canonicalPermutation132, canonicalPermutation151⟩ (by decide +kernel) hH

def canonicalInput33726 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33726 : ExponentCode := normalNode8361

theorem canonicalSound33726 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33726.moment H = canonicalOutput33726.moment H :=
  canonical_of_padded canonicalInput33726 canonicalOutput33726 (by decide) (by decide)
    ⟨false, false, canonicalPermutation132, OAI.MUB6.Certificate.PairSemantics.permutation311⟩ (by decide +kernel) hH

def canonicalInput33727 : ExponentCode := ⟨6, 6, ![![1, 0, -1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33727 : ExponentCode := normalNode8361

theorem canonicalSound33727 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33727.moment H = canonicalOutput33727.moment H :=
  canonical_of_padded canonicalInput33727 canonicalOutput33727 (by decide) (by decide)
    ⟨false, false, canonicalPermutation132, OAI.MUB6.Certificate.PairSemantics.permutation261⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
