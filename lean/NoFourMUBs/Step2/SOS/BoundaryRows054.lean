import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical454
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical472
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Canonical494
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions167
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions170
import NoFourMUBs.Step2.SOS.Reductions171
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions187
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions271
import NoFourMUBs.Step2.SOS.Reductions272
import NoFourMUBs.Step2.SOS.Reductions278
import NoFourMUBs.Step2.SOS.Reductions279
import NoFourMUBs.Step2.SOS.Reductions280
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical294
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical296

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput1145 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, 1, 0, -2], ![-2, 1, -1, 2]]

theorem rowSound1145 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1145) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1145 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1145 H]
  have hshape : boundaryInput1145 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1145 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 360, 720, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8897, oldProjection1741, reductionProjection8900, oldProjection3035, oldProjection3250, oldProjection3231] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1145 (0 : Fin 6)) = canonicalInput27795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8897 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8897 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27795 hH))).trans (reductionSound8897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1145 (1 : Fin 6)) = canonicalInput28790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1741 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1741 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28790 hH))).trans (oldProjectionSound1741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1145 (2 : Fin 6)) = canonicalInput29201.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8900 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8900 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29201 hH))).trans (reductionSound8900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1145 (3 : Fin 6)) = canonicalInput29248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3035 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3035 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29248 hH))).trans (oldProjectionSound3035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1145 (4 : Fin 6)) = canonicalInput29251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3250 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29251 hH))).trans (oldProjectionSound3250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1145 (5 : Fin 6)) = canonicalInput29252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3231 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1145 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3231 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29252 hH))).trans (oldProjectionSound3231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1145 (j : Fin 6)))
    1440 1440 ![1440, 360, 720, 1440, 1440, 720] ![-1440, -5760, -2880, -1440, -1440, -2880] (extendRow Arithmetic.row1145) ![reductionProjection8897, oldProjection1741, reductionProjection8900, oldProjection3035, oldProjection3250, oldProjection3231]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1315 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, -1, -1, 2], ![1, -2, 1, 0], ![-2, 2, 1, -1]]

theorem rowSound1315 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1315) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1315 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1315 H]
  have hshape : boundaryInput1315 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1315 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 1440, 1440, 720, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1741, reductionProjection5534, reductionProjection5375, reductionProjection5383, reductionProjection8901, reductionProjection7492] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1315 (0 : Fin 6)) = canonicalInput30215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1741 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1741 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30215 hH))).trans (oldProjectionSound1741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1315 (1 : Fin 6)) = canonicalInput31464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5534 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5534 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31464 hH))).trans (reductionSound5534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1315 (2 : Fin 6)) = canonicalInput31604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5375 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5375 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31604 hH))).trans (reductionSound5375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1315 (3 : Fin 6)) = canonicalInput31646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5383 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31646 hH))).trans (reductionSound5383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1315 (4 : Fin 6)) = canonicalInput31647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8901 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8901 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31647 hH))).trans (reductionSound8901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1315 (5 : Fin 6)) = canonicalInput31648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7492 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1315 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7492 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31648 hH))).trans (reductionSound7492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1315 (j : Fin 6)))
    144 1440 ![360, 1440, 1440, 720, 1440, 1440] ![-576, -144, -144, -288, -144, -144] (extendRow Arithmetic.row1315) ![oldProjection1741, reductionProjection5534, reductionProjection5375, reductionProjection5383, reductionProjection8901, reductionProjection7492]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1140 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 1, 0], ![1, 0, 1, -2], ![1, -2, -1, 2]]

