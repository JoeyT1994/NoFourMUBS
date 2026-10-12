import NoFourMUBs.Step2.SOS.Canonical119
import NoFourMUBs.Step2.SOS.Canonical144
import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical316
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical326
import NoFourMUBs.Step2.SOS.Canonical327
import NoFourMUBs.Step2.SOS.Canonical336
import NoFourMUBs.Step2.SOS.Canonical337
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical437
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions054
import NoFourMUBs.Step2.SOS.Reductions055
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions059
import NoFourMUBs.Step2.SOS.Reductions258
import NoFourMUBs.Step2.SOS.Reductions291
import NoFourMUBs.Step2.SOS.Reductions309
import NoFourMUBs.Step2.SOS.Reductions310
import NoFourMUBs.Step2.SOS.Reductions312
import NoFourMUBs.Step2.SOS.Reductions313
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical273

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput64 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![-1, 1, 0], ![0, -1, 1], ![1, 0, -1], ![1, -3, 2], ![1, 3, -4]]

theorem rowSound64 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 64) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row64 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row64 H]
  have hshape : boundaryInput64 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput64 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 12, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8269, reductionProjection9320, reductionProjection10005, oldProjection744, reductionProjection10010, oldProjection2468] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput64 (0 : Fin 6)) = canonicalInput9264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8269 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8269 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9264 hH))).trans (reductionSound8269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput64 (1 : Fin 6)) = canonicalInput21563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9320 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9320 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21563 hH))).trans (reductionSound9320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput64 (2 : Fin 6)) = canonicalInput21591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10005 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10005 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21591 hH))).trans (reductionSound10005 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput64 (3 : Fin 6)) = canonicalInput21594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection744 (Normalization.momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection744 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21594 hH))).trans (oldProjectionSound744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput64 (4 : Fin 6)) = canonicalInput21597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21597 hH))).trans (reductionSound10010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput64 (5 : Fin 6)) = canonicalInput21598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2468 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput64 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2468 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21598 hH))).trans (oldProjectionSound2468 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput64 (j : Fin 6)))
    240 480 ![96, 96, 96, 12, 96, 480] ![-1200, -1200, -1200, -9600, -1200, -240] (extendRow Arithmetic.row64) ![reductionProjection8269, reductionProjection9320, reductionProjection10005, oldProjection744, reductionProjection10010, oldProjection2468]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput67 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![-1, 0, 1], ![-1, 1, 0], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![1, 3, -4]]

theorem rowSound67 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 67) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row67 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row67 H]
  have hshape : boundaryInput67 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput67 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![24, 96, 96, 48, 96, 12] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8265, reductionProjection9319, reductionProjection10010, oldProjection740, reductionProjection10003, oldProjection2794] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput67 (0 : Fin 6)) = canonicalInput9267.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8265 (Normalization.momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8265 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9267 hH))).trans (reductionSound8265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput67 (1 : Fin 6)) = canonicalInput21568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9319 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9319 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21568 hH))).trans (reductionSound9319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput67 (2 : Fin 6)) = canonicalInput21597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21597 hH))).trans (reductionSound10010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput67 (3 : Fin 6)) = canonicalInput21605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection740 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21605 hH))).trans (oldProjectionSound740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput67 (4 : Fin 6)) = canonicalInput21606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10003 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10003 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21606 hH))).trans (reductionSound10003 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput67 (5 : Fin 6)) = canonicalInput21607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2794 (Normalization.momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst boundaryInput67 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2794 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21607 hH))).trans (oldProjectionSound2794 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput67 (j : Fin 6)))
    96 96 ![24, 96, 96, 48, 96, 12] ![-384, -96, -96, -192, -96, -768] (extendRow Arithmetic.row67) ![reductionProjection8265, reductionProjection9319, reductionProjection10010, oldProjection740, reductionProjection10003, oldProjection2794]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput463 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 1, -3], ![-1, 2, -3, 2]]

