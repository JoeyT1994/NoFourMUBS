import NoFourMUBs.Step2.SOS.Canonical387
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.Canonical433
import NoFourMUBs.Step2.SOS.Canonical434
import NoFourMUBs.Step2.SOS.Canonical438
import NoFourMUBs.Step2.SOS.Canonical439
import NoFourMUBs.Step2.SOS.Canonical441
import NoFourMUBs.Step2.SOS.Canonical442
import NoFourMUBs.Step2.SOS.Canonical448
import NoFourMUBs.Step2.SOS.Canonical449
import NoFourMUBs.Step2.SOS.Canonical450
import NoFourMUBs.Step2.SOS.Canonical451
import NoFourMUBs.Step2.SOS.Canonical452
import NoFourMUBs.Step2.SOS.Canonical453
import NoFourMUBs.Step2.SOS.Canonical455
import NoFourMUBs.Step2.SOS.Canonical456
import NoFourMUBs.Step2.SOS.Canonical457
import NoFourMUBs.Step2.SOS.Data
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.OldProjections040
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions038
import NoFourMUBs.Step2.SOS.Reductions040
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions049
import NoFourMUBs.Step2.SOS.Reductions050
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical290

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def boundaryInput401 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 2, -1, 1], ![2, -2, 2, -2]]

theorem rowSound401 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 401) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row401 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row401 H]
  have hshape : boundaryInput401 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput401 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 288, 480, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1465, reductionProjection1465, reductionProjection1469, oldProjection2340, oldProjection3255, reductionProjection1032] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput401 (0 : Fin 6)) = canonicalInput24769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1465 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1465 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24769 hH))).trans (reductionSound1465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput401 (1 : Fin 6)) = canonicalInput28078.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1465 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1465 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28078 hH))).trans (reductionSound1465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput401 (2 : Fin 6)) = canonicalInput28230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1469 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1469 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28230 hH))).trans (reductionSound1469 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput401 (3 : Fin 6)) = canonicalInput28316.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (3 : Fin 6)) =
        Integer.Sparse.eval oldProjection2340 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (3 : Fin 6)) =
          Integer.Sparse.eval oldProjection2340 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28316 hH))).trans (oldProjectionSound2340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput401 (4 : Fin 6)) = OAI.MUB6.Certificate.PairSemantics.raw9297 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3255 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3255 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical9297 hH))).trans (oldProjectionSound3255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput401 (5 : Fin 6)) = canonicalInput28335.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1032 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput401 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1032 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28335 hH))).trans (reductionSound1032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput401 (j : Fin 6)))
    1440 1440 ![1440, 1440, 288, 480, 1440, 1440] ![-1440, -1440, -7200, -4320, -1440, -1440] (extendRow Arithmetic.row401) ![reductionProjection1465, reductionProjection1465, reductionProjection1469, oldProjection2340, oldProjection3255, reductionProjection1032]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput413 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![0, 1, 2, -3], ![-2, 2, -2, 2]]

theorem rowSound413 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 413) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row413 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row413 H]
  have hshape : boundaryInput413 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput413 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 288, 1440, 1440, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1458, reductionProjection1491, reductionProjection1497, reductionProjection1497, oldProjection3313, oldProjection3237] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput413 (0 : Fin 6)) = canonicalInput24826.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1458 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1458 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24826 hH))).trans (reductionSound1458 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput413 (1 : Fin 6)) = canonicalInput28126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1491 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1491 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28126 hH))).trans (reductionSound1491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput413 (2 : Fin 6)) = canonicalInput29189.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1497 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1497 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29189 hH))).trans (reductionSound1497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput413 (3 : Fin 6)) = canonicalInput29260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1497 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1497 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29260 hH))).trans (reductionSound1497 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput413 (4 : Fin 6)) = canonicalInput29270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection3313 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection3313 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29270 hH))).trans (oldProjectionSound3313 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput413 (5 : Fin 6)) = canonicalInput29271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (5 : Fin 6)) =
        Integer.Sparse.eval oldProjection3237 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput413 (5 : Fin 6)) =
          Integer.Sparse.eval oldProjection3237 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29271 hH))).trans (oldProjectionSound3237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput413 (j : Fin 6)))
    1440 1440 ![1440, 288, 1440, 1440, 144, 1440] ![-1440, -7200, -1440, -1440, -14400, -1440] (extendRow Arithmetic.row413) ![reductionProjection1458, reductionProjection1491, reductionProjection1497, reductionProjection1497, oldProjection3313, oldProjection3237]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput236 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![2, 1, 0, -3], ![-2, -2, 3, 1]]

