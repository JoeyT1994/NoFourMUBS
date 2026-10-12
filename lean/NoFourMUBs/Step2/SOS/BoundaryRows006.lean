import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical436
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Canonical458
import NoFourMUBs.Step2.SOS.Canonical460
import NoFourMUBs.Step2.SOS.Canonical461
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical467
import NoFourMUBs.Step2.SOS.Canonical471
import NoFourMUBs.Step2.SOS.Canonical490
import NoFourMUBs.Step2.SOS.Canonical491
import NoFourMUBs.Step2.SOS.Canonical492
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions050
import NoFourMUBs.Step2.SOS.Reductions051
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical295

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput410 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 3, -2, -1], ![-2, -2, 2, 2]]

theorem rowSound410 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 410) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row410 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row410 H]
  have hshape : boundaryInput410 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput410 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 1440, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1430, reductionProjection1481, reductionProjection1614, reductionProjection1614, oldProjection2892, reductionProjection504] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput410 (0 : Fin 6)) = canonicalInput24830.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1430 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1430 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24830 hH))).trans (reductionSound1430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput410 (1 : Fin 6)) = canonicalInput28130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1481 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1481 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28130 hH))).trans (reductionSound1481 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput410 (2 : Fin 6)) = canonicalInput29286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1614 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1614 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29286 hH))).trans (reductionSound1614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput410 (3 : Fin 6)) = canonicalInput29323.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1614 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1614 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29323 hH))).trans (reductionSound1614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput410 (4 : Fin 6)) = canonicalInput29326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2892 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2892 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29326 hH))).trans (oldProjectionSound2892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput410 (5 : Fin 6)) = canonicalInput29327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection504 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput410 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection504 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29327 hH))).trans (reductionSound504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput410 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 1440, 288] ![-1440, -1440, -1440, -1440, -1440, -7200] (extendRow Arithmetic.row410) ![reductionProjection1430, reductionProjection1481, reductionProjection1614, reductionProjection1614, oldProjection2892, reductionProjection504]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput411 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 0, -1], ![0, 3, -1, -2], ![-2, -2, 2, 2]]

theorem rowSound411 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 411) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row411 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row411 H]
  have hshape : boundaryInput411 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput411 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 144, 1440, 1440, 288, 144] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1434, reductionProjection1479, reductionProjection1616, reductionProjection1614, oldProjection2893, reductionProjection508] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput411 (0 : Fin 6)) = canonicalInput24828.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1434 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1434 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24828 hH))).trans (reductionSound1434 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput411 (1 : Fin 6)) = canonicalInput28128.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1479 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1479 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28128 hH))).trans (reductionSound1479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput411 (2 : Fin 6)) = canonicalInput29211.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1616 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1616 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29211 hH))).trans (reductionSound1616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput411 (3 : Fin 6)) = canonicalInput29297.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1614 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1614 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29297 hH))).trans (reductionSound1614 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput411 (4 : Fin 6)) = canonicalInput29302.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2893 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2893 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29302 hH))).trans (oldProjectionSound2893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput411 (5 : Fin 6)) = canonicalInput29303.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection508 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput411 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection508 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29303 hH))).trans (reductionSound508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput411 (j : Fin 6)))
    1440 1440 ![288, 144, 1440, 1440, 288, 144] ![-7200, -14400, -1440, -1440, -7200, -14400] (extendRow Arithmetic.row411) ![reductionProjection1434, reductionProjection1479, reductionProjection1616, reductionProjection1614, oldProjection2893, reductionProjection508]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput984 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-2, -2, 2, 2]]

