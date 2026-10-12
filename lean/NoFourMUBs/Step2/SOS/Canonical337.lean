import OAI.Analysis.MutuallyUnbiased.PairSemantics.Sound17
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes22
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes24
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes33
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21568 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-2, 1, 1], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![1, 3, -4]]⟩

def canonicalOutput21568 : ExponentCode := normalNode5566

theorem canonicalSound21568 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21568.moment H = canonicalOutput21568.moment H :=
  canonical_of_padded canonicalInput21568 canonicalOutput21568 (by decide) (by decide)
    ⟨false, false, canonicalPermutation187, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21569 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-2, 1, 1], ![1, 0, -1], ![1, 0, -1], ![0, 3, -3], ![1, -4, 3]]⟩

def canonicalOutput21569 : ExponentCode := normalNode5571

theorem canonicalSound21569 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21569.moment H = canonicalOutput21569.moment H :=
  canonical_of_padded canonicalInput21569 canonicalOutput21569 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation206, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21570 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![-1, -3, 4], ![0, 4, -4], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput21570 : ExponentCode := normalNode6266

theorem canonicalSound21570 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21570.moment H = canonicalOutput21570.moment H :=
  canonical_of_padded canonicalInput21570 canonicalOutput21570 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21571 : ExponentCode := ⟨4, 3, ![![-1, 0, 1], ![-1, -3, 4], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput21571 : ExponentCode := normalNode6267

theorem canonicalSound21571 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21571.moment H = canonicalOutput21571.moment H :=
  canonical_of_padded canonicalInput21571 canonicalOutput21571 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21572 : ExponentCode := ⟨4, 3, ![![-1, 0, 1], ![-1, -2, 3], ![0, 3, -3], ![2, -1, -1]]⟩

def canonicalOutput21572 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node222⟩

theorem canonicalSound21572 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21572.moment H = canonicalOutput21572.moment H :=
  canonical_of_padded canonicalInput21572 canonicalOutput21572 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21573 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, -1, 2], ![-2, 3, -1], ![1, -2, 1], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput21573 : ExponentCode := normalNode190

theorem canonicalSound21573 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21573.moment H = canonicalOutput21573.moment H :=
  canonical_of_padded canonicalInput21573 canonicalOutput21573 (by decide) (by decide)
    ⟨false, true, canonicalPermutation204, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21574 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, -1, 2], ![-1, 2, -1], ![0, -1, 1], ![1, 1, -2], ![2, -1, -1]]⟩

def canonicalOutput21574 : ExponentCode := normalNode5562

theorem canonicalSound21574 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21574.moment H = canonicalOutput21574.moment H :=
  canonical_of_padded canonicalInput21574 canonicalOutput21574 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation408, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21575 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, -1, 2], ![-1, 2, -1], ![1, -2, 1], ![0, 2, -2], ![2, -1, -1]]⟩

def canonicalOutput21575 : ExponentCode := normalNode5563

theorem canonicalSound21575 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21575.moment H = canonicalOutput21575.moment H :=
  canonical_of_padded canonicalInput21575 canonicalOutput21575 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation391, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21576 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, -1, 2], ![-1, 2, -1], ![1, -2, 1], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput21576 : ExponentCode := normalNode5559

theorem canonicalSound21576 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21576.moment H = canonicalOutput21576.moment H :=
  canonical_of_padded canonicalInput21576 canonicalOutput21576 (by decide) (by decide)
    ⟨false, false, canonicalPermutation205, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21577 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![-1, -1, 2], ![0, -2, 2], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput21577 : ExponentCode := normalNode6265

theorem canonicalSound21577 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21577.moment H = canonicalOutput21577.moment H :=
  canonical_of_padded canonicalInput21577 canonicalOutput21577 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21578 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, -1, 2], ![0, -1, 1], ![0, -1, 1], ![3, -1, -2], ![-1, 4, -3]]⟩

def canonicalOutput21578 : ExponentCode := normalNode220

