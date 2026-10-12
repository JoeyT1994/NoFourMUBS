import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions163
import NoFourMUBs.Step2.SOS.Reductions212
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions244
import NoFourMUBs.Step2.SOS.Reductions245
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions248

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput498 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 2, 1, -4]]

theorem rowSound498 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 498) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row498 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row498 H]
  have hshape : boundaryInput498 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput498 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7852, oldProjection2903, reductionProjection7868, reductionProjection5214, reductionProjection7804, reductionProjection7869] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput498 (0 : Fin 6)) = canonicalInput24860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7852 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7852 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24860 hH))).trans (reductionSound7852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput498 (1 : Fin 6)) = canonicalInput28652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2903 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2903 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28652 hH))).trans (oldProjectionSound2903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput498 (2 : Fin 6)) = canonicalInput29552.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7868 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7868 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29552 hH))).trans (reductionSound7868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput498 (3 : Fin 6)) = canonicalInput29680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5214 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5214 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29680 hH))).trans (reductionSound5214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput498 (4 : Fin 6)) = canonicalInput29682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7804 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7804 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29682 hH))).trans (reductionSound7804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput498 (5 : Fin 6)) = canonicalInput29684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7869 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput498 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7869 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29684 hH))).trans (reductionSound7869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput498 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 1440, 288, 1440] ![-1440, -1440, -7200, -1440, -7200, -1440] (extendRow Arithmetic.row498) ![reductionProjection7852, oldProjection2903, reductionProjection7868, reductionProjection5214, reductionProjection7804, reductionProjection7869]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1304 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 1, -2], ![1, -2, 0, 1], ![-2, 1, 2, -1]]

theorem rowSound1304 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1304) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1304 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1304 H]
  have hshape : boundaryInput1304 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1304 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5225, reductionProjection5237, reductionProjection5222, oldProjection3091, reductionProjection5221, reductionProjection7870] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1304 (0 : Fin 6)) = canonicalInput27866.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5225 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5225 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27866 hH))).trans (reductionSound5225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1304 (1 : Fin 6)) = canonicalInput29387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5237 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5237 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29387 hH))).trans (reductionSound5237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1304 (2 : Fin 6)) = canonicalInput29577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5222 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5222 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29577 hH))).trans (reductionSound5222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1304 (3 : Fin 6)) = canonicalInput29657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3091 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3091 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29657 hH))).trans (oldProjectionSound3091 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1304 (4 : Fin 6)) = canonicalInput29659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5221 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5221 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29659 hH))).trans (reductionSound5221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1304 (5 : Fin 6)) = canonicalInput29660.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7870 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1304 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7870 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29660 hH))).trans (reductionSound7870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1304 (j : Fin 6)))
    360 1440 ![288, 1440, 1440, 1440, 1440, 1440] ![-1800, -360, -360, -360, -360, -360] (extendRow Arithmetic.row1304) ![reductionProjection5225, reductionProjection5237, reductionProjection5222, oldProjection3091, reductionProjection5221, reductionProjection7870]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1307 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![1, -2, 0, 1], ![0, 1, 2, -3]]

theorem rowSound1307 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1307) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1307 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1307 H]
  have hshape : boundaryInput1307 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1307 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7811, reductionProjection7831, reductionProjection7810, reductionProjection6792, reductionProjection7808, reductionProjection7870] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1307 (0 : Fin 6)) = canonicalInput27854.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7811 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7811 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27854 hH))).trans (reductionSound7811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1307 (1 : Fin 6)) = canonicalInput29375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7831 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7831 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29375 hH))).trans (reductionSound7831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1307 (2 : Fin 6)) = canonicalInput29563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7810 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7810 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29563 hH))).trans (reductionSound7810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1307 (3 : Fin 6)) = canonicalInput29610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6792 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6792 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29610 hH))).trans (reductionSound6792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1307 (4 : Fin 6)) = canonicalInput29616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7808 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7808 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29616 hH))).trans (reductionSound7808 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1307 (5 : Fin 6)) = canonicalInput29617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7870 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1307 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7870 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29617 hH))).trans (reductionSound7870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1307 (j : Fin 6)))
    1440 1440 ![360, 1440, 1440, 1440, 1440, 1440] ![-5760, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1307) ![reductionProjection7811, reductionProjection7831, reductionProjection7810, reductionProjection6792, reductionProjection7808, reductionProjection7870]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput874 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 2, 0], ![2, 0, -1, -1]]

theorem rowSound874 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 874) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row874 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row874 H]
  have hshape : boundaryInput874 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput874 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7362, reductionProjection7353, reductionProjection7353, reductionProjection7392, reductionProjection7872, reductionProjection7355] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput874 (0 : Fin 6)) = canonicalInput27879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7362 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7362 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27879 hH))).trans (reductionSound7362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput874 (1 : Fin 6)) = canonicalInput29466.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7353 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29466 hH))).trans (reductionSound7353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput874 (2 : Fin 6)) = canonicalInput29755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7353 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29755 hH))).trans (reductionSound7353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput874 (3 : Fin 6)) = canonicalInput29776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7392 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7392 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29776 hH))).trans (reductionSound7392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput874 (4 : Fin 6)) = canonicalInput29782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7872 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29782 hH))).trans (reductionSound7872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput874 (5 : Fin 6)) = canonicalInput29783.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7355 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput874 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7355 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29783 hH))).trans (reductionSound7355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput874 (j : Fin 6)))
    720 1440 ![1440, 288, 288, 1440, 1440, 1440] ![-720, -3600, -3600, -720, -720, -720] (extendRow Arithmetic.row874) ![reductionProjection7362, reductionProjection7353, reductionProjection7353, reductionProjection7392, reductionProjection7872, reductionProjection7355]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput875 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![0, -2, 1, 1], ![2, 0, -1, -1]]

