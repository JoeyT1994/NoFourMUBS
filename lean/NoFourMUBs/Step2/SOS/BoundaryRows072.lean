import NoFourMUBs.Step2.SOS.Canonical267
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical379
import NoFourMUBs.Step2.SOS.Canonical396
import NoFourMUBs.Step2.SOS.Canonical399
import NoFourMUBs.Step2.SOS.Canonical400
import NoFourMUBs.Step2.SOS.Canonical401
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical416
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical440
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical446
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical486
import NoFourMUBs.Step2.SOS.Canonical488
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections039
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.OldProjections041
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions035
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions211
import NoFourMUBs.Step2.SOS.Reductions233
import NoFourMUBs.Step2.SOS.Reductions302
import NoFourMUBs.Step2.SOS.Reductions304
import NoFourMUBs.Step2.SOS.Reductions305
import NoFourMUBs.Step2.SOS.Reductions306
import NoFourMUBs.Step2.SOS.Reductions307
import NoFourMUBs.Step2.SOS.Reductions308

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput59 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![1, 0, -1], ![0, -3, 3], ![-2, 4, -2]]

theorem rowSound59 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 59) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row59 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row59 H]
  have hshape : boundaryInput59 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput59 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 96, 96, 96, 96, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9742, oldProjection445, oldProjection445, oldProjection445, reductionProjection9740, reductionProjection277] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput59 (0 : Fin 6)) = canonicalInput18671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9742 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9742 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18671 hH))).trans (reductionSound9742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput59 (1 : Fin 6)) = canonicalInput26554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection445 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection445 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26554 hH))).trans (oldProjectionSound445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput59 (2 : Fin 6)) = canonicalInput26642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection445 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection445 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26642 hH))).trans (oldProjectionSound445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput59 (3 : Fin 6)) = canonicalInput26644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection445 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection445 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26644 hH))).trans (oldProjectionSound445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput59 (4 : Fin 6)) = canonicalInput26646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9740 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9740 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26646 hH))).trans (reductionSound9740 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput59 (5 : Fin 6)) = canonicalInput26648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection277 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput59 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection277 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26648 hH))).trans (reductionSound277 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput59 (j : Fin 6)))
    96 96 ![96, 96, 96, 96, 96, 96] ![-96, -96, -96, -96, -96, -96] (extendRow Arithmetic.row59) ![reductionProjection9742, oldProjection445, oldProjection445, oldProjection445, reductionProjection9740, reductionProjection277]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput812 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, 0, 3, -3]]

theorem rowSound812 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 812) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row812 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row812 H]
  have hshape : boundaryInput812 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput812 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![360, 360, 1440, 1440, 720, 72] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9735, reductionProjection9735, reductionProjection9734, reductionProjection9734, reductionProjection9685, oldProjection3155] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput812 (0 : Fin 6)) = canonicalInput27686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9735 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9735 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27686 hH))).trans (reductionSound9735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput812 (1 : Fin 6)) = canonicalInput28184.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9735 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9735 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28184 hH))).trans (reductionSound9735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput812 (2 : Fin 6)) = canonicalInput28521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9734 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9734 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28521 hH))).trans (reductionSound9734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput812 (3 : Fin 6)) = canonicalInput28614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9734 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9734 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28614 hH))).trans (reductionSound9734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput812 (4 : Fin 6)) = canonicalInput28619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9685 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9685 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28619 hH))).trans (reductionSound9685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput812 (5 : Fin 6)) = canonicalInput28620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3155 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput812 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3155 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28620 hH))).trans (oldProjectionSound3155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput812 (j : Fin 6)))
    120 1440 ![360, 360, 1440, 1440, 720, 72] ![-480, -480, -120, -120, -240, -2400] (extendRow Arithmetic.row812) ![reductionProjection9735, reductionProjection9735, reductionProjection9734, reductionProjection9734, reductionProjection9685, oldProjection3155]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput861 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, 0, 2, -2], ![1, -1, 1, -1]]

