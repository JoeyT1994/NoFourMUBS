import NoFourMUBs.Step2.SOS.Canonical167
import NoFourMUBs.Step2.SOS.Canonical356
import NoFourMUBs.Step2.SOS.Canonical357
import NoFourMUBs.Step2.SOS.Canonical358
import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions164
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions174
import NoFourMUBs.Step2.SOS.Reductions175
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions183
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions230
import NoFourMUBs.Step2.SOS.Reductions275
import NoFourMUBs.Step2.SOS.Reductions277
import NoFourMUBs.Step2.SOS.Reductions278
import NoFourMUBs.Step2.SOS.Reductions290
import NoFourMUBs.Step2.SOS.Reductions296
import NoFourMUBs.Step2.SOS.Reductions297
import NoFourMUBs.Step2.SOS.Reductions300
import NoFourMUBs.Step2.SOS.Reductions301
import NoFourMUBs.Step2.SOS.Reductions302
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical290

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1241 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![1, -3, 1, 1]]

theorem rowSound1241 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1241) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1241 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1241 H]
  have hshape : boundaryInput1241 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1241 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 720, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5572, reductionProjection5600, reductionProjection5832, reductionProjection5564, oldProjection3203, reductionProjection9647] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1241 (0 : Fin 6)) = canonicalInput27840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5572 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5572 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27840 hH))).trans (reductionSound5572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1241 (1 : Fin 6)) = canonicalInput29361.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5600 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5600 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29361 hH))).trans (reductionSound5600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1241 (2 : Fin 6)) = canonicalInput29452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5832 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5832 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29452 hH))).trans (reductionSound5832 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1241 (3 : Fin 6)) = canonicalInput29532.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5564 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5564 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29532 hH))).trans (reductionSound5564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1241 (4 : Fin 6)) = canonicalInput29541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3203 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3203 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29541 hH))).trans (oldProjectionSound3203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1241 (5 : Fin 6)) = canonicalInput29542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9647 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1241 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9647 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29542 hH))).trans (reductionSound9647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1241 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 720, 720, 1440] ![-7200, -1440, -1440, -2880, -2880, -1440] (extendRow Arithmetic.row1241) ![reductionProjection5572, reductionProjection5600, reductionProjection5832, reductionProjection5564, oldProjection3203, reductionProjection9647]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1262 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![0, 2, 0, -2], ![1, -2, 1, 0], ![-2, 1, 2, -1]]

theorem rowSound1262 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1262) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1262 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1262 H]
  have hshape : boundaryInput1262 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1262 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5265, reductionProjection5265, reductionProjection5262, reductionProjection5639, reductionProjection9656, reductionProjection7380] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1262 (0 : Fin 6)) = canonicalInput27683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5265 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5265 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27683 hH))).trans (reductionSound5265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1262 (1 : Fin 6)) = canonicalInput28181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5265 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5265 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28181 hH))).trans (reductionSound5265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1262 (2 : Fin 6)) = canonicalInput28518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5262 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5262 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28518 hH))).trans (reductionSound5262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1262 (3 : Fin 6)) = canonicalInput28606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28606 hH))).trans (reductionSound5639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1262 (4 : Fin 6)) = canonicalInput28608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9656 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9656 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28608 hH))).trans (reductionSound9656 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1262 (5 : Fin 6)) = canonicalInput28609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7380 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1262 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7380 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28609 hH))).trans (reductionSound7380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1262 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 288, 1440, 1440] ![-288, -288, -288, -1440, -288, -288] (extendRow Arithmetic.row1262) ![reductionProjection5265, reductionProjection5265, reductionProjection5262, reductionProjection5639, reductionProjection9656, reductionProjection7380]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1288 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, -1, 2, 1]]

