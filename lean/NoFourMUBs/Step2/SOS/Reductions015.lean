import NoFourMUBs.Step2.SOS.Canonical003
import NoFourMUBs.Step2.SOS.Canonical005
import NoFourMUBs.Step2.SOS.Canonical008
import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical013
import NoFourMUBs.Step2.SOS.Canonical014
import NoFourMUBs.Step2.SOS.Canonical015
import NoFourMUBs.Step2.SOS.Canonical016
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical089
import NoFourMUBs.Step2.SOS.Canonical127
import NoFourMUBs.Step2.SOS.Canonical139
import NoFourMUBs.Step2.SOS.Canonical140
import NoFourMUBs.Step2.SOS.Canonical145
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical292
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical427
import NoFourMUBs.Step2.SOS.Canonical428
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions013
import NoFourMUBs.Step2.SOS.Reductions014
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical120
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical133
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical138
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical187
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical205
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical215
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical235
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical275
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical68
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical82
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection480 : Integer.Sparse (Fin 1613) := [(37, -1), (38, -1), (39, -1)]

def reductionPivot480 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 2, 1], ![2, -3, 0, 1], ![1, 4, -2, -3]]

theorem reductionSound480 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7104).moment H =
      Integer.Sparse.eval reductionProjection480 (momentVector H) := by
  have heq : reductionPivot480 = (fun u v => (normalNode7104).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7104).moment H = injectiveMoment H reductionPivot480 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7104).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7104).entries)).symm
  have hshape : reductionPivot480 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot480 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot480 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection265, oldProjection84, oldProjection85] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot480 (0 : Fin 3)) = canonicalInput348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot480 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection265 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot480 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound348 hH))).trans (reductionSound265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot480 (1 : Fin 3)) = canonicalInput5748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot480 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection84 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot480 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5748 hH))).trans (oldProjectionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot480 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2649 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot480 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection85 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot480 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2649 hH))).trans (oldProjectionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7104).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot480 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7104).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot480 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection480 ![reductionProjection265, oldProjection84, oldProjection85]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection481 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (104, 8), (240, -24), (241, 16), (247, 8), (1251, 1)]

def reductionPivot481 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![-1, -2, 2, 1], ![3, 2, -4, -1]]

theorem reductionSound481 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode7939).moment H =
      Integer.Sparse.eval reductionProjection481 (momentVector H) := by
  have heq : reductionPivot481 = (fun u v => (normalNode7939).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7939).moment H = injectiveMoment H reductionPivot481 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7939).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7939).entries)).symm
  have hshape : reductionPivot481 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot481 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot481 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection140, oldProjection152, oldProjection153] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot481 (0 : Fin 3)) = canonicalInput9342.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot481 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection140 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot481 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9342 hH))).trans (oldProjectionSound140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot481 (1 : Fin 3)) = canonicalInput22375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot481 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection152 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot481 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22375 hH))).trans (oldProjectionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot481 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7533 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot481 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection153 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot481 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7533 hH))).trans (oldProjectionSound153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7939).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot481 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7939).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot481 (j : Fin 3)))
      3 72 144 6 ![48, 1, 48] ![3, 144, 3] reductionProjection481 ![oldProjection140, oldProjection152, oldProjection153]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection482 : Integer.Sparse (Fin 1613) := [(19, 4), (37, 48), (38, 24), (39, 24), (94, -1), (104, -8), (240, 48), (241, -16), (247, -8), (690, 24), (696, 24), (697, 48), (1251, -1)]

def reductionPivot482 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 1, 4], ![0, 1, -1, 0], ![0, 1, 1, -2], ![2, 1, -2, -1]]

theorem reductionSound482 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode257).moment H =
      Integer.Sparse.eval reductionProjection482 (momentVector H) := by
  have heq : reductionPivot482 = (fun u v => (normalNode257).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode257).moment H = injectiveMoment H reductionPivot482 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode257).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot482 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot482 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 3, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot482 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection479, oldProjection770, reductionProjection480, reductionProjection481] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot482 (0 : Fin 4)) = canonicalInput953.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot482 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection479 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot482 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound953 hH))).trans (reductionSound479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot482 (1 : Fin 4)) = canonicalInput918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot482 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection770 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot482 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound918 hH))).trans (oldProjectionSound770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot482 (2 : Fin 4)) = canonicalInput911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot482 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection480 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot482 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound911 hH))).trans (reductionSound480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot482 (3 : Fin 4)) = canonicalInput910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot482 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection481 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot482 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection481 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound910 hH))).trans (reductionSound481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode257).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot482 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode257).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot482 (j : Fin 4)))
      2 144 144 2 ![3, 3, 3, 72] ![48, 48, 48, 2] reductionProjection482 ![reductionProjection479, oldProjection770, reductionProjection480, reductionProjection481]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection483 : Integer.Sparse (Fin 1613) := [(694, -1), (697, -1), (699, -1)]