theorem rowSound861 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 861) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row861 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row861 H]
  have hshape : boundaryInput861 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput861 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 720, 1440, 360, 72] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9736, reductionProjection9736, reductionProjection9737, reductionProjection9684, oldProjection3167, oldProjection3155] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput861 (0 : Fin 6)) = canonicalInput27670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9736 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27670 hH))).trans (reductionSound9736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput861 (1 : Fin 6)) = canonicalInput28168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9736 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9736 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28168 hH))).trans (reductionSound9736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput861 (2 : Fin 6)) = canonicalInput28503.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9737 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9737 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28503 hH))).trans (reductionSound9737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput861 (3 : Fin 6)) = canonicalInput28554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9684 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9684 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28554 hH))).trans (reductionSound9684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput861 (4 : Fin 6)) = canonicalInput28558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3167 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3167 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28558 hH))).trans (oldProjectionSound3167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput861 (5 : Fin 6)) = canonicalInput28559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3155 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput861 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3155 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28559 hH))).trans (oldProjectionSound3155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput861 (j : Fin 6)))
    1440 1440 ![288, 288, 720, 1440, 360, 72] ![-7200, -7200, -2880, -1440, -5760, -28800] (extendRow Arithmetic.row861) ![reductionProjection9736, reductionProjection9736, reductionProjection9737, reductionProjection9684, oldProjection3167, oldProjection3155]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput554 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![1, 0, -1, 0], ![-1, -1, 2, 0], ![2, 0, -2, 0], ![-1, 3, 1, -3]]

theorem rowSound554 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 554) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row554 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row554 H]
  have hshape : boundaryInput554 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput554 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection194, reductionProjection194, reductionProjection7473, reductionProjection222, reductionProjection9821, reductionProjection1129] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput554 (0 : Fin 6)) = canonicalInput17114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection194 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection194 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17114 hH))).trans (reductionSound194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput554 (1 : Fin 6)) = canonicalInput25403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection194 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection194 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25403 hH))).trans (reductionSound194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput554 (2 : Fin 6)) = canonicalInput25603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection7473 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection7473 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25603 hH))).trans (reductionSound7473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput554 (3 : Fin 6)) = canonicalInput25666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection222 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection222 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25666 hH))).trans (reductionSound222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput554 (4 : Fin 6)) = canonicalInput25669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9821 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9821 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25669 hH))).trans (reductionSound9821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput554 (5 : Fin 6)) = canonicalInput25670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1129 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput554 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1129 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25670 hH))).trans (reductionSound1129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput554 (j : Fin 6)))
    288 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-288, -288, -288, -288, -288, -1440] (extendRow Arithmetic.row554) ![reductionProjection194, reductionProjection194, reductionProjection7473, reductionProjection222, reductionProjection9821, reductionProjection1129]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput511 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, -1, 1, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 3, -1, -3]]

theorem rowSound511 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 511) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row511 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row511 H]
  have hshape : boundaryInput511 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput511 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 1440, 1440, 1440, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9784, reductionProjection9786, reductionProjection9844, reductionProjection9780, reductionProjection9782, reductionProjection5531] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput511 (0 : Fin 6)) = canonicalInput24301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9784 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9784 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24301 hH))).trans (reductionSound9784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput511 (1 : Fin 6)) = canonicalInput26747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9786 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9786 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26747 hH))).trans (reductionSound9786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput511 (2 : Fin 6)) = canonicalInput26842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9844 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9844 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26842 hH))).trans (reductionSound9844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput511 (3 : Fin 6)) = canonicalInput26855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9780 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9780 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26855 hH))).trans (reductionSound9780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput511 (4 : Fin 6)) = canonicalInput26856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9782 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9782 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26856 hH))).trans (reductionSound9782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput511 (5 : Fin 6)) = canonicalInput26857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection5531 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput511 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection5531 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26857 hH))).trans (reductionSound5531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput511 (j : Fin 6)))
    288 1440 ![288, 288, 1440, 1440, 1440, 144] ![-1440, -1440, -288, -288, -288, -2880] (extendRow Arithmetic.row511) ![reductionProjection9784, reductionProjection9786, reductionProjection9844, reductionProjection9780, reductionProjection9782, reductionProjection5531]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput551 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 1, 1, -1], ![-1, 1, 1, -1], ![3, 1, -3, -1]]

