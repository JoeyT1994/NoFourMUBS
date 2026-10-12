import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical397
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical402
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical465
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions189
import NoFourMUBs.Step2.SOS.Reductions266
import NoFourMUBs.Step2.SOS.Reductions267
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions296
import NoFourMUBs.Step2.SOS.Reductions297
import NoFourMUBs.Step2.SOS.Reductions299
import NoFourMUBs.Step2.SOS.Reductions300
import NoFourMUBs.Step2.SOS.Reductions301
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical290

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput408 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 3, 1, -2]]

theorem rowSound408 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 408) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row408 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row408 H]
  have hshape : boundaryInput408 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput408 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 360, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9502, reductionProjection1035, reductionProjection1035, reductionProjection9533, reductionProjection9528, oldProjection3319] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput408 (0 : Fin 6)) = canonicalInput24814.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9502 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9502 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24814 hH))).trans (reductionSound9502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput408 (1 : Fin 6)) = canonicalInput28118.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1035 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1035 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28118 hH))).trans (reductionSound1035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput408 (2 : Fin 6)) = canonicalInput28831.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1035 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1035 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28831 hH))).trans (reductionSound1035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput408 (3 : Fin 6)) = canonicalInput28907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9533 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9533 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28907 hH))).trans (reductionSound9533 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput408 (4 : Fin 6)) = canonicalInput28913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9528 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9528 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28913 hH))).trans (reductionSound9528 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput408 (5 : Fin 6)) = canonicalInput28914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3319 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput408 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3319 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28914 hH))).trans (oldProjectionSound3319 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput408 (j : Fin 6)))
    360 1440 ![1440, 1440, 1440, 360, 1440, 1440] ![-360, -360, -360, -1440, -360, -360] (extendRow Arithmetic.row408) ![reductionProjection9502, reductionProjection1035, reductionProjection1035, reductionProjection9533, reductionProjection9528, oldProjection3319]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput207 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-1, 2, 2, -3]]

theorem rowSound207 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 207) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row207 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row207 H]
  have hshape : boundaryInput207 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput207 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection8540, reductionProjection8544, reductionProjection8539, reductionProjection8539, reductionProjection8553, reductionProjection9568] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput207 (0 : Fin 6)) = canonicalInput17152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8540 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8540 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17152 hH))).trans (reductionSound8540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput207 (1 : Fin 6)) = canonicalInput25433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8544 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8544 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25433 hH))).trans (reductionSound8544 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput207 (2 : Fin 6)) = canonicalInput25741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8539 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8539 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25741 hH))).trans (reductionSound8539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput207 (3 : Fin 6)) = canonicalInput25792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8539 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8539 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25792 hH))).trans (reductionSound8539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput207 (4 : Fin 6)) = canonicalInput25795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8553 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8553 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25795 hH))).trans (reductionSound8553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput207 (5 : Fin 6)) = canonicalInput25799.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9568 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput207 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9568 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25799 hH))).trans (reductionSound9568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput207 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 1440] ![-1440, -1440, -1440, -1440, -1440, -1440] (extendRow Arithmetic.row207) ![reductionProjection8540, reductionProjection8544, reductionProjection8539, reductionProjection8539, reductionProjection8553, reductionProjection9568]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput495 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 1, -1], ![2, -2, 2, -2]]