def reductionPivot483 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![-2, -1, 1, 2], ![3, 2, -3, -2]]

theorem reductionSound483 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode9871).moment H =
      Integer.Sparse.eval reductionProjection483 (momentVector H) := by
  have heq : reductionPivot483 = (fun u v => (normalNode9871).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9871).moment H = injectiveMoment H reductionPivot483 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9871).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9871).entries)).symm
  have hshape : reductionPivot483 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot483 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot483 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection167, oldProjection186, oldProjection184] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot483 (0 : Fin 3)) = canonicalInput18704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot483 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection167 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot483 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18704 hH))).trans (oldProjectionSound167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot483 (1 : Fin 3)) = canonicalInput27385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot483 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection186 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot483 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27385 hH))).trans (oldProjectionSound186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot483 (2 : Fin 3)) = canonicalInput27394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot483 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection184 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot483 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27394 hH))).trans (oldProjectionSound184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9871).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot483 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9871).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot483 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection483 ![oldProjection167, oldProjection186, oldProjection184]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection484 : Integer.Sparse (Fin 1613) := [(38, -1), (41, -1), (45, -1)]

def reductionPivot484 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, -1, 1, 2], ![0, -1, 3, -2], ![3, 2, -4, -1]]

theorem reductionSound484 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6687).moment H =
      Integer.Sparse.eval reductionProjection484 (momentVector H) := by
  have heq : reductionPivot484 = (fun u v => (normalNode6687).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6687).moment H = injectiveMoment H reductionPivot484 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6687).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6687).entries)).symm
  have hshape : reductionPivot484 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot484 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot484 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection264, oldProjection89, oldProjection85] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot484 (0 : Fin 3)) = canonicalInput255.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot484 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection264 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot484 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound255 hH))).trans (reductionSound264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot484 (1 : Fin 3)) = canonicalInput4650.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot484 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot484 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4650 hH))).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot484 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw2206 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot484 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection85 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot484 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2206 hH))).trans (oldProjectionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6687).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot484 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6687).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot484 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection484 ![reductionProjection264, oldProjection89, oldProjection85]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection485 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (108, 8), (241, 8), (242, -24), (247, 16), (1251, 1)]

def reductionPivot485 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![-2, -1, 2, 1], ![3, 2, -4, -1]]

theorem reductionSound485 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode9872).moment H =
      Integer.Sparse.eval reductionProjection485 (momentVector H) := by
  have heq : reductionPivot485 = (fun u v => (normalNode9872).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9872).moment H = injectiveMoment H reductionPivot485 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9872).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9872).entries)).symm
  have hshape : reductionPivot485 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot485 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot485 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection144, oldProjection154, oldProjection153] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot485 (0 : Fin 3)) = canonicalInput18705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot485 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection144 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot485 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18705 hH))).trans (oldProjectionSound144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot485 (1 : Fin 3)) = canonicalInput27386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot485 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection154 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot485 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27386 hH))).trans (oldProjectionSound154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot485 (2 : Fin 3)) = canonicalInput27395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot485 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection153 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot485 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27395 hH))).trans (oldProjectionSound153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9872).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot485 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9872).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot485 (j : Fin 3)))
      3 72 144 6 ![48, 1, 48] ![3, 144, 3] reductionProjection485 ![oldProjection144, oldProjection154, oldProjection153]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection486 : Integer.Sparse (Fin 1613) := [(19, 4), (38, 24), (41, 24), (45, 48), (94, -1), (108, -8), (241, -8), (242, 48), (247, -16), (694, 24), (697, 48), (699, 24), (1251, -1)]

def reductionPivot486 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 1, 4], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 2, -2, -1]]

theorem reductionSound486 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode258).moment H =
      Integer.Sparse.eval reductionProjection486 (momentVector H) := by
  have heq : reductionPivot486 = (fun u v => (normalNode258).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode258).moment H = injectiveMoment H reductionPivot486 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode258).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot486 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot486 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 3, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot486 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection483, oldProjection784, reductionProjection484, reductionProjection485] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot486 (0 : Fin 4)) = canonicalInput960.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot486 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection483 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot486 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound960 hH))).trans (reductionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot486 (1 : Fin 4)) = canonicalInput919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot486 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection784 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot486 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound919 hH))).trans (oldProjectionSound784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot486 (2 : Fin 4)) = canonicalInput915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot486 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection484 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot486 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound915 hH))).trans (reductionSound484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot486 (3 : Fin 4)) = canonicalInput914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot486 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection485 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot486 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound914 hH))).trans (reductionSound485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode258).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot486 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode258).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot486 (j : Fin 4)))
      2 144 144 2 ![3, 3, 3, 72] ![48, 48, 48, 2] reductionProjection486 ![reductionProjection483, oldProjection784, reductionProjection484, reductionProjection485]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection487 : Integer.Sparse (Fin 1613) := [(308, 1)]

