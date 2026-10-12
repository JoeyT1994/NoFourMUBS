import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions106
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions153
import NoFourMUBs.Step2.SOS.Reductions175
import NoFourMUBs.Step2.SOS.Reductions178
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions235
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions251

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput365 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, 0, -1, -1], ![-1, -1, 4, -2]]

theorem rowSound365 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 365) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row365 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row365 H]
  have hshape : boundaryInput365 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput365 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![144, 288, 1440, 18, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8022, reductionProjection7925, reductionProjection8005, reductionProjection8025, reductionProjection7476, reductionProjection8026] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput365 (0 : Fin 6)) = canonicalInput27830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8022 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8022 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27830 hH))).trans (reductionSound8022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput365 (1 : Fin 6)) = canonicalInput29351.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7925 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7925 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29351 hH))).trans (reductionSound7925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput365 (2 : Fin 6)) = canonicalInput29433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8005 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8005 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29433 hH))).trans (reductionSound8005 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput365 (3 : Fin 6)) = canonicalInput29482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8025 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8025 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29482 hH))).trans (reductionSound8025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput365 (4 : Fin 6)) = canonicalInput29488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7476 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7476 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29488 hH))).trans (reductionSound7476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput365 (5 : Fin 6)) = canonicalInput29489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8026 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput365 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8026 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29489 hH))).trans (reductionSound8026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput365 (j : Fin 6)))
    1440 1440 ![144, 288, 1440, 18, 1440, 1440] ![-14400, -7200, -1440, -115200, -1440, -1440] (extendRow Arithmetic.row365) ![reductionProjection8022, reductionProjection7925, reductionProjection8005, reductionProjection8025, reductionProjection7476, reductionProjection8026]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput390 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, -1, -1, 3], ![-1, -1, 3, -1]]

theorem rowSound390 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 390) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row390 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row390 H]
  have hshape : boundaryInput390 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput390 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![18, 288, 1440, 1440, 18, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection358, reductionProjection7932, reductionProjection8007, reductionProjection7480, reductionProjection8025, reductionProjection8026] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput390 (0 : Fin 6)) = canonicalInput30172.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection358 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection358 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30172 hH))).trans (reductionSound358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput390 (1 : Fin 6)) = canonicalInput31315.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7932 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7932 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31315 hH))).trans (reductionSound7932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput390 (2 : Fin 6)) = canonicalInput31344.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8007 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8007 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31344 hH))).trans (reductionSound8007 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput390 (3 : Fin 6)) = canonicalInput31422.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7480 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7480 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31422 hH))).trans (reductionSound7480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput390 (4 : Fin 6)) = canonicalInput31423.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8025 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8025 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31423 hH))).trans (reductionSound8025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput390 (5 : Fin 6)) = canonicalInput31424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8026 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput390 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8026 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31424 hH))).trans (reductionSound8026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput390 (j : Fin 6)))
    1440 1440 ![18, 288, 1440, 1440, 18, 1440] ![-115200, -7200, -1440, -1440, -115200, -1440] (extendRow Arithmetic.row390) ![reductionProjection358, reductionProjection7932, reductionProjection8007, reductionProjection7480, reductionProjection8025, reductionProjection8026]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput777 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-1, -1, 0, 2], ![-1, 2, 0, -1], ![2, -1, 0, -1]]

theorem rowSound777 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 777) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row777 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row777 H]
  have hshape : boundaryInput777 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput777 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 720, 720, 18, 480, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7451, reductionProjection3416, reductionProjection3416, reductionProjection8012, reductionProjection8013, reductionProjection8013] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput777 (0 : Fin 6)) = canonicalInput27701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7451 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7451 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27701 hH))).trans (reductionSound7451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput777 (1 : Fin 6)) = canonicalInput28696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3416 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3416 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28696 hH))).trans (reductionSound3416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput777 (2 : Fin 6)) = canonicalInput28840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3416 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3416 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28840 hH))).trans (reductionSound3416 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput777 (3 : Fin 6)) = canonicalInput28869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8012 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8012 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28869 hH))).trans (reductionSound8012 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput777 (4 : Fin 6)) = canonicalInput28871.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8013 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8013 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28871 hH))).trans (reductionSound8013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput777 (5 : Fin 6)) = canonicalInput28872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8013 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput777 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8013 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28872 hH))).trans (reductionSound8013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput777 (j : Fin 6)))
    720 1440 ![360, 720, 720, 18, 480, 480] ![-2880, -1440, -1440, -57600, -2160, -2160] (extendRow Arithmetic.row777) ![reductionProjection7451, reductionProjection3416, reductionProjection3416, reductionProjection8012, reductionProjection8013, reductionProjection8013]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput873 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 2, 0], ![2, 0, -1, -1]]

theorem rowSound873 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 873) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row873 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row873 H]
  have hshape : boundaryInput873 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput873 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8010, reductionProjection8027, reductionProjection8027, reductionProjection8008, reductionProjection8009, reductionProjection7522] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput873 (0 : Fin 6)) = canonicalInput27883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8010 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8010 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27883 hH))).trans (reductionSound8010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput873 (1 : Fin 6)) = canonicalInput29492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8027 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8027 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29492 hH))).trans (reductionSound8027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput873 (2 : Fin 6)) = canonicalInput29759.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8027 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8027 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29759 hH))).trans (reductionSound8027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput873 (3 : Fin 6)) = canonicalInput29792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8008 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8008 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29792 hH))).trans (reductionSound8008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput873 (4 : Fin 6)) = canonicalInput29797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8009 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8009 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29797 hH))).trans (reductionSound8009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput873 (5 : Fin 6)) = canonicalInput29798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7522 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput873 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7522 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29798 hH))).trans (reductionSound7522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput873 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 1440, 720, 288] ![-1440, -7200, -7200, -1440, -2880, -7200] (extendRow Arithmetic.row873) ![reductionProjection8010, reductionProjection8027, reductionProjection8027, reductionProjection8008, reductionProjection8009, reductionProjection7522]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput894 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, -1, 2, 0], ![2, 0, -1, -1]]

