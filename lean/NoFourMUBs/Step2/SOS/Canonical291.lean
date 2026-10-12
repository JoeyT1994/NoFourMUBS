import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical233
import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput18624 : ExponentCode := ⟨4, 3, ![![-1, -1, 2], ![-1, 2, -1], ![1, -3, 2], ![1, 2, -3]]⟩

def canonicalOutput18624 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node262⟩

theorem canonicalSound18624 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18624.moment H = canonicalOutput18624.moment H :=
  canonical_of_padded canonicalInput18624 canonicalOutput18624 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18625 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![-1, 3, -2], ![0, -2, 2], ![1, -1, 0], ![1, 1, -2]]⟩

def canonicalOutput18625 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node873⟩

theorem canonicalSound18625 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18625.moment H = canonicalOutput18625.moment H :=
  canonical_of_padded canonicalInput18625 canonicalOutput18625 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18626 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![-1, 4, -3], ![1, -3, 2], ![0, 0, 0], ![1, 0, -1]]⟩

def canonicalOutput18626 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound18626 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18626.moment H = canonicalOutput18626.moment H :=
  canonical_of_padded canonicalInput18626 canonicalOutput18626 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18627 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![-1, 4, -3], ![1, -3, 2], ![1, 0, -1], ![0, 0, 0]]⟩

def canonicalOutput18627 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound18627 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18627.moment H = canonicalOutput18627.moment H :=
  canonical_of_padded canonicalInput18627 canonicalOutput18627 (by decide) (by decide)
    ⟨false, false, canonicalPermutation68, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18628 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![0, -3, 3], ![-1, 4, -3], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput18628 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1144⟩

theorem canonicalSound18628 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18628.moment H = canonicalOutput18628.moment H :=
  canonical_of_padded canonicalInput18628 canonicalOutput18628 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18629 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![0, -3, 3], ![-1, 5, -4], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput18629 : ExponentCode := normalNode5984

theorem canonicalSound18629 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18629.moment H = canonicalOutput18629.moment H :=
  canonical_of_padded canonicalInput18629 canonicalOutput18629 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18630 : ExponentCode := ⟨4, 3, ![![-1, -1, 2], ![0, -3, 3], ![0, 2, -2], ![1, 2, -3]]⟩

def canonicalOutput18630 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node265⟩

theorem canonicalSound18630 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18630.moment H = canonicalOutput18630.moment H :=
  canonical_of_padded canonicalInput18630 canonicalOutput18630 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18631 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![0, -3, 3], ![0, 4, -4], ![0, 0, 0], ![1, 0, -1]]⟩

def canonicalOutput18631 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node278⟩

theorem canonicalSound18631 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18631.moment H = canonicalOutput18631.moment H :=
  canonical_of_padded canonicalInput18631 canonicalOutput18631 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18632 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![0, -3, 3], ![0, 4, -4], ![1, -1, 0], ![0, 1, -1]]⟩

def canonicalOutput18632 : ExponentCode := normalNode9523

theorem canonicalSound18632 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18632.moment H = canonicalOutput18632.moment H :=
  canonical_of_padded canonicalInput18632 canonicalOutput18632 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18633 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![0, -3, 3], ![0, 4, -4], ![1, 0, -1], ![0, 0, 0]]⟩

def canonicalOutput18633 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node278⟩

theorem canonicalSound18633 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18633.moment H = canonicalOutput18633.moment H :=
  canonical_of_padded canonicalInput18633 canonicalOutput18633 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18634 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.raw7473step0⟩

def canonicalOutput18634 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node279⟩

theorem canonicalSound18634 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18634.moment H = canonicalOutput18634.moment H :=
  by
  change injectiveMoment H OAI.MUB6.Certificate.PairSemantics.raw7473step0 = _
  have heq : OAI.MUB6.Certificate.PairSemantics.raw7473step0 = OAI.MUB6.Certificate.PairSemantics.raw7473.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  rw [heq]
  exact (injectiveMoment_transpose H OAI.MUB6.Certificate.PairSemantics.raw7473).trans (OAI.MUB6.Certificate.PairSemantics.canonical7473 hH)

def canonicalInput18635 : ExponentCode := ⟨5, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, -2, 2], ![0, 5, -5], ![1, -1, 0]]⟩

