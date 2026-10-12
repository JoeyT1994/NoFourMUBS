import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical381
import NoFourMUBs.Step2.SOS.Canonical388
import NoFourMUBs.Step2.SOS.Canonical412
import NoFourMUBs.Step2.SOS.Canonical413
import NoFourMUBs.Step2.SOS.Canonical414
import NoFourMUBs.Step2.SOS.Canonical415
import NoFourMUBs.Step2.SOS.Canonical432
import NoFourMUBs.Step2.SOS.Canonical435
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical443
import NoFourMUBs.Step2.SOS.Canonical444
import NoFourMUBs.Step2.SOS.Canonical445
import NoFourMUBs.Step2.SOS.Canonical447
import NoFourMUBs.Step2.SOS.Canonical459
import NoFourMUBs.Step2.SOS.Canonical462
import NoFourMUBs.Step2.SOS.Canonical463
import NoFourMUBs.Step2.SOS.Canonical464
import NoFourMUBs.Step2.SOS.Canonical470
import NoFourMUBs.Step2.SOS.Canonical498
import NoFourMUBs.Step2.SOS.Canonical501
import NoFourMUBs.Step2.SOS.Canonical508
import NoFourMUBs.Step2.SOS.Canonical510
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions018
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions039
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions050
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions053
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical269
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical272
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical313

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput367 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 1, -2], ![1, 0, 1, -2], ![-2, -2, 2, 2]]

theorem rowSound367 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 367) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row367 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row367 H]
  have hshape : boundaryInput367 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput367 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 288, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1556, reductionProjection1623, reductionProjection1623, reductionProjection1639, reductionProjection1639, reductionProjection1278] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput367 (0 : Fin 6)) = canonicalInput27874.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1556 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1556 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27874 hH))).trans (reductionSound1556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput367 (1 : Fin 6)) = canonicalInput29395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1623 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1623 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29395 hH))).trans (reductionSound1623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput367 (2 : Fin 6)) = canonicalInput29679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1623 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1623 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29679 hH))).trans (reductionSound1623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput367 (3 : Fin 6)) = canonicalInput29698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29698 hH))).trans (reductionSound1639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput367 (4 : Fin 6)) = canonicalInput29701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29701 hH))).trans (reductionSound1639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput367 (5 : Fin 6)) = canonicalInput29702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1278 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput367 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1278 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29702 hH))).trans (reductionSound1278 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput367 (j : Fin 6)))
    360 1440 ![1440, 1440, 1440, 288, 288, 1440] ![-360, -360, -360, -1800, -1800, -360] (extendRow Arithmetic.row367) ![reductionProjection1556, reductionProjection1623, reductionProjection1623, reductionProjection1639, reductionProjection1639, reductionProjection1278]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput499 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 2, 0, -2], ![1, 0, 1, -2], ![-2, -2, 2, 2]]

theorem rowSound499 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 499) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row499 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row499 H]
  have hshape : boundaryInput499 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput499 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1441, reductionProjection1573, reductionProjection1650, reductionProjection1639, reductionProjection1651, reductionProjection531] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput499 (0 : Fin 6)) = canonicalInput24863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1441 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1441 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24863 hH))).trans (reductionSound1441 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput499 (1 : Fin 6)) = canonicalInput28664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1573 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1573 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28664 hH))).trans (reductionSound1573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput499 (2 : Fin 6)) = canonicalInput29579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1650 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1650 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29579 hH))).trans (reductionSound1650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput499 (3 : Fin 6)) = canonicalInput29698.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1639 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1639 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29698 hH))).trans (reductionSound1639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput499 (4 : Fin 6)) = canonicalInput29703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1651 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1651 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29703 hH))).trans (reductionSound1651 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput499 (5 : Fin 6)) = canonicalInput29704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection531 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput499 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection531 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29704 hH))).trans (reductionSound531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput499 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 288, 1440, 1440] ![-1440, -1440, -1440, -7200, -1440, -1440] (extendRow Arithmetic.row499) ![reductionProjection1441, reductionProjection1573, reductionProjection1650, reductionProjection1639, reductionProjection1651, reductionProjection531]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput39 : Matrix (Fin 7) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![1, 0, -1], ![-2, -1, 3], ![2, 2, -4]]