theorem reductionSound487 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code308).moment H =
      Integer.Sparse.eval reductionProjection487 (momentVector H) := by
  have hc : coordinates (308 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code308) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection487, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection488 : Integer.Sparse (Fin 1613) := [(39, -1), (239, -1), (695, -1)]

def reductionPivot488 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 2, 0], ![-1, 2, -3, 2], ![4, -2, 1, -3]]

theorem reductionSound488 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6502).moment H =
      Integer.Sparse.eval reductionProjection488 (momentVector H) := by
  have heq : reductionPivot488 = (fun u v => (normalNode6502).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6502).moment H = injectiveMoment H reductionPivot488 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6502).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6502).entries)).symm
  have hshape : reductionPivot488 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot488 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot488 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection265, reductionProjection461, oldProjection182] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot488 (0 : Fin 3)) = canonicalInput554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot488 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection265 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot488 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound554 hH))).trans (reductionSound265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot488 (1 : Fin 3)) = canonicalInput9337.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot488 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection461 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot488 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection461 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9337 hH))).trans (reductionSound461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot488 (2 : Fin 3)) = canonicalInput9343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot488 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot488 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9343 hH))).trans (oldProjectionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6502).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot488 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6502).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot488 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection488 ![reductionProjection265, reductionProjection461, oldProjection182]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection489 : Integer.Sparse (Fin 1613) := [(37, 3), (38, 3), (39, 3), (238, 3), (239, 3), (240, 3), (308, -9), (695, 3), (697, 3), (698, -1), (700, -1), (1059, -1)]

def reductionPivot489 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 1, 4], ![0, 0, 2, -2], ![0, 1, 0, -1], ![2, 1, -2, -1]]

theorem reductionSound489 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode260).moment H =
      Integer.Sparse.eval reductionProjection489 (momentVector H) := by
  have heq : reductionPivot489 = (fun u v => (normalNode260).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode260).moment H = injectiveMoment H reductionPivot489 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode260).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot489 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot489 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 3, 1, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot489 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection773, oldProjection770, reductionProjection487, reductionProjection488] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot489 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1092 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot489 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection773 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot489 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1092 hH))).trans (oldProjectionSound773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot489 (1 : Fin 4)) = canonicalInput920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot489 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection770 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot489 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound920 hH))).trans (oldProjectionSound770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot489 (2 : Fin 4)) = canonicalInput903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot489 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection487 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot489 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection487 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound903 hH))).trans (reductionSound487 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot489 (3 : Fin 4)) = canonicalInput902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot489 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection488 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot489 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound902 hH))).trans (reductionSound488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode260).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot489 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode260).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot489 (j : Fin 4)))
      2 18 18 2 ![9, 3, 1, 3] ![2, 6, 18, 6] reductionProjection489 ![oldProjection773, oldProjection770, reductionProjection487, reductionProjection488]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection490 : Integer.Sparse (Fin 1613) := [(92, -3), (244, 1), (692, -3), (700, 1), (701, 1)]

def reductionPivot490 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 2, 0], ![2, -4, 1, 1], ![1, 4, -3, -2]]

theorem reductionSound490 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7114).moment H =
      Integer.Sparse.eval reductionProjection490 (momentVector H) := by
  have heq : reductionPivot490 = (fun u v => (normalNode7114).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7114).moment H = injectiveMoment H reductionPivot490 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7114).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7114).entries)).symm
  have hshape : reductionPivot490 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot490 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot490 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection443, oldProjection164, oldProjection171] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot490 (0 : Fin 3)) = canonicalInput576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot490 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection443 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot490 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound576 hH))).trans (reductionSound443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot490 (1 : Fin 3)) = canonicalInput9457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot490 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection164 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot490 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9457 hH))).trans (oldProjectionSound164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot490 (2 : Fin 3)) = canonicalInput9467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot490 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection171 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot490 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9467 hH))).trans (oldProjectionSound171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7114).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot490 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7114).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot490 (j : Fin 3)))
      3 9 9 3 ![1, 1, 3] ![9, 9, 3] reductionProjection490 ![reductionProjection443, oldProjection164, oldProjection171]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection491 : Integer.Sparse (Fin 1613) := [(92, -1), (1061, -1), (1214, -1)]

def reductionPivot491 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![2, -4, 1, 1], ![1, 4, -2, -3]]

theorem reductionSound491 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7113).moment H =
      Integer.Sparse.eval reductionProjection491 (momentVector H) := by
  have heq : reductionPivot491 = (fun u v => (normalNode7113).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7113).moment H = injectiveMoment H reductionPivot491 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7113).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7113).entries)).symm
  have hshape : reductionPivot491 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot491 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot491 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection443, oldProjection219, oldProjection218] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot491 (0 : Fin 3)) = canonicalInput535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot491 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection443 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot491 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection443 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound535 hH))).trans (reductionSound443 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot491 (1 : Fin 3)) = canonicalInput8949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot491 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection219 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot491 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8949 hH))).trans (oldProjectionSound219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot491 (2 : Fin 3)) = canonicalInput9006.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot491 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection218 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot491 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9006 hH))).trans (oldProjectionSound218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7113).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot491 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7113).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot491 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection491 ![reductionProjection443, oldProjection219, oldProjection218]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection492 : Integer.Sparse (Fin 1613) := [(3, -4), (19, 4), (20, -1), (1214, -48), (1251, 1)]