theorem rowSound1140 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1140) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1140 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1140 H]
  have hshape : boundaryInput1140 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1140 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8937, reductionProjection3492, oldProjection3261, reductionProjection5458, oldProjection3032, reductionProjection8712] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1140 (0 : Fin 6)) = canonicalInput27745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8937 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8937 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27745 hH))).trans (reductionSound8937 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1140 (1 : Fin 6)) = canonicalInput28739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection3492 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection3492 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28739 hH))).trans (reductionSound3492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1140 (2 : Fin 6)) = canonicalInput28947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection3261 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection3261 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28947 hH))).trans (oldProjectionSound3261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1140 (3 : Fin 6)) = canonicalInput29065.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5458 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5458 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29065 hH))).trans (reductionSound5458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1140 (4 : Fin 6)) = canonicalInput29071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3032 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3032 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29071 hH))).trans (oldProjectionSound3032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1140 (5 : Fin 6)) = canonicalInput29072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8712 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1140 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8712 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29072 hH))).trans (reductionSound8712 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1140 (j : Fin 6)))
    720 1440 ![1440, 720, 1440, 1440, 1440, 1440] ![-720, -1440, -720, -720, -720, -720] (extendRow Arithmetic.row1140) ![reductionProjection8937, reductionProjection3492, oldProjection3261, reductionProjection5458, oldProjection3032, reductionProjection8712]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput240 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, 2, -1], ![2, -2, -2, 2]]

theorem rowSound240 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 240) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row240 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row240 H]
  have hshape : boundaryInput240 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput240 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 288, 1440, 72, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8961, oldProjection2222, oldProjection2222, oldProjection3255, oldProjection3288, reductionProjection8957] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput240 (0 : Fin 6)) = canonicalInput27709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8961 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8961 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27709 hH))).trans (reductionSound8961 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput240 (1 : Fin 6)) = canonicalInput28703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2222 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2222 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28703 hH))).trans (oldProjectionSound2222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput240 (2 : Fin 6)) = canonicalInput28847.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2222 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2222 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28847 hH))).trans (oldProjectionSound2222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput240 (3 : Fin 6)) = canonicalInput28890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3255 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3255 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28890 hH))).trans (oldProjectionSound3255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput240 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9437 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3288 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3288 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9437 hH))).trans (oldProjectionSound3288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput240 (5 : Fin 6)) = canonicalInput28898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8957 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput240 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8957 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28898 hH))).trans (reductionSound8957 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput240 (j : Fin 6)))
    1440 1440 ![1440, 288, 288, 1440, 72, 1440] ![-1440, -7200, -7200, -1440, -28800, -1440] (extendRow Arithmetic.row240) ![reductionProjection8961, oldProjection2222, oldProjection2222, oldProjection3255, oldProjection3288, reductionProjection8957]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput244 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 1, 3, -2]]

theorem rowSound244 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 244) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row244 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row244 H]
  have hshape : boundaryInput244 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput244 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 288, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8717, oldProjection2190, reductionProjection8711, reductionProjection8707, reductionProjection8705, reductionProjection8986] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput244 (0 : Fin 6)) = canonicalInput27768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8717 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8717 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27768 hH))).trans (reductionSound8717 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput244 (1 : Fin 6)) = canonicalInput28765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2190 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2190 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28765 hH))).trans (oldProjectionSound2190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput244 (2 : Fin 6)) = canonicalInput29007.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8711 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8711 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29007 hH))).trans (reductionSound8711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput244 (3 : Fin 6)) = canonicalInput29136.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8707 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8707 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29136 hH))).trans (reductionSound8707 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput244 (4 : Fin 6)) = canonicalInput29145.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8705 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8705 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29145 hH))).trans (reductionSound8705 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput244 (5 : Fin 6)) = canonicalInput29146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8986 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput244 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8986 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29146 hH))).trans (reductionSound8986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput244 (j : Fin 6)))
    1440 1440 ![288, 1440, 288, 1440, 720, 1440] ![-7200, -1440, -7200, -1440, -2880, -1440] (extendRow Arithmetic.row244) ![reductionProjection8717, oldProjection2190, reductionProjection8711, reductionProjection8707, reductionProjection8705, reductionProjection8986]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput247 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 3, -3]]