theorem canonicalSound21578 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21578.moment H = canonicalOutput21578.moment H :=
  canonical_of_padded canonicalInput21578 canonicalOutput21578 (by decide) (by decide)
    ⟨false, true, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21579 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, -1, 2], ![0, -1, 1], ![0, 1, -1], ![-2, 3, -1], ![4, -2, -2]]⟩

def canonicalOutput21579 : ExponentCode := normalNode20

theorem canonicalSound21579 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21579.moment H = canonicalOutput21579.moment H :=
  canonical_of_padded canonicalInput21579 canonicalOutput21579 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21580 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, -1, 2], ![0, -1, 1], ![1, 0, -1], ![2, -2, 0], ![-1, 4, -3]]⟩

def canonicalOutput21580 : ExponentCode := normalNode4595

theorem canonicalSound21580 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21580.moment H = canonicalOutput21580.moment H :=
  canonical_of_padded canonicalInput21580 canonicalOutput21580 (by decide) (by decide)
    ⟨false, true, canonicalPermutation124, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21581 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.pivotMatrix1136⟩

def canonicalOutput21581 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1136⟩

theorem canonicalSound21581 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21581.moment H = canonicalOutput21581.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.pivotMatrix1136 = injectiveMoment H OAI.MUB6.Certificate.PairSemantics.node1136
  have heq : OAI.MUB6.Certificate.PairSemantics.pivotMatrix1136 = (fun u v => OAI.MUB6.Certificate.PairSemantics.node1136 (OAI.MUB6.Certificate.PairSemantics.pivotPermutation1136 u) v) := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_row_permutation H OAI.MUB6.Certificate.PairSemantics.node1136 OAI.MUB6.Certificate.PairSemantics.pivotPermutation1136)

def canonicalInput21582 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![-1, -1, 2], ![0, 4, -4], ![1, -3, 2], ![1, 0, -1]]⟩

def canonicalOutput21582 : ExponentCode := normalNode9519

theorem canonicalSound21582 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21582.moment H = canonicalOutput21582.moment H :=
  canonical_of_padded canonicalInput21582 canonicalOutput21582 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21583 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, -1, 2], ![1, -1, 0], ![1, -1, 0], ![-1, -1, 2], ![1, 4, -5]]⟩

def canonicalOutput21583 : ExponentCode := normalNode5976

theorem canonicalSound21583 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21583.moment H = canonicalOutput21583.moment H :=
  canonical_of_padded canonicalInput21583 canonicalOutput21583 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21584 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, -1, 2], ![1, 0, -1], ![1, 0, -1], ![0, -3, 3], ![0, 4, -4]]⟩

def canonicalOutput21584 : ExponentCode := normalNode9518

theorem canonicalSound21584 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21584.moment H = canonicalOutput21584.moment H :=
  canonical_of_padded canonicalInput21584 canonicalOutput21584 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation206, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21585 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, -1, 2], ![1, 0, -1], ![1, 0, -1], ![1, -3, 2], ![-1, 4, -3]]⟩

def canonicalOutput21585 : ExponentCode := normalNode9517

theorem canonicalSound21585 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21585.moment H = canonicalOutput21585.moment H :=
  canonical_of_padded canonicalInput21585 canonicalOutput21585 (by decide) (by decide)
    ⟨false, false, canonicalPermutation86, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21586 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 0, 1], ![-1, -1, 2], ![0, -1, 1], ![2, -2, 0], ![1, 4, -5]]⟩

def canonicalOutput21586 : ExponentCode := normalNode5912

theorem canonicalSound21586 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21586.moment H = canonicalOutput21586.moment H :=
  canonical_of_padded canonicalInput21586 canonicalOutput21586 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation303, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21587 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 0, 1], ![0, -1, 1], ![-1, -1, 2], ![2, -2, 0], ![1, 4, -5]]⟩

def canonicalOutput21587 : ExponentCode := normalNode5912