theorem rowSound894 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 894) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row894 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row894 H]
  have hshape : boundaryInput894 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput894 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2056, reductionProjection7933, reductionProjection8008, reductionProjection8026, reductionProjection8027, reductionProjection7481] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput894 (0 : Fin 6)) = canonicalInput30154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2056 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2056 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30154 hH))).trans (oldProjectionSound2056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput894 (1 : Fin 6)) = canonicalInput31297.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7933 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7933 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31297 hH))).trans (reductionSound7933 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput894 (2 : Fin 6)) = canonicalInput31326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8008 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8008 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31326 hH))).trans (reductionSound8008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput894 (3 : Fin 6)) = canonicalInput31366.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8026 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8026 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31366 hH))).trans (reductionSound8026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput894 (4 : Fin 6)) = canonicalInput31368.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8027 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8027 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31368 hH))).trans (reductionSound8027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput894 (5 : Fin 6)) = canonicalInput31369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7481 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput894 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7481 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31369 hH))).trans (reductionSound7481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput894 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row894) ![oldProjection2056, reductionProjection7933, reductionProjection8008, reductionProjection8026, reductionProjection8027, reductionProjection7481]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput897 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![2, 0, -1, -1]]

theorem rowSound897 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 897) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row897 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row897 H]
  have hshape : boundaryInput897 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput897 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 144, 720, 288, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection4909, reductionProjection7934, reductionProjection8009, reductionProjection8027, reductionProjection8027, reductionProjection7482] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput897 (0 : Fin 6)) = canonicalInput30156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4909 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4909 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30156 hH))).trans (reductionSound4909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput897 (1 : Fin 6)) = canonicalInput31299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7934 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7934 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31299 hH))).trans (reductionSound7934 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput897 (2 : Fin 6)) = canonicalInput31328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8009 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8009 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31328 hH))).trans (reductionSound8009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput897 (3 : Fin 6)) = canonicalInput31368.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8027 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8027 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31368 hH))).trans (reductionSound8027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput897 (4 : Fin 6)) = canonicalInput31375.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8027 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8027 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31375 hH))).trans (reductionSound8027 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput897 (5 : Fin 6)) = canonicalInput31376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7482 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput897 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7482 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31376 hH))).trans (reductionSound7482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput897 (j : Fin 6)))
    360 1440 ![720, 144, 720, 288, 288, 720] ![-720, -3600, -720, -1800, -1800, -720] (extendRow Arithmetic.row897) ![reductionProjection4909, reductionProjection7934, reductionProjection8009, reductionProjection8027, reductionProjection8027, reductionProjection7482]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1199 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 0, 1, 1], ![0, -1, -1, 2], ![0, 1, 2, -3]]

theorem rowSound1199 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1199) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1199 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1199 H]
  have hshape : boundaryInput1199 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1199 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7990, reductionProjection7999, reductionProjection8000, oldProjection2949, reductionProjection7919, reductionProjection7998] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1199 (0 : Fin 6)) = canonicalInput32102.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7990 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7990 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32102 hH))).trans (reductionSound7990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1199 (1 : Fin 6)) = canonicalInput32685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7999 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7999 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32685 hH))).trans (reductionSound7999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1199 (2 : Fin 6)) = canonicalInput32690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8000 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8000 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32690 hH))).trans (reductionSound8000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1199 (3 : Fin 6)) = canonicalInput32694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2949 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2949 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32694 hH))).trans (oldProjectionSound2949 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1199 (4 : Fin 6)) = canonicalInput32695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7919 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7919 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32695 hH))).trans (reductionSound7919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1199 (5 : Fin 6)) = canonicalInput32696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7998 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1199 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7998 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32696 hH))).trans (reductionSound7998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1199 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 720] ![-1440, -1440, -1440, -1440, -7200, -2880] (extendRow Arithmetic.row1199) ![reductionProjection7990, reductionProjection7999, reductionProjection8000, oldProjection2949, reductionProjection7919, reductionProjection7998]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput523 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, -1, -1], ![-1, -2, 1, 2], ![-1, 1, 2, -2]]

theorem rowSound523 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 523) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row523 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row523 H]
  have hshape : boundaryInput523 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput523 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 288, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8038, reductionProjection5711, reductionProjection3818, reductionProjection8054, reductionProjection8030, reductionProjection5617] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput523 (0 : Fin 6)) = canonicalInput24857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8038 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8038 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24857 hH))).trans (reductionSound8038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput523 (1 : Fin 6)) = canonicalInput28484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5711 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5711 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28484 hH))).trans (reductionSound5711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput523 (2 : Fin 6)) = canonicalInput29423.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3818 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3818 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29423 hH))).trans (reductionSound3818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput523 (3 : Fin 6)) = canonicalInput29545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8054 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8054 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29545 hH))).trans (reductionSound8054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput523 (4 : Fin 6)) = canonicalInput29546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8030 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8030 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29546 hH))).trans (reductionSound8030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput523 (5 : Fin 6)) = canonicalInput29547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5617 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput523 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5617 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29547 hH))).trans (reductionSound5617 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput523 (j : Fin 6)))
    1440 1440 ![288, 1440, 288, 1440, 1440, 1440] ![-7200, -1440, -7200, -1440, -1440, -1440] (extendRow Arithmetic.row523) ![reductionProjection8038, reductionProjection5711, reductionProjection3818, reductionProjection8054, reductionProjection8030, reductionProjection5617]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