def reductionPivot492 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 1, 0], ![1, -4, 1, 2], ![1, 4, -2, -3]]

theorem reductionSound492 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9433).moment H =
      Integer.Sparse.eval reductionProjection492 (momentVector H) := by
  have heq : reductionPivot492 = (fun u v => (normalNode9433).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9433).moment H = injectiveMoment H reductionPivot492 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9433).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9433).entries)).symm
  have hshape : reductionPivot492 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot492 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 24, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot492 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection219, oldProjection278, oldProjection281] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot492 (0 : Fin 3)) = canonicalInput8949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot492 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection219 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot492 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection219 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8949 hH))).trans (oldProjectionSound219 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot492 (1 : Fin 3)) = canonicalInput21732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot492 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection278 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot492 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection278 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21732 hH))).trans (oldProjectionSound278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot492 (2 : Fin 3)) = canonicalInput21808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot492 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection281 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot492 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21808 hH))).trans (oldProjectionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9433).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot492 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9433).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot492 (j : Fin 3)))
      3 144 144 3 ![1, 24, 48] ![144, 6, 3] reductionProjection492 ![oldProjection219, oldProjection278, oldProjection281]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection493 : Integer.Sparse (Fin 1613) := [(3, 2), (19, -2), (20, -1), (92, 48), (94, -3), (244, -8), (692, 24), (700, -8), (701, -8), (1061, 48), (1214, 48), (1251, -2)]

def reductionPivot493 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, -3, 1, 4], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 2, -4]]

theorem reductionSound493 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode262).moment H =
      Integer.Sparse.eval reductionProjection493 (momentVector H) := by
  have heq : reductionPivot493 = (fun u v => (normalNode262).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode262).moment H = injectiveMoment H reductionPivot493 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode262).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot493 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot493 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 9, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot493 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1070, reductionProjection490, reductionProjection491, reductionProjection492] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot493 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw1128 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot493 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1070 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot493 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical1128 hH))).trans (oldProjectionSound1070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot493 (1 : Fin 4)) = canonicalInput921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot493 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection490 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot493 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection490 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound921 hH))).trans (reductionSound490 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot493 (2 : Fin 4)) = canonicalInput916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot493 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection491 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot493 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection491 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound916 hH))).trans (reductionSound491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot493 (3 : Fin 4)) = canonicalInput913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot493 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection492 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot493 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound913 hH))).trans (reductionSound492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode262).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot493 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode262).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot493 (j : Fin 4)))
      2 144 144 2 ![48, 9, 3, 144] ![3, 16, 48, 1] reductionProjection493 ![oldProjection1070, reductionProjection490, reductionProjection491, reductionProjection492]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection494 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 40), (19, 180), (20, -15), (93, -60), (94, -35), (108, -240), (240, 240), (247, -160), (1250, -60), (1251, -30), (1319, 240)]

def reductionPivot494 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, -3, 4], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]

theorem reductionSound494 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode4779).moment H =
      Integer.Sparse.eval reductionProjection494 (momentVector H) := by
  have heq : reductionPivot494 = (fun u v => (normalNode4779).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4779).moment H = injectiveMoment H reductionPivot494 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4779).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot494 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot494 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot494 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1222, oldProjection1236, oldProjection923, oldProjection1182] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot494 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4424 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot494 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot494 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4424 hH))).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot494 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4284 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot494 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1236 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot494 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4284 hH))).trans (oldProjectionSound1236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot494 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4282 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot494 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection923 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot494 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4282 hH))).trans (oldProjectionSound923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot494 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4281 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot494 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1182 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot494 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4281 hH))).trans (oldProjectionSound1182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4779).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot494 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4779).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot494 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 144, 144] ![2, 10, 10, 10] reductionProjection494 ![oldProjection1222, oldProjection1236, oldProjection923, oldProjection1182]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection495 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (93, 60), (94, 25), (1251, 10), (1319, -240)]

def reductionPivot495 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![-2, -1, 2, 1], ![3, 2, -3, -2]]