theorem rowSound236 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 236) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row236 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row236 H]
  have hshape : boundaryInput236 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput236 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 1440, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1226, reductionProjection1226, reductionProjection785, reductionProjection1214, reductionProjection1209, reductionProjection1567] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput236 (0 : Fin 6)) = canonicalInput27636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27636 hH))).trans (reductionSound1226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput236 (1 : Fin 6)) = canonicalInput28138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1226 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1226 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28138 hH))).trans (reductionSound1226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput236 (2 : Fin 6)) = canonicalInput28298.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection785 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection785 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28298 hH))).trans (reductionSound785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput236 (3 : Fin 6)) = canonicalInput28326.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1214 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1214 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28326 hH))).trans (reductionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput236 (4 : Fin 6)) = canonicalInput28330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1209 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1209 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28330 hH))).trans (reductionSound1209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput236 (5 : Fin 6)) = canonicalInput28331.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1567 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput236 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1567 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28331 hH))).trans (reductionSound1567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput236 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 1440, 288, 288] ![-1440, -1440, -1440, -1440, -7200, -7200] (extendRow Arithmetic.row236) ![reductionProjection1226, reductionProjection1226, reductionProjection785, reductionProjection1214, reductionProjection1209, reductionProjection1567]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput241 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, 1, -2, -1], ![-2, -2, 2, 2]]

theorem rowSound241 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 241) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row241 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row241 H]
  have hshape : boundaryInput241 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput241 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 480, 480, 288, 288, 288] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1512, reductionProjection1464, reductionProjection1464, reductionProjection1568, reductionProjection1567, reductionProjection1209] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput241 (0 : Fin 6)) = canonicalInput27712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1512 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1512 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27712 hH))).trans (reductionSound1512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput241 (1 : Fin 6)) = canonicalInput28705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1464 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1464 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28705 hH))).trans (reductionSound1464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput241 (2 : Fin 6)) = canonicalInput28849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1464 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1464 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28849 hH))).trans (reductionSound1464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput241 (3 : Fin 6)) = canonicalInput28894.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1568 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1568 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28894 hH))).trans (reductionSound1568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput241 (4 : Fin 6)) = canonicalInput28901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1567 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1567 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28901 hH))).trans (reductionSound1567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput241 (5 : Fin 6)) = canonicalInput28902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1209 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput241 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1209 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28902 hH))).trans (reductionSound1209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput241 (j : Fin 6)))
    1440 1440 ![1440, 480, 480, 288, 288, 288] ![-1440, -4320, -4320, -7200, -7200, -7200] (extendRow Arithmetic.row241) ![reductionProjection1512, reductionProjection1464, reductionProjection1464, reductionProjection1568, reductionProjection1567, reductionProjection1209]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput245 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![2, 0, 1, -3], ![-2, -2, 2, 2]]

theorem rowSound245 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 245) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row245 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row245 H]
  have hshape : boundaryInput245 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput245 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 360, 360, 1440, 720] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1516, reductionProjection1298, reductionProjection1598, reductionProjection1598, oldProjection2892, reductionProjection1232] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput245 (0 : Fin 6)) = canonicalInput27719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1516 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1516 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27719 hH))).trans (reductionSound1516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput245 (1 : Fin 6)) = canonicalInput28712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1298 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1298 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28712 hH))).trans (reductionSound1298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput245 (2 : Fin 6)) = canonicalInput28921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1598 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1598 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28921 hH))).trans (reductionSound1598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput245 (3 : Fin 6)) = canonicalInput28983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1598 (Normalization.momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1598 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28983 hH))).trans (reductionSound1598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput245 (4 : Fin 6)) = canonicalInput28988.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (4 : Fin 6)) =
        Integer.Sparse.eval oldProjection2892 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (4 : Fin 6)) =
          Integer.Sparse.eval oldProjection2892 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28988 hH))).trans (oldProjectionSound2892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput245 (5 : Fin 6)) = canonicalInput28989.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1232 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput245 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1232 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28989 hH))).trans (reductionSound1232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput245 (j : Fin 6)))
    1440 1440 ![1440, 1440, 360, 360, 1440, 720] ![-1440, -1440, -5760, -5760, -1440, -2880] (extendRow Arithmetic.row245) ![reductionProjection1516, reductionProjection1298, reductionProjection1598, reductionProjection1598, oldProjection2892, reductionProjection1232]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput246 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, 2, 2]]

theorem rowSound246 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 246) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row246 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row246 H]
  have hshape : boundaryInput246 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput246 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 72, 720, 720, 144, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1521, reductionProjection1300, reductionProjection1603, reductionProjection1603, reductionProjection1605, reductionProjection1233] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput246 (0 : Fin 6)) = canonicalInput27727.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1521 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1521 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27727 hH))).trans (reductionSound1521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput246 (1 : Fin 6)) = canonicalInput28720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1300 (Normalization.momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1300 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28720 hH))).trans (reductionSound1300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput246 (2 : Fin 6)) = canonicalInput28929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1603 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1603 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28929 hH))).trans (reductionSound1603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput246 (3 : Fin 6)) = canonicalInput29012.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1603 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1603 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29012 hH))).trans (reductionSound1603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput246 (4 : Fin 6)) = canonicalInput29018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1605 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29018 hH))).trans (reductionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput246 (5 : Fin 6)) = canonicalInput29019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1233 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput246 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1233 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29019 hH))).trans (reductionSound1233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput246 (j : Fin 6)))
    288 1440 ![1440, 72, 720, 720, 144, 1440] ![-288, -5760, -576, -576, -2880, -288] (extendRow Arithmetic.row246) ![reductionProjection1521, reductionProjection1300, reductionProjection1603, reductionProjection1603, reductionProjection1605, reductionProjection1233]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput364 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0], ![-2, -2, 2, 2]]