theorem rowSound463 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 463) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row463 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row463 H]
  have hshape : boundaryInput463 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput463 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 720, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9901, reductionProjection9919, reductionProjection9939, reductionProjection9992, reductionProjection9995, reductionProjection522] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput463 (0 : Fin 6)) = canonicalInput17131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9901 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9901 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17131 hH))).trans (reductionSound9901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput463 (1 : Fin 6)) = canonicalInput25421.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9919 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9919 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25421 hH))).trans (reductionSound9919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput463 (2 : Fin 6)) = canonicalInput25701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9939 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9939 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25701 hH))).trans (reductionSound9939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput463 (3 : Fin 6)) = canonicalInput25746.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9992 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9992 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25746 hH))).trans (reductionSound9992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput463 (4 : Fin 6)) = canonicalInput25752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9995 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9995 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25752 hH))).trans (reductionSound9995 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput463 (5 : Fin 6)) = canonicalInput25753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection522 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput463 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection522 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25753 hH))).trans (reductionSound522 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput463 (j : Fin 6)))
    1440 1440 ![288, 720, 1440, 1440, 1440, 1440] ![-7200, -2880, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row463) ![reductionProjection9901, reductionProjection9919, reductionProjection9939, reductionProjection9992, reductionProjection9995, reductionProjection522]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput27 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![-1, -2, 3], ![-1, 4, -3]]

theorem rowSound27 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 27) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row27 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row27 H]
  have hshape : boundaryInput27 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput27 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 12, 480, 480, 48, 240] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10024, oldProjection744, reductionProjection10022, oldProjection2383, reductionProjection10026, oldProjection2474] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput27 (0 : Fin 6)) = canonicalInput24408.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10024 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10024 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24408 hH))).trans (reductionSound10024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput27 (1 : Fin 6)) = canonicalInput26549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection744 (Normalization.momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection744 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26549 hH))).trans (oldProjectionSound744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput27 (2 : Fin 6)) = canonicalInput26571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10022 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10022 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26571 hH))).trans (reductionSound10022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput27 (3 : Fin 6)) = canonicalInput26589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2383 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2383 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26589 hH))).trans (oldProjectionSound2383 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput27 (4 : Fin 6)) = canonicalInput26590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10026 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10026 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26590 hH))).trans (reductionSound10026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput27 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8756 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2474 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput27 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2474 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8756 hH))).trans (oldProjectionSound2474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput27 (j : Fin 6)))
    240 480 ![96, 12, 480, 480, 48, 240] ![-1200, -9600, -240, -240, -2400, -480] (extendRow Arithmetic.row27) ![reductionProjection10024, oldProjection744, reductionProjection10022, oldProjection2383, reductionProjection10026, oldProjection2474]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput29 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![1, -3, 2], ![-1, 4, -3]]

theorem rowSound29 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 29) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row29 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row29 H]
  have hshape : boundaryInput29 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput29 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 480, 480, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10017, reductionProjection10017, reductionProjection10009, oldProjection746, reductionProjection10028, oldProjection1537] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput29 (0 : Fin 6)) = canonicalInput18646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10017 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10017 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18646 hH))).trans (reductionSound10017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput29 (1 : Fin 6)) = canonicalInput26387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10017 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10017 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26387 hH))).trans (reductionSound10017 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput29 (2 : Fin 6)) = canonicalInput26431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10009 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10009 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26431 hH))).trans (reductionSound10009 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput29 (3 : Fin 6)) = canonicalInput26481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection746 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection746 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26481 hH))).trans (oldProjectionSound746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput29 (4 : Fin 6)) = canonicalInput26490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10028 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10028 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26490 hH))).trans (reductionSound10028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput29 (5 : Fin 6)) = canonicalInput26491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1537 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput29 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1537 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26491 hH))).trans (oldProjectionSound1537 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput29 (j : Fin 6)))
    480 480 ![480, 480, 480, 480, 480, 480] ![-480, -480, -480, -480, -480, -480] (extendRow Arithmetic.row29) ![reductionProjection10017, reductionProjection10017, reductionProjection10009, oldProjection746, reductionProjection10028, oldProjection1537]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput30 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![0, -3, 3], ![-1, 4, -3]]

