import NoFourMUBs.Step2.SOS.Canonical377
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical404
import NoFourMUBs.Step2.SOS.Canonical405
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical497
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Canonical499
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections038
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions132
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions191
import NoFourMUBs.Step2.SOS.Reductions229
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions250
import NoFourMUBs.Step2.SOS.Reductions254
import NoFourMUBs.Step2.SOS.Reductions256
import NoFourMUBs.Step2.SOS.Reductions259
import NoFourMUBs.Step2.SOS.Reductions262
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions290
import NoFourMUBs.Step2.SOS.Reductions291
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical292

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput502 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![-1, 1, -1, 1], ![2, -1, 0, -1], ![-1, 1, 3, -3]]

theorem rowSound502 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 502) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row502 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row502 H]
  have hshape : boundaryInput502 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput502 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8202, reductionProjection8196, reductionProjection9289, reductionProjection9203, reductionProjection7478, reductionProjection9204] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput502 (0 : Fin 6)) = canonicalInput24131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8202 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8202 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24131 hH))).trans (reductionSound8202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput502 (1 : Fin 6)) = canonicalInput25557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8196 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8196 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25557 hH))).trans (reductionSound8196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput502 (2 : Fin 6)) = canonicalInput25872.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9289 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9289 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25872 hH))).trans (reductionSound9289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput502 (3 : Fin 6)) = canonicalInput25927.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9203 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9203 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25927 hH))).trans (reductionSound9203 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput502 (4 : Fin 6)) = canonicalInput25930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7478 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7478 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25930 hH))).trans (reductionSound7478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput502 (5 : Fin 6)) = canonicalInput25931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9204 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput502 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9204 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25931 hH))).trans (reductionSound9204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput502 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row502) ![reductionProjection8202, reductionProjection8196, reductionProjection9289, reductionProjection9203, reductionProjection7478, reductionProjection9204]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput513 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -2, 1, 0], ![-2, 3, 0, -1], ![1, 0, 2, -3]]

theorem rowSound513 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 513) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row513 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row513 H]
  have hshape : boundaryInput513 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput513 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 360, 480, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8393, reductionProjection8393, reductionProjection8393, reductionProjection8404, reductionProjection9283, reductionProjection4739] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput513 (0 : Fin 6)) = canonicalInput24762.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8393 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8393 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24762 hH))).trans (reductionSound8393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput513 (1 : Fin 6)) = canonicalInput28071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8393 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8393 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28071 hH))).trans (reductionSound8393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput513 (2 : Fin 6)) = canonicalInput28219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8393 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8393 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28219 hH))).trans (reductionSound8393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput513 (3 : Fin 6)) = canonicalInput28269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8404 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8404 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28269 hH))).trans (reductionSound8404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput513 (4 : Fin 6)) = canonicalInput28276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9283 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9283 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28276 hH))).trans (reductionSound9283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput513 (5 : Fin 6)) = canonicalInput28278.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4739 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput513 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4739 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28278 hH))).trans (reductionSound4739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput513 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 360, 480, 288] ![-1440, -1440, -1440, -5760, -4320, -7200] (extendRow Arithmetic.row513) ![reductionProjection8393, reductionProjection8393, reductionProjection8393, reductionProjection8404, reductionProjection9283, reductionProjection4739]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput744 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![1, 1, -2]]