def canonicalOutput18635 : ExponentCode := normalNode9525

theorem canonicalSound18635 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18635.moment H = canonicalOutput18635.moment H :=
  canonical_of_padded canonicalInput18635 canonicalOutput18635 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18636 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 2, 0], ![3, 2, -5]]⟩

def canonicalOutput18636 : ExponentCode := normalNode52

theorem canonicalSound18636 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18636.moment H = canonicalOutput18636.moment H :=
  canonical_of_padded canonicalInput18636 canonicalOutput18636 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18637 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![-2, 3, -1], ![3, 1, -4]]⟩

def canonicalOutput18637 : ExponentCode := normalNode124

theorem canonicalSound18637 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18637.moment H = canonicalOutput18637.moment H :=
  canonical_of_padded canonicalInput18637 canonicalOutput18637 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18638 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![3, 0, -3], ![-2, 4, -2]]⟩

def canonicalOutput18638 : ExponentCode := normalNode167

theorem canonicalSound18638 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18638.moment H = canonicalOutput18638.moment H :=
  canonical_of_padded canonicalInput18638 canonicalOutput18638 (by decide) (by decide)
    ⟨false, true, canonicalPermutation134, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18639 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![-3, 3, 0], ![4, -1, -3]]⟩

def canonicalOutput18639 : ExponentCode := normalNode1

theorem canonicalSound18639 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18639.moment H = canonicalOutput18639.moment H :=
  canonical_of_padded canonicalInput18639 canonicalOutput18639 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18640 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-3, 3, 0], ![3, 1, -4]]⟩

def canonicalOutput18640 : ExponentCode := normalNode2

theorem canonicalSound18640 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18640.moment H = canonicalOutput18640.moment H :=
  canonical_of_padded canonicalInput18640 canonicalOutput18640 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation392, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18641 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![2, 3, -5]]⟩

def canonicalOutput18641 : ExponentCode := normalNode311

theorem canonicalSound18641 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18641.moment H = canonicalOutput18641.moment H :=
  canonical_of_padded canonicalInput18641 canonicalOutput18641 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation379, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18642 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-3, 2, 1], ![4, -2, -2]]⟩

def canonicalOutput18642 : ExponentCode := normalNode15

theorem canonicalSound18642 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18642.moment H = canonicalOutput18642.moment H :=
  canonical_of_padded canonicalInput18642 canonicalOutput18642 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18643 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![-2, -1, 3], ![3, 1, -4]]⟩

def canonicalOutput18643 : ExponentCode := normalNode110

theorem canonicalSound18643 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18643.moment H = canonicalOutput18643.moment H :=
  canonical_of_padded canonicalInput18643 canonicalOutput18643 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18644 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, -1, 3], ![2, 2, -4]]⟩

def canonicalOutput18644 : ExponentCode := normalNode958

theorem canonicalSound18644 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18644.moment H = canonicalOutput18644.moment H :=
  canonical_of_padded canonicalInput18644 canonicalOutput18644 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18645 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-1, -2, 3], ![1, 3, -4]]⟩

def canonicalOutput18645 : ExponentCode := normalNode6260

theorem canonicalSound18645 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18645.moment H = canonicalOutput18645.moment H :=
  canonical_of_padded canonicalInput18645 canonicalOutput18645 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18646 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, -3, 2], ![-1, 4, -3]]⟩

def canonicalOutput18646 : ExponentCode := normalNode6271

theorem canonicalSound18646 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18646.moment H = canonicalOutput18646.moment H :=
  canonical_of_padded canonicalInput18646 canonicalOutput18646 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation314, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18647 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, 1, -1], ![1, 1, -2], ![-3, 2, 1], ![3, -2, -1]]⟩

def canonicalOutput18647 : ExponentCode := normalNode189

theorem canonicalSound18647 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18647.moment H = canonicalOutput18647.moment H :=
  canonical_of_padded canonicalInput18647 canonicalOutput18647 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18648 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, 1, -1], ![2, -2, 0], ![-3, 2, 1], ![2, 1, -3]]⟩

def canonicalOutput18648 : ExponentCode := normalNode185

theorem canonicalSound18648 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18648.moment H = canonicalOutput18648.moment H :=
  canonical_of_padded canonicalInput18648 canonicalOutput18648 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation365, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18649 : ExponentCode := ⟨4, 3, ![![-1, -1, 2], ![0, -1, 1], ![0, 5, -5], ![1, -3, 2]]⟩