theorem rowSound495 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 495) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row495 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row495 H]
  have hshape : boundaryInput495 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput495 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 1440, 1440, 288, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1642, reductionProjection9582, reductionProjection1326, reductionProjection1636, reductionProjection9573, reductionProjection1327] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput495 (0 : Fin 6)) = canonicalInput24850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1642 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1642 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24850 hH))).trans (reductionSound1642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput495 (1 : Fin 6)) = canonicalInput28425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9582 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9582 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28425 hH))).trans (reductionSound9582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput495 (2 : Fin 6)) = canonicalInput29414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1326 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1326 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29414 hH))).trans (reductionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput495 (3 : Fin 6)) = canonicalInput29480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1636 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1636 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29480 hH))).trans (reductionSound1636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput495 (4 : Fin 6)) = canonicalInput29496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9573 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9573 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29496 hH))).trans (reductionSound9573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput495 (5 : Fin 6)) = canonicalInput29497.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1327 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput495 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1327 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29497 hH))).trans (reductionSound1327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput495 (j : Fin 6)))
    1440 1440 ![720, 1440, 1440, 288, 1440, 288] ![-2880, -1440, -1440, -7200, -1440, -7200] (extendRow Arithmetic.row495) ![reductionProjection1642, reductionProjection9582, reductionProjection1326, reductionProjection1636, reductionProjection9573, reductionProjection1327]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput233 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![-2, 2, 1, -1], ![2, -2, 2, -2]]

theorem rowSound233 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 233) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row233 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row233 H]
  have hshape : boundaryInput233 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput233 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 360, 360, 360, 288, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9619, reductionProjection9619, reductionProjection9619, oldProjection2345, reductionProjection9616, oldProjection3320] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput233 (0 : Fin 6)) = canonicalInput27631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9619 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9619 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27631 hH))).trans (reductionSound9619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput233 (1 : Fin 6)) = canonicalInput28133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9619 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9619 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28133 hH))).trans (reductionSound9619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput233 (2 : Fin 6)) = canonicalInput28234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9619 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9619 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28234 hH))).trans (reductionSound9619 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput233 (3 : Fin 6)) = canonicalInput28254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2345 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2345 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28254 hH))).trans (oldProjectionSound2345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput233 (4 : Fin 6)) = canonicalInput28255.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9616 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9616 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28255 hH))).trans (reductionSound9616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput233 (5 : Fin 6)) = canonicalInput28256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3320 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput233 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3320 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28256 hH))).trans (oldProjectionSound3320 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput233 (j : Fin 6)))
    1440 1440 ![360, 360, 360, 360, 288, 360] ![-5760, -5760, -5760, -5760, -7200, -5760] (extendRow Arithmetic.row233) ![reductionProjection9619, reductionProjection9619, reductionProjection9619, oldProjection2345, reductionProjection9616, oldProjection3320]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput234 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![-2, 2, -1, 1], ![2, -2, 2, -2]]

theorem rowSound234 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 234) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row234 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row234 H]
  have hshape : boundaryInput234 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput234 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 480, 480, 360, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9614, reductionProjection9614, oldProjection2340, oldProjection2340, reductionProjection9613, oldProjection3317] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput234 (0 : Fin 6)) = canonicalInput27633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9614 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9614 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27633 hH))).trans (reductionSound9614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput234 (1 : Fin 6)) = canonicalInput28135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9614 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9614 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28135 hH))).trans (reductionSound9614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput234 (2 : Fin 6)) = canonicalInput28295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection2340 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection2340 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28295 hH))).trans (oldProjectionSound2340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput234 (3 : Fin 6)) = canonicalInput28316.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2340 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2340 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28316 hH))).trans (oldProjectionSound2340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput234 (4 : Fin 6)) = canonicalInput28321.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9613 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9613 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28321 hH))).trans (reductionSound9613 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput234 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9290 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3317 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput234 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3317 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9290 hH))).trans (oldProjectionSound3317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput234 (j : Fin 6)))
    480 1440 ![1440, 1440, 480, 480, 360, 480] ![-480, -480, -1440, -1440, -1920, -1440] (extendRow Arithmetic.row234) ![reductionProjection9614, reductionProjection9614, oldProjection2340, oldProjection2340, reductionProjection9613, oldProjection3317]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput480 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![-1, 1, 1, -1], ![-1, 2, 0, -1], ![2, -2, 2, -2]]