theorem canonicalSound21587 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21587.moment H = canonicalOutput21587.moment H :=
  canonical_of_padded canonicalInput21587 canonicalOutput21587 (by decide) (by decide)
    ⟨false, true, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21588 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![1, -2, 1], ![1, 4, -5]]⟩

def canonicalOutput21588 : ExponentCode := normalNode5981

theorem canonicalSound21588 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21588.moment H = canonicalOutput21588.moment H :=
  canonical_of_padded canonicalInput21588 canonicalOutput21588 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation404, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21589 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![2, -2, 0], ![0, 4, -4]]⟩

def canonicalOutput21589 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2134⟩

theorem canonicalSound21589 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21589.moment H = canonicalOutput21589.moment H :=
  canonical_of_padded canonicalInput21589 canonicalOutput21589 (by decide) (by decide)
    ⟨false, true, canonicalPermutation206, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21590 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![-1, -1, 2], ![1, -1, 0], ![0, -2, 2], ![2, 3, -5]]⟩

def canonicalOutput21590 : ExponentCode := normalNode315

theorem canonicalSound21590 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21590.moment H = canonicalOutput21590.moment H :=
  canonical_of_padded canonicalInput21590 canonicalOutput21590 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation391, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21591 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![-1, -1, 2], ![1, 0, -1], ![1, -3, 2], ![1, 3, -4]]⟩

def canonicalOutput21591 : ExponentCode := normalNode6259

theorem canonicalSound21591 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21591.moment H = canonicalOutput21591.moment H :=
  canonical_of_padded canonicalInput21591 canonicalOutput21591 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation391, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21592 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![-1, 1, 0], ![1, -1, 0], ![0, -3, 3], ![2, 2, -4]]⟩

def canonicalOutput21592 : ExponentCode := normalNode970

theorem canonicalSound21592 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21592.moment H = canonicalOutput21592.moment H :=
  canonical_of_padded canonicalInput21592 canonicalOutput21592 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation392, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21593 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, -1, 1], ![0, -1, 1], ![0, -2, 2], ![2, 3, -5]]⟩

def canonicalOutput21593 : ExponentCode := normalNode340

theorem canonicalSound21593 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21593.moment H = canonicalOutput21593.moment H :=
  canonical_of_padded canonicalInput21593 canonicalOutput21593 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21594 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, -1, 1], ![0, 0, 0], ![1, -3, 2], ![1, 3, -4]]⟩

def canonicalOutput21594 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node744⟩

theorem canonicalSound21594 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21594.moment H = canonicalOutput21594.moment H :=
  canonical_of_padded canonicalInput21594 canonicalOutput21594 (by decide) (by decide)
    ⟨false, true, canonicalPermutation207, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21595 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, -1, 1], ![1, -1, 0], ![-1, -2, 3], ![2, 3, -5]]⟩

def canonicalOutput21595 : ExponentCode := normalNode314

theorem canonicalSound21595 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21595.moment H = canonicalOutput21595.moment H :=
  canonical_of_padded canonicalInput21595 canonicalOutput21595 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21596 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, -1, 1], ![1, -1, 0], ![0, -2, 2], ![1, 3, -4]]⟩

def canonicalOutput21596 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2381⟩

theorem canonicalSound21596 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21596.moment H = canonicalOutput21596.moment H :=
  canonical_of_padded canonicalInput21596 canonicalOutput21596 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation388, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21597 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, -1, 1], ![1, 0, -1], ![0, -3, 3], ![1, 3, -4]]⟩

def canonicalOutput21597 : ExponentCode := normalNode6263

theorem canonicalSound21597 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21597.moment H = canonicalOutput21597.moment H :=
  canonical_of_padded canonicalInput21597 canonicalOutput21597 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation388, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21598 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, -1, 1], ![1, 0, -1], ![1, -3, 2], ![0, 3, -3]]⟩

def canonicalOutput21598 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2468⟩