theorem reductionSound495 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9869).moment H =
      Integer.Sparse.eval reductionProjection495 (momentVector H) := by
  have heq : reductionPivot495 = (fun u v => (normalNode9869).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9869).moment H = injectiveMoment H reductionPivot495 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9869).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9869).entries)).symm
  have hshape : reductionPivot495 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot495 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 24, 240] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot495 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection258, oldProjection265, oldProjection268] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot495 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6573 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot495 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection258 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot495 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6573 hH))).trans (oldProjectionSound258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot495 (1 : Fin 3)) = canonicalInput26660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot495 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection265 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot495 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26660 hH))).trans (oldProjectionSound265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot495 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw8803 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot495 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection268 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot495 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8803 hH))).trans (oldProjectionSound268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9869).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot495 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9869).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot495 (j : Fin 3)))
      3 720 720 3 ![1, 24, 240] ![720, 30, 3] reductionProjection495 ![oldProjection258, oldProjection265, oldProjection268]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection496 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (20, -10), (93, -240), (94, -20), (694, 240), (1047, 240), (1250, -120), (1251, -5), (1319, 480)]

def reductionPivot496 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 2, -1, -2]]

theorem reductionSound496 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode277).moment H =
      Integer.Sparse.eval reductionProjection496 (momentVector H) := by
  have heq : reductionPivot496 = (fun u v => (normalNode277).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode277).moment H = injectiveMoment H reductionPivot496 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode277).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot496 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot496 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot496 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection958, oldProjection1195, reductionProjection495, oldProjection1024] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot496 (0 : Fin 4)) = canonicalInput1026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot496 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot496 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1026 hH))).trans (oldProjectionSound958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot496 (1 : Fin 4)) = canonicalInput971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot496 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1195 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot496 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound971 hH))).trans (oldProjectionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot496 (2 : Fin 4)) = canonicalInput959.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot496 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection495 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot496 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound959 hH))).trans (reductionSound495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot496 (3 : Fin 4)) = canonicalInput958.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot496 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot496 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound958 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode277).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot496 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode277).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot496 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 144] ![2, 2, 2, 10] reductionProjection496 ![oldProjection958, oldProjection1195, reductionProjection495, oldProjection1024]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection497 : Integer.Sparse (Fin 1613) := [(1101, 1)]

theorem reductionSound497 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1101).moment H =
      Integer.Sparse.eval reductionProjection497 (momentVector H) := by
  have hc : coordinates (1101 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1101) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection497, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection498 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (93, -60), (94, 5), (694, 240), (697, 240), (699, 240), (1047, 240), (1058, 240), (1060, 240), (1101, -720), (1250, -60), (1251, 5), (1319, 240)]

def reductionPivot498 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 2, -1, -2]]

theorem reductionSound498 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode282).moment H =
      Integer.Sparse.eval reductionProjection498 (momentVector H) := by
  have heq : reductionPivot498 = (fun u v => (normalNode282).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode282).moment H = injectiveMoment H reductionPivot498 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode282).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot498 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot498 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot498 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection483, reductionProjection497, oldProjection1195, oldProjection1196] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot498 (0 : Fin 4)) = canonicalInput1031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot498 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection483 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot498 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1031 hH))).trans (reductionSound483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot498 (1 : Fin 4)) = canonicalInput983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot498 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection497 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot498 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection497 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound983 hH))).trans (reductionSound497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot498 (2 : Fin 4)) = canonicalInput971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot498 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1195 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot498 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound971 hH))).trans (oldProjectionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot498 (3 : Fin 4)) = canonicalInput970.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot498 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1196 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot498 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound970 hH))).trans (oldProjectionSound1196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode282).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot498 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode282).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot498 (j : Fin 4)))
      2 1440 1440 2 ![3, 1, 720, 3] ![480, 1440, 2, 480] reductionProjection498 ![reductionProjection483, reductionProjection497, oldProjection1195, oldProjection1196]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection499 : Integer.Sparse (Fin 1613) := [(94, 1), (694, -24), (696, -24), (698, 8), (704, 8), (1251, 1)]

def reductionPivot499 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 2, -1], ![-1, -2, 1, 2], ![2, 3, -3, -2]]

theorem reductionSound499 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode10246).moment H =
      Integer.Sparse.eval reductionProjection499 (momentVector H) := by
  have heq : reductionPivot499 = (fun u v => (normalNode10246).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10246).moment H = injectiveMoment H reductionPivot499 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode10246).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode10246).entries)).symm
  have hshape : reductionPivot499 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot499 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot499 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection167, oldProjection183, oldProjection180] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot499 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6900 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot499 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection167 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot499 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6900 hH))).trans (oldProjectionSound167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot499 (1 : Fin 3)) = canonicalInput27393.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot499 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection183 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot499 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27393 hH))).trans (oldProjectionSound183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot499 (2 : Fin 3)) = canonicalInput27399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot499 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection180 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot499 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection180 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27399 hH))).trans (oldProjectionSound180 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode10246).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot499 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10246).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot499 (j : Fin 3)))
      3 72 72 3 ![1, 1, 24] ![72, 72, 3] reductionProjection499 ![oldProjection167, oldProjection183, oldProjection180]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection500 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -5), (93, -180), (94, -45), (694, 480), (696, 240), (698, -80), (704, -80), (1250, -120), (1251, -15), (1319, 480)]

def reductionPivot500 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -2, -1]]

