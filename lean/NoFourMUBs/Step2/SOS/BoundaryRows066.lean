import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Canonical468
import NoFourMUBs.Step2.SOS.Canonical469
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Canonical493
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions139
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions235
import NoFourMUBs.Step2.SOS.Reductions241
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions254
import NoFourMUBs.Step2.SOS.Reductions260
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions289
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions294
import NoFourMUBs.Step2.SOS.Reductions295
import NoFourMUBs.Step2.SOS.Reductions296
import NoFourMUBs.Step2.SOS.Reductions297
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical290

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput517 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![-2, 2, 1, -1], ![1, 1, 1, -3]]

theorem rowSound517 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 517) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row517 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row517 H]
  have hshape : boundaryInput517 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput517 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9452, reductionProjection9452, reductionProjection9471, reductionProjection9468, reductionProjection8144, reductionProjection8139] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput517 (0 : Fin 6)) = canonicalInput24799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9452 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9452 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24799 hH))).trans (reductionSound9452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput517 (1 : Fin 6)) = canonicalInput28106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9452 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9452 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28106 hH))).trans (reductionSound9452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput517 (2 : Fin 6)) = canonicalInput28510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9471 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9471 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28510 hH))).trans (reductionSound9471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput517 (3 : Fin 6)) = canonicalInput28653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9468 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28653 hH))).trans (reductionSound9468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput517 (4 : Fin 6)) = canonicalInput28657.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8144 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8144 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28657 hH))).trans (reductionSound8144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput517 (5 : Fin 6)) = canonicalInput28659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8139 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput517 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8139 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28659 hH))).trans (reductionSound8139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput517 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 288, 1440, 1440] ![-1440, -1440, -2880, -7200, -1440, -1440] (extendRow Arithmetic.row517) ![reductionProjection9452, reductionProjection9452, reductionProjection9471, reductionProjection9468, reductionProjection8144, reductionProjection8139]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1083 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, 1, 2, -1], ![0, -1, -2, 3]]

theorem rowSound1083 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1083) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1083 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1083 H]
  have hshape : boundaryInput1083 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1083 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1631, oldProjection3252, reductionProjection9445, oldProjection3251, oldProjection2968, reductionProjection9439] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1083 (0 : Fin 6)) = canonicalInput30195.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1631 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1631 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30195 hH))).trans (oldProjectionSound1631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1083 (1 : Fin 6)) = canonicalInput31442.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection3252 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection3252 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31442 hH))).trans (oldProjectionSound3252 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1083 (2 : Fin 6)) = canonicalInput31517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9445 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9445 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31517 hH))).trans (reductionSound9445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1083 (3 : Fin 6)) = canonicalInput31562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3251 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3251 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31562 hH))).trans (oldProjectionSound3251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1083 (4 : Fin 6)) = canonicalInput31573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2968 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2968 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31573 hH))).trans (oldProjectionSound2968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1083 (5 : Fin 6)) = canonicalInput31574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9439 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1083 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9439 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31574 hH))).trans (reductionSound9439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1083 (j : Fin 6)))
    720 1440 ![288, 1440, 1440, 288, 1440, 1440] ![-3600, -720, -720, -3600, -720, -720] (extendRow Arithmetic.row1083) ![oldProjection1631, oldProjection3252, reductionProjection9445, oldProjection3251, oldProjection2968, reductionProjection9439]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1142 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, -1, 2], ![1, 1, 0, -2], ![-2, 1, 2, -1]]

theorem rowSound1142 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1142) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1142 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1142 H]
  have hshape : boundaryInput1142 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1142 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9453, oldProjection1834, reductionProjection9457, reductionProjection9441, oldProjection3250, reductionProjection9376] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1142 (0 : Fin 6)) = canonicalInput27794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9453 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9453 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27794 hH))).trans (reductionSound9453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1142 (1 : Fin 6)) = canonicalInput28789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1834 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1834 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28789 hH))).trans (oldProjectionSound1834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1142 (2 : Fin 6)) = canonicalInput29200.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9457 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9457 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29200 hH))).trans (reductionSound9457 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1142 (3 : Fin 6)) = canonicalInput29245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9441 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9441 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29245 hH))).trans (reductionSound9441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1142 (4 : Fin 6)) = canonicalInput29246.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3250 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29246 hH))).trans (oldProjectionSound3250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1142 (5 : Fin 6)) = canonicalInput29247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9376 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1142 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9376 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29247 hH))).trans (reductionSound9376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1142 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 1440, 1440, 288] ![-2880, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row1142) ![reductionProjection9453, oldProjection1834, reductionProjection9457, reductionProjection9441, oldProjection3250, reductionProjection9376]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1148 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, -1, 0], ![-1, 0, 3, -2]]

theorem rowSound1148 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1148) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1148 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1148 H]
  have hshape : boundaryInput1148 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1148 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 288, 288, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9383, reductionProjection9072, reductionProjection9072, reductionProjection9382, reductionProjection9465, reductionProjection8015] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1148 (0 : Fin 6)) = canonicalInput27882.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9383 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27882 hH))).trans (reductionSound9383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1148 (1 : Fin 6)) = canonicalInput29486.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9072 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9072 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29486 hH))).trans (reductionSound9072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1148 (2 : Fin 6)) = canonicalInput29758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9072 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9072 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29758 hH))).trans (reductionSound9072 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1148 (3 : Fin 6)) = canonicalInput29790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9382 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9382 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29790 hH))).trans (reductionSound9382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1148 (4 : Fin 6)) = canonicalInput29794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9465 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9465 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29794 hH))).trans (reductionSound9465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1148 (5 : Fin 6)) = canonicalInput29795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8015 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1148 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8015 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29795 hH))).trans (reductionSound8015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1148 (j : Fin 6)))
    1440 1440 ![720, 288, 288, 1440, 1440, 720] ![-2880, -7200, -7200, -1440, -1440, -2880] (extendRow Arithmetic.row1148) ![reductionProjection9383, reductionProjection9072, reductionProjection9072, reductionProjection9382, reductionProjection9465, reductionProjection8015]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1212 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, 0, -2, 0], ![-1, 0, 3, -2]]

