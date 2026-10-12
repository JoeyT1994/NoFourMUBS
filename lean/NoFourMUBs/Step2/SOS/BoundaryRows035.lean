import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions105
import NoFourMUBs.Step2.SOS.Reductions131
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions189
import NoFourMUBs.Step2.SOS.Reductions208
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions210
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions233

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput848 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, -2, 0, 2], ![-2, 0, 3, -1]]

theorem rowSound848 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 848) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row848 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row848 H]
  have hshape : boundaryInput848 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput848 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 360, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6677, oldProjection3002, reductionProjection6676, reductionProjection4348, reductionProjection6691, reductionProjection7404] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput848 (0 : Fin 6)) = canonicalInput31867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6677 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6677 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31867 hH))).trans (reductionSound6677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput848 (1 : Fin 6)) = canonicalInput31979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3002 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3002 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31979 hH))).trans (oldProjectionSound3002 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput848 (2 : Fin 6)) = canonicalInput32042.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6676 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6676 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32042 hH))).trans (reductionSound6676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput848 (3 : Fin 6)) = canonicalInput32075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4348 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32075 hH))).trans (reductionSound4348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput848 (4 : Fin 6)) = canonicalInput32087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6691 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6691 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32087 hH))).trans (reductionSound6691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput848 (5 : Fin 6)) = canonicalInput32088.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7404 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput848 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7404 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32088 hH))).trans (reductionSound7404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput848 (j : Fin 6)))
    1440 1440 ![720, 1440, 360, 1440, 1440, 1440] ![-2880, -1440, -5760, -1440, -1440, -1440] (extendRow Arithmetic.row848) ![reductionProjection6677, oldProjection3002, reductionProjection6676, reductionProjection4348, reductionProjection6691, reductionProjection7404]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput887 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![1, 1, -1, -1]]

theorem rowSound887 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 887) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row887 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row887 H]
  have hshape : boundaryInput887 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput887 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 288, 720, 72, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2003, reductionProjection7394, reductionProjection7397, reductionProjection6667, reductionProjection7349, reductionProjection7393] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput887 (0 : Fin 6)) = canonicalInput30203.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2003 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2003 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30203 hH))).trans (oldProjectionSound2003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput887 (1 : Fin 6)) = canonicalInput31452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7394 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7394 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31452 hH))).trans (reductionSound7394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput887 (2 : Fin 6)) = canonicalInput31592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7397 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7397 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31592 hH))).trans (reductionSound7397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput887 (3 : Fin 6)) = canonicalInput31612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6667 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31612 hH))).trans (reductionSound6667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput887 (4 : Fin 6)) = canonicalInput31613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7349 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7349 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31613 hH))).trans (reductionSound7349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput887 (5 : Fin 6)) = canonicalInput31614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7393 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput887 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7393 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31614 hH))).trans (reductionSound7393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput887 (j : Fin 6)))
    144 1440 ![360, 1440, 288, 720, 72, 144] ![-576, -144, -720, -288, -2880, -1440] (extendRow Arithmetic.row887) ![oldProjection2003, reductionProjection7394, reductionProjection7397, reductionProjection6667, reductionProjection7349, reductionProjection7393]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput889 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, 0, 2, 0], ![0, -2, 0, 2], ![1, 1, -1, -1]]

theorem rowSound889 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 889) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row889 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row889 H]
  have hshape : boundaryInput889 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput889 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2000, reductionProjection7394, reductionProjection7391, oldProjection3152, reductionProjection6664, reductionProjection7390] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput889 (0 : Fin 6)) = canonicalInput30206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2000 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2000 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30206 hH))).trans (oldProjectionSound2000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput889 (1 : Fin 6)) = canonicalInput31455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7394 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7394 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31455 hH))).trans (reductionSound7394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput889 (2 : Fin 6)) = canonicalInput31595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7391 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7391 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31595 hH))).trans (reductionSound7391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput889 (3 : Fin 6)) = canonicalInput31616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3152 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3152 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31616 hH))).trans (oldProjectionSound3152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput889 (4 : Fin 6)) = canonicalInput31620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6664 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6664 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31620 hH))).trans (reductionSound6664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput889 (5 : Fin 6)) = canonicalInput31621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7390 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput889 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7390 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31621 hH))).trans (reductionSound7390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput889 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row889) ![oldProjection2000, reductionProjection7394, reductionProjection7391, oldProjection3152, reductionProjection6664, reductionProjection7390]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput896 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 2, 0], ![2, 0, -1, -1]]

theorem rowSound896 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 896) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row896 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row896 H]
  have hshape : boundaryInput896 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput896 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1999, reductionProjection7398, reductionProjection7399, reductionProjection6662, reductionProjection7344, reductionProjection7400] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput896 (0 : Fin 6)) = canonicalInput30147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1999 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1999 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30147 hH))).trans (oldProjectionSound1999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput896 (1 : Fin 6)) = canonicalInput31290.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7398 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7398 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31290 hH))).trans (reductionSound7398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput896 (2 : Fin 6)) = canonicalInput31319.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7399 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7399 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31319 hH))).trans (reductionSound7399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput896 (3 : Fin 6)) = canonicalInput31345.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6662 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6662 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31345 hH))).trans (reductionSound6662 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput896 (4 : Fin 6)) = canonicalInput31347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7344 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7344 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31347 hH))).trans (reductionSound7344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput896 (5 : Fin 6)) = canonicalInput31348.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7400 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput896 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7400 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31348 hH))).trans (reductionSound7400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput896 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row896) ![oldProjection1999, reductionProjection7398, reductionProjection7399, reductionProjection6662, reductionProjection7344, reductionProjection7400]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1146 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![0, -2, 0, 2], ![2, 0, -1, -1], ![-2, 0, 3, -1]]