theorem reductionSound500 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode283).moment H =
      Integer.Sparse.eval reductionProjection500 (momentVector H) := by
  have heq : reductionPivot500 = (fun u v => (normalNode283).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode283).moment H = injectiveMoment H reductionPivot500 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode283).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot500 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot500 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot500 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection495, reductionProjection499, oldProjection958, oldProjection1195] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot500 (0 : Fin 4)) = canonicalInput1032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot500 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection495 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot500 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection495 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1032 hH))).trans (reductionSound495 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot500 (1 : Fin 4)) = canonicalInput984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot500 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection499 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot500 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound984 hH))).trans (reductionSound499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot500 (2 : Fin 4)) = canonicalInput972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot500 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot500 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound972 hH))).trans (oldProjectionSound958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot500 (3 : Fin 4)) = canonicalInput971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot500 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1195 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot500 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound971 hH))).trans (oldProjectionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode283).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot500 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode283).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot500 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 720, 720] ![2, 20, 2, 2] reductionProjection500 ![reductionProjection495, reductionProjection499, oldProjection958, oldProjection1195]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection501 : Integer.Sparse (Fin 1613) := [(0, -7), (3, -40), (19, -320), (20, 25), (93, 420), (94, 105), (108, 240), (240, -240), (247, 160), (694, -960), (696, -240), (697, -240), (698, 80), (699, -240), (704, 80), (1047, -480), (1058, -240), (1060, -240), (1101, 720), (1250, 240), (1251, 55), (1319, -960)]

def reductionPivot501 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2]]

theorem reductionSound501 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode263).moment H =
      Integer.Sparse.eval reductionProjection501 (momentVector H) := by
  have heq : reductionPivot501 = (fun u v => (normalNode263).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode263).moment H = injectiveMoment H reductionPivot501 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode263).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot501 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot501 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot501 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection494, oldProjection1195, reductionProjection496, reductionProjection498, reductionProjection500] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot501 (0 : Fin 5)) = canonicalInput893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot501 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection494 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot501 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection494 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound893 hH))).trans (reductionSound494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot501 (1 : Fin 5)) = canonicalInput929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot501 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1195 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot501 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound929 hH))).trans (oldProjectionSound1195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot501 (2 : Fin 5)) = (normalNode277).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot501 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection496 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot501 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection496 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot501 (3 : Fin 5)) = (normalNode282).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot501 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection498 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot501 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot501 (4 : Fin 5)) = (normalNode283).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot501 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection500 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot501 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode263).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot501 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode263).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot501 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 1440, 1440] ![1, 2, 1, 1, 1] reductionProjection501 ![reductionProjection494, oldProjection1195, reductionProjection496, reductionProjection498, reductionProjection500]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection502 : Integer.Sparse (Fin 1613) := [(53, -48), (94, -3), (243, 16), (699, -48), (700, 16), (1251, 1)]

def reductionPivot502 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![0, 3, -3, 0], ![3, -3, 2, -2]]

theorem reductionSound502 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode6786).moment H =
      Integer.Sparse.eval reductionProjection502 (momentVector H) := by
  have heq : reductionPivot502 = (fun u v => (normalNode6786).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6786).moment H = injectiveMoment H reductionPivot502 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6786).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6786).entries)).symm
  have hshape : reductionPivot502 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot502 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot502 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection91, oldProjection186, oldProjection214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot502 (0 : Fin 3)) = canonicalInput519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot502 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection91 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot502 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection91 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound519 hH))).trans (oldProjectionSound91 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot502 (1 : Fin 3)) = canonicalInput8134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot502 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection186 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot502 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection186 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8134 hH))).trans (oldProjectionSound186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot502 (2 : Fin 3)) = canonicalInput8937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot502 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection214 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot502 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8937 hH))).trans (oldProjectionSound214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6786).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot502 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6786).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot502 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection502 ![oldProjection91, oldProjection186, oldProjection214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection503 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -2), (53, 96), (93, -24), (94, -3), (243, -32), (691, 48), (699, 96), (700, -32), (1044, 48), (1251, -5)]

def reductionPivot503 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 3, -3, 0], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound503 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode287).moment H =
      Integer.Sparse.eval reductionProjection503 (momentVector H) := by
  have heq : reductionPivot503 = (fun u v => (normalNode287).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode287).moment H = injectiveMoment H reductionPivot503 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode287).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot503 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot503 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot503 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1021, oldProjection956, reductionProjection502, reductionProjection502] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot503 (0 : Fin 4)) = canonicalInput1036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot503 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1021 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot503 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1036 hH))).trans (oldProjectionSound1021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot503 (1 : Fin 4)) = canonicalInput1011.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot503 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection956 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot503 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1011 hH))).trans (oldProjectionSound956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot503 (2 : Fin 4)) = canonicalInput1009.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot503 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection502 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot503 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1009 hH))).trans (reductionSound502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot503 (3 : Fin 4)) = canonicalInput1008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot503 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection502 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot503 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1008 hH))).trans (reductionSound502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode287).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot503 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode287).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot503 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 144] ![4, 2, 2, 2] reductionProjection503 ![oldProjection1021, oldProjection956, reductionProjection502, reductionProjection502]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection504 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -36), (20, 9), (40, -96), (53, -96), (93, 84), (94, -6), (105, 16), (241, 16), (242, -96), (243, 48), (691, -192), (699, -192), (700, 96), (704, 64), (1044, -48), (1047, -192), (1251, 13)]