theorem rowSound1288 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1288) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1288 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1288 H]
  have hshape : boundaryInput1288 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1288 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 360, 720, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection5869, reductionProjection8905, reductionProjection8867, reductionProjection8892, reductionProjection9635, reductionProjection8827] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1288 (0 : Fin 6)) = canonicalInput27926.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5869 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5869 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27926 hH))).trans (reductionSound5869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1288 (1 : Fin 6)) = canonicalInput29724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8905 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29724 hH))).trans (reductionSound8905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1288 (2 : Fin 6)) = canonicalInput29932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8867 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8867 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29932 hH))).trans (reductionSound8867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1288 (3 : Fin 6)) = canonicalInput29972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8892 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8892 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29972 hH))).trans (reductionSound8892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1288 (4 : Fin 6)) = canonicalInput29973.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9635 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9635 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29973 hH))).trans (reductionSound9635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1288 (5 : Fin 6)) = canonicalInput29974.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8827 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1288 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8827 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29974 hH))).trans (reductionSound8827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1288 (j : Fin 6)))
    1440 1440 ![360, 360, 720, 1440, 1440, 720] ![-5760, -5760, -2880, -1440, -1440, -2880] (extendRow Arithmetic.row1288) ![reductionProjection5869, reductionProjection8905, reductionProjection8867, reductionProjection8892, reductionProjection9635, reductionProjection8827]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1319 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 2, -1, -1], ![1, -2, 1, 0], ![-2, -1, 1, 2]]

theorem rowSound1319 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1319) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1319 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1319 H]
  have hshape : boundaryInput1319 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1319 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 144, 1440, 360, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1834, reductionProjection9635, reductionProjection5859, reductionProjection9636, reductionProjection8905, reductionProjection6867] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1319 (0 : Fin 6)) = canonicalInput30218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1834 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1834 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30218 hH))).trans (oldProjectionSound1834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1319 (1 : Fin 6)) = canonicalInput31467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9635 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9635 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31467 hH))).trans (reductionSound9635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1319 (2 : Fin 6)) = canonicalInput31607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5859 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5859 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31607 hH))).trans (reductionSound5859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1319 (3 : Fin 6)) = canonicalInput31655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9636 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9636 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31655 hH))).trans (reductionSound9636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1319 (4 : Fin 6)) = canonicalInput31656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8905 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8905 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31656 hH))).trans (reductionSound8905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1319 (5 : Fin 6)) = canonicalInput31657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6867 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1319 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6867 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31657 hH))).trans (reductionSound6867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1319 (j : Fin 6)))
    720 1440 ![1440, 1440, 144, 1440, 360, 1440] ![-720, -720, -7200, -720, -2880, -720] (extendRow Arithmetic.row1319) ![oldProjection1834, reductionProjection9635, reductionProjection5859, reductionProjection9636, reductionProjection8905, reductionProjection6867]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput362 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 0, 0], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -2, 1, -1], ![0, 1, -4, 3]]

theorem rowSound362 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 362) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row362 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row362 H]
  have hshape : boundaryInput362 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput362 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9282, oldProjection3314, oldProjection3314, oldProjection3314, oldProjection3468, reductionProjection9681] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput362 (0 : Fin 6)) = canonicalInput10692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9282 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9282 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10692 hH))).trans (reductionSound9282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput362 (1 : Fin 6)) = canonicalInput22847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22847 hH))).trans (oldProjectionSound3314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput362 (2 : Fin 6)) = canonicalInput22910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22910 hH))).trans (oldProjectionSound3314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput362 (3 : Fin 6)) = canonicalInput22913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3314 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22913 hH))).trans (oldProjectionSound3314 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput362 (4 : Fin 6)) = canonicalInput22914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3468 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22914 hH))).trans (oldProjectionSound3468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput362 (5 : Fin 6)) = canonicalInput22915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9681 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput362 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9681 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22915 hH))).trans (reductionSound9681 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput362 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row362) ![reductionProjection9282, oldProjection3314, oldProjection3314, oldProjection3314, oldProjection3468, reductionProjection9681]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput370 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 2, -2], ![-2, 2, -1, 1], ![2, -2, 1, -1]]