theorem canonicalSound21598 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21598.moment H = canonicalOutput21598.moment H :=
  canonical_of_padded canonicalInput21598 canonicalOutput21598 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation292, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21599 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, 0, 0], ![1, 0, -1], ![0, 3, -3], ![1, -4, 3]]⟩

def canonicalOutput21599 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node740⟩

theorem canonicalSound21599 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21599.moment H = canonicalOutput21599.moment H :=
  canonical_of_padded canonicalInput21599 canonicalOutput21599 (by decide) (by decide)
    ⟨false, true, canonicalPermutation95, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21600 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, 1, -1], ![0, -1, 1], ![0, -3, 3], ![2, 2, -4]]⟩

def canonicalOutput21600 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1540⟩

theorem canonicalSound21600 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21600.moment H = canonicalOutput21600.moment H :=
  canonical_of_padded canonicalInput21600 canonicalOutput21600 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21601 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, 1, -1], ![1, -1, 0], ![-1, -3, 4], ![2, 2, -4]]⟩

def canonicalOutput21601 : ExponentCode := normalNode965

theorem canonicalSound21601 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21601.moment H = canonicalOutput21601.moment H :=
  canonical_of_padded canonicalInput21601 canonicalOutput21601 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21602 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, 1, -1], ![1, -1, 0], ![0, -3, 3], ![1, 2, -3]]⟩

def canonicalOutput21602 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2468⟩

theorem canonicalSound21602 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21602.moment H = canonicalOutput21602.moment H :=
  canonical_of_padded canonicalInput21602 canonicalOutput21602 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation388, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21603 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, 1, -1], ![1, -1, 0], ![0, 3, -3], ![1, -4, 3]]⟩

def canonicalOutput21603 : ExponentCode := normalNode6263

theorem canonicalSound21603 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21603.moment H = canonicalOutput21603.moment H :=
  canonical_of_padded canonicalInput21603 canonicalOutput21603 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation387, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21604 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![-1, 1, 0], ![0, 3, -3], ![1, -4, 3], ![1, 0, -1]]⟩

def canonicalOutput21604 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node740⟩

theorem canonicalSound21604 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21604.moment H = canonicalOutput21604.moment H :=
  canonical_of_padded canonicalInput21604 canonicalOutput21604 (by decide) (by decide)
    ⟨false, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21605 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![1, -1, 0], ![0, 0, 0], ![0, -3, 3], ![1, 3, -4]]⟩

def canonicalOutput21605 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node740⟩

theorem canonicalSound21605 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21605.moment H = canonicalOutput21605.moment H :=
  canonical_of_padded canonicalInput21605 canonicalOutput21605 (by decide) (by decide)
    ⟨false, true, canonicalPermutation208, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21606 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![1, -1, 0], ![1, 0, -1], ![-1, -3, 4], ![1, 3, -4]]⟩

def canonicalOutput21606 : ExponentCode := normalNode6258

theorem canonicalSound21606 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21606.moment H = canonicalOutput21606.moment H :=
  canonical_of_padded canonicalInput21606 canonicalOutput21606 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21607 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![0, 3, -3]]⟩

def canonicalOutput21607 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2794⟩

theorem canonicalSound21607 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21607.moment H = canonicalOutput21607.moment H :=
  canonical_of_padded canonicalInput21607 canonicalOutput21607 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21608 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![1, 0, -1], ![0, 0, 0], ![0, 3, -3], ![1, -4, 3]]⟩

def canonicalOutput21608 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node740⟩

theorem canonicalSound21608 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21608.moment H = canonicalOutput21608.moment H :=
  canonical_of_padded canonicalInput21608 canonicalOutput21608 (by decide) (by decide)
    ⟨false, true, canonicalPermutation209, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21609 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![1, 0, -1], ![1, 0, -1], ![-1, 3, -2], ![1, -4, 3]]⟩

def canonicalOutput21609 : ExponentCode := normalNode6268