theorem rowSound39 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 39) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row39 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row39 H]
  have hshape : boundaryInput39 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput39 2 0 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![480, 480, 480, 96, 48, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1690, reductionProjection1690, reductionProjection1691, oldProjection429, reductionProjection242, oldProjection1876] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput39 (0 : Fin 6)) = canonicalInput18644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1690 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18644 hH))).trans (reductionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput39 (1 : Fin 6)) = canonicalInput26385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1690 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1690 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26385 hH))).trans (reductionSound1690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput39 (2 : Fin 6)) = canonicalInput26429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1691 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1691 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26429 hH))).trans (reductionSound1691 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput39 (3 : Fin 6)) = canonicalInput26479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection429 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection429 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26479 hH))).trans (oldProjectionSound429 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput39 (4 : Fin 6)) = canonicalInput26487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection242 (Normalization.momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection242 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26487 hH))).trans (reductionSound242 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput39 (5 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8639 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection1876 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput39 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection1876 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8639 hH))).trans (oldProjectionSound1876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput39 (j : Fin 6)))
    480 480 ![480, 480, 480, 96, 48, 96] ![-480, -480, -480, -2400, -4800, -2400] (extendRow Arithmetic.row39) ![reductionProjection1690, reductionProjection1690, reductionProjection1691, oldProjection429, reductionProjection242, oldProjection1876]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput266 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-2, -2, 4, 0]]

theorem rowSound266 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 266) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row266 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row266 H]
  have hshape : boundaryInput266 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput266 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 72, 360] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection853, reductionProjection853, reductionProjection853, reductionProjection853, reductionProjection863, reductionProjection1679] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput266 (0 : Fin 6)) = canonicalInput32097.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection853 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32097 hH))).trans (reductionSound853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput266 (1 : Fin 6)) = canonicalInput32555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection853 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32555 hH))).trans (reductionSound853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput266 (2 : Fin 6)) = canonicalInput32680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection853 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32680 hH))).trans (reductionSound853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput266 (3 : Fin 6)) = canonicalInput32681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection853 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection853 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32681 hH))).trans (reductionSound853 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput266 (4 : Fin 6)) = canonicalInput32682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection863 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection863 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32682 hH))).trans (reductionSound863 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput266 (5 : Fin 6)) = canonicalInput32683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1679 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput266 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1679 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound32683 hH))).trans (reductionSound1679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput266 (j : Fin 6)))
    360 1440 ![1440, 1440, 1440, 1440, 72, 360] ![-360, -360, -360, -360, -7200, -1440] (extendRow Arithmetic.row266) ![reductionProjection853, reductionProjection853, reductionProjection853, reductionProjection853, reductionProjection863, reductionProjection1679]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput977 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![2, 0, 0, -2], ![-2, -2, 3, 1]]

theorem rowSound977 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 977) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row977 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row977 H]
  have hshape : boundaryInput977 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput977 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 144, 144, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1680, reductionProjection1680, reductionProjection1293, reductionProjection1293, reductionProjection1292, reductionProjection1584] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput977 (0 : Fin 6)) = canonicalInput27652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1680 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1680 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27652 hH))).trans (reductionSound1680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput977 (1 : Fin 6)) = canonicalInput28154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1680 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1680 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28154 hH))).trans (reductionSound1680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput977 (2 : Fin 6)) = canonicalInput28400.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28400 hH))).trans (reductionSound1293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput977 (3 : Fin 6)) = canonicalInput28441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1293 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28441 hH))).trans (reductionSound1293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput977 (4 : Fin 6)) = canonicalInput28457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1292 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1292 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28457 hH))).trans (reductionSound1292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput977 (5 : Fin 6)) = canonicalInput28458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1584 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput977 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1584 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28458 hH))).trans (reductionSound1584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput977 (j : Fin 6)))
    288 1440 ![1440, 1440, 144, 144, 288, 720] ![-288, -288, -2880, -2880, -1440, -576] (extendRow Arithmetic.row977) ![reductionProjection1680, reductionProjection1680, reductionProjection1293, reductionProjection1293, reductionProjection1292, reductionProjection1584]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput979 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![-2, -2, 3, 1]]