def canonicalOutput18649 : ExponentCode := normalNode7146

theorem canonicalSound18649 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18649.moment H = canonicalOutput18649.moment H :=
  canonical_of_padded canonicalInput18649 canonicalOutput18649 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18650 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![1, -1, 0], ![-2, 1, 1], ![-1, 3, -2], ![3, -1, -2]]⟩

def canonicalOutput18650 : ExponentCode := normalNode187

theorem canonicalSound18650 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18650.moment H = canonicalOutput18650.moment H :=
  canonical_of_padded canonicalInput18650 canonicalOutput18650 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation361, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18651 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-3, 2, 1], ![2, 2, -4]]⟩

def canonicalOutput18651 : ExponentCode := normalNode18

theorem canonicalSound18651 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18651.moment H = canonicalOutput18651.moment H :=
  canonical_of_padded canonicalInput18651 canonicalOutput18651 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation365, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18652 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![1, 4, -5]]⟩

def canonicalOutput18652 : ExponentCode := normalNode4582

theorem canonicalSound18652 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18652.moment H = canonicalOutput18652.moment H :=
  canonical_of_padded canonicalInput18652 canonicalOutput18652 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18653 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-1, -1, 2], ![0, 5, -5]]⟩

def canonicalOutput18653 : ExponentCode := normalNode9513

theorem canonicalSound18653 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18653.moment H = canonicalOutput18653.moment H :=
  canonical_of_padded canonicalInput18653 canonicalOutput18653 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18654 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![-2, -1, 3], ![1, 3, -4]]⟩

def canonicalOutput18654 : ExponentCode := normalNode112

theorem canonicalSound18654 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18654.moment H = canonicalOutput18654.moment H :=
  canonical_of_padded canonicalInput18654 canonicalOutput18654 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18655 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, 1, -1], ![0, 1, -1], ![0, 1, -1], ![-3, 1, 2], ![4, -3, -1]]⟩

def canonicalOutput18655 : ExponentCode := normalNode4

theorem canonicalSound18655 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18655.moment H = canonicalOutput18655.moment H :=
  canonical_of_padded canonicalInput18655 canonicalOutput18655 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18656 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-2, -1, 3], ![1, 3, -4]]⟩

def canonicalOutput18656 : ExponentCode := normalNode2982

theorem canonicalSound18656 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18656.moment H = canonicalOutput18656.moment H :=
  canonical_of_padded canonicalInput18656 canonicalOutput18656 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18657 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, 1, -1], ![1, -1, 0], ![1, -1, 0], ![-1, -2, 3], ![0, 4, -4]]⟩

def canonicalOutput18657 : ExponentCode := normalNode7130

theorem canonicalSound18657 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18657.moment H = canonicalOutput18657.moment H :=
  canonical_of_padded canonicalInput18657 canonicalOutput18657 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18658 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![-1, 4, -3]]⟩

def canonicalOutput18658 : ExponentCode := normalNode6273

theorem canonicalSound18658 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18658.moment H = canonicalOutput18658.moment H :=
  canonical_of_padded canonicalInput18658 canonicalOutput18658 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation313, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18659 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![0, 1, -1], ![1, 0, -1], ![1, 0, -1], ![0, 3, -3], ![-1, -3, 4]]⟩

def canonicalOutput18659 : ExponentCode := normalNode6254

theorem canonicalSound18659 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18659.moment H = canonicalOutput18659.moment H :=
  canonical_of_padded canonicalInput18659 canonicalOutput18659 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation312, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18660 : ExponentCode := ⟨4, 3, ![![-1, -1, 2], ![0, 2, -2], ![0, 3, -3], ![1, -4, 3]]⟩

def canonicalOutput18660 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node257⟩

theorem canonicalSound18660 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18660.moment H = canonicalOutput18660.moment H :=
  canonical_of_padded canonicalInput18660 canonicalOutput18660 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18661 : ExponentCode := ⟨4, 3, ![![-1, -1, 2], ![0, 4, -4], ![1, -3, 2], ![0, 0, 0]]⟩

def canonicalOutput18661 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node59⟩