theorem canonicalSound21609 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21609.moment H = canonicalOutput21609.moment H :=
  canonical_of_padded canonicalInput21609 canonicalOutput21609 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21610 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![-1, 1, 0], ![1, 0, -1], ![1, 0, -1], ![0, 3, -3], ![0, -4, 4]]⟩

def canonicalOutput21610 : ExponentCode := normalNode10772

theorem canonicalSound21610 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21610.moment H = canonicalOutput21610.moment H :=
  canonical_of_padded canonicalInput21610 canonicalOutput21610 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation232, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21611 : ExponentCode := ⟨4, 3, ![![-1, 0, 1], ![-1, 4, -3], ![1, -4, 3], ![1, 0, -1]]⟩

def canonicalOutput21611 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node242⟩

theorem canonicalSound21611 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21611.moment H = canonicalOutput21611.moment H :=
  canonical_of_padded canonicalInput21611 canonicalOutput21611 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21612 : ExponentCode := ⟨4, 3, ![![-1, 0, 1], ![0, -4, 4], ![0, 2, -2], ![1, 2, -3]]⟩

def canonicalOutput21612 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node266⟩

theorem canonicalSound21612 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21612.moment H = canonicalOutput21612.moment H :=
  canonical_of_padded canonicalInput21612 canonicalOutput21612 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21613 : ExponentCode := ⟨4, 3, ![![-1, 0, 1], ![0, -4, 4], ![0, 3, -3], ![1, 1, -2]]⟩

def canonicalOutput21613 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node278⟩

theorem canonicalSound21613 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21613.moment H = canonicalOutput21613.moment H :=
  canonical_of_padded canonicalInput21613 canonicalOutput21613 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21614 : ExponentCode := ⟨3, 3, ![![-1, 0, 1], ![0, -4, 4], ![1, 4, -5]]⟩

def canonicalOutput21614 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node50⟩

theorem canonicalSound21614 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21614.moment H = canonicalOutput21614.moment H :=
  canonical_of_padded canonicalInput21614 canonicalOutput21614 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21615 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![0, -3, 3], ![-1, 4, -3], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput21615 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node740⟩

theorem canonicalSound21615 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21615.moment H = canonicalOutput21615.moment H :=
  canonical_of_padded canonicalInput21615 canonicalOutput21615 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21616 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![0, -3, 3], ![0, 4, -4], ![0, -1, 1], ![1, 0, -1]]⟩

def canonicalOutput21616 : ExponentCode := normalNode10776

theorem canonicalSound21616 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21616.moment H = canonicalOutput21616.moment H :=
  canonical_of_padded canonicalInput21616 canonicalOutput21616 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21617 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![0, -3, 3], ![0, 4, -4], ![1, -1, 0], ![0, 0, 0]]⟩

def canonicalOutput21617 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node290⟩

theorem canonicalSound21617 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21617.moment H = canonicalOutput21617.moment H :=
  canonical_of_padded canonicalInput21617 canonicalOutput21617 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21618 : ExponentCode := ⟨4, 3, ![![-1, 0, 1], ![0, -2, 2], ![0, -2, 2], ![1, 4, -5]]⟩

def canonicalOutput21618 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node240⟩

theorem canonicalSound21618 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21618.moment H = canonicalOutput21618.moment H :=
  canonical_of_padded canonicalInput21618 canonicalOutput21618 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21619 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![-1, -1, 2], ![0, -1, 1], ![3, -1, -2], ![-1, 4, -3]]⟩

def canonicalOutput21619 : ExponentCode := normalNode220

theorem canonicalSound21619 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21619.moment H = canonicalOutput21619.moment H :=
  canonical_of_padded canonicalInput21619 canonicalOutput21619 (by decide) (by decide)
    ⟨false, true, canonicalPermutation210, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21620 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![-1, -1, 2], ![0, 1, -1], ![-2, 3, -1], ![4, -2, -2]]⟩

def canonicalOutput21620 : ExponentCode := normalNode20