def reductionPivot504 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound504 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode264).moment H =
      Integer.Sparse.eval reductionProjection504 (momentVector H) := by
  have heq : reductionPivot504 = (fun u v => (normalNode264).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode264).moment H = injectiveMoment H reductionPivot504 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode264).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot504 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot504 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot504 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2147, oldProjection956, reductionProjection503, reductionProjection466, reductionProjection466] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot504 (0 : Fin 5)) = canonicalInput895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot504 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2147 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot504 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound895 hH))).trans (oldProjectionSound2147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot504 (1 : Fin 5)) = canonicalInput930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot504 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection956 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot504 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound930 hH))).trans (oldProjectionSound956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot504 (2 : Fin 5)) = (normalNode287).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot504 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection503 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot504 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot504 (3 : Fin 5)) = (normalNode288).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot504 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection466 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot504 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot504 (4 : Fin 5)) = canonicalInput935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot504 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection466 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot504 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound935 hH))).trans (reductionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode264).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot504 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode264).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot504 (j : Fin 5)))
      1 288 288 1 ![288, 144, 288, 288, 288] ![1, 2, 1, 1, 1] reductionProjection504 ![oldProjection2147, oldProjection956, reductionProjection503, reductionProjection466, reductionProjection466]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection505 : Integer.Sparse (Fin 1613) := [(1094, 1)]

theorem reductionSound505 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1094).moment H =
      Integer.Sparse.eval reductionProjection505 (momentVector H) := by
  have hc : coordinates (1094 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1094) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection505, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection506 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (93, -12), (94, 4), (243, -16), (691, 48), (699, 48), (700, -32), (704, -16), (1044, 48), (1047, 48), (1060, 48), (1094, -144), (1251, -3)]

def reductionPivot506 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 3, -1, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]

theorem reductionSound506 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode289).moment H =
      Integer.Sparse.eval reductionProjection506 (momentVector H) := by
  have heq : reductionPivot506 = (fun u v => (normalNode289).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode289).moment H = injectiveMoment H reductionPivot506 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode289).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot506 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot506 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot506 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection465, oldProjection1025, oldProjection1024, reductionProjection505] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot506 (0 : Fin 4)) = canonicalInput1038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot506 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection465 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot506 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1038 hH))).trans (reductionSound465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot506 (1 : Fin 4)) = canonicalInput1015.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot506 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1025 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot506 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1025 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1015 hH))).trans (oldProjectionSound1025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot506 (2 : Fin 4)) = canonicalInput1013.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot506 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot506 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1013 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot506 (3 : Fin 4)) = canonicalInput1012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot506 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot506 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1012 hH))).trans (reductionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode289).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot506 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode289).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot506 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 1] ![4, 2, 2, 288] reductionProjection506 ![reductionProjection465, oldProjection1025, oldProjection1024, reductionProjection505]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection507 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -4), (93, -48), (94, -3), (691, 48), (1044, 48), (1047, 96), (1251, -3)]

def reductionPivot507 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, -3, 2, 3], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound507 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode290).moment H =
      Integer.Sparse.eval reductionProjection507 (momentVector H) := by
  have heq : reductionPivot507 = (fun u v => (normalNode290).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode290).moment H = injectiveMoment H reductionPivot507 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode290).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot507 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot507 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot507 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection956, oldProjection1021, oldProjection1024, oldProjection1024] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot507 (0 : Fin 4)) = canonicalInput1039.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot507 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection956 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot507 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1039 hH))).trans (oldProjectionSound956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot507 (1 : Fin 4)) = canonicalInput1016.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot507 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1021 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot507 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1016 hH))).trans (oldProjectionSound1021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot507 (2 : Fin 4)) = canonicalInput1014.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot507 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot507 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1014 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot507 (3 : Fin 4)) = canonicalInput1013.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot507 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot507 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1013 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode290).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot507 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode290).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot507 (j : Fin 4)))
      2 288 288 2 ![144, 72, 144, 144] ![2, 4, 2, 2] reductionProjection507 ![oldProjection956, oldProjection1021, oldProjection1024, oldProjection1024]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection508 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -22), (20, 5), (93, 42), (94, -2), (105, 24), (241, 16), (242, -24), (243, 40), (691, -96), (699, -48), (700, 24), (704, 16), (1044, -48), (1047, -96), (1060, -24), (1094, 72), (1251, 5)]