theorem rowSound480 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 480) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row480 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row480 H]
  have hshape : boundaryInput480 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput480 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1669, reductionProjection1669, reductionProjection1669, oldProjection3293, reductionProjection9624, reductionProjection1351] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput480 (0 : Fin 6)) = canonicalInput24757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1669 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1669 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24757 hH))).trans (reductionSound1669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput480 (1 : Fin 6)) = canonicalInput28068.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1669 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1669 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28068 hH))).trans (reductionSound1669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput480 (2 : Fin 6)) = canonicalInput28216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1669 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1669 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28216 hH))).trans (reductionSound1669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput480 (3 : Fin 6)) = canonicalInput28242.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection3293 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection3293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28242 hH))).trans (oldProjectionSound3293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput480 (4 : Fin 6)) = canonicalInput28246.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9624 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9624 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28246 hH))).trans (reductionSound9624 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput480 (5 : Fin 6)) = canonicalInput28247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1351 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput480 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1351 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28247 hH))).trans (reductionSound1351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput480 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-1440, -1440, -1440, -1440, -2880, -1440] (extendRow Arithmetic.row480) ![reductionProjection1669, reductionProjection1669, reductionProjection1669, oldProjection3293, reductionProjection9624, reductionProjection1351]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput428 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 2, -1, 1], ![1, 0, 3, -4]]

theorem rowSound428 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 428) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row428 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row428 H]
  have hshape : boundaryInput428 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput428 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 720, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection6060, reductionProjection6060, reductionProjection9646, reductionProjection6062, reductionProjection8789, reductionProjection5420] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput428 (0 : Fin 6)) = canonicalInput24101.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6060 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6060 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24101 hH))).trans (reductionSound6060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput428 (1 : Fin 6)) = canonicalInput25539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6060 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6060 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25539 hH))).trans (reductionSound6060 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput428 (2 : Fin 6)) = canonicalInput25620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9646 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9646 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25620 hH))).trans (reductionSound9646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput428 (3 : Fin 6)) = canonicalInput25643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6062 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6062 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25643 hH))).trans (reductionSound6062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput428 (4 : Fin 6)) = canonicalInput25647.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection8789 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection8789 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25647 hH))).trans (reductionSound8789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput428 (5 : Fin 6)) = canonicalInput25648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5420 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput428 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5420 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25648 hH))).trans (reductionSound5420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput428 (j : Fin 6)))
    1440 1440 ![288, 288, 1440, 720, 288, 720] ![-7200, -7200, -1440, -2880, -7200, -2880] (extendRow Arithmetic.row428) ![reductionProjection6060, reductionProjection6060, reductionProjection9646, reductionProjection6062, reductionProjection8789, reductionProjection5420]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput1211 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, 0, -1, 2], ![2, -1, -1, 0], ![-1, 0, 3, -2]]

theorem rowSound1211 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1211) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1211 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row1211 H]
  have hshape : boundaryInput1211 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput1211 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9385, reductionProjection9070, reductionProjection9070, reductionProjection9382, reductionProjection9639, reductionProjection9164] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput1211 (0 : Fin 6)) = canonicalInput24869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9385 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9385 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24869 hH))).trans (reductionSound9385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1211 (1 : Fin 6)) = canonicalInput28749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9070 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9070 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28749 hH))).trans (reductionSound9070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1211 (2 : Fin 6)) = canonicalInput29749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9070 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9070 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29749 hH))).trans (reductionSound9070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1211 (3 : Fin 6)) = canonicalInput29790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9382 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9382 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29790 hH))).trans (reductionSound9382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1211 (4 : Fin 6)) = canonicalInput29802.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29802 hH))).trans (reductionSound9639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput1211 (5 : Fin 6)) = canonicalInput29804.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9164 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput1211 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9164 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29804 hH))).trans (reductionSound9164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput1211 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 288, 1440] ![-288, -288, -288, -288, -1440, -288] (extendRow Arithmetic.row1211) ![reductionProjection9385, reductionProjection9070, reductionProjection9070, reductionProjection9382, reductionProjection9639, reductionProjection9164]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