theorem rowSound979 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 979) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row979 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row979 H]
  have hshape : boundaryInput979 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput979 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 720, 720, 288, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1681, reductionProjection1681, reductionProjection1297, reductionProjection1297, reductionProjection1295, reductionProjection1588] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput979 (0 : Fin 6)) = canonicalInput27656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1681 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1681 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27656 hH))).trans (reductionSound1681 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput979 (1 : Fin 6)) = canonicalInput28158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1681 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1681 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28158 hH))).trans (reductionSound1681 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput979 (2 : Fin 6)) = canonicalInput28420.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1297 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1297 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28420 hH))).trans (reductionSound1297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput979 (3 : Fin 6)) = canonicalInput28474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1297 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1297 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28474 hH))).trans (reductionSound1297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput979 (4 : Fin 6)) = canonicalInput28482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1295 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1295 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28482 hH))).trans (reductionSound1295 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput979 (5 : Fin 6)) = canonicalInput28483.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1588 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput979 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1588 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28483 hH))).trans (reductionSound1588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput979 (j : Fin 6)))
    1440 1440 ![1440, 1440, 720, 720, 288, 720] ![-1440, -1440, -2880, -2880, -7200, -2880] (extendRow Arithmetic.row979) ![reductionProjection1681, reductionProjection1681, reductionProjection1297, reductionProjection1297, reductionProjection1295, reductionProjection1588]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput16 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![0, 1, -1], ![1, 0, -1], ![1, 2, -3], ![-2, -2, 4]]

theorem rowSound16 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 16) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row16 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row16 H]
  have hshape : boundaryInput16 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput16 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![240, 480, 480, 480, 96, 480] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1725, oldProjection432, oldProjection432, oldProjection1537, oldProjection1538, reductionProjection598] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput16 (0 : Fin 6)) = canonicalInput24403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1725 (Normalization.momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1725 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24403 hH))).trans (reductionSound1725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput16 (1 : Fin 6)) = canonicalInput26544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (1 : Fin 6)) =
        Integer.Sparse.eval oldProjection432 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (1 : Fin 6)) =
          Integer.Sparse.eval oldProjection432 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26544 hH))).trans (oldProjectionSound432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput16 (2 : Fin 6)) = canonicalInput26561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection432 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection432 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26561 hH))).trans (oldProjectionSound432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput16 (3 : Fin 6)) = canonicalInput26565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1537 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1537 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26565 hH))).trans (oldProjectionSound1537 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput16 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw8732 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1538 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1538 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8732 hH))).trans (oldProjectionSound1538 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput16 (5 : Fin 6)) = canonicalInput26566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection598 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput16 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection598 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound26566 hH))).trans (reductionSound598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput16 (j : Fin 6)))
    480 480 ![240, 480, 480, 480, 96, 480] ![-960, -480, -480, -480, -2400, -480] (extendRow Arithmetic.row16) ![reductionProjection1725, oldProjection432, oldProjection432, oldProjection1537, oldProjection1538, reductionProjection598]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput54 : Matrix (Fin 7) (Fin 3) ℤ := ![![0, -1, 1], ![0, 1, -1], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1], ![-1, 3, -2], ![-2, -2, 4]]

theorem rowSound54 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 54) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row54 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row54 H]
  have hshape : boundaryInput54 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput54 2 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![96, 480, 480, 480, 480, 96] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (j : Fin 6)) =
        Integer.Sparse.eval (![oldProjection362, reductionProjection1715, oldProjection1535, oldProjection1535, oldProjection1530, reductionProjection597] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput54 (0 : Fin 6)) = canonicalInput30096.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (0 : Fin 6)) =
        Integer.Sparse.eval oldProjection362 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (0 : Fin 6)) =
          Integer.Sparse.eval oldProjection362 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound30096 hH))).trans (oldProjectionSound362 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput54 (1 : Fin 6)) = canonicalInput31892.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1715 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1715 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31892 hH))).trans (reductionSound1715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput54 (2 : Fin 6)) = canonicalInput31899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (2 : Fin 6)) =
        Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (2 : Fin 6)) =
          Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31899 hH))).trans (oldProjectionSound1535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput54 (3 : Fin 6)) = canonicalInput31912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection1535 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31912 hH))).trans (oldProjectionSound1535 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput54 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw10039 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection1530 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection1530 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10039 hH))).trans (oldProjectionSound1530 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput54 (5 : Fin 6)) = canonicalInput31916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection597 (Normalization.momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst boundaryInput54 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection597 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound31916 hH))).trans (reductionSound597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput54 (j : Fin 6)))
    96 480 ![96, 480, 480, 480, 480, 96] ![-480, -96, -96, -96, -96, -480] (extendRow Arithmetic.row54) ![oldProjection362, reductionProjection1715, oldProjection1535, oldProjection1535, oldProjection1530, reductionProjection597]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