theorem canonicalSound18661 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18661.moment H = canonicalOutput18661.moment H :=
  canonical_of_padded canonicalInput18661 canonicalOutput18661 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18662 : ExponentCode := ⟨3, 3, ![![-1, -1, 2], ![0, 5, -5], ![1, -4, 3]]⟩

def canonicalOutput18662 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node55⟩

theorem canonicalSound18662 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18662.moment H = canonicalOutput18662.moment H :=
  canonical_of_padded canonicalInput18662 canonicalOutput18662 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18663 : ExponentCode := ⟨3, 3, ![![-1, -1, 2], ![1, -4, 3], ![0, 5, -5]]⟩

def canonicalOutput18663 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node55⟩

theorem canonicalSound18663 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18663.moment H = canonicalOutput18663.moment H :=
  canonical_of_padded canonicalInput18663 canonicalOutput18663 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18664 : ExponentCode := ⟨4, 3, ![![-1, -1, 2], ![1, -3, 2], ![0, 2, -2], ![0, 2, -2]]⟩

def canonicalOutput18664 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node274⟩

theorem canonicalSound18664 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18664.moment H = canonicalOutput18664.moment H :=
  canonical_of_padded canonicalInput18664 canonicalOutput18664 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput18665 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![1, -1, 0], ![1, -1, 0], ![-1, 1, 0], ![0, 1, -1], ![0, 1, -1]]⟩

def canonicalOutput18665 : ExponentCode := ⟨6, 3, OAI.MUB6.Certificate.PairSemantics.node2306⟩

theorem canonicalSound18665 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18665.moment H = canonicalOutput18665.moment H :=
  canonical_of_padded canonicalInput18665 canonicalOutput18665 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput18666 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![1, -1, 0], ![1, -1, 0], ![1, -1, 0], ![-2, 0, 2], ![0, 4, -4]]⟩

def canonicalOutput18666 : ExponentCode := normalNode4584

theorem canonicalSound18666 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18666.moment H = canonicalOutput18666.moment H :=
  canonical_of_padded canonicalInput18666 canonicalOutput18666 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18667 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![1, -1, 0], ![1, -1, 0], ![1, 0, -1], ![-2, -1, 3], ![0, 4, -4]]⟩

def canonicalOutput18667 : ExponentCode := normalNode2983

theorem canonicalSound18667 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18667.moment H = canonicalOutput18667.moment H :=
  canonical_of_padded canonicalInput18667 canonicalOutput18667 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18668 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![1, -1, 0], ![1, 0, -1], ![-1, -1, 2], ![2, -1, -1], ![-2, 4, -2]]⟩

def canonicalOutput18668 : ExponentCode := normalNode23

theorem canonicalSound18668 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18668.moment H = canonicalOutput18668.moment H :=
  canonical_of_padded canonicalInput18668 canonicalOutput18668 (by decide) (by decide)
    ⟨false, true, canonicalPermutation109, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18669 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-1, -2, 3], ![-1, 4, -3]]⟩

def canonicalOutput18669 : ExponentCode := normalNode7129

theorem canonicalSound18669 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18669.moment H = canonicalOutput18669.moment H :=
  canonical_of_padded canonicalInput18669 canonicalOutput18669 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation275, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18670 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![1, -1, 0], ![3, -1, -2], ![-2, 1, 1], ![-1, 1, 0], ![0, 1, -1]]⟩

def canonicalOutput18670 : ExponentCode := normalNode2989

theorem canonicalSound18670 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18670.moment H = canonicalOutput18670.moment H :=
  canonical_of_padded canonicalInput18670 canonicalOutput18670 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation238, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput18671 : ExponentCode := ⟨6, 3, ![![-1, -1, 2], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![0, -3, 3], ![-2, 4, -2]]⟩

def canonicalOutput18671 : ExponentCode := normalNode5971