def reductionPivot508 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 0, 1, -1], ![0, 3, -1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound508 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode265).moment H =
      Integer.Sparse.eval reductionProjection508 (momentVector H) := by
  have heq : reductionPivot508 = (fun u v => (normalNode265).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode265).moment H = injectiveMoment H reductionPivot508 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode265).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot508 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot508 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot508 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2152, oldProjection1024, reductionProjection466, reductionProjection506, reductionProjection507] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot508 (0 : Fin 5)) = canonicalInput896.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot508 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2152 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot508 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound896 hH))).trans (oldProjectionSound2152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot508 (1 : Fin 5)) = canonicalInput931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot508 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot508 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound931 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot508 (2 : Fin 5)) = (normalNode288).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot508 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection466 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot508 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection466 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound466 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot508 (3 : Fin 5)) = (normalNode289).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot508 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection506 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot508 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection506 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound506 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot508 (4 : Fin 5)) = (normalNode290).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot508 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection507 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot508 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode265).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot508 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode265).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot508 (j : Fin 5)))
      1 144 288 2 ![288, 144, 288, 288, 288] ![1, 2, 1, 1, 1] reductionProjection508 ![oldProjection2152, oldProjection1024, reductionProjection466, reductionProjection506, reductionProjection507]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection509 : Integer.Sparse (Fin 1613) := [(78, -1), (1057, -1), (1223, -1)]

def reductionPivot509 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![1, 2, -4, 1], ![2, -2, 3, -3]]

theorem reductionSound509 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7041).moment H =
      Integer.Sparse.eval reductionProjection509 (momentVector H) := by
  have heq : reductionPivot509 = (fun u v => (normalNode7041).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7041).moment H = injectiveMoment H reductionPivot509 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7041).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7041).entries)).symm
  have hshape : reductionPivot509 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot509 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot509 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection422, oldProjection211, oldProjection225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot509 (0 : Fin 3)) = canonicalInput531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot509 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection422 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot509 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound531 hH))).trans (reductionSound422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot509 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3843 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot509 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot509 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3843 hH))).trans (oldProjectionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot509 (2 : Fin 3)) = canonicalInput9002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot509 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection225 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot509 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9002 hH))).trans (oldProjectionSound225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7041).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot509 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7041).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot509 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection509 ![reductionProjection422, oldProjection211, oldProjection225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection510 : Integer.Sparse (Fin 1613) := [(3, 2), (19, -4), (20, -1), (78, 48), (93, -6), (94, -2), (691, 24), (692, 24), (1057, 48), (1223, 48), (1251, -1)]

def reductionPivot510 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, -3, 2, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 1, 1, -4]]

theorem reductionSound510 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode266).moment H =
      Integer.Sparse.eval reductionProjection510 (momentVector H) := by
  have heq : reductionPivot510 = (fun u v => (normalNode266).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode266).moment H = injectiveMoment H reductionPivot510 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode266).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot510 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot510 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 3, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot510 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection957, reductionProjection509, reductionProjection509, oldProjection956] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot510 (0 : Fin 4)) = canonicalInput908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot510 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection957 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot510 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection957 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound908 hH))).trans (oldProjectionSound957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot510 (1 : Fin 4)) = canonicalInput943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot510 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection509 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot510 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound943 hH))).trans (reductionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot510 (2 : Fin 4)) = canonicalInput949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot510 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection509 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot510 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound949 hH))).trans (reductionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot510 (3 : Fin 4)) = canonicalInput950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot510 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection956 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot510 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection956 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound950 hH))).trans (oldProjectionSound956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode266).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot510 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode266).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot510 (j : Fin 4)))
      2 144 144 2 ![144, 3, 3, 144] ![1, 48, 48, 1] reductionProjection510 ![oldProjection957, reductionProjection509, reductionProjection509, oldProjection956]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection511 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -12), (20, -1), (108, 16), (1251, 1)]

def reductionPivot511 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -3, 4], ![0, 1, 1, -2], ![1, 0, 2, -3]]

theorem reductionSound511 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9674).moment H =
      Integer.Sparse.eval reductionProjection511 (momentVector H) := by
  have heq : reductionPivot511 = (fun u v => (normalNode9674).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9674).moment H = injectiveMoment H reductionPivot511 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9674).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot511 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot511 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 16, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot511 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection123, oldProjection51, oldProjection149] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot511 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6001 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot511 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection123 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot511 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6001 hH))).trans (oldProjectionSound123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot511 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7016 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot511 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection51 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot511 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection51 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7016 hH))).trans (oldProjectionSound51 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot511 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7033 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot511 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection149 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot511 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7033 hH))).trans (oldProjectionSound149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9674).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot511 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9674).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot511 (j : Fin 3)))
      3 144 144 3 ![48, 16, 48] ![3, 9, 3] reductionProjection511 ![oldProjection123, oldProjection51, oldProjection149]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