theorem rowSound1212 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1212) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1212 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1212 H]
  have hshape : boundaryInput1212 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1212 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 18, 18, 1440, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8325, reductionProjection7475, reductionProjection7475, reductionProjection4463, reductionProjection9465, reductionProjection7535] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1212 (0 : Fin 6)) = canonicalInput24868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8325 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8325 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24868 hH))).trans (reductionSound8325 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1212 (1 : Fin 6)) = canonicalInput28744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7475 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28744 hH))).trans (reductionSound7475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1212 (2 : Fin 6)) = canonicalInput29748.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7475 (Normalization.momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29748 hH))).trans (reductionSound7475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1212 (3 : Fin 6)) = canonicalInput29789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4463 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4463 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29789 hH))).trans (reductionSound4463 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1212 (4 : Fin 6)) = canonicalInput29794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9465 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9465 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29794 hH))).trans (reductionSound9465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1212 (5 : Fin 6)) = canonicalInput29796.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7535 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1212 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29796 hH))).trans (reductionSound7535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1212 (j : Fin 6)))
    1440 1440 ![1440, 18, 18, 1440, 1440, 720] ![-1440, -115200, -115200, -1440, -1440, -2880] (extendRow Arithmetic.row1212) ![reductionProjection8325, reductionProjection7475, reductionProjection7475, reductionProjection4463, reductionProjection9465, reductionProjection7535]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput516 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![-2, 1, 2, -1], ![1, 1, 1, -3]]

theorem rowSound516 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 516) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row516 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row516 H]
  have hshape : boundaryInput516 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput516 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9459, reductionProjection9459, reductionProjection9258, reductionProjection9481, reductionProjection7714, reductionProjection9009] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput516 (0 : Fin 6)) = canonicalInput24781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9459 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9459 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24781 hH))).trans (reductionSound9459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput516 (1 : Fin 6)) = canonicalInput28090.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9459 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9459 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28090 hH))).trans (reductionSound9459 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput516 (2 : Fin 6)) = canonicalInput28271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9258 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9258 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28271 hH))).trans (reductionSound9258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput516 (3 : Fin 6)) = canonicalInput28403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9481 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9481 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28403 hH))).trans (reductionSound9481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput516 (4 : Fin 6)) = canonicalInput28406.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7714 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7714 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28406 hH))).trans (reductionSound7714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput516 (5 : Fin 6)) = canonicalInput28409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9009 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput516 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9009 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28409 hH))).trans (reductionSound9009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput516 (j : Fin 6)))
    720 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-720, -720, -720, -720, -720, -3600] (extendRow Arithmetic.row516) ![reductionProjection9459, reductionProjection9459, reductionProjection9258, reductionProjection9481, reductionProjection7714, reductionProjection9009]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1166 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -1, 0, 2], ![-1, 2, -1, 0], ![0, 0, 3, -3]]

theorem rowSound1166 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1166) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1166 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1166 H]
  have hshape : boundaryInput1166 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1166 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9391, reductionProjection9389, reductionProjection9118, reductionProjection9387, reductionProjection9472, reductionProjection7489] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1166 (0 : Fin 6)) = canonicalInput27945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9391 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9391 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27945 hH))).trans (reductionSound9391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1166 (1 : Fin 6)) = canonicalInput29998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9389 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9389 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29998 hH))).trans (reductionSound9389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1166 (2 : Fin 6)) = canonicalInput30049.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9118 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9118 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30049 hH))).trans (reductionSound9118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1166 (3 : Fin 6)) = canonicalInput30067.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9387 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9387 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30067 hH))).trans (reductionSound9387 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1166 (4 : Fin 6)) = canonicalInput30068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9472 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9472 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30068 hH))).trans (reductionSound9472 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1166 (5 : Fin 6)) = canonicalInput30069.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7489 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1166 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7489 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30069 hH))).trans (reductionSound7489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1166 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row1166) ![reductionProjection9391, reductionProjection9389, reductionProjection9118, reductionProjection9387, reductionProjection9472, reductionProjection7489]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput402 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -2, -1, 1], ![-2, 2, 2, -2]]

theorem rowSound402 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 402) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row402 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row402 H]
  have hshape : boundaryInput402 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput402 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 480, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9475, reductionProjection9475, reductionProjection1469, oldProjection2340, reductionProjection9519, oldProjection3257] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput402 (0 : Fin 6)) = canonicalInput24770.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9475 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24770 hH))).trans (reductionSound9475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput402 (1 : Fin 6)) = canonicalInput28079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9475 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9475 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28079 hH))).trans (reductionSound9475 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput402 (2 : Fin 6)) = canonicalInput28231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1469 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1469 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28231 hH))).trans (reductionSound1469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput402 (3 : Fin 6)) = canonicalInput28320.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2340 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2340 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28320 hH))).trans (oldProjectionSound2340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput402 (4 : Fin 6)) = canonicalInput28338.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9519 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9519 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28338 hH))).trans (reductionSound9519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput402 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9299 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3257 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput402 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3257 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9299 hH))).trans (oldProjectionSound3257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput402 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 480, 1440, 1440] ![-1440, -1440, -7200, -4320, -1440, -1440] (extendRow Arithmetic.row402) ![reductionProjection9475, reductionProjection9475, reductionProjection1469, oldProjection2340, reductionProjection9519, oldProjection3257]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