theorem canonicalSound18671 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18671.moment H = canonicalOutput18671.moment H :=
  canonical_of_padded canonicalInput18671 canonicalOutput18671 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation326, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18672 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -3, 3], ![0, 0, -2, 1, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18672 : ExponentCode := normalNode579

theorem canonicalSound18672 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18672.moment H = canonicalOutput18672.moment H :=
  canonical_of_padded canonicalInput18672 canonicalOutput18672 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput18673 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -2, 2], ![0, 0, -1, 2, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18673 : ExponentCode := normalNode2305

theorem canonicalSound18673 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18673.moment H = canonicalOutput18673.moment H :=
  canonical_of_padded canonicalInput18673 canonicalOutput18673 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput18674 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -2, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput18674 : ExponentCode := normalNode2298

theorem canonicalSound18674 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18674.moment H = canonicalOutput18674.moment H :=
  canonical_of_padded canonicalInput18674 canonicalOutput18674 (by decide) (by decide)
    ⟨true, false, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18675 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -2, 2], ![0, 0, 0, 2, -2], ![0, 1, -1, 1, -1], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput18675 : ExponentCode := normalNode2298

theorem canonicalSound18675 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18675.moment H = canonicalOutput18675.moment H :=
  canonical_of_padded canonicalInput18675 canonicalOutput18675 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18676 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, -1, -1, 1, 1], ![0, 2, -1, 1, -2], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput18676 : ExponentCode := normalNode10657

theorem canonicalSound18676 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18676.moment H = canonicalOutput18676.moment H :=
  canonical_of_padded canonicalInput18676 canonicalOutput18676 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput18677 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, -1, -1, 1, 1], ![0, 2, -1, 2, -3], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18677 : ExponentCode := normalNode5010

theorem canonicalSound18677 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18677.moment H = canonicalOutput18677.moment H :=
  canonical_of_padded canonicalInput18677 canonicalOutput18677 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18678 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, -1, -1, 2, 0], ![0, 2, -1, 1, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18678 : ExponentCode := normalNode5842

theorem canonicalSound18678 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18678.moment H = canonicalOutput18678.moment H :=
  canonical_of_padded canonicalInput18678 canonicalOutput18678 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput18679 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, -2, 2, 0], ![0, 1, 0, -2, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18679 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1839⟩

theorem canonicalSound18679 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18679.moment H = canonicalOutput18679.moment H :=
  canonical_of_padded canonicalInput18679 canonicalOutput18679 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput18680 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, -1, 1, 0], ![0, 1, -1, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18680 : ExponentCode := normalNode9098

theorem canonicalSound18680 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18680.moment H = canonicalOutput18680.moment H :=
  canonical_of_padded canonicalInput18680 canonicalOutput18680 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18681 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, -1, 2, -1], ![0, 1, -1, -2, 2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput18681 : ExponentCode := normalNode2485

theorem canonicalSound18681 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18681.moment H = canonicalOutput18681.moment H :=
  canonical_of_padded canonicalInput18681 canonicalOutput18681 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18682 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, -1, 2, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput18682 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2623⟩

theorem canonicalSound18682 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18682.moment H = canonicalOutput18682.moment H :=
  canonical_of_padded canonicalInput18682 canonicalOutput18682 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput18683 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, -1, 2, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput18683 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1841⟩

theorem canonicalSound18683 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18683.moment H = canonicalOutput18683.moment H :=
  canonical_of_padded canonicalInput18683 canonicalOutput18683 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation187, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput18684 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, 0, -2, 2], ![0, 0, 0, 2, -2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput18684 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2351⟩

theorem canonicalSound18684 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18684.moment H = canonicalOutput18684.moment H :=
  canonical_of_padded canonicalInput18684 canonicalOutput18684 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput18685 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, 0, -2, 2], ![0, 0, 0, 3, -3], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput18685 : ExponentCode := normalNode3364

theorem canonicalSound18685 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18685.moment H = canonicalOutput18685.moment H :=
  canonical_of_padded canonicalInput18685 canonicalOutput18685 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput18686 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, 0, -2, 2], ![0, 1, -2, 1, 0], ![1, 0, 0, 2, -3]]⟩

def canonicalOutput18686 : ExponentCode := normalNode3471

theorem canonicalSound18686 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18686.moment H = canonicalOutput18686.moment H :=
  canonical_of_padded canonicalInput18686 canonicalOutput18686 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18687 : ExponentCode := ⟨4, 5, ![![-1, -1, 2, -1, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, -1, 2, -2]]⟩

def canonicalOutput18687 : ExponentCode := normalNode5098

theorem canonicalSound18687 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18687.moment H = canonicalOutput18687.moment H :=
  canonical_of_padded canonicalInput18687 canonicalOutput18687 (by decide) (by decide)
    ⟨true, true, canonicalPermutation54, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
