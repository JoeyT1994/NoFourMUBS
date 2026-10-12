import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical489
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical500
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical509
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions248
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions254
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions273
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions275
import NoFourMUBs.Step2.SOS.Reductions280
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions283

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput817 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, -2, 0, 1], ![-2, 1, 2, -1]]

theorem rowSound817 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 817) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row817 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row817 H]
  have hshape : boundaryInput817 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput817 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 720, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8992, oldProjection1751, oldProjection3032, reductionProjection8983, oldProjection3259, oldProjection3198] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput817 (0 : Fin 6)) = canonicalInput27775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8992 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8992 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27775 hH))).trans (reductionSound8992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput817 (1 : Fin 6)) = canonicalInput28772.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1751 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1751 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28772 hH))).trans (oldProjectionSound1751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput817 (2 : Fin 6)) = canonicalInput29017.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3032 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3032 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29017 hH))).trans (oldProjectionSound3032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput817 (3 : Fin 6)) = canonicalInput29155.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8983 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8983 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29155 hH))).trans (reductionSound8983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput817 (4 : Fin 6)) = canonicalInput29164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3259 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3259 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29164 hH))).trans (oldProjectionSound3259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput817 (5 : Fin 6)) = canonicalInput29165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3198 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput817 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3198 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29165 hH))).trans (oldProjectionSound3198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput817 (j : Fin 6)))
    288 1440 ![1440, 720, 1440, 720, 360, 1440] ![-288, -576, -288, -576, -1152, -288] (extendRow Arithmetic.row817) ![reductionProjection8992, oldProjection1751, oldProjection3032, reductionProjection8983, oldProjection3259, oldProjection3198]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1324 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, 1, -1, 1], ![2, -2, 1, -1]]

theorem rowSound1324 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1324) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1324 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1324 H]
  have hshape : boundaryInput1324 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1324 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1792, reductionProjection5568, reductionProjection9008, reductionProjection5562, reductionProjection5560, reductionProjection7574] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1324 (0 : Fin 6)) = canonicalInput30158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1792 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1792 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30158 hH))).trans (oldProjectionSound1792 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1324 (1 : Fin 6)) = canonicalInput31301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5568 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5568 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31301 hH))).trans (reductionSound5568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1324 (2 : Fin 6)) = canonicalInput31330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9008 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9008 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31330 hH))).trans (reductionSound9008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1324 (3 : Fin 6)) = canonicalInput31374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5562 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5562 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31374 hH))).trans (reductionSound5562 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1324 (4 : Fin 6)) = canonicalInput31379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5560 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5560 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31379 hH))).trans (reductionSound5560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1324 (5 : Fin 6)) = canonicalInput31380.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7574 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1324 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7574 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31380 hH))).trans (reductionSound7574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1324 (j : Fin 6)))
    288 1440 ![288, 1440, 720, 1440, 1440, 1440] ![-1440, -288, -576, -288, -288, -288] (extendRow Arithmetic.row1324) ![oldProjection1792, reductionProjection5568, reductionProjection9008, reductionProjection5562, reductionProjection5560, reductionProjection7574]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1192 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![1, -2, 0, 1], ![-1, 0, 3, -2]]

theorem rowSound1192 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1192) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1192 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1192 H]
  have hshape : boundaryInput1192 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1192 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9050, reductionProjection9050, reductionProjection9049, reductionProjection9026, reductionProjection8756, reductionProjection7939] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1192 (0 : Fin 6)) = canonicalInput32058.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9050 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9050 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32058 hH))).trans (reductionSound9050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1192 (1 : Fin 6)) = canonicalInput32535.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9050 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9050 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32535 hH))).trans (reductionSound9050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1192 (2 : Fin 6)) = canonicalInput32604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9049 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9049 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32604 hH))).trans (reductionSound9049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1192 (3 : Fin 6)) = canonicalInput32630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9026 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9026 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32630 hH))).trans (reductionSound9026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1192 (4 : Fin 6)) = canonicalInput32631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8756 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8756 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32631 hH))).trans (reductionSound8756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1192 (5 : Fin 6)) = canonicalInput32632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7939 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1192 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32632 hH))).trans (reductionSound7939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1192 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 144, 1440] ![-1440, -1440, -1440, -1440, -14400, -1440] (extendRow Arithmetic.row1192) ![reductionProjection9050, reductionProjection9050, reductionProjection9049, reductionProjection9026, reductionProjection8756, reductionProjection7939]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1313 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, -1, 2, -1], ![0, 3, -1, -2]]

theorem rowSound1313 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1313) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1313 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1313 H]
  have hshape : boundaryInput1313 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1313 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7962, reductionProjection7959, reductionProjection7959, reductionProjection7501, oldProjection3001, reductionProjection9051] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1313 (0 : Fin 6)) = canonicalInput27929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7962 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7962 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27929 hH))).trans (reductionSound7962 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1313 (1 : Fin 6)) = canonicalInput29981.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7959 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7959 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29981 hH))).trans (reductionSound7959 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1313 (2 : Fin 6)) = canonicalInput30001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7959 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7959 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30001 hH))).trans (reductionSound7959 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1313 (3 : Fin 6)) = canonicalInput30007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7501 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7501 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30007 hH))).trans (reductionSound7501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1313 (4 : Fin 6)) = canonicalInput30008.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3001 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3001 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30008 hH))).trans (oldProjectionSound3001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1313 (5 : Fin 6)) = canonicalInput30009.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9051 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1313 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9051 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30009 hH))).trans (reductionSound9051 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1313 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 288, 1440] ![-7200, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row1313) ![reductionProjection7962, reductionProjection7959, reductionProjection7959, reductionProjection7501, oldProjection3001, reductionProjection9051]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput528 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![-2, 1, 0, 1], ![1, 1, -3, 1], ![1, 1, 1, -3]]