theorem rowSound875 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 875) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row875 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row875 H]
  have hshape : boundaryInput875 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput875 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 1440, 18] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7358, reductionProjection7344, reductionProjection7344, reductionProjection7872, reductionProjection7399, reductionProjection7343] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput875 (0 : Fin 6)) = canonicalInput27880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7358 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7358 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27880 hH))).trans (reductionSound7358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput875 (1 : Fin 6)) = canonicalInput29467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29467 hH))).trans (reductionSound7344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput875 (2 : Fin 6)) = canonicalInput29756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29756 hH))).trans (reductionSound7344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput875 (3 : Fin 6)) = canonicalInput29782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7872 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29782 hH))).trans (reductionSound7872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput875 (4 : Fin 6)) = canonicalInput29785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7399 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7399 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29785 hH))).trans (reductionSound7399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput875 (5 : Fin 6)) = canonicalInput29786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7343 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput875 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7343 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29786 hH))).trans (reductionSound7343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput875 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 1440, 18] ![-7200, -1440, -1440, -1440, -1440, -115200] (extendRow Arithmetic.row875) ![reductionProjection7358, reductionProjection7344, reductionProjection7344, reductionProjection7872, reductionProjection7399, reductionProjection7343]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput888 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![1, 1, -1, -1]]

theorem rowSound888 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 888) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row888 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row888 H]
  have hshape : boundaryInput888 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput888 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 72, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2057, reductionProjection7873, reductionProjection7871, reductionProjection7349, oldProjection3152, reductionProjection7870] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput888 (0 : Fin 6)) = canonicalInput30204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2057 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2057 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30204 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput888 (1 : Fin 6)) = canonicalInput31453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7873 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7873 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31453 hH))).trans (reductionSound7873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput888 (2 : Fin 6)) = canonicalInput31593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7871 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7871 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31593 hH))).trans (reductionSound7871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput888 (3 : Fin 6)) = canonicalInput31613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7349 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7349 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31613 hH))).trans (reductionSound7349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput888 (4 : Fin 6)) = canonicalInput31616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3152 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3152 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31616 hH))).trans (oldProjectionSound3152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput888 (5 : Fin 6)) = canonicalInput31617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7870 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput888 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7870 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31617 hH))).trans (reductionSound7870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput888 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 72, 1440, 1440] ![-720, -720, -720, -14400, -720, -720] (extendRow Arithmetic.row888) ![oldProjection2057, reductionProjection7873, reductionProjection7871, reductionProjection7349, oldProjection3152, reductionProjection7870]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput898 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 0, -1, -1]]

theorem rowSound898 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 898) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row898 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row898 H]
  have hshape : boundaryInput898 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput898 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2055, reductionProjection7864, reductionProjection7872, reductionProjection7344, reductionProjection7353, reductionProjection7477] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput898 (0 : Fin 6)) = canonicalInput30149.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2055 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2055 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30149 hH))).trans (oldProjectionSound2055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput898 (1 : Fin 6)) = canonicalInput31292.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7864 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7864 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31292 hH))).trans (reductionSound7864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput898 (2 : Fin 6)) = canonicalInput31321.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7872 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7872 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31321 hH))).trans (reductionSound7872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput898 (3 : Fin 6)) = canonicalInput31347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31347 hH))).trans (reductionSound7344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput898 (4 : Fin 6)) = canonicalInput31354.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7353 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31354 hH))).trans (reductionSound7353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput898 (5 : Fin 6)) = canonicalInput31355.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput898 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7477 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31355 hH))).trans (reductionSound7477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput898 (j : Fin 6)))
    720 1440 ![144, 1440, 1440, 1440, 288, 1440] ![-7200, -720, -720, -720, -3600, -720] (extendRow Arithmetic.row898) ![oldProjection2055, reductionProjection7864, reductionProjection7872, reductionProjection7344, reductionProjection7353, reductionProjection7477]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput878 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![1, 1, 0, -2]]

theorem rowSound878 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 878) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row878 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row878 H]
  have hshape : boundaryInput878 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput878 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 720, 1440, 720, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7960, reductionProjection7956, reductionProjection7955, reductionProjection7492, oldProjection3205, reductionProjection7954] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput878 (0 : Fin 6)) = canonicalInput27844.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7960 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7960 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27844 hH))).trans (reductionSound7960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput878 (1 : Fin 6)) = canonicalInput29365.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7956 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7956 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29365 hH))).trans (reductionSound7956 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput878 (2 : Fin 6)) = canonicalInput29553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7955 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7955 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29553 hH))).trans (reductionSound7955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput878 (3 : Fin 6)) = canonicalInput29586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7492 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7492 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29586 hH))).trans (reductionSound7492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput878 (4 : Fin 6)) = canonicalInput29591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3205 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3205 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29591 hH))).trans (oldProjectionSound3205 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput878 (5 : Fin 6)) = canonicalInput29592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7954 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput878 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7954 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29592 hH))).trans (reductionSound7954 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput878 (j : Fin 6)))
    288 1440 ![288, 1440, 720, 1440, 720, 360] ![-1440, -288, -576, -288, -576, -1152] (extendRow Arithmetic.row878) ![reductionProjection7960, reductionProjection7956, reductionProjection7955, reductionProjection7492, oldProjection3205, reductionProjection7954]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