theorem rowSound744 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 744) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row744 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row744 H]
  have hshape : boundaryInput744 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput744 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 240, 240, 480, 120, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection1141, reductionProjection9310, oldProjection2295, oldProjection2656, reductionProjection6124, oldProjection2667] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput744 (0 : Fin 6)) = canonicalInput30092.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection1141 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection1141 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound30092 hH))).trans (oldProjectionSound1141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput744 (1 : Fin 6)) = canonicalInput31888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9310 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9310 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31888 hH))).trans (reductionSound9310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput744 (2 : Fin 6)) = canonicalInput31894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2295 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2295 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31894 hH))).trans (oldProjectionSound2295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput744 (3 : Fin 6)) = canonicalInput31902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2656 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2656 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31902 hH))).trans (oldProjectionSound2656 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput744 (4 : Fin 6)) = canonicalInput31904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6124 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6124 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31904 hH))).trans (reductionSound6124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput744 (5 : Fin 6)) = canonicalInput31905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2667 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput744 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2667 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31905 hH))).trans (oldProjectionSound2667 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput744 (j : Fin 6)))
    480 480 ![480, 240, 240, 480, 120, 240] ![-480, -960, -960, -480, -1920, -960] (extendRow Arithmetic.row744) ![oldProjection1141, reductionProjection9310, oldProjection2295, oldProjection2656, reductionProjection6124, oldProjection2667]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput811 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, 1, 2, -3]]

theorem rowSound811 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 811) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row811 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row811 H]
  have hshape : boundaryInput811 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput811 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9291, reductionProjection9291, reductionProjection9286, reductionProjection9286, oldProjection2976, oldProjection3193] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput811 (0 : Fin 6)) = canonicalInput27685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9291 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9291 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27685 hH))).trans (reductionSound9291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput811 (1 : Fin 6)) = canonicalInput28183.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9291 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9291 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28183 hH))).trans (reductionSound9291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput811 (2 : Fin 6)) = canonicalInput28520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9286 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9286 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28520 hH))).trans (reductionSound9286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput811 (3 : Fin 6)) = canonicalInput28613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9286 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9286 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28613 hH))).trans (reductionSound9286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput811 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9370 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2976 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9370 hH))).trans (oldProjectionSound2976 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput811 (5 : Fin 6)) = canonicalInput28618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3193 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput811 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3193 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28618 hH))).trans (oldProjectionSound3193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput811 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 1440, 1440, 1440] ![-2880, -2880, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row811) ![reductionProjection9291, reductionProjection9291, reductionProjection9286, reductionProjection9286, oldProjection2976, oldProjection3193]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput857 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![1, -1, 1, -1]]

theorem rowSound857 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 857) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row857 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row857 H]
  have hshape : boundaryInput857 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput857 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 720, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9292, reductionProjection9292, reductionProjection9287, oldProjection3208, reductionProjection8014, oldProjection3193] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput857 (0 : Fin 6)) = canonicalInput27676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9292 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27676 hH))).trans (reductionSound9292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput857 (1 : Fin 6)) = canonicalInput28174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9292 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28174 hH))).trans (reductionSound9292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput857 (2 : Fin 6)) = canonicalInput28509.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9287 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9287 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28509 hH))).trans (reductionSound9287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput857 (3 : Fin 6)) = canonicalInput28577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3208 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3208 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28577 hH))).trans (oldProjectionSound3208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput857 (4 : Fin 6)) = canonicalInput28578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8014 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8014 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28578 hH))).trans (reductionSound8014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput857 (5 : Fin 6)) = canonicalInput28579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3193 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput857 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3193 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28579 hH))).trans (oldProjectionSound3193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput857 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 720, 144, 1440] ![-1440, -1440, -2880, -2880, -14400, -1440] (extendRow Arithmetic.row857) ![reductionProjection9292, reductionProjection9292, reductionProjection9287, oldProjection3208, reductionProjection8014, oldProjection3193]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1337 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, 0, -1], ![0, -2, 3, -1]]