theorem rowSound984 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 984) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row984 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row984 H]
  have hshape : boundaryInput984 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput984 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 720, 1440, 1440, 144, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1525, reductionProjection1294, reductionProjection1606, reductionProjection1606, reductionProjection1605, reductionProjection1235] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput984 (0 : Fin 6)) = canonicalInput27779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1525 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1525 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27779 hH))).trans (reductionSound1525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput984 (1 : Fin 6)) = canonicalInput28776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1294 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1294 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28776 hH))).trans (reductionSound1294 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput984 (2 : Fin 6)) = canonicalInput29025.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1606 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1606 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29025 hH))).trans (reductionSound1606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput984 (3 : Fin 6)) = canonicalInput29166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1606 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1606 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29166 hH))).trans (reductionSound1606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput984 (4 : Fin 6)) = canonicalInput29174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1605 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29174 hH))).trans (reductionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput984 (5 : Fin 6)) = canonicalInput29175.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1235 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput984 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1235 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29175 hH))).trans (reductionSound1235 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput984 (j : Fin 6)))
    1440 1440 ![1440, 720, 1440, 1440, 144, 720] ![-1440, -2880, -1440, -1440, -14400, -2880] (extendRow Arithmetic.row984) ![reductionProjection1525, reductionProjection1294, reductionProjection1606, reductionProjection1606, reductionProjection1605, reductionProjection1235]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput985 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2], ![-2, -2, 2, 2]]

theorem rowSound985 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 985) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row985 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row985 H]
  have hshape : boundaryInput985 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput985 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 144, 1440, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1523, oldProjection1520, reductionProjection1605, reductionProjection1604, reductionProjection1606, reductionProjection1234] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput985 (0 : Fin 6)) = canonicalInput27776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1523 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1523 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27776 hH))).trans (reductionSound1523 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput985 (1 : Fin 6)) = canonicalInput28773.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1520 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1520 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28773 hH))).trans (oldProjectionSound1520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput985 (2 : Fin 6)) = canonicalInput29018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1605 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29018 hH))).trans (reductionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput985 (3 : Fin 6)) = canonicalInput29156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1604 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1604 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29156 hH))).trans (reductionSound1604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput985 (4 : Fin 6)) = canonicalInput29166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1606 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1606 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29166 hH))).trans (reductionSound1606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput985 (5 : Fin 6)) = canonicalInput29167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1234 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput985 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1234 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29167 hH))).trans (reductionSound1234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput985 (j : Fin 6)))
    1440 1440 ![1440, 288, 144, 1440, 1440, 1440] ![-1440, -7200, -14400, -1440, -1440, -1440] (extendRow Arithmetic.row985) ![reductionProjection1523, oldProjection1520, reductionProjection1605, reductionProjection1604, reductionProjection1606, reductionProjection1234]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput987 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 0, -2], ![-2, -2, 2, 2]]

theorem rowSound987 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 987) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row987 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row987 H]
  have hshape : boundaryInput987 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput987 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1517, oldProjection1518, reductionProjection1600, oldProjection2892, oldProjection2893, oldProjection2884] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput987 (0 : Fin 6)) = canonicalInput27722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1517 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1517 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27722 hH))).trans (reductionSound1517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput987 (1 : Fin 6)) = canonicalInput28715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection1518 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection1518 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28715 hH))).trans (oldProjectionSound1518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput987 (2 : Fin 6)) = canonicalInput28924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1600 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1600 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28924 hH))).trans (reductionSound1600 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput987 (3 : Fin 6)) = canonicalInput28988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2892 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2892 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28988 hH))).trans (oldProjectionSound2892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput987 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9462 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2893 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2893 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9462 hH))).trans (oldProjectionSound2893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput987 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9463 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection2884 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput987 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection2884 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9463 hH))).trans (oldProjectionSound2884 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput987 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 1440, 288, 288] ![-1440, -1440, -2880, -1440, -7200, -7200] (extendRow Arithmetic.row987) ![reductionProjection1517, oldProjection1518, reductionProjection1600, oldProjection2892, oldProjection2893, oldProjection2884]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput252 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![0, 1, 2, -3], ![-2, -2, 2, 2]]