theorem rowSound364 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 364) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row364 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row364 H]
  have hshape : boundaryInput364 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput364 3 2 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![1440, 1440, 1440, 144, 720, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1528, reductionProjection1386, reductionProjection1604, reductionProjection1605, reductionProjection1603, reductionProjection1236] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput364 (0 : Fin 6)) = canonicalInput27781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1528 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1528 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27781 hH))).trans (reductionSound1528 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput364 (1 : Fin 6)) = canonicalInput28778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1386 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1386 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28778 hH))).trans (reductionSound1386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput364 (2 : Fin 6)) = canonicalInput29029.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1604 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1604 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29029 hH))).trans (reductionSound1604 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput364 (3 : Fin 6)) = canonicalInput29174.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1605 (Normalization.momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1605 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29174 hH))).trans (reductionSound1605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput364 (4 : Fin 6)) = canonicalInput29177.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1603 (Normalization.momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1603 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29177 hH))).trans (reductionSound1603 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput364 (5 : Fin 6)) = canonicalInput29178.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1236 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput364 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1236 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29178 hH))).trans (reductionSound1236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput364 (j : Fin 6)))
    1440 1440 ![1440, 1440, 1440, 144, 720, 1440] ![-1440, -1440, -1440, -14400, -2880, -1440] (extendRow Arithmetic.row364) ![reductionProjection1528, reductionProjection1386, reductionProjection1604, reductionProjection1605, reductionProjection1603, reductionProjection1236]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

def boundaryInput409 : Matrix (Fin 7) (Fin 4) ℤ := ![![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 2, -1, -2], ![-2, -2, 2, 2]]

theorem rowSound409 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 409) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row409 (momentVector H) = 0
  rw [← extendRow_eval Arithmetic.row409 H]
  have hshape : boundaryInput409 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_seven_row_boundary hH boundaryInput409 3 1 (by decide) hshape
  have hchildren : ∀ j : Fin 6,
      ((![288, 288, 480, 288, 1440, 1440] : Fin 6 → ℤ) j : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (j : Fin 6)) =
        Integer.Sparse.eval (![reductionProjection1426, reductionProjection1471, reductionProjection1464, reductionProjection1609, reductionProjection1606, reductionProjection501] j) (Normalization.momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst boundaryInput409 (0 : Fin 6)) = canonicalInput24816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (0 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1426 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (0 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1426 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24816 hH))).trans (reductionSound1426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput409 (1 : Fin 6)) = canonicalInput28120.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (1 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1471 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (1 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1471 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28120 hH))).trans (reductionSound1471 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput409 (2 : Fin 6)) = canonicalInput28852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (2 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1464 (Normalization.momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (2 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1464 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound28852 hH))).trans (reductionSound1464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput409 (3 : Fin 6)) = canonicalInput29139.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (3 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1609 (Normalization.momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (3 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1609 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29139 hH))).trans (reductionSound1609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput409 (4 : Fin 6)) = canonicalInput29166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (4 : Fin 6)) =
        Integer.Sparse.eval reductionProjection1606 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (4 : Fin 6)) =
          Integer.Sparse.eval reductionProjection1606 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29166 hH))).trans (reductionSound1606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst boundaryInput409 (5 : Fin 6)) = canonicalInput29169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (5 : Fin 6)) =
        Integer.Sparse.eval reductionProjection501 (Normalization.momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst boundaryInput409 (5 : Fin 6)) =
          Integer.Sparse.eval reductionProjection501 (Normalization.momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound29169 hH))).trans (reductionSound501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  exact projected_zero (Normalization.momentVector H)
    (fun j : Fin 6 => injectiveMoment H (mergeFirst boundaryInput409 (j : Fin 6)))
    1440 1440 ![288, 288, 480, 288, 1440, 1440] ![-7200, -7200, -4320, -7200, -1440, -1440] (extendRow Arithmetic.row409) ![reductionProjection1426, reductionProjection1471, reductionProjection1464, reductionProjection1609, reductionProjection1606, reductionProjection501]
    (by decide +kernel) (by decide +kernel) hr hchildren (by decide +kernel)

end NoFourMUBs.Step2.SOS.Semantics
