import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions170
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions245
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions248
import NoFourMUBs.Step2.SOS.Reductions249

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput883 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 2, 0, -2]]

theorem rowSound883 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 883) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row883 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row883 H]
  have hshape : boundaryInput883 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput883 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 360, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7590, reductionProjection7579, reductionProjection7636, reductionProjection7511, oldProjection3174, reductionProjection7957] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput883 (0 : Fin 6)) = canonicalInput27936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7590 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7590 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27936 hH))).trans (reductionSound7590 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput883 (1 : Fin 6)) = canonicalInput29988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7579 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7579 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29988 hH))).trans (reductionSound7579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput883 (2 : Fin 6)) = canonicalInput30026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7636 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7636 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30026 hH))).trans (reductionSound7636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput883 (3 : Fin 6)) = canonicalInput30034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7511 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7511 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30034 hH))).trans (reductionSound7511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput883 (4 : Fin 6)) = canonicalInput30037.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3174 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3174 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30037 hH))).trans (oldProjectionSound3174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput883 (5 : Fin 6)) = canonicalInput30038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7957 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput883 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7957 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30038 hH))).trans (reductionSound7957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput883 (j : Fin 6)))
    360 1440 ![1440, 360, 1440, 1440, 288, 1440] ![-360, -1440, -360, -360, -1800, -360] (extendRow Arithmetic.row883) ![reductionProjection7590, reductionProjection7579, reductionProjection7636, reductionProjection7511, oldProjection3174, reductionProjection7957]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1185 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![2, -1, 1, -2]]

theorem rowSound1185 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1185) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1185 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1185 H]
  have hshape : boundaryInput1185 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1185 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1766, reductionProjection7951, reductionProjection7952, oldProjection3020, reductionProjection7894, reductionProjection7953] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1185 (0 : Fin 6)) = canonicalInput30150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1766 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1766 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30150 hH))).trans (oldProjectionSound1766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1185 (1 : Fin 6)) = canonicalInput31293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7951 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7951 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31293 hH))).trans (reductionSound7951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1185 (2 : Fin 6)) = canonicalInput31322.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7952 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7952 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31322 hH))).trans (reductionSound7952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1185 (3 : Fin 6)) = canonicalInput31350.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3020 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3020 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31350 hH))).trans (oldProjectionSound3020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1185 (4 : Fin 6)) = canonicalInput31356.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7894 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7894 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31356 hH))).trans (reductionSound7894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1185 (5 : Fin 6)) = canonicalInput31357.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7953 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1185 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7953 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31357 hH))).trans (reductionSound7953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1185 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 1440, 1440] ![-1440, -1440, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row1185) ![oldProjection1766, reductionProjection7951, reductionProjection7952, oldProjection3020, reductionProjection7894, reductionProjection7953]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1285 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 2, -1, -1], ![1, -2, 0, 1], ![-2, 1, 2, -1]]

theorem rowSound1285 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1285) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1285 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1285 H]
  have hshape : boundaryInput1285 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1285 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5392, oldProjection1834, reductionProjection5391, reductionProjection5439, reductionProjection5389, reductionProjection7936] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1285 (0 : Fin 6)) = canonicalInput27796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5392 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5392 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27796 hH))).trans (reductionSound5392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1285 (1 : Fin 6)) = canonicalInput28791.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1834 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1834 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28791 hH))).trans (oldProjectionSound1834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1285 (2 : Fin 6)) = canonicalInput29202.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5391 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5391 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29202 hH))).trans (reductionSound5391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1285 (3 : Fin 6)) = canonicalInput29256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5439 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5439 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29256 hH))).trans (reductionSound5439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1285 (4 : Fin 6)) = canonicalInput29257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5389 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5389 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29257 hH))).trans (reductionSound5389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1285 (5 : Fin 6)) = canonicalInput29258.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7936 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1285 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7936 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29258 hH))).trans (reductionSound7936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1285 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1285) ![reductionProjection5392, oldProjection1834, reductionProjection5391, reductionProjection5439, reductionProjection5389, reductionProjection7936]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1291 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -2, 1, 1], ![2, -1, 0, -1], ![-2, 1, 2, -1]]

theorem rowSound1291 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1291) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1291 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1291 H]
  have hshape : boundaryInput1291 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1291 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5545, reductionProjection5581, reductionProjection5824, oldProjection3211, reductionProjection5544, reductionProjection7953] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1291 (0 : Fin 6)) = canonicalInput27832.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5545 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5545 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27832 hH))).trans (reductionSound5545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1291 (1 : Fin 6)) = canonicalInput29353.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5581 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5581 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29353 hH))).trans (reductionSound5581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1291 (2 : Fin 6)) = canonicalInput29436.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5824 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5824 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29436 hH))).trans (reductionSound5824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1291 (3 : Fin 6)) = canonicalInput29502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3211 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3211 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29502 hH))).trans (oldProjectionSound3211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1291 (4 : Fin 6)) = canonicalInput29504.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5544 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5544 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29504 hH))).trans (reductionSound5544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1291 (5 : Fin 6)) = canonicalInput29505.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7953 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1291 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7953 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29505 hH))).trans (reductionSound7953 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1291 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 288, 1440, 1440] ![-2880, -1440, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row1291) ![reductionProjection5545, reductionProjection5581, reductionProjection5824, oldProjection3211, reductionProjection5544, reductionProjection7953]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1194 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, -1, 2, -2]]