theorem rowSound30 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 30) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row30 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row30 H]
  have hshape : boundaryInput30 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput30 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 480, 96, 48, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection10020, reductionProjection10010, reductionProjection10028, oldProjection747, reductionProjection10026, oldProjection1540] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput30 (0 : Fin 6)) = canonicalInput18658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10020 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10020 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18658 hH))).trans (reductionSound10020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput30 (1 : Fin 6)) = canonicalInput26398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10010 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26398 hH))).trans (reductionSound10010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput30 (2 : Fin 6)) = canonicalInput26559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10028 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10028 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26559 hH))).trans (reductionSound10028 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput30 (3 : Fin 6)) = canonicalInput26584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection747 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection747 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26584 hH))).trans (oldProjectionSound747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput30 (4 : Fin 6)) = canonicalInput26590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10026 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10026 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26590 hH))).trans (reductionSound10026 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput30 (5 : Fin 6)) = canonicalInput26591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput30 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1540 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26591 hH))).trans (oldProjectionSound1540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput30 (j : Fin 6)))
    480 480 ![96, 96, 480, 96, 48, 480] ![-2400, -2400, -480, -2400, -4800, -480] (extendRow Arithmetic.row30) ![reductionProjection10020, reductionProjection10010, reductionProjection10028, oldProjection747, reductionProjection10026, oldProjection1540]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput83 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, 2, 2, -5]]

theorem rowSound83 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 83) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row83 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row83 H]
  have hshape : boundaryInput83 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput83 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1910, reductionProjection1910, reductionProjection1910, reductionProjection10031, reductionProjection1889, oldProjection3406] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput83 (0 : Fin 6)) = canonicalInput20233.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1910 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1910 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20233 hH))).trans (reductionSound1910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput83 (1 : Fin 6)) = canonicalInput27974.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1910 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1910 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27974 hH))).trans (reductionSound1910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput83 (2 : Fin 6)) = canonicalInput28197.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1910 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1910 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28197 hH))).trans (reductionSound1910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput83 (3 : Fin 6)) = canonicalInput28250.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10031 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10031 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28250 hH))).trans (reductionSound10031 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput83 (4 : Fin 6)) = canonicalInput28280.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1889 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1889 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28280 hH))).trans (reductionSound1889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput83 (5 : Fin 6)) = canonicalInput28284.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3406 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput83 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3406 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28284 hH))).trans (oldProjectionSound3406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput83 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-1440, -1440, -1440, -1440, -7200, -1440] (extendRow Arithmetic.row83) ![reductionProjection1910, reductionProjection1910, reductionProjection1910, reductionProjection10031, reductionProjection1889, oldProjection3406]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput113 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![0, -2, 1, 1], ![1, 2, 2, -5]]

theorem rowSound113 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 113) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row113 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row113 H]
  have hshape : boundaryInput113 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput113 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1768, reductionProjection1798, reductionProjection1798, reductionProjection10032, reductionProjection1754, oldProjection3428] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput113 (0 : Fin 6)) = canonicalInput7619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1768 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1768 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7619 hH))).trans (reductionSound1768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput113 (1 : Fin 6)) = canonicalInput20741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1798 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1798 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20741 hH))).trans (reductionSound1798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput113 (2 : Fin 6)) = canonicalInput20923.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1798 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1798 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20923 hH))).trans (reductionSound1798 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput113 (3 : Fin 6)) = canonicalInput20938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection10032 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection10032 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20938 hH))).trans (reductionSound10032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput113 (4 : Fin 6)) = canonicalInput20950.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1754 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1754 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20950 hH))).trans (reductionSound1754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput113 (5 : Fin 6)) = canonicalInput20952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3428 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput113 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3428 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20952 hH))).trans (oldProjectionSound3428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput113 (j : Fin 6)))
    144 1440 ![1440, 1440, 1440, 1440, 720, 288] ![-144, -144, -144, -144, -288, -720] (extendRow Arithmetic.row113) ![reductionProjection1768, reductionProjection1798, reductionProjection1798, reductionProjection10032, reductionProjection1754, oldProjection3428]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