theorem rowSound370 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 370) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row370 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row370 H]
  have hshape : boundaryInput370 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput370 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 12, 480, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9677, reductionProjection9677, oldProjection2351, oldProjection3317, reductionProjection9614, oldProjection3318] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput370 (0 : Fin 6)) = canonicalInput27635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9677 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9677 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27635 hH))).trans (reductionSound9677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput370 (1 : Fin 6)) = canonicalInput28137.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9677 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9677 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28137 hH))).trans (reductionSound9677 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput370 (2 : Fin 6)) = canonicalInput28297.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2351 (Normalization.momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2351 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28297 hH))).trans (oldProjectionSound2351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput370 (3 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9290 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3317 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3317 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9290 hH))).trans (oldProjectionSound3317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput370 (4 : Fin 6)) = canonicalInput28324.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9614 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9614 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28324 hH))).trans (reductionSound9614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput370 (5 : Fin 6)) = canonicalInput28325.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3318 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput370 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3318 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28325 hH))).trans (oldProjectionSound3318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput370 (j : Fin 6)))
    1440 1440 ![720, 720, 12, 480, 1440, 1440] ![-2880, -2880, -172800, -4320, -1440, -1440] (extendRow Arithmetic.row370) ![reductionProjection9677, reductionProjection9677, oldProjection2351, oldProjection3317, reductionProjection9614, oldProjection3318]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput400 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 2, -2], ![-2, 3, 1, -2]]

theorem rowSound400 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 400) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row400 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row400 H]
  have hshape : boundaryInput400 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput400 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9494, reductionProjection9494, reductionProjection9494, reductionProjection9507, reductionProjection1353, reductionProjection9691] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput400 (0 : Fin 6)) = canonicalInput24766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9494 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9494 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24766 hH))).trans (reductionSound9494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput400 (1 : Fin 6)) = canonicalInput28075.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9494 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9494 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28075 hH))).trans (reductionSound9494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput400 (2 : Fin 6)) = canonicalInput28223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9494 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9494 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28223 hH))).trans (reductionSound9494 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput400 (3 : Fin 6)) = canonicalInput28274.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9507 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9507 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28274 hH))).trans (reductionSound9507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput400 (4 : Fin 6)) = canonicalInput28285.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1353 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1353 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28285 hH))).trans (reductionSound1353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput400 (5 : Fin 6)) = canonicalInput28286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9691 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput400 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9691 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28286 hH))).trans (reductionSound9691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput400 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-720, -720, -720, -720, -720, -3600] (extendRow Arithmetic.row400) ![reductionProjection9494, reductionProjection9494, reductionProjection9494, reductionProjection9507, reductionProjection1353, reductionProjection9691]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput422 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, -1, 2, -2], ![-2, 3, 1, -2]]

theorem rowSound422 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 422) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row422 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row422 H]
  have hshape : boundaryInput422 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput422 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9509, reductionProjection9497, reductionProjection9497, reductionProjection9512, reductionProjection1355, reductionProjection9674] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput422 (0 : Fin 6)) = canonicalInput24127.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9509 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9509 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24127 hH))).trans (reductionSound9509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput422 (1 : Fin 6)) = canonicalInput25554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9497 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9497 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25554 hH))).trans (reductionSound9497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput422 (2 : Fin 6)) = canonicalInput25861.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9497 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9497 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25861 hH))).trans (reductionSound9497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput422 (3 : Fin 6)) = canonicalInput25898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9512 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9512 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25898 hH))).trans (reductionSound9512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput422 (4 : Fin 6)) = canonicalInput25908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1355 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1355 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25908 hH))).trans (reductionSound1355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput422 (5 : Fin 6)) = canonicalInput25909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9674 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput422 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9674 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25909 hH))).trans (reductionSound9674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput422 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 288, 288, 1440] ![-7200, -1440, -1440, -7200, -7200, -1440] (extendRow Arithmetic.row422) ![reductionProjection9509, reductionProjection9497, reductionProjection9497, reductionProjection9512, reductionProjection1355, reductionProjection9674]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