theorem rowSound1194 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1194) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1194 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1194 H]
  have hshape : boundaryInput1194 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1194 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7982, reductionProjection7982, reductionProjection7996, reductionProjection5712, reductionProjection7918, reductionProjection7995] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1194 (0 : Fin 6)) = canonicalInput32049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7982 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7982 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32049 hH))).trans (reductionSound7982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1194 (1 : Fin 6)) = canonicalInput32533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7982 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7982 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32533 hH))).trans (reductionSound7982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1194 (2 : Fin 6)) = canonicalInput32602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7996 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7996 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32602 hH))).trans (reductionSound7996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1194 (3 : Fin 6)) = canonicalInput32624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5712 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5712 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32624 hH))).trans (reductionSound5712 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1194 (4 : Fin 6)) = canonicalInput32625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7918 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7918 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32625 hH))).trans (reductionSound7918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1194 (5 : Fin 6)) = canonicalInput32626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7995 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1194 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7995 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32626 hH))).trans (reductionSound7995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1194 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1194) ![reductionProjection7982, reductionProjection7982, reductionProjection7996, reductionProjection5712, reductionProjection7918, reductionProjection7995]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1204 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![1, 0, 2, -3]]

theorem rowSound1204 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1204) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1204 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1204 H]
  have hshape : boundaryInput1204 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1204 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 180, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7967, reductionProjection7976, reductionProjection7980, reductionProjection4296, reductionProjection7905, reductionProjection7981] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1204 (0 : Fin 6)) = canonicalInput31847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7967 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7967 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31847 hH))).trans (reductionSound7967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1204 (1 : Fin 6)) = canonicalInput31949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7976 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31949 hH))).trans (reductionSound7976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1204 (2 : Fin 6)) = canonicalInput31990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7980 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7980 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31990 hH))).trans (reductionSound7980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1204 (3 : Fin 6)) = canonicalInput32000.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4296 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4296 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32000 hH))).trans (reductionSound4296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1204 (4 : Fin 6)) = canonicalInput32001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7905 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32001 hH))).trans (reductionSound7905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1204 (5 : Fin 6)) = canonicalInput32002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7981 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1204 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7981 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32002 hH))).trans (reductionSound7981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1204 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 180, 1440, 720] ![-1440, -7200, -1440, -11520, -1440, -2880] (extendRow Arithmetic.row1204) ![reductionProjection7967, reductionProjection7976, reductionProjection7980, reductionProjection4296, reductionProjection7905, reductionProjection7981]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1206 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3]]

theorem rowSound1206 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1206) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1206 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1206 H]
  have hshape : boundaryInput1206 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1206 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![180, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7974, reductionProjection7988, reductionProjection7990, reductionProjection4588, reductionProjection7916, reductionProjection7986] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1206 (0 : Fin 6)) = canonicalInput31870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7974 (Normalization.momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7974 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31870 hH))).trans (reductionSound7974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1206 (1 : Fin 6)) = canonicalInput32098.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7988 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7988 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32098 hH))).trans (reductionSound7988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1206 (2 : Fin 6)) = canonicalInput32102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7990 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7990 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32102 hH))).trans (reductionSound7990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1206 (3 : Fin 6)) = canonicalInput32106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4588 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4588 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32106 hH))).trans (reductionSound4588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1206 (4 : Fin 6)) = canonicalInput32107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7916 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7916 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32107 hH))).trans (reductionSound7916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1206 (5 : Fin 6)) = canonicalInput32108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7986 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1206 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7986 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32108 hH))).trans (reductionSound7986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1206 (j : Fin 6)))
    1440 1440 ![180, 1440, 1440, 1440, 288, 1440] ![-11520, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1206) ![reductionProjection7974, reductionProjection7988, reductionProjection7990, reductionProjection4588, reductionProjection7916, reductionProjection7986]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1261 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 2, 0, -2], ![1, -2, 2, -1]]

theorem rowSound1261 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1261) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1261 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1261 H]
  have hshape : boundaryInput1261 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1261 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 144, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7850, reductionProjection7850, reductionProjection7847, reductionProjection5441, reductionProjection7978, reductionProjection7380] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1261 (0 : Fin 6)) = canonicalInput27668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7850 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7850 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27668 hH))).trans (reductionSound7850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1261 (1 : Fin 6)) = canonicalInput28166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7850 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7850 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28166 hH))).trans (reductionSound7850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1261 (2 : Fin 6)) = canonicalInput28501.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7847 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7847 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28501 hH))).trans (reductionSound7847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1261 (3 : Fin 6)) = canonicalInput28548.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5441 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5441 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28548 hH))).trans (reductionSound5441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1261 (4 : Fin 6)) = canonicalInput28551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7978 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7978 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28551 hH))).trans (reductionSound7978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1261 (5 : Fin 6)) = canonicalInput28552.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7380 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1261 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7380 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28552 hH))).trans (reductionSound7380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1261 (j : Fin 6)))
    144 1440 ![720, 720, 720, 144, 1440, 1440] ![-288, -288, -288, -1440, -144, -144] (extendRow Arithmetic.row1261) ![reductionProjection7850, reductionProjection7850, reductionProjection7847, reductionProjection5441, reductionProjection7978, reductionProjection7380]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