theorem rowSound247 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 247) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row247 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row247 H]
  have hshape : boundaryInput247 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput247 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8932, oldProjection2228, reductionProjection8982, reductionProjection8985, reductionProjection8705, reductionProjection8986] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput247 (0 : Fin 6)) = canonicalInput27725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8932 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8932 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27725 hH))).trans (reductionSound8932 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput247 (1 : Fin 6)) = canonicalInput28718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2228 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2228 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28718 hH))).trans (oldProjectionSound2228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput247 (2 : Fin 6)) = canonicalInput28927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8982 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8982 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28927 hH))).trans (reductionSound8982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput247 (3 : Fin 6)) = canonicalInput28999.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8985 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8985 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28999 hH))).trans (reductionSound8985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput247 (4 : Fin 6)) = canonicalInput29001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8705 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8705 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29001 hH))).trans (reductionSound8705 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput247 (5 : Fin 6)) = canonicalInput29002.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8986 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput247 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8986 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29002 hH))).trans (reductionSound8986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput247 (j : Fin 6)))
    1440 1440 ![288, 1440, 1440, 1440, 720, 1440] ![-7200, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row247) ![reductionProjection8932, oldProjection2228, reductionProjection8982, reductionProjection8985, reductionProjection8705, reductionProjection8986]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput376 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![-2, 1, -1, 2], ![1, -2, 2, -1]]

theorem rowSound376 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 376) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row376 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row376 H]
  have hshape : boundaryInput376 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput376 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 360, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8928, oldProjection2227, reductionProjection8979, oldProjection3259, reductionProjection8702, reductionProjection8983] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput376 (0 : Fin 6)) = canonicalInput27729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8928 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8928 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27729 hH))).trans (reductionSound8928 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput376 (1 : Fin 6)) = canonicalInput28722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection2227 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection2227 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28722 hH))).trans (oldProjectionSound2227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput376 (2 : Fin 6)) = canonicalInput28931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8979 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8979 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28931 hH))).trans (reductionSound8979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput376 (3 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9475 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3259 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3259 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9475 hH))).trans (oldProjectionSound3259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput376 (4 : Fin 6)) = canonicalInput29027.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8702 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8702 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29027 hH))).trans (reductionSound8702 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput376 (5 : Fin 6)) = canonicalInput29028.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8983 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput376 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8983 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29028 hH))).trans (reductionSound8983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput376 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 360, 1440, 720] ![-2880, -1440, -1440, -5760, -1440, -2880] (extendRow Arithmetic.row376) ![reductionProjection8928, oldProjection2227, reductionProjection8979, oldProjection3259, reductionProjection8702, reductionProjection8983]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput403 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, -2, 3, -2]]

theorem rowSound403 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 403) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row403 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row403 H]
  have hshape : boundaryInput403 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput403 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6015, reductionProjection6015, oldProjection2183, reductionProjection5472, reductionProjection8965, reductionProjection5469] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput403 (0 : Fin 6)) = canonicalInput24787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6015 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6015 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24787 hH))).trans (reductionSound6015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput403 (1 : Fin 6)) = canonicalInput28096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6015 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6015 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28096 hH))).trans (reductionSound6015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput403 (2 : Fin 6)) = canonicalInput28307.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2183 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2183 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28307 hH))).trans (oldProjectionSound2183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput403 (3 : Fin 6)) = canonicalInput28464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5472 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5472 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28464 hH))).trans (reductionSound5472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput403 (4 : Fin 6)) = canonicalInput28475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8965 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8965 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28475 hH))).trans (reductionSound8965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput403 (5 : Fin 6)) = canonicalInput28476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5469 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput403 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5469 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28476 hH))).trans (reductionSound5469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput403 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 288, 1440] ![-1440, -1440, -2880, -1440, -7200, -1440] (extendRow Arithmetic.row403) ![reductionProjection6015, reductionProjection6015, oldProjection2183, reductionProjection5472, reductionProjection8965, reductionProjection5469]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