theorem rowSound1146 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1146) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1146 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1146 H]
  have hshape : boundaryInput1146 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1146 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7409, reductionProjection6662, reductionProjection6662, reductionProjection6680, reductionProjection6661, reductionProjection7399] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1146 (0 : Fin 6)) = canonicalInput27886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7409 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7409 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27886 hH))).trans (reductionSound7409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1146 (1 : Fin 6)) = canonicalInput29503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6662 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6662 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29503 hH))).trans (reductionSound6662 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1146 (2 : Fin 6)) = canonicalInput29762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6662 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6662 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29762 hH))).trans (reductionSound6662 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1146 (3 : Fin 6)) = canonicalInput29806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6680 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6680 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29806 hH))).trans (reductionSound6680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1146 (4 : Fin 6)) = canonicalInput29807.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6661 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6661 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29807 hH))).trans (reductionSound6661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1146 (5 : Fin 6)) = canonicalInput29808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7399 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1146 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7399 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29808 hH))).trans (reductionSound7399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1146 (j : Fin 6)))
    720 1440 ![720, 1440, 1440, 1440, 1440, 1440] ![-1440, -720, -720, -720, -720, -720] (extendRow Arithmetic.row1146) ![reductionProjection7409, reductionProjection6662, reductionProjection6662, reductionProjection6680, reductionProjection6661, reductionProjection7399]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1151 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, -2, 0, 2], ![1, 1, -1, -1], ![-2, 0, 3, -1]]

theorem rowSound1151 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1151) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1151 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1151 H]
  have hshape : boundaryInput1151 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1151 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7408, reductionProjection6667, reductionProjection6664, reductionProjection6679, reductionProjection6663, reductionProjection7394] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1151 (0 : Fin 6)) = canonicalInput27923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7408 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7408 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27923 hH))).trans (reductionSound7408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1151 (1 : Fin 6)) = canonicalInput29719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6667 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29719 hH))).trans (reductionSound6667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1151 (2 : Fin 6)) = canonicalInput29926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6664 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6664 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29926 hH))).trans (reductionSound6664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1151 (3 : Fin 6)) = canonicalInput29962.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6679 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6679 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29962 hH))).trans (reductionSound6679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1151 (4 : Fin 6)) = canonicalInput29963.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6663 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6663 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29963 hH))).trans (reductionSound6663 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1151 (5 : Fin 6)) = canonicalInput29964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7394 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1151 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7394 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29964 hH))).trans (reductionSound7394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1151 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 360, 1440] ![-1440, -2880, -1440, -1440, -5760, -1440] (extendRow Arithmetic.row1151) ![reductionProjection7408, reductionProjection6667, reductionProjection6664, reductionProjection6679, reductionProjection6663, reductionProjection7394]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput780 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, 1, 1, -2], ![2, -2, 0, 0]]

theorem rowSound780 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 780) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row780 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row780 H]
  have hshape : boundaryInput780 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput780 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 720, 720, 144, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7332, reductionProjection3374, reductionProjection7486, reductionProjection4221, oldProjection3425, reductionProjection6052] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput780 (0 : Fin 6)) = canonicalInput27730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7332 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7332 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27730 hH))).trans (reductionSound7332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput780 (1 : Fin 6)) = canonicalInput28723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3374 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3374 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28723 hH))).trans (reductionSound3374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput780 (2 : Fin 6)) = canonicalInput28932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7486 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7486 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28932 hH))).trans (reductionSound7486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput780 (3 : Fin 6)) = canonicalInput29032.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4221 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4221 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29032 hH))).trans (reductionSound4221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput780 (4 : Fin 6)) = canonicalInput29036.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3425 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3425 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29036 hH))).trans (oldProjectionSound3425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput780 (5 : Fin 6)) = canonicalInput29037.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6052 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput780 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6052 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29037 hH))).trans (reductionSound6052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput780 (j : Fin 6)))
    288 1440 ![360, 720, 720, 144, 1440, 288] ![-1152, -576, -576, -2880, -288, -1440] (extendRow Arithmetic.row780) ![reductionProjection7332, reductionProjection3374, reductionProjection7486, reductionProjection4221, oldProjection3425, reductionProjection6052]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1158 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![2, 0, 1, -3]]

theorem rowSound1158 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1158) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1158 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1158 H]
  have hshape : boundaryInput1158 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1158 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6729, reductionProjection6743, reductionProjection6780, reductionProjection4603, reductionProjection4603, reductionProjection7482] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1158 (0 : Fin 6)) = canonicalInput27831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6729 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6729 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27831 hH))).trans (reductionSound6729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1158 (1 : Fin 6)) = canonicalInput29352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6743 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6743 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29352 hH))).trans (reductionSound6743 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1158 (2 : Fin 6)) = canonicalInput29435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6780 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6780 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29435 hH))).trans (reductionSound6780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1158 (3 : Fin 6)) = canonicalInput29483.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4603 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4603 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29483 hH))).trans (reductionSound4603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1158 (4 : Fin 6)) = canonicalInput29490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4603 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4603 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29490 hH))).trans (reductionSound4603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1158 (5 : Fin 6)) = canonicalInput29491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7482 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1158 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7482 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29491 hH))).trans (reductionSound7482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1158 (j : Fin 6)))
    720 1440 ![720, 720, 720, 1440, 1440, 720] ![-1440, -1440, -1440, -720, -720, -1440] (extendRow Arithmetic.row1158) ![reductionProjection6729, reductionProjection6743, reductionProjection6780, reductionProjection4603, reductionProjection4603, reductionProjection7482]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