theorem rowSound1337 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1337) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1337 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1337 H]
  have hshape : boundaryInput1337 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1337 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 480, 1440, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection7338, reductionProjection7338, reductionProjection9283, reductionProjection4250, reductionProjection8140, oldProjection3154] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1337 (0 : Fin 6)) = canonicalInput31840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7338 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7338 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31840 hH))).trans (reductionSound7338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1337 (1 : Fin 6)) = canonicalInput31928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7338 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7338 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31928 hH))).trans (reductionSound7338 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1337 (2 : Fin 6)) = canonicalInput31934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9283 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9283 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31934 hH))).trans (reductionSound9283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1337 (3 : Fin 6)) = canonicalInput31935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection4250 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection4250 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31935 hH))).trans (reductionSound4250 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1337 (4 : Fin 6)) = canonicalInput31936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8140 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8140 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31936 hH))).trans (reductionSound8140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1337 (5 : Fin 6)) = canonicalInput31937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3154 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1337 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3154 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31937 hH))).trans (oldProjectionSound3154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1337 (j : Fin 6)))
    1440 1440 ![1440, 1440, 480, 1440, 288, 720] ![-1440, -1440, -4320, -1440, -7200, -2880] (extendRow Arithmetic.row1337) ![reductionProjection7338, reductionProjection7338, reductionProjection9283, reductionProjection4250, reductionProjection8140, oldProjection3154]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput37 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![0, -3, 3], ![0, 3, -3]]

theorem rowSound37 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 37) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row37 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row37 H]
  have hshape : boundaryInput37 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput37 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![48, 96, 48, 96, 48, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection700, reductionProjection9339, reductionProjection9340, reductionProjection8289, reductionProjection9330, oldProjection2298] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput37 (0 : Fin 6)) = canonicalInput30093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection700 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection700 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound30093 hH))).trans (oldProjectionSound700 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput37 (1 : Fin 6)) = canonicalInput31889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9339 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9339 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31889 hH))).trans (reductionSound9339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput37 (2 : Fin 6)) = canonicalInput31895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9340 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9340 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31895 hH))).trans (reductionSound9340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput37 (3 : Fin 6)) = canonicalInput31903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8289 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8289 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31903 hH))).trans (reductionSound8289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput37 (4 : Fin 6)) = canonicalInput31906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9330 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9330 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31906 hH))).trans (reductionSound9330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput37 (5 : Fin 6)) = canonicalInput31907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2298 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput37 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2298 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31907 hH))).trans (oldProjectionSound2298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput37 (j : Fin 6)))
    240 480 ![48, 96, 48, 96, 48, 240] ![-2400, -1200, -2400, -1200, -2400, -480] (extendRow Arithmetic.row37) ![oldProjection700, reductionProjection9339, reductionProjection9340, reductionProjection8289, reductionProjection9330, oldProjection2298]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput70 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![1, -1, 0], ![1, 0, -1], ![-2, 1, 1], ![-1, -1, 2], ![1, 3, -4]]

theorem rowSound70 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 70) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row70 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row70 H]
  have hshape : boundaryInput70 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput70 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 480, 480, 480, 96, 120] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9316, reductionProjection9317, oldProjection2294, reductionProjection255, reductionProjection9306, reductionProjection6128] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput70 (0 : Fin 6)) = canonicalInput24417.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9316 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9316 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24417 hH))).trans (reductionSound9316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput70 (1 : Fin 6)) = canonicalInput26613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9317 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9317 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26613 hH))).trans (reductionSound9317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput70 (2 : Fin 6)) = canonicalInput26627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2294 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2294 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26627 hH))).trans (oldProjectionSound2294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput70 (3 : Fin 6)) = canonicalInput26633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection255 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection255 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26633 hH))).trans (reductionSound255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput70 (4 : Fin 6)) = canonicalInput26634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9306 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9306 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26634 hH))).trans (reductionSound9306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput70 (5 : Fin 6)) = canonicalInput26635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6128 (Normalization.momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst boundaryInput70 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6128 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26635 hH))).trans (reductionSound6128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput70 (j : Fin 6)))
    480 480 ![96, 480, 480, 480, 96, 120] ![-2400, -480, -480, -480, -2400, -1920] (extendRow Arithmetic.row70) ![reductionProjection9316, reductionProjection9317, oldProjection2294, reductionProjection255, reductionProjection9306, reductionProjection6128]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