theorem rowSound551 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 551) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row551 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row551 H]
  have hshape : boundaryInput551 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput551 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 720, 720, 720, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection213, reductionProjection213, reductionProjection208, reductionProjection9847, reductionProjection9847, reductionProjection6780] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput551 (0 : Fin 6)) = canonicalInput17092.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection213 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection213 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17092 hH))).trans (reductionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput551 (1 : Fin 6)) = canonicalInput25383.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection213 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection213 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25383 hH))).trans (reductionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput551 (2 : Fin 6)) = canonicalInput25564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection208 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection208 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25564 hH))).trans (reductionSound208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput551 (3 : Fin 6)) = canonicalInput25588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9847 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9847 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25588 hH))).trans (reductionSound9847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput551 (4 : Fin 6)) = canonicalInput25592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9847 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9847 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25592 hH))).trans (reductionSound9847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput551 (5 : Fin 6)) = canonicalInput25593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6780 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput551 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6780 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25593 hH))).trans (reductionSound6780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput551 (j : Fin 6)))
    720 720 ![720, 720, 720, 720, 720, 720] ![-720, -720, -720, -720, -720, -720] (extendRow Arithmetic.row551) ![reductionProjection213, reductionProjection213, reductionProjection208, reductionProjection9847, reductionProjection9847, reductionProjection6780]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput437 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 2, 1, -2], ![-1, 1, -3, 3]]

theorem rowSound437 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 437) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row437 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row437 H]
  have hshape : boundaryInput437 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput437 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 1440, 720, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection9861, reductionProjection9861, reductionProjection9865, reductionProjection9865, oldProjection3461, oldProjection3256] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput437 (0 : Fin 6)) = canonicalInput26852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9861 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9861 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26852 hH))).trans (reductionSound9861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput437 (1 : Fin 6)) = canonicalInput31146.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9861 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9861 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31146 hH))).trans (reductionSound9861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput437 (2 : Fin 6)) = canonicalInput31242.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9865 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9865 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31242 hH))).trans (reductionSound9865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput437 (3 : Fin 6)) = canonicalInput31251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9865 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9865 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31251 hH))).trans (reductionSound9865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput437 (4 : Fin 6)) = canonicalInput31253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3461 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3461 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31253 hH))).trans (oldProjectionSound3461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput437 (5 : Fin 6)) = canonicalInput31254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3256 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput437 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3256 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31254 hH))).trans (oldProjectionSound3256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput437 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 1440, 720, 288] ![-2880, -2880, -1440, -1440, -2880, -7200] (extendRow Arithmetic.row437) ![reductionProjection9861, reductionProjection9861, reductionProjection9865, reductionProjection9865, oldProjection3461, oldProjection3256]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput550 : Matrix (Fin 7) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, -1, 0, 1], ![0, -1, 1, 0], ![-1, 0, 2, -1], ![-1, 2, 0, -1], ![3, 1, -3, -1]]

theorem rowSound550 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 550) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row550 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row550 H]
  have hshape : boundaryInput550 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput550 3 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection201, reductionProjection201, reductionProjection186, reductionProjection9816, reductionProjection9868, reductionProjection6779] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput550 (0 : Fin 6)) = canonicalInput17091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection201 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17091 hH))).trans (reductionSound201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput550 (1 : Fin 6)) = canonicalInput25382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection201 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection201 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25382 hH))).trans (reductionSound201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput550 (2 : Fin 6)) = canonicalInput25563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection186 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection186 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25563 hH))).trans (reductionSound186 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput550 (3 : Fin 6)) = canonicalInput25587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9816 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9816 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25587 hH))).trans (reductionSound9816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput550 (4 : Fin 6)) = canonicalInput25589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection9868 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection9868 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25589 hH))).trans (reductionSound9868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput550 (5 : Fin 6)) = canonicalInput25590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection6779 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput550 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection6779 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25590 hH))).trans (reductionSound6779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput550 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row550) ![reductionProjection201, reductionProjection201, reductionProjection186, reductionProjection9816, reductionProjection9868, reductionProjection6779]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