theorem rowSound252 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 252) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row252 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row252 H]
  have hshape : boundaryInput252 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput252 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1535, reductionProjection1661, reductionProjection1621, reductionProjection1621, reductionProjection1631, reductionProjection1267] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput252 (0 : Fin 6)) = canonicalInput27915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1535 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27915 hH))).trans (reductionSound1535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput252 (1 : Fin 6)) = canonicalInput29708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1661 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1661 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29708 hH))).trans (reductionSound1661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput252 (2 : Fin 6)) = canonicalInput29907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1621 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1621 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29907 hH))).trans (reductionSound1621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput252 (3 : Fin 6)) = canonicalInput29935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1621 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1621 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29935 hH))).trans (reductionSound1621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput252 (4 : Fin 6)) = canonicalInput29941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1631 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1631 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29941 hH))).trans (reductionSound1631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput252 (5 : Fin 6)) = canonicalInput29942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1267 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput252 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1267 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29942 hH))).trans (reductionSound1267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput252 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 720, 288, 1440] ![-1440, -1440, -2880, -2880, -7200, -1440] (extendRow Arithmetic.row252) ![reductionProjection1535, reductionProjection1661, reductionProjection1621, reductionProjection1621, reductionProjection1631, reductionProjection1267]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput255 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, 2, 2]]

theorem rowSound255 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 255) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row255 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row255 H]
  have hshape : boundaryInput255 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput255 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![720, 720, 1440, 720, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1552, reductionProjection1622, reductionProjection1661, reductionProjection1625, reductionProjection1639, reductionProjection1271] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput255 (0 : Fin 6)) = canonicalInput27839.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1552 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1552 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27839 hH))).trans (reductionSound1552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput255 (1 : Fin 6)) = canonicalInput29360.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1622 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1622 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29360 hH))).trans (reductionSound1622 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput255 (2 : Fin 6)) = canonicalInput29450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1661 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1661 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29450 hH))).trans (reductionSound1661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput255 (3 : Fin 6)) = canonicalInput29526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1625 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1625 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29526 hH))).trans (reductionSound1625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput255 (4 : Fin 6)) = canonicalInput29536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29536 hH))).trans (reductionSound1639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput255 (5 : Fin 6)) = canonicalInput29537.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1271 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput255 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1271 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29537 hH))).trans (reductionSound1271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput255 (j : Fin 6)))
    1440 1440 ![720, 720, 1440, 720, 288, 1440] ![-2880, -2880, -1440, -2880, -7200, -1440] (extendRow Arithmetic.row255) ![reductionProjection1552, reductionProjection1622, reductionProjection1661, reductionProjection1625, reductionProjection1639, reductionProjection1271]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput258 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, -3, 2], ![-2, -2, 3, 1]]

theorem rowSound258 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 258) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row258 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row258 H]
  have hshape : boundaryInput258 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput258 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection841, reductionProjection1271, reductionProjection1271, reductionProjection1267, reductionProjection1266, reductionProjection1661] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput258 (0 : Fin 6)) = canonicalInput30178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection841 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection841 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound30178 hH))).trans (reductionSound841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput258 (1 : Fin 6)) = canonicalInput31417.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1271 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1271 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31417 hH))).trans (reductionSound1271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput258 (2 : Fin 6)) = canonicalInput31478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1271 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1271 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31478 hH))).trans (reductionSound1271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput258 (3 : Fin 6)) = canonicalInput31492.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1267 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1267 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31492 hH))).trans (reductionSound1267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput258 (4 : Fin 6)) = canonicalInput31493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1266 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1266 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31493 hH))).trans (reductionSound1266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput258 (5 : Fin 6)) = canonicalInput31494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1661 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput258 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1661 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31494 hH))).trans (reductionSound1661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput258 (j : Fin 6)))
    144 1440 ![1440, 1440, 1440, 1440, 720, 1440] ![-144, -144, -144, -144, -288, -144] (extendRow Arithmetic.row258) ![reductionProjection841, reductionProjection1271, reductionProjection1271, reductionProjection1267, reductionProjection1266, reductionProjection1661]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