theorem canonicalSound21620 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21620.moment H = canonicalOutput21620.moment H :=
  canonical_of_padded canonicalInput21620 canonicalOutput21620 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation345, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21621 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![-1, -1, 2], ![1, 0, -1], ![2, -2, 0], ![-1, 4, -3]]⟩

def canonicalOutput21621 : ExponentCode := normalNode4595

theorem canonicalSound21621 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21621.moment H = canonicalOutput21621.moment H :=
  canonical_of_padded canonicalInput21621 canonicalOutput21621 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation290, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21622 : ExponentCode := ⟨5, 3, ![![-1, 0, 1], ![0, -1, 1], ![-1, 4, -3], ![1, -3, 2], ![1, 0, -1]]⟩

def canonicalOutput21622 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node736⟩

theorem canonicalSound21622 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21622.moment H = canonicalOutput21622.moment H :=
  canonical_of_padded canonicalInput21622 canonicalOutput21622 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21623 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![-1, -1, 2], ![3, -1, -2], ![-1, 4, -3]]⟩

def canonicalOutput21623 : ExponentCode := normalNode220

theorem canonicalSound21623 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21623.moment H = canonicalOutput21623.moment H :=
  canonical_of_padded canonicalInput21623 canonicalOutput21623 (by decide) (by decide)
    ⟨false, true, canonicalPermutation211, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21624 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![-1, 1, 0], ![-2, 3, -1], ![4, -2, -2]]⟩

def canonicalOutput21624 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1535⟩

theorem canonicalSound21624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21624.moment H = canonicalOutput21624.moment H :=
  canonical_of_padded canonicalInput21624 canonicalOutput21624 (by decide) (by decide)
    ⟨false, false, canonicalPermutation91, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21625 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![2, -1, -1], ![-1, 4, -3]]⟩

def canonicalOutput21625 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2302⟩

theorem canonicalSound21625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21625.moment H = canonicalOutput21625.moment H :=
  canonical_of_padded canonicalInput21625 canonicalOutput21625 (by decide) (by decide)
    ⟨false, true, canonicalPermutation134, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21626 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![3, -1, -2], ![-2, 4, -2]]⟩

def canonicalOutput21626 : ExponentCode := normalNode219

theorem canonicalSound21626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21626.moment H = canonicalOutput21626.moment H :=
  canonical_of_padded canonicalInput21626 canonicalOutput21626 (by decide) (by decide)
    ⟨false, true, canonicalPermutation134, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21627 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, 0, 0], ![2, -2, 0], ![-1, 4, -3]]⟩

def canonicalOutput21627 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node653⟩

theorem canonicalSound21627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21627.moment H = canonicalOutput21627.moment H :=
  canonical_of_padded canonicalInput21627 canonicalOutput21627 (by decide) (by decide)
    ⟨false, true, canonicalPermutation167, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21628 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![-3, 3, 0], ![4, -2, -2]]⟩

def canonicalOutput21628 : ExponentCode := normalNode970

theorem canonicalSound21628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21628.moment H = canonicalOutput21628.moment H :=
  canonical_of_padded canonicalInput21628 canonicalOutput21628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation392, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21629 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![-2, 3, -1], ![3, -2, -1]]⟩

def canonicalOutput21629 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node1422⟩

theorem canonicalSound21629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21629.moment H = canonicalOutput21629.moment H :=
  canonical_of_padded canonicalInput21629 canonicalOutput21629 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21630 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-1, -1, 2], ![1, 4, -5]]⟩

def canonicalOutput21630 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2375⟩

theorem canonicalSound21630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21630.moment H = canonicalOutput21630.moment H :=
  canonical_of_padded canonicalInput21630 canonicalOutput21630 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21631 : ExponentCode := ⟨6, 3, ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![1, -2, 1], ![-1, 4, -3]]⟩

def canonicalOutput21631 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2379⟩

theorem canonicalSound21631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21631.moment H = canonicalOutput21631.moment H :=
  canonical_of_padded canonicalInput21631 canonicalOutput21631 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