theorem rowSound528 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 528) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row528 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row528 H]
  have hshape : boundaryInput528 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput528 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 2, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8130, reductionProjection8155, reductionProjection8165, reductionProjection7480, reductionProjection9077, reductionProjection9078] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput528 (0 : Fin 6)) = canonicalInput24103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8130 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8130 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24103 hH))).trans (reductionSound8130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput528 (1 : Fin 6)) = canonicalInput25541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8155 (Normalization.momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8155 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25541 hH))).trans (reductionSound8155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput528 (2 : Fin 6)) = canonicalInput25711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8165 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8165 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25711 hH))).trans (reductionSound8165 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput528 (3 : Fin 6)) = canonicalInput25742.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7480 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7480 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25742 hH))).trans (reductionSound7480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput528 (4 : Fin 6)) = canonicalInput25743.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9077 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9077 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25743 hH))).trans (reductionSound9077 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput528 (5 : Fin 6)) = canonicalInput25744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9078 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput528 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25744 hH))).trans (reductionSound9078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput528 (j : Fin 6)))
    1440 1440 ![1440, 2, 1440, 1440, 1440, 288] ![-1440, -1036800, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row528) ![reductionProjection8130, reductionProjection8155, reductionProjection8165, reductionProjection7480, reductionProjection9077, reductionProjection9078]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput859 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 2, 0], ![-1, 2, 0, -1], ![1, 0, 1, -2]]

theorem rowSound859 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 859) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row859 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row859 H]
  have hshape : boundaryInput859 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput859 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![18, 18, 720, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9056, reductionProjection9056, reductionProjection9055, reductionProjection7995, reductionProjection7939, oldProjection3217] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput859 (0 : Fin 6)) = canonicalInput27675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9056 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9056 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27675 hH))).trans (reductionSound9056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput859 (1 : Fin 6)) = canonicalInput28173.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9056 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9056 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28173 hH))).trans (reductionSound9056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput859 (2 : Fin 6)) = canonicalInput28508.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9055 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9055 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28508 hH))).trans (reductionSound9055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput859 (3 : Fin 6)) = canonicalInput28568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7995 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7995 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28568 hH))).trans (reductionSound7995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput859 (4 : Fin 6)) = canonicalInput28573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7939 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28573 hH))).trans (reductionSound7939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput859 (5 : Fin 6)) = canonicalInput28574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3217 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput859 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3217 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28574 hH))).trans (oldProjectionSound3217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput859 (j : Fin 6)))
    1440 1440 ![18, 18, 720, 1440, 1440, 1440] ![-115200, -115200, -2880, -1440, -1440, -1440] (extendRow Arithmetic.row859) ![reductionProjection9056, reductionProjection9056, reductionProjection9055, reductionProjection7995, reductionProjection7939, oldProjection3217]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput893 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![2, -1, -1, 0]]

theorem rowSound893 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 893) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row893 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row893 H]
  have hshape : boundaryInput893 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput893 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 288, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection2073, reductionProjection9043, reductionProjection8146, reductionProjection9078, oldProjection3210, reductionProjection8800] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput893 (0 : Fin 6)) = canonicalInput30155.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection2073 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection2073 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30155 hH))).trans (oldProjectionSound2073 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput893 (1 : Fin 6)) = canonicalInput31298.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9043 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9043 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31298 hH))).trans (reductionSound9043 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput893 (2 : Fin 6)) = canonicalInput31327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8146 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8146 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31327 hH))).trans (reductionSound8146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput893 (3 : Fin 6)) = canonicalInput31367.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9078 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9078 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31367 hH))).trans (reductionSound9078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput893 (4 : Fin 6)) = canonicalInput31372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3210 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3210 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31372 hH))).trans (oldProjectionSound3210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput893 (5 : Fin 6)) = canonicalInput31373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8800 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput893 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8800 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31373 hH))).trans (reductionSound8800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput893 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 288, 288, 720] ![-1440, -1440, -2880, -7200, -7200, -2880] (extendRow Arithmetic.row893) ![oldProjection2073, reductionProjection9043, reductionProjection8146, reductionProjection9078, oldProjection3210, reductionProjection8800]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1200 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-2, 1, 0, 1], ![0, -1, -1, 2], ![0, 0, 3, -3]]

theorem rowSound1200 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1200) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1200 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1200 H]
  have hshape : boundaryInput1200 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1200 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 360, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9064, reductionProjection9065, reductionProjection9067, reductionProjection8775, reductionProjection9038, reductionProjection7494] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1200 (0 : Fin 6)) = canonicalInput32103.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9064 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9064 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32103 hH))).trans (reductionSound9064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1200 (1 : Fin 6)) = canonicalInput32686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9065 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9065 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32686 hH))).trans (reductionSound9065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1200 (2 : Fin 6)) = canonicalInput32691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9067 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9067 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32691 hH))).trans (reductionSound9067 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1200 (3 : Fin 6)) = canonicalInput32697.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8775 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8775 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32697 hH))).trans (reductionSound8775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1200 (4 : Fin 6)) = canonicalInput32698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9038 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9038 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32698 hH))).trans (reductionSound9038 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1200 (5 : Fin 6)) = canonicalInput32699.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7494 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1200 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7494 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32699 hH))).trans (reductionSound7494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1200 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 360, 288, 1440] ![-1440, -1440, -7200, -5760, -7200, -1440] (extendRow Arithmetic.row1200) ![reductionProjection9064, reductionProjection9065, reductionProjection9067, reductionProjection8775, reductionProjection9038, reductionProjection7494]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
